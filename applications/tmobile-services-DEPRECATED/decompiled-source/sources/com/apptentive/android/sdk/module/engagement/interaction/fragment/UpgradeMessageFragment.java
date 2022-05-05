package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.module.engagement.interaction.model.UpgradeMessageInteraction;
import com.facebook.stetho.common.Utf8Charset;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment.class */
public class UpgradeMessageFragment extends ApptentiveBaseFragment<UpgradeMessageInteraction> {
    private Drawable getIconDrawableResourceId() {
        try {
            Context context = getContext();
            return ContextCompat.m19673f(getContext(), context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.icon);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Error loading app icon.", new Object[0]);
            ApptentiveBaseFragment.logException(e);
            return null;
        }
    }

    public static UpgradeMessageFragment newInstance(Bundle bundle) {
        UpgradeMessageFragment upgradeMessageFragment = new UpgradeMessageFragment();
        upgradeMessageFragment.setArguments(bundle);
        return upgradeMessageFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C0726R.layout.apptentive_upgrade_message_interaction, viewGroup, false);
        try {
            ImageView imageView = (ImageView) inflate.findViewById(C0726R.C0729id.icon);
            Drawable iconDrawableResourceId = getIconDrawableResourceId();
            if (iconDrawableResourceId != null) {
                imageView.setImageDrawable(iconDrawableResourceId);
            } else {
                imageView.setVisibility(8);
            }
            WebView webView = (WebView) inflate.findViewById(C0726R.C0729id.webview);
            webView.loadData(((UpgradeMessageInteraction) this.interaction).getBody(), "text/html", Utf8Charset.NAME);
            webView.setBackgroundColor(0);
            View findViewById = inflate.findViewById(C0726R.C0729id.apptentive_branding_view);
            if (findViewById != null && (!((UpgradeMessageInteraction) this.interaction).isShowPoweredBy() || Configuration.load().isHideBranding(getContext()))) {
                findViewById.setVisibility(8);
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreateView()", UpgradeMessageFragment.class.getSimpleName());
            ApptentiveBaseFragment.logException(e);
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        engageInternal("dismiss", exitTypeToDataJson(apptentiveViewExitType));
        return false;
    }
}
