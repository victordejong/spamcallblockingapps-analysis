package com.pubmatic.sdk.common.network;

import android.graphics.Bitmap;
import android.widget.ImageView;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBImageRequest.class */
public class POBImageRequest extends POBHttpRequest {

    /* renamed from: i */
    private int f521i;

    /* renamed from: j */
    private int f522j;

    /* renamed from: k */
    private ImageView.ScaleType f523k;

    /* renamed from: l */
    private Bitmap.Config f524l;

    public Bitmap.Config getDecodeConfig() {
        return this.f524l;
    }

    public int getMaxHeight() {
        return this.f522j;
    }

    public int getMaxWidth() {
        return this.f521i;
    }

    public ImageView.ScaleType getScaleType() {
        return this.f523k;
    }

    public void setDecodeConfig(Bitmap.Config config) {
        this.f524l = config;
    }

    public void setMaxHeight(int i) {
        this.f522j = i;
    }

    public void setMaxWidth(int i) {
        this.f521i = i;
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        this.f523k = scaleType;
    }
}
