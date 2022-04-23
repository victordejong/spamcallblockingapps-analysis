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
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Actions;
import com.apptentive.android.sdk.util.Util;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment.class */
public class NoteFragment extends ApptentiveBaseFragment<TextModalInteraction> {
    private static final int MAX_TEXT_LENGTH_FOR_FOUR_BUTTONS = 11;
    private static final int MAX_TEXT_LENGTH_FOR_ONE_BUTTONS = 19;
    private static final int MAX_TEXT_LENGTH_FOR_THREE_BUTTONS = 15;
    private static final int MAX_TEXT_LENGTH_FOR_TWO_BUTTONS = 17;

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment$3 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$3.class */
    static /* synthetic */ class C08013 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type */
        static final /* synthetic */ int[] f69xc0751b89 = new int[Action.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f69xc0751b89[Action.Type.dismiss.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f69xc0751b89[Action.Type.interaction.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static NoteFragment newInstance(Bundle bundle) {
        NoteFragment noteFragment = new NoteFragment();
        noteFragment.setArguments(bundle);
        return noteFragment;
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C0724R.C0728layout.apptentive_textmodal_interaction_center, viewGroup, false);
        try {
            TextView textView = (TextView) inflate.findViewById(C0724R.C0727id.title);
            if (((TextModalInteraction) this.interaction).getTitle() == null) {
                textView.setVisibility(8);
            } else {
                textView.setText(((TextModalInteraction) this.interaction).getTitle());
            }
            TextView textView2 = (TextView) inflate.findViewById(C0724R.C0727id.body);
            if (((TextModalInteraction) this.interaction).getBody() == null) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(((TextModalInteraction) this.interaction).getBody());
            }
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C0724R.C0727id.button_container);
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
                    Button button = (Button) layoutInflater.inflate(C0724R.C0728layout.apptentive_textmodal_interaction_button, (ViewGroup) linearLayout, false);
                    button.setText(action2.getLabel());
                    switch (C08013.f69xc0751b89[action2.getType().ordinal()]) {
                        case 1:
                            button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put(TextModalInteraction.EVENT_KEY_ACTION_ID, action2.getId());
                                        jSONObject.put("label", action2.getLabel());
                                        jSONObject.put(TextModalInteraction.EVENT_KEY_ACTION_POSITION, i2);
                                    } catch (JSONException e) {
                                        ApptentiveLog.m408e(e, "Error creating Event data object.", new Object[0]);
                                    }
                                    NoteFragment.this.engageInternal(TextModalInteraction.EVENT_NAME_DISMISS, jSONObject.toString());
                                    NoteFragment.this.transit();
                                }
                            }));
                            break;
                        case 2:
                            button.setActivated(true);
                            button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment.2
                                /* JADX WARN: Can't wrap try/catch for region: R(15:2|(2:3|(2:5|(2:37|7))(2:36|8))|9|(12:32|15|17|34|18|(1:20)(1:21)|22|23|26|(1:28)|29|30)|16|17|34|18|(0)(0)|22|23|26|(0)|29|30) */
                                /* JADX WARN: Code restructure failed: missing block: B:24:0x00ec, code lost:
                                    r12 = move-exception;
                                 */
                                /* JADX WARN: Code restructure failed: missing block: B:25:0x00ed, code lost:
                                    com.apptentive.android.sdk.ApptentiveLog.m408e(r12, "Error creating Event data object.", new java.lang.Object[0]);
                                 */
                                /* JADX WARN: Removed duplicated region for block: B:20:0x00d5 A[Catch: JSONException -> 0x00ec, TRY_ENTER, TRY_LEAVE, TryCatch #1 {JSONException -> 0x00ec, blocks: (B:18:0x00aa, B:20:0x00d5, B:21:0x00dc, B:23:0x00e2), top: B:34:0x00aa }] */
                                /* JADX WARN: Removed duplicated region for block: B:21:0x00dc A[Catch: JSONException -> 0x00ec, TRY_ENTER, TryCatch #1 {JSONException -> 0x00ec, blocks: (B:18:0x00aa, B:20:0x00d5, B:21:0x00dc, B:23:0x00e2), top: B:34:0x00aa }] */
                                /* JADX WARN: Removed duplicated region for block: B:28:0x0108  */
                                @Override // android.view.View.OnClickListener
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public void onClick(android.view.View r11) {
                                    /*
                                        Method dump skipped, instructions count: 287
                                        To view this dump add '--comments-level debug' option
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.module.engagement.interaction.fragment.NoteFragment.View$OnClickListenerC08002.onClick(android.view.View):void");
                                }
                            }));
                            break;
                    }
                    linearLayout.addView(button);
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", NoteFragment.class.getSimpleName());
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        engageInternal("cancel", exitTypeToDataJson(apptentiveViewExitType));
        return false;
    }
}
