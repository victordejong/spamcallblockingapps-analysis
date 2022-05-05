package com.hannesdorfmann.mosby3.mvi.layout;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.hannesdorfmann.mosby3.ViewGroupMviDelegate;
import com.hannesdorfmann.mosby3.ViewGroupMviDelegateCallback;
import com.hannesdorfmann.mosby3.ViewGroupMviDelegateImpl;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/layout/MviRelativeLayout.class */
public abstract class MviRelativeLayout<V extends MvpView, P extends MviPresenter<V, ?>> extends RelativeLayout implements MvpView, ViewGroupMviDelegateCallback<V, P> {
    private boolean isRestoringViewState = false;
    protected ViewGroupMviDelegate<V, P> mvpDelegate;

    public MviRelativeLayout(Context context) {
        super(context);
    }

    public MviRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MviRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public MviRelativeLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.hannesdorfmann.mosby3.MviDelegateCallback
    public abstract P createPresenter();

    @NonNull
    protected ViewGroupMviDelegate<V, P> getMvpDelegate() {
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
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getMvpDelegate().onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getMvpDelegate().onDetachedFromWindow();
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    protected void onRestoreInstanceState(Parcelable parcelable) {
        getMvpDelegate().onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    protected Parcelable onSaveInstanceState() {
        return getMvpDelegate().onSaveInstanceState();
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
