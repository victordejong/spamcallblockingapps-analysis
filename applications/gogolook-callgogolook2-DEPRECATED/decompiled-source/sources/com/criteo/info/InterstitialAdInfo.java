package com.criteo.info;

import android.content.Context;
import com.criteo.utils.Tracer;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/criteo/info/InterstitialAdInfo.class */
public class InterstitialAdInfo extends AdInfo implements Serializable {
    public static final String TAG = "criteo.Stories.InterstitialAdInfo";
    public static final long serialVersionUID = 1;
    public String mClickInfo;
    public int mHeight;
    public String mHtmlUrl;
    public int mWidth;

    public InterstitialAdInfo(String str, String str2, String str3, String str4, String str5) {
        super(str);
        Tracer.debug(TAG, "BannerAdInfo: ");
        this.mClickInfo = str2;
        this.mHtmlUrl = str3;
        this.mWidth = Integer.parseInt(str4);
        this.mHeight = Integer.parseInt(str5);
    }

    @Override // com.criteo.info.AdInfo
    public void deleteAllImages(Context context) {
        Tracer.debug(TAG, "deleteAllImages: ");
    }

    public String getClickInfo() {
        Tracer.debug(TAG, "getClickInfo: " + this.mClickInfo);
        return this.mClickInfo;
    }

    public String getHtmlUrl() {
        Tracer.debug(TAG, "getHtmlUrl: ");
        return this.mHtmlUrl;
    }

    public int getmHeight() {
        return this.mHeight;
    }

    public int getmWidth() {
        return this.mWidth;
    }

    @Override // com.criteo.info.AdInfo
    public boolean isAdValid(Context context) {
        Tracer.debug(TAG, "isAdValid: ");
        return true;
    }

    @Override // com.criteo.info.AdInfo
    public boolean isImageRequired(Context context) {
        Tracer.debug(TAG, "isImageRequired: ");
        return true;
    }
}
