package com.hannesdorfmann.mosby3.mvi;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.view.View;
import com.hannesdorfmann.mosby3.FragmentMviDelegate;
import com.hannesdorfmann.mosby3.FragmentMviDelegateImpl;
import com.hannesdorfmann.mosby3.MviDelegateCallback;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/MviFragment.class */
public abstract class MviFragment<V extends MvpView, P extends MviPresenter<V, ?>> extends Fragment implements MvpView, MviDelegateCallback<V, P> {
    private boolean isRestoringViewState = false;
    protected FragmentMviDelegate<V, P> mvpDelegate;

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    @NonNull
    public abstract P createPresenter();

    @NonNull
    public FragmentMviDelegate<V, P> getMvpDelegate() {
        if (this.mvpDelegate == null) {
            this.mvpDelegate = new FragmentMviDelegateImpl(this, this);
        }
        return this.mvpDelegate;
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    @NonNull
    public V getMvpView() {
        return this;
    }

    protected boolean isRestoringViewState() {
        return this.isRestoringViewState;
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        getMvpDelegate().onActivityCreated(bundle);
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        getMvpDelegate().onAttach(activity);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        getMvpDelegate().onAttach(context);
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        getMvpDelegate().onAttachFragment(fragment);
    }

    @Override // android.support.p001v4.app.Fragment, android.content.ComponentCallbacks
    @CallSuper
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getMvpDelegate().onConfigurationChanged(configuration);
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getMvpDelegate().onCreate(bundle);
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onDestroy() {
        super.onDestroy();
        getMvpDelegate().onDestroy();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onDestroyView() {
        super.onDestroyView();
        getMvpDelegate().onDestroyView();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onDetach() {
        super.onDetach();
        getMvpDelegate().onDetach();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onPause() {
        super.onPause();
        getMvpDelegate().onPause();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onResume() {
        super.onResume();
        getMvpDelegate().onResume();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getMvpDelegate().onSaveInstanceState(bundle);
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onStart() {
        super.onStart();
        getMvpDelegate().onStart();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onStop() {
        super.onStop();
        getMvpDelegate().onStop();
    }

    @Override // android.support.p001v4.app.Fragment
    @CallSuper
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        getMvpDelegate().onViewCreated(view, bundle);
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    public void setRestoringViewState(boolean z) {
        this.isRestoringViewState = z;
    }
}
