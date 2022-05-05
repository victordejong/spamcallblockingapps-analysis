package com.hannesdorfmann.mosby3;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.app.BackstackAccessor;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.util.Log;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/FragmentMviDelegateImpl.class */
public class FragmentMviDelegateImpl<V extends MvpView, P extends MviPresenter<V, ?>> implements FragmentMviDelegate<V, P> {
    public static boolean DEBUG = false;
    private static final String DEBUG_TAG = "FragmentMviDelegateImpl";
    private static final String KEY_MOSBY_VIEW_ID = "com.hannesdorfmann.mosby3.fragment.mvi.id";
    private MviDelegateCallback<V, P> delegateCallback;
    private Fragment fragment;
    private final boolean keepPresenterDuringScreenOrientationChange;
    private final boolean keepPresenterOnBackstack;
    private String mosbyViewId;
    private boolean onViewCreatedCalled;
    private P presenter;

    public FragmentMviDelegateImpl(@NonNull MviDelegateCallback<V, P> mviDelegateCallback, @NonNull Fragment fragment) {
        this(mviDelegateCallback, fragment, true, true);
    }

    public FragmentMviDelegateImpl(@NonNull MviDelegateCallback<V, P> mviDelegateCallback, @NonNull Fragment fragment, boolean z, boolean z2) {
        this.mosbyViewId = null;
        this.onViewCreatedCalled = false;
        if (mviDelegateCallback == null) {
            throw new NullPointerException("delegateCallback == null");
        } else if (fragment == null) {
            throw new NullPointerException("fragment == null");
        } else if (z || !z2) {
            this.delegateCallback = mviDelegateCallback;
            this.fragment = fragment;
            this.keepPresenterDuringScreenOrientationChange = z;
            this.keepPresenterOnBackstack = z2;
        } else {
            throw new IllegalArgumentException("It is not possible to keep the presenter on backstack, but NOT keep presenter through screen orientation changes. Keep presenter on backstack also requires keep presenter through screen orientation changes to be enabled");
        }
    }

    private P createViewIdAndCreatePresenter() {
        P createPresenter = this.delegateCallback.createPresenter();
        if (createPresenter == null) {
            throw new NullPointerException("Presenter returned from createPresenter() is null. Fragment is " + this.fragment);
        }
        if (this.keepPresenterDuringScreenOrientationChange || this.keepPresenterOnBackstack) {
            Activity activity = getActivity();
            this.mosbyViewId = UUID.randomUUID().toString();
            PresenterManager.putPresenter(activity, this.mosbyViewId, createPresenter);
        }
        return createPresenter;
    }

    @NonNull
    private Activity getActivity() {
        FragmentActivity activity = this.fragment.getActivity();
        if (activity != null) {
            return activity;
        }
        throw new NullPointerException("Activity returned by Fragment.getActivity() is null. Fragment is " + this.fragment);
    }

    private boolean retainPresenterInstance(boolean z, Activity activity, Fragment fragment) {
        if (activity.isChangingConfigurations()) {
            return this.keepPresenterDuringScreenOrientationChange;
        }
        if (activity.isFinishing()) {
            return false;
        }
        if (!z || !BackstackAccessor.isFragmentOnBackStack(fragment)) {
            return !fragment.isRemoving();
        }
        return true;
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onActivityCreated(Bundle bundle) {
        if (!this.onViewCreatedCalled) {
            throw new IllegalStateException("It seems that onCreateView() has never been called (or has returned null). This means that your fragment is headless (no UI). That is not allowed because it doesn't make sense to use Mosby with a Fragment without View.");
        }
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onAttach(Activity activity) {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onAttach(Context context) {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onCreate(@Nullable Bundle bundle) {
        if ((this.keepPresenterDuringScreenOrientationChange || this.keepPresenterOnBackstack) && bundle != null) {
            this.mosbyViewId = bundle.getString(KEY_MOSBY_VIEW_ID);
        }
        if (DEBUG) {
            Log.d(DEBUG_TAG, "MosbyView ID = " + this.mosbyViewId + " for MvpView: " + this.delegateCallback.getMvpView());
        }
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onDestroy() {
        this.presenter = null;
        this.delegateCallback = null;
        this.fragment = null;
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onDestroyView() {
        this.onViewCreatedCalled = false;
        Activity activity = getActivity();
        boolean retainPresenterInstance = retainPresenterInstance(this.keepPresenterOnBackstack, activity, this.fragment);
        this.presenter.detachView(retainPresenterInstance);
        if (!retainPresenterInstance && this.mosbyViewId != null) {
            PresenterManager.remove(activity, this.mosbyViewId);
        }
        if (DEBUG) {
            Log.d(DEBUG_TAG, "detached MvpView from Presenter. MvpView " + this.delegateCallback.getMvpView() + "   Presenter: " + this.presenter);
            Log.d(DEBUG_TAG, "Retaining presenter instance: " + Boolean.toString(retainPresenterInstance) + " " + this.presenter);
        }
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onDetach() {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onPause() {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onResume() {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onSaveInstanceState(Bundle bundle) {
        if ((this.keepPresenterDuringScreenOrientationChange || this.keepPresenterOnBackstack) && bundle != null) {
            bundle.putString(KEY_MOSBY_VIEW_ID, this.mosbyViewId);
            if (DEBUG) {
                Log.d(DEBUG_TAG, "Saving MosbyViewId into Bundle. ViewId: " + this.mosbyViewId);
            }
        }
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onStart() {
    }

    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    public void onStop() {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e9  */
    @Override // com.hannesdorfmann.mosby3.FragmentMviDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r5, @android.support.annotation.Nullable android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hannesdorfmann.mosby3.FragmentMviDelegateImpl.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
