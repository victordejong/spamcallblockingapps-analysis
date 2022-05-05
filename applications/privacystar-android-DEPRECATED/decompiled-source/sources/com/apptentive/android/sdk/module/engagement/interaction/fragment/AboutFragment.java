package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/AboutFragment.class */
public class AboutFragment extends ApptentiveBaseFragment<Interaction> {
    private static final String EVENT_NAME_CANCEL = "cancel";
    private static final String EVENT_NAME_CLOSE = "close";
    private static final String INTERACTION_NAME = "About";
    private View root;
    private boolean showBrandingBand;

    public static AboutFragment newInstance(Bundle bundle) {
        AboutFragment aboutFragment = new AboutFragment();
        aboutFragment.setArguments(bundle);
        return aboutFragment;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.showBrandingBand = arguments.getBoolean(Constants.FragmentConfigKeys.EXTRA);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getActivity().getTheme().applyStyle(C0724R.C0730style.ApptentiveThemeAbout, true);
        this.root = layoutInflater.inflate(C0724R.C0728layout.apptentive_about, viewGroup, false);
        try {
            final String packageName = getActivity().getPackageName();
            if (!this.showBrandingBand) {
                this.root.findViewById(C0724R.C0727id.apptentive_branding_view).setVisibility(8);
            }
            this.root.findViewById(C0724R.C0727id.close_about).setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.AboutFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AboutFragment.this.engage("com.apptentive", AboutFragment.INTERACTION_NAME, null, "close", null, null, null);
                    AboutFragment.this.transit();
                }
            }));
            ((Button) this.root.findViewById(C0724R.C0727id.about_description_link)).setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.AboutFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(String.format("http://www.apptentive.com/?source=%s", packageName)));
                    if (Util.canLaunchIntent(AboutFragment.this.getActivity(), intent)) {
                        AboutFragment.this.getActivity().startActivity(intent);
                    }
                }
            }));
            ((Button) this.root.findViewById(C0724R.C0727id.privacy_link)).setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.AboutFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(String.format("http://www.apptentive.com/privacy/?source=%s", packageName)));
                    if (Util.canLaunchIntent(AboutFragment.this.getActivity(), intent)) {
                        AboutFragment.this.getActivity().startActivity(intent);
                    }
                }
            }));
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", AboutFragment.class.getSimpleName());
        }
        return this.root;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        if (apptentiveViewExitType.equals(ApptentiveViewExitType.BACK_BUTTON)) {
            engage("com.apptentive", INTERACTION_NAME, null, "cancel", null, null, null);
            return false;
        } else if (apptentiveViewExitType.equals(ApptentiveViewExitType.NOTIFICATION)) {
            engage("com.apptentive", INTERACTION_NAME, null, "cancel", exitTypeToDataJson(apptentiveViewExitType), null, null);
            return false;
        } else {
            engage("com.apptentive", INTERACTION_NAME, null, "close", exitTypeToDataJson(apptentiveViewExitType), null, null);
            return false;
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected void sendLaunchEvent(Activity activity) {
        engage("com.apptentive", INTERACTION_NAME, null, ApptentiveBaseFragment.EVENT_NAME_LAUNCH, null, null, null);
    }
}
