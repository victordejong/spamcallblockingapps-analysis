package com.hannesdorfmann.mosby3.mvi.layout;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.hannesdorfmann.mosby3.ViewGroupMviDelegate;
import com.hannesdorfmann.mosby3.ViewGroupMviDelegateCallback;
import com.hannesdorfmann.mosby3.ViewGroupMviDelegateImpl;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/layout/MviFrameLayout.class */
public abstract class MviFrameLayout<V extends MvpView, P extends MviPresenter<V, ?>> extends FrameLayout implements ViewGroupMviDelegateCallback<V, P>, MvpView {
    private boolean isRestoringViewState = false;
    protected ViewGroupMviDelegate<V, P> mvpDelegate;

    public MviFrameLayout(Context context) {
        super(context);
    }

    public MviFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MviFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public MviFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    public abstract P createPresenter();

    @NonNull
    protected ViewGroupMviDelegate<V, P> getMviDelegate() {
        if (this.mvpDelegate == null) {
            this.mvpDelegate = new ViewGroupMviDelegateImpl(this, this, true);
        }
        return this.mvpDelegate;
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    public V getMvpView() {
        return this;
    }

    protected boolean isRestoringViewState() {
        return this.isRestoringViewState;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getMviDelegate().onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getMviDelegate().onDetachedFromWindow();
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        getMviDelegate().onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public Parcelable onSaveInstanceState() {
        return getMviDelegate().onSaveInstanceState();
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    public void setRestoringViewState(boolean z) {
        this.isRestoringViewState = z;
    }

    @Override // com.hannesdorfmann.mosby3.ViewGroupMviDelegateCallback
    public final void superOnRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
    }

    @Override // com.hannesdorfmann.mosby3.ViewGroupMviDelegateCallback
    public final Parcelable superOnSaveInstanceState() {
        return super.onSaveInstanceState();
    }
}
