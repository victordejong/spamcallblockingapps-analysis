package com.tenor.android.core.model.impl;

import com.tenor.android.core.constant.StringConstant;
import e.m.e.d0.b;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/model/impl/Image.class */
public class Image implements Serializable {
    private static final long serialVersionUID = -8616498739266612929L;
    @b("dims")
    private int[] dimensions;
    private String url;

    public float getAspectRatio() {
        float width = getWidth() / getHeight();
        if (width < 0.01f || width > 5.01f) {
            width = 1.778f;
        }
        return width;
    }

    public int getHeight() {
        int[] iArr = this.dimensions;
        return (iArr == null || iArr.length != 2) ? -1 : iArr[1];
    }

    public String getUrl() {
        return StringConstant.getOrEmpty(this.url);
    }

    public int getWidth() {
        int[] iArr = this.dimensions;
        return (iArr == null || iArr.length != 2) ? -1 : iArr[0];
    }
}
