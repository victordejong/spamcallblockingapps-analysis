package com.hannesdorfmann.mosby3;

import android.os.Parcelable;
import com.hannesdorfmann.mosby3.mvp.MvpPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ViewGroupMviDelegate.class */
public interface ViewGroupMviDelegate<V extends MvpView, P extends MvpPresenter<V>> {
    void onAttachedToWindow();

    void onDetachedFromWindow();

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();
}
