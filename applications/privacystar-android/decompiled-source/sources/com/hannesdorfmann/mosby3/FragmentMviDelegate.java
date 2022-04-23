package com.hannesdorfmann.mosby3;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.view.View;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/FragmentMviDelegate.class */
public interface FragmentMviDelegate<V extends MvpView, P extends MviPresenter<V, ?>> {
    void onActivityCreated(Bundle bundle);

    void onAttach(Activity activity);

    void onAttach(Context context);

    void onAttachFragment(Fragment fragment);

    void onConfigurationChanged(Configuration configuration);

    void onCreate(Bundle bundle);

    void onDestroy();

    void onDestroyView();

    void onDetach();

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();

    void onViewCreated(View view, @Nullable Bundle bundle);
}
