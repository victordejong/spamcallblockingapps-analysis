package com.hannesdorfmann.mosby3;

import android.content.Context;
import android.os.Parcelable;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ViewGroupMviDelegateCallback.class */
public interface ViewGroupMviDelegateCallback<V extends MvpView, P extends MviPresenter<V, ?>> extends MviDelegateCallback<V, P> {
    Context getContext();

    void superOnRestoreInstanceState(Parcelable parcelable);

    Parcelable superOnSaveInstanceState();
}
