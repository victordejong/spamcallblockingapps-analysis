package com.taiwanmobile.p055pt.adp.view;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.FastScroller;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMAdSize */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdSize.class */
public class TWMAdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final String FIELD_BANNER = "0";
    public static final String FIELD_IAB_BANNER = "2";
    public static final String FIELD_IAB_LEADERBOARD = "3";
    public static final String FIELD_IAB_MRECT = "1";
    public static final int FULL_WIDTH = -1;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;

    /* renamed from: a */
    public final int f9649a;

    /* renamed from: b */
    public final int f9650b;

    /* renamed from: c */
    public boolean f9651c;

    /* renamed from: d */
    public boolean f9652d;

    /* renamed from: e */
    public boolean f9653e;
    public static final TWMAdSize SMART_BANNER = new TWMAdSize(-1, -2, true);
    public static final TWMAdSize BANNER = new TWMAdSize(320, 50, false);
    public static final TWMAdSize IAB_MRECT = new TWMAdSize(300, 250, false);
    public static final TWMAdSize IAB_BANNER = new TWMAdSize(468, 60, false);
    public static final TWMAdSize IAB_LEADERBOARD = new TWMAdSize(728, 90, false);
    public static final TWMAdSize IAB_WIDE_SKYSCRAPER = new TWMAdSize(160, 600, false);
    public static final TWMAdSize IN_READ_1200X627 = new TWMAdSize(FastScroller.HIDE_DELAY_AFTER_DRAGGING_MS, 627, false);

    public TWMAdSize(int i, int i2) {
        this(i, i2, false);
    }

    public TWMAdSize(int i, int i2, boolean z) {
        this.f9649a = i;
        this.f9650b = i2;
        boolean z2 = true;
        this.f9653e = i == -1;
        if (i2 != -2) {
            z2 = false;
        }
        this.f9651c = z2;
        this.f9652d = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TWMAdSize)) {
            return false;
        }
        TWMAdSize tWMAdSize = (TWMAdSize) obj;
        boolean z = false;
        if (this.f9649a == tWMAdSize.f9649a) {
            z = false;
            if (this.f9650b == tWMAdSize.f9650b) {
                z = true;
            }
        }
        return z;
    }

    public TWMAdSize findBestSize(TWMAdSize[] tWMAdSizeArr) {
        TWMAdSize tWMAdSize = null;
        if (tWMAdSizeArr == null) {
            return null;
        }
        float f = 0.0f;
        int width = getWidth();
        int height = getHeight();
        for (TWMAdSize tWMAdSize2 : tWMAdSizeArr) {
            int width2 = tWMAdSize2.getWidth();
            int height2 = tWMAdSize2.getHeight();
            if (!isSizeAppropriate(width2, height2)) {
                f = f;
            } else {
                float f2 = (width2 * height2) / (width * height);
                f = f2;
                if (f2 > 1.0f) {
                    f = 1.0f / f2;
                }
                if (f <= f) {
                    f = f;
                } else {
                    tWMAdSize = tWMAdSize2;
                }
            }
        }
        return tWMAdSize;
    }

    public int getHeight() {
        return this.f9650b;
    }

    public int getHeightInPixels(Context context) {
        float f;
        float f2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (this.f9649a != -1) {
            f = this.f9650b;
            f2 = displayMetrics.density;
        } else {
            int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
            f = i <= 400 ? 32 : i <= 720 ? 50 : 90;
            f2 = displayMetrics.density;
        }
        return (int) (f * f2);
    }

    public String getTWMAdSizeConstantString() {
        return (this.f9649a == BANNER.getWidth() && this.f9650b == BANNER.getHeight()) ? "0" : (this.f9649a == IAB_MRECT.getWidth() && this.f9650b == IAB_MRECT.getHeight()) ? "1" : (this.f9649a == IAB_BANNER.getWidth() && this.f9650b == IAB_BANNER.getHeight()) ? "2" : (this.f9649a == IAB_LEADERBOARD.getWidth() && this.f9650b == IAB_LEADERBOARD.getHeight()) ? "3" : "0";
    }

    public int getWidth() {
        return this.f9649a;
    }

    public int getWidthInPixels(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = this.f9649a;
        return i != -1 ? (int) (i * displayMetrics.density) : displayMetrics.widthPixels;
    }

    public boolean isAutoHeight() {
        return this.f9651c;
    }

    public boolean isCustomAdSize() {
        return this.f9652d;
    }

    public boolean isFullWidth() {
        return this.f9653e;
    }

    public boolean isSizeAppropriate(int i, int i2) {
        boolean z;
        int width = getWidth();
        int height = getHeight();
        float f = i;
        float f2 = width;
        if (f <= f2 * 1.25f && f >= f2 * 0.8f) {
            float f3 = i2;
            float f4 = height;
            if (f3 <= 1.25f * f4 && f3 >= f4 * 0.8f) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public String toString() {
        if (isFullWidth() && isAutoHeight()) {
            return "smart_banner";
        }
        return getWidth() + "x" + getHeight();
    }
}
