package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider.class */
public class PostcallAdvertProvider {
    protected Advert mAdvert;
    protected ViewGroup mHolder;
    private AppCompatActivity mHostActivity;
    protected Runnable mOnError;
    protected Runnable mOnSuccess;
    protected boolean closed = false;
    public boolean adPresented = false;
    public boolean holderPreparedAlready = false;
    public boolean newLoadStartedAlready = false;
    public boolean adClicked = false;
    protected long adShowBeginTimestamp = 0;
    public int mVisibilityPrcnt = 0;

    public PostcallAdvertProvider(Advert advert, AppCompatActivity appCompatActivity) {
        this.mAdvert = advert;
        this.mHostActivity = appCompatActivity;
        onInitViews();
    }

    public void detachEvents() {
        this.closed = true;
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.newLoadStartedAlready = false;
        this.adClicked = false;
        this.mOnSuccess = null;
        this.mOnError = null;
    }

    public AppCompatActivity getHostActivity() {
        if (this.mHostActivity == null && LastPhoneCallActivity.isInstantiated()) {
            this.mHostActivity = LastPhoneCallActivity.getInstance();
        }
        return this.mHostActivity;
    }

    public void onDestroy() {
    }

    public void onHideViews() {
        ViewGroup viewGroup = this.mHolder;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public void onInitViews() {
    }

    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        this.closed = false;
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.newLoadStartedAlready = false;
        this.adClicked = false;
        this.mOnSuccess = runnable;
        this.mOnError = runnable2;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStop() {
    }
}
