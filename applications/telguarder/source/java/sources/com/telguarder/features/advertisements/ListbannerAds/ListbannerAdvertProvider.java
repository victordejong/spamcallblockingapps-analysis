package com.telguarder.features.advertisements.ListbannerAds;

import android.content.Context;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.features.advertisements.Advert;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider.class */
public class ListbannerAdvertProvider {
    public ViewGroup mAdContainer;
    protected Advert mAdvert;
    protected AppCompatActivity mHostActivity;
    protected Runnable mOnError;
    protected Runnable mOnSuccess;
    protected boolean resumed = false;
    protected boolean closed = false;
    public boolean adLoadStarted = false;
    public boolean adLoaded = false;
    public boolean adClicked = false;
    protected long adShowBeginTimestamp = 0;
    public int mVisibilityPrcnt = 0;

    public ListbannerAdvertProvider(Advert advert, AppCompatActivity appCompatActivity) {
        this.mAdvert = advert;
        this.mHostActivity = appCompatActivity;
    }

    public void bindAd(ViewGroup viewGroup) {
    }

    public void onDestroy() {
    }

    public void onHideViews() {
        ViewGroup viewGroup = this.mAdContainer;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        this.adLoadStarted = true;
        this.closed = false;
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
