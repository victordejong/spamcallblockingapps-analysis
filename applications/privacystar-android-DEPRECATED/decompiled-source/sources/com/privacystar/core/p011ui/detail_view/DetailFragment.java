package com.privacystar.core.p011ui.detail_view;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import butterknife.Unbinder;
import com.privacystar.core.p011ui.PSFragment;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.DetailFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailFragment.class */
public abstract class DetailFragment extends PSFragment {
    protected DetailActivity activity;
    protected Unbinder unbinder;

    /* renamed from: com.privacystar.core.ui.detail_view.DetailFragment$DetailFragmentContainer */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailFragment$DetailFragmentContainer.class */
    public interface DetailFragmentContainer {
        void addViewToToolbar(View view);

        void attachFragment(DetailFragment detailFragment);

        void enableButton(boolean z);

        void enableFab(boolean z);

        void enableToolbarMenu(boolean z);

        Parcelable getPayload();

        void hideToolbar();

        void navigateBack();

        void setButtonText(@StringRes int i);

        void setDetailToolbarColor(@StyleRes int i);

        void setDetailToolbarDrawable(Drawable drawable);

        void setDetailToolbarTitle(@StringRes int i);

        void setDetailToolbarTitle(String str);

        void setFabIcon(@DrawableRes int i);

        void setToolbarMenu(@MenuRes int i);

        void showPaywall();

        void showSubscriptionPage();

        void showToolbar();

        void swapFragment(Class cls, Parcelable parcelable);

        void swapFragment(Class cls, Parcelable parcelable, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void attachFragment() {
        if (this.activity != null) {
            this.activity.attachFragment(this);
        } else {
            Timber.m25w("Tried to reattach this fragment in onResume but parent activity was lost.", new Object[0]);
        }
    }

    @LayoutRes
    protected abstract int getLayoutResId();

    public abstract DetailFragment newInstance();

    @Override // android.support.p001v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Timber.m37d("Attaching to activity %s", activity.toString());
        this.activity = (DetailActivity) activity;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        Timber.m37d("Creating View for %s", toString());
        return onCreateView;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.unbinder != null) {
            this.unbinder.unbind();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        Timber.m37d("Detaching from activity %s", this.activity.toString());
        this.activity = null;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        attachFragment();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void outputNameAccessibility(@StringRes int i) {
        String string = getString(i);
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(16384);
            obtain.setClassName(getClass().getName());
            obtain.setPackageName(getContext().getPackageName());
            obtain.getText().add(string);
            accessibilityManager.sendAccessibilityEvent(obtain);
        }
    }
}
