package com.telguarder.helpers.backend;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.Fragment;
import com.telguarder.helpers.log.Logger;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/BackendCallbackListener.class */
public abstract class BackendCallbackListener<T> {
    private Activity mActivity;
    private Context mContext;
    private Fragment mFragment;
    private boolean mIsCancelled;
    private boolean mIsExecutingWithoutUserInterface;

    public BackendCallbackListener() {
        this.mIsExecutingWithoutUserInterface = false;
        Logger.debug(BackendCallbackListener.class.toString() + " -> Check UI visibility if you constructing a callback listener object from UI thread!");
        this.mIsExecutingWithoutUserInterface = true;
    }

    public BackendCallbackListener(Activity activity) {
        this.mIsExecutingWithoutUserInterface = false;
        this.mActivity = activity;
    }

    public BackendCallbackListener(Context context) {
        this.mIsExecutingWithoutUserInterface = false;
        this.mContext = context;
    }

    public BackendCallbackListener(Fragment fragment) {
        this.mIsExecutingWithoutUserInterface = false;
        this.mFragment = fragment;
    }

    private boolean isActivityInForeGround() {
        Activity activity = this.mActivity;
        return activity != null && !activity.isFinishing();
    }

    private boolean isContextMode() {
        return this.mContext != null;
    }

    private boolean isFragmentInForeGround() {
        Fragment fragment = this.mFragment;
        return fragment != null && fragment.getActivity() != null && !this.mFragment.getActivity().isFinishing() && this.mFragment.isAdded() && this.mFragment.isVisible();
    }

    private boolean isScreenInForeGround() {
        return isContextMode() || isActivityInForeGround() || isFragmentInForeGround();
    }

    public void cancel() {
        this.mIsCancelled = true;
    }

    public abstract void onError(Exception exc);

    public abstract void onStart();

    public abstract void onSuccess(T t);

    public void triggerError(Exception exc) {
        if (this.mIsCancelled) {
            return;
        }
        if (!isScreenInForeGround() && !this.mIsExecutingWithoutUserInterface) {
            return;
        }
        onError(exc);
    }

    public void triggerStart() {
        if (this.mIsCancelled) {
            return;
        }
        if (!isScreenInForeGround() && !this.mIsExecutingWithoutUserInterface) {
            return;
        }
        onStart();
    }

    public void triggerSuccess(T t) {
        if (this.mIsCancelled) {
            return;
        }
        if (!isScreenInForeGround() && !this.mIsExecutingWithoutUserInterface) {
            return;
        }
        onSuccess(t);
    }
}
