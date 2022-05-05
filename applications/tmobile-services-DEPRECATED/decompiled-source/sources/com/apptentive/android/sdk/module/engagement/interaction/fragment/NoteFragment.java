package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interactions;
import com.apptentive.android.sdk.module.engagement.interaction.model.Invocation;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Actions;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.LaunchInteractionAction;
import com.apptentive.android.sdk.module.engagement.logic.FieldManager;
import com.apptentive.android.sdk.util.Util;
import com.google.firebase.messaging.Constants;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment.class */
public class NoteFragment extends ApptentiveBaseFragment<TextModalInteraction> {

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment$3 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$3.class */
    static /* synthetic */ class C08053 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type */
        static final /* synthetic */ int[] f6453xc0751b89;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.Type.values().length];
            f6453xc0751b89 = iArr;
            try {
                iArr[Action.Type.dismiss.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6453xc0751b89[Action.Type.interaction.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static NoteFragment newInstance(Bundle bundle) {
        NoteFragment noteFragment = new NoteFragment();
        noteFragment.setArguments(bundle);
        return noteFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C0726R.layout.apptentive_textmodal_interaction_center, viewGroup, false);
        try {
            TextView textView = (TextView) inflate.findViewById(C0726R.C0729id.title);
            if (((TextModalInteraction) this.interaction).getTitle() == null) {
                textView.setVisibility(8);
            } else {
                textView.setText(((TextModalInteraction) this.interaction).getTitle());
            }
            TextView textView2 = (TextView) inflate.findViewById(C0726R.C0729id.body);
            if (((TextModalInteraction) this.interaction).getBody() == null) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(((TextModalInteraction) this.interaction).getBody());
            }
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C0726R.C0729id.button_container);
            Actions actions = ((TextModalInteraction) this.interaction).getActions();
            List<Action> list = null;
            if (actions != null) {
                list = actions.getAsList();
            }
            if (list == null || list.isEmpty()) {
                linearLayout.setVisibility(8);
            } else {
                int i = 0;
                for (Action action : list) {
                    i += action.getLabel().length();
                }
                if (list.size() != 1 && (list.size() != 2 ? list.size() != 3 ? list.size() != 4 || i > 11 : i > 15 : i > 17)) {
                    linearLayout.setOrientation(1);
                } else {
                    linearLayout.setOrientation(0);
                }
                for (final int i2 = 0; i2 < list.size(); i2++) {
                    final Action action2 = list.get(i2);
                    Button button = (Button) layoutInflater.inflate(C0726R.layout.apptentive_textmodal_interaction_button, (ViewGroup) linearLayout, false);
                    button.setText(action2.getLabel());
                    int i3 = C08053.f6453xc0751b89[action2.getType().ordinal()];
                    if (i3 == 1) {
                        button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("action_id", action2.getId());
                                    jSONObject.put(Constants.ScionAnalytics.PARAM_LABEL, action2.getLabel());
                                    jSONObject.put("position", i2);
                                } catch (JSONException e) {
                                    ApptentiveLog.m15641e(e, "Error creating Event data object.", new Object[0]);
                                    ApptentiveBaseFragment.logException(e);
                                }
                                NoteFragment.this.engageInternal("dismiss", jSONObject.toString());
                                NoteFragment.this.transit();
                            }
                        }));
                    } else if (i3 == 2) {
                        button.setActivated(true);
                        button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                String str;
                                Iterator<Invocation> it = ((LaunchInteractionAction) action2).getInvocations().iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        str = null;
                                        break;
                                    }
                                    Invocation next = it.next();
                                    if (next.isCriteriaMet(new FieldManager(NoteFragment.this.getContext(), NoteFragment.this.getConversation().getVersionHistory(), NoteFragment.this.getConversation().getEventData(), NoteFragment.this.getConversation().getPerson(), NoteFragment.this.getConversation().getDevice(), NoteFragment.this.getConversation().getAppRelease()), false)) {
                                        str = next.getInteractionId();
                                        break;
                                    }
                                }
                                Interaction interaction = null;
                                if (str != null) {
                                    ConversationProxy conversation = NoteFragment.this.getConversation();
                                    interaction = null;
                                    if (conversation != null) {
                                        String interactions = conversation.getInteractions();
                                        interaction = null;
                                        if (interactions != null) {
                                            try {
                                                interaction = new Interactions(interactions).getInteraction(str);
                                            } catch (JSONException e) {
                                                ApptentiveBaseFragment.logException(e);
                                                interaction = null;
                                            }
                                        }
                                    }
                                }
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("action_id", action2.getId());
                                    jSONObject.put(Constants.ScionAnalytics.PARAM_LABEL, action2.getLabel());
                                    jSONObject.put("position", i2);
                                    jSONObject.put("invoked_interaction_id", interaction == null ? JSONObject.NULL : interaction.getId());
                                } catch (JSONException e2) {
                                    ApptentiveLog.m15641e(e2, "Error creating Event data object.", new Object[0]);
                                    ApptentiveBaseFragment.logException(e2);
                                }
                                NoteFragment.this.engageInternal("interaction", jSONObject.toString());
                                if (interaction != null) {
                                    EngagementModule.launchInteraction(NoteFragment.this.getActivity(), interaction);
                                }
                                NoteFragment.this.transit();
                            }
                        }));
                    }
                    linearLayout.addView(button);
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreateView()", NoteFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        engageInternal("cancel", exitTypeToDataJson(apptentiveViewExitType));
        return false;
    }
}
