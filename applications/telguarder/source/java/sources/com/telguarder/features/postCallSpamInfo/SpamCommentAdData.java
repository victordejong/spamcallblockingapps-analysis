package com.telguarder.features.postCallSpamInfo;

import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProxy;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentAdData.class */
public class SpamCommentAdData extends SpamCommentData {
    private ListbannerAdvertProxy mListbannerAdvertProxy;

    public SpamCommentAdData(AppCompatActivity appCompatActivity, Advert advert) {
        this.mItemType = 4;
        this.mListbannerAdvertProxy = new ListbannerAdvertProxy(appCompatActivity, advert, this);
    }

    public void bindAd(ViewGroup viewGroup) {
        this.mListbannerAdvertProxy.onBindAd(viewGroup);
    }

    public void load(Runnable runnable) {
        this.mListbannerAdvertProxy.load(runnable);
    }

    public void onDestroy() {
        synchronized (this) {
            this.mListbannerAdvertProxy.onDestroy();
        }
    }

    public void onPause() {
        synchronized (this) {
            this.mListbannerAdvertProxy.onPause();
        }
    }

    public void onResume() {
        synchronized (this) {
            this.mListbannerAdvertProxy.onResume();
        }
    }

    public void onStop() {
        synchronized (this) {
            this.mListbannerAdvertProxy.onStop();
        }
    }
}
