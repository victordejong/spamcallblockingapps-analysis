package com.hannesdorfmann.mosby3;

import android.os.Bundle;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ActivityMviDelegate.class */
public interface ActivityMviDelegate<V extends MvpView, P extends MviPresenter<V, ?>> {
    void onContentChanged();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onPause();

    void onPostCreate(Bundle bundle);

    void onRestart();

    void onResume();

    Object onRetainCustomNonConfigurationInstance();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();
}
