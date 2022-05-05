package com.hannesdorfmann.mosby3.mvp;

import android.support.annotation.UiThread;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvp/MvpPresenter.class */
public interface MvpPresenter<V extends MvpView> {
    @UiThread
    void attachView(V v);

    @UiThread
    void detachView(boolean z);
}
