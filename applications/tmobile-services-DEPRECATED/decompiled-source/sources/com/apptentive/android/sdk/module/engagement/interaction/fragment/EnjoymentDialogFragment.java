package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.module.engagement.interaction.model.EnjoymentDialogInteraction;
import com.apptentive.android.sdk.util.Util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment.class */
public class EnjoymentDialogFragment extends ApptentiveBaseFragment<EnjoymentDialogInteraction> implements View.OnClickListener {
    public static EnjoymentDialogFragment newInstance(Bundle bundle) {
        EnjoymentDialogFragment enjoymentDialogFragment = new EnjoymentDialogFragment();
        enjoymentDialogFragment.setArguments(bundle);
        return enjoymentDialogFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == C0726R.C0729id.yes) {
            engageInternal("yes");
        } else if (id == C0726R.C0729id.f6434no) {
            engageInternal("no");
        } else if (id == C0726R.C0729id.dismiss) {
            engageInternal("dismiss");
        }
        transit();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        View inflate = layoutInflater.inflate(C0726R.layout.apptentive_enjoyment_dialog_interaction, viewGroup, false);
        try {
            ((TextView) inflate.findViewById(C0726R.C0729id.title)).setText(((EnjoymentDialogInteraction) this.interaction).getTitle());
            String noText = ((EnjoymentDialogInteraction) this.interaction).getNoText();
            Button button = (Button) inflate.findViewById(C0726R.C0729id.f6434no);
            if (noText != null) {
                button.setText(noText);
                i = noText.length() + 0;
            } else {
                i = 0;
            }
            button.setOnClickListener(Util.guarded(this));
            String yesText = ((EnjoymentDialogInteraction) this.interaction).getYesText();
            Button button2 = (Button) inflate.findViewById(C0726R.C0729id.yes);
            button2.setActivated(true);
            int i2 = i;
            if (yesText != null) {
                button2.setText(yesText);
                i2 = i + yesText.length();
            }
            button2.setOnClickListener(Util.guarded(this));
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C0726R.C0729id.button_container);
            if (i2 > 16) {
                linearLayout.setOrientation(1);
            } else {
                linearLayout.setOrientation(0);
            }
            boolean showDismissButton = ((EnjoymentDialogInteraction) this.interaction).showDismissButton();
            String dismissText = ((EnjoymentDialogInteraction) this.interaction).getDismissText();
            ImageButton imageButton = (ImageButton) inflate.findViewById(C0726R.C0729id.dismiss);
            if (showDismissButton) {
                if (dismissText != null) {
                    imageButton.setContentDescription(dismissText);
                }
                imageButton.setVisibility(0);
            }
            imageButton.setOnClickListener(Util.guarded(this));
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreateView()", EnjoymentDialogFragment.class.getSimpleName());
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
