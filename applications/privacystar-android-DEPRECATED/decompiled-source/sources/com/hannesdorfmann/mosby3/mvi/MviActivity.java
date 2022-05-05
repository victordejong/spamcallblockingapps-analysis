package com.hannesdorfmann.mosby3.mvi;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p004v7.app.AppCompatActivity;
import com.hannesdorfmann.mosby3.ActivityMviDelegate;
import com.hannesdorfmann.mosby3.ActivityMviDelegateImpl;
import com.hannesdorfmann.mosby3.MviDelegateCallback;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/MviActivity.class */
public abstract class MviActivity<V extends MvpView, P extends MviPresenter<V, ?>> extends AppCompatActivity implements MvpView, MviDelegateCallback<V, P> {
    private boolean isRestoringViewState = false;
    protected ActivityMviDelegate<V, P> mvpDelegate;

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    @NonNull
    public abstract P createPresenter();

    @NonNull
    protected ActivityMviDelegate<V, P> getMvpDelegate() {
        if (this.mvpDelegate == null) {
            this.mvpDelegate = new ActivityMviDelegateImpl(this, this);
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

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        getMvpDelegate().onContentChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getMvpDelegate().onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getMvpDelegate().onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        getMvpDelegate().onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getMvpDelegate().onPostCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        getMvpDelegate().onRestart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getMvpDelegate().onResume();
    }

    @Override // android.support.p001v4.app.FragmentActivity
    public final Object onRetainCustomNonConfigurationInstance() {
        return getMvpDelegate().onRetainCustomNonConfigurationInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getMvpDelegate().onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        getMvpDelegate().onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        getMvpDelegate().onStop();
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    public void setRestoringViewState(boolean z) {
        this.isRestoringViewState = z;
    }
}
