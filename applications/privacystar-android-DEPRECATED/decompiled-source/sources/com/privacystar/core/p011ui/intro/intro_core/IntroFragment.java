package com.privacystar.core.p011ui.intro.intro_core;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.privacystar.core.p011ui.PSFragment;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcomeDialogFragment;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.service.PreferenceUtil;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroFragment.class */
public abstract class IntroFragment extends PSFragment {
    protected Activity activity;

    /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroFragment$IntroFragmentContainer */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroFragment$IntroFragmentContainer.class */
    public interface IntroFragmentContainer {
        void attemptPurchase();

        void disableSpinner();

        void enableSpinner(String str);

        Class<? extends IntroActivity.IntroActivityContent> getLastClassBeforePermissions();

        void showPermissionsInfoDialog();

        void showPurchaseRetryDialog(ButtonAction buttonAction, ButtonAction buttonAction2);

        void transitionToNextFragment();

        void transitionToPreviousFragment();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void disableSpinner() {
        if (this.activity instanceof IntroFragmentContainer) {
            ((IntroFragmentContainer) this.activity).disableSpinner();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void enableSpinner(String str) {
        if (this.activity instanceof IntroFragmentContainer) {
            ((IntroFragmentContainer) this.activity).enableSpinner(str);
        }
    }

    @LayoutRes
    protected abstract int getLayoutResId();

    @Override // android.support.p001v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Timber.m37d("Attaching to activity", new Object[0]);
        this.activity = activity;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        Timber.m37d("Creating View", new Object[0]);
        return onCreateView;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.activity = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void rewindIntroFragment() {
        if (this.activity instanceof IntroFragmentContainer) {
            Timber.m37d("Rewinding to previous intro fragment.", new Object[0]);
            ((IntroFragmentContainer) this.activity).transitionToPreviousFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showPaywall() {
        AFWelcomeDialogFragment.Companion.showWithCallback(getFragmentManager(), false, true, IntroFragment$$Lambda$0.$instance);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showPermissionsInfoDialog() {
        if (this.activity instanceof IntroFragmentContainer) {
            ((IntroFragmentContainer) this.activity).showPermissionsInfoDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showPurchaseRetryDialog(ButtonAction buttonAction, ButtonAction buttonAction2) {
        if (this.activity instanceof IntroFragmentContainer) {
            ((IntroFragmentContainer) this.activity).showPurchaseRetryDialog(buttonAction, buttonAction2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void transitionIntroFragment() {
        if (this.activity instanceof IntroFragmentContainer) {
            Timber.m37d("Transitioning to next intro fragment.", new Object[0]);
            IntroFragmentContainer introFragmentContainer = (IntroFragmentContainer) this.activity;
            if (getClass() == introFragmentContainer.getLastClassBeforePermissions()) {
                PreferenceUtil.putHasShownInitialPermissionRequest(true);
            }
            introFragmentContainer.transitionToNextFragment();
        }
    }
}
