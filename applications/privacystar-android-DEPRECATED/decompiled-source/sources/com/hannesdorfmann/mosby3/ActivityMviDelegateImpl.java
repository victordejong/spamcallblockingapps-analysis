package com.hannesdorfmann.mosby3;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.hannesdorfmann.mosby3.mvi.MviPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ActivityMviDelegateImpl.class */
public class ActivityMviDelegateImpl<V extends MvpView, P extends MviPresenter<V, ?>> implements ActivityMviDelegate {
    public static boolean DEBUG = false;
    private static final String DEBUG_TAG = "ActivityMviDelegateImpl";
    private static final String KEY_MOSBY_VIEW_ID = "com.hannesdorfmann.mosby3.activity.mvi.id";
    private Activity activity;
    private MviDelegateCallback<V, P> delegateCallback;
    private boolean keepPresenterInstance;
    private String mosbyViewId;
    private P presenter;

    public ActivityMviDelegateImpl(@NonNull Activity activity, @NonNull MviDelegateCallback<V, P> mviDelegateCallback) {
        this(activity, mviDelegateCallback, true);
    }

    public ActivityMviDelegateImpl(@NonNull Activity activity, @NonNull MviDelegateCallback<V, P> mviDelegateCallback, boolean z) {
        this.mosbyViewId = null;
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        } else if (mviDelegateCallback == null) {
            throw new NullPointerException("MvpDelegateCallback is null!");
        } else {
            this.delegateCallback = mviDelegateCallback;
            this.activity = activity;
            this.keepPresenterInstance = z;
        }
    }

    private P createViewIdAndCreatePresenter() {
        P createPresenter = this.delegateCallback.createPresenter();
        if (createPresenter == null) {
            throw new NullPointerException("Presenter returned from createPresenter() is null. Activity is " + this.activity);
        }
        if (this.keepPresenterInstance) {
            this.mosbyViewId = UUID.randomUUID().toString();
            PresenterManager.putPresenter(this.activity, this.mosbyViewId, createPresenter);
        }
        return createPresenter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean retainPresenterInstance(boolean z, Activity activity) {
        return z && (activity.isChangingConfigurations() || !activity.isFinishing());
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onContentChanged() {
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onCreate(@Nullable Bundle bundle) {
        if (this.keepPresenterInstance && bundle != null) {
            this.mosbyViewId = bundle.getString(KEY_MOSBY_VIEW_ID);
        }
        if (DEBUG) {
            Log.d(DEBUG_TAG, "MosbyView ID = " + this.mosbyViewId + " for MvpView: " + this.delegateCallback.getMvpView());
        }
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onDestroy() {
        this.presenter = null;
        this.activity = null;
        this.delegateCallback = null;
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onPause() {
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onPostCreate(Bundle bundle) {
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onRestart() {
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onResume() {
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onSaveInstanceState(Bundle bundle) {
        if (this.keepPresenterInstance && bundle != null) {
            bundle.putString(KEY_MOSBY_VIEW_ID, this.mosbyViewId);
            if (DEBUG) {
                Log.d(DEBUG_TAG, "Saving MosbyViewId into Bundle. ViewId: " + this.mosbyViewId);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f9  */
    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStart() {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hannesdorfmann.mosby3.ActivityMviDelegateImpl.onStart():void");
    }

    @Override // com.hannesdorfmann.mosby3.ActivityMviDelegate
    public void onStop() {
        boolean retainPresenterInstance = retainPresenterInstance(this.keepPresenterInstance, this.activity);
        this.presenter.detachView(retainPresenterInstance);
        if (DEBUG) {
            Log.d(DEBUG_TAG, "detached MvpView from Presenter. MvpView " + this.delegateCallback.getMvpView() + "   Presenter: " + this.presenter);
        }
        if (!retainPresenterInstance) {
            if (this.mosbyViewId != null) {
                PresenterManager.remove(this.activity, this.mosbyViewId);
            }
            Log.d(DEBUG_TAG, "Destroying Presenter permanently " + this.presenter);
        }
    }
}
