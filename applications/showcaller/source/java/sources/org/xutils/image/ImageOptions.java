package org.xutils.image;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import org.xutils.common.util.DensityUtil;
import org.xutils.common.util.LogUtil;
import org.xutils.http.RequestParams;
/* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageOptions.class */
public class ImageOptions {
    public static final ImageOptions DEFAULT = new ImageOptions();

    /* renamed from: a */
    private int f40828a = 0;

    /* renamed from: b */
    private int f40829b = 0;

    /* renamed from: c */
    private int f40830c = 0;

    /* renamed from: d */
    private int f40831d = 0;

    /* renamed from: e */
    private boolean f40832e = false;

    /* renamed from: f */
    private int f40833f = 0;

    /* renamed from: g */
    private boolean f40834g = false;

    /* renamed from: h */
    private boolean f40835h = false;

    /* renamed from: i */
    private boolean f40836i = false;

    /* renamed from: j */
    private boolean f40837j = true;

    /* renamed from: k */
    private Bitmap.Config f40838k = Bitmap.Config.RGB_565;

    /* renamed from: l */
    private boolean f40839l = true;

    /* renamed from: m */
    private int f40840m = 0;

    /* renamed from: n */
    private int f40841n = 0;

    /* renamed from: o */
    private Drawable f40842o = null;

    /* renamed from: p */
    private Drawable f40843p = null;

    /* renamed from: q */
    private boolean f40844q = true;

    /* renamed from: r */
    private ImageView.ScaleType f40845r = ImageView.ScaleType.CENTER_INSIDE;

    /* renamed from: s */
    private ImageView.ScaleType f40846s = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: t */
    private boolean f40847t = false;

    /* renamed from: u */
    private Animation f40848u = null;

    /* renamed from: v */
    private boolean f40849v = true;

    /* renamed from: w */
    private ParamsBuilder f40850w;

    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageOptions$Builder.class */
    public static class Builder {
        protected ImageOptions options;

        public Builder() {
            newImageOptions();
        }

        public ImageOptions build() {
            return this.options;
        }

        protected void newImageOptions() {
            this.options = new ImageOptions();
        }

        public Builder setAnimation(Animation animation) {
            this.options.f40848u = animation;
            return this;
        }

        public Builder setAutoRotate(boolean z) {
            this.options.f40836i = z;
            return this;
        }

        public Builder setCircular(boolean z) {
            this.options.f40835h = z;
            return this;
        }

        public Builder setConfig(Bitmap.Config config) {
            this.options.f40838k = config;
            return this;
        }

        public Builder setCrop(boolean z) {
            this.options.f40832e = z;
            return this;
        }

        public Builder setFadeIn(boolean z) {
            this.options.f40847t = z;
            return this;
        }

        public Builder setFailureDrawable(Drawable drawable) {
            this.options.f40843p = drawable;
            return this;
        }

        public Builder setFailureDrawableId(int i) {
            this.options.f40841n = i;
            return this;
        }

        public Builder setForceLoadingDrawable(boolean z) {
            this.options.f40844q = z;
            return this;
        }

        public Builder setIgnoreGif(boolean z) {
            this.options.f40839l = z;
            return this;
        }

        public Builder setImageScaleType(ImageView.ScaleType scaleType) {
            this.options.f40846s = scaleType;
            return this;
        }

        public Builder setLoadingDrawable(Drawable drawable) {
            this.options.f40842o = drawable;
            return this;
        }

        public Builder setLoadingDrawableId(int i) {
            this.options.f40840m = i;
            return this;
        }

        public Builder setParamsBuilder(ParamsBuilder paramsBuilder) {
            this.options.f40850w = paramsBuilder;
            return this;
        }

        public Builder setPlaceholderScaleType(ImageView.ScaleType scaleType) {
            this.options.f40845r = scaleType;
            return this;
        }

        public Builder setRadius(int i) {
            this.options.f40833f = i;
            return this;
        }

        public Builder setSize(int i, int i2) {
            this.options.f40830c = i;
            this.options.f40831d = i2;
            return this;
        }

        public Builder setSquare(boolean z) {
            this.options.f40834g = z;
            return this;
        }

        public Builder setUseMemCache(boolean z) {
            this.options.f40849v = z;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageOptions$ParamsBuilder.class */
    public interface ParamsBuilder {
        RequestParams buildParams(RequestParams requestParams, ImageOptions imageOptions);
    }

    protected ImageOptions() {
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImageOptions imageOptions = (ImageOptions) obj;
        if (this.f40828a != imageOptions.f40828a || this.f40829b != imageOptions.f40829b || this.f40830c != imageOptions.f40830c || this.f40831d != imageOptions.f40831d || this.f40832e != imageOptions.f40832e || this.f40833f != imageOptions.f40833f || this.f40834g != imageOptions.f40834g || this.f40835h != imageOptions.f40835h || this.f40836i != imageOptions.f40836i || this.f40837j != imageOptions.f40837j) {
            return false;
        }
        if (this.f40838k != imageOptions.f40838k) {
            z = false;
        }
        return z;
    }

    public Animation getAnimation() {
        return this.f40848u;
    }

    public Bitmap.Config getConfig() {
        return this.f40838k;
    }

    public Drawable getFailureDrawable(ImageView imageView) {
        if (this.f40843p == null && this.f40841n > 0 && imageView != null) {
            try {
                this.f40843p = imageView.getResources().getDrawable(this.f40841n);
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
        }
        return this.f40843p;
    }

    public int getHeight() {
        return this.f40831d;
    }

    public ImageView.ScaleType getImageScaleType() {
        return this.f40846s;
    }

    public Drawable getLoadingDrawable(ImageView imageView) {
        if (this.f40842o == null && this.f40840m > 0 && imageView != null) {
            try {
                this.f40842o = imageView.getResources().getDrawable(this.f40840m);
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
        }
        return this.f40842o;
    }

    public int getMaxHeight() {
        return this.f40829b;
    }

    public int getMaxWidth() {
        return this.f40828a;
    }

    public ParamsBuilder getParamsBuilder() {
        return this.f40850w;
    }

    public ImageView.ScaleType getPlaceholderScaleType() {
        return this.f40845r;
    }

    public int getRadius() {
        return this.f40833f;
    }

    public int getWidth() {
        return this.f40830c;
    }

    public int hashCode() {
        int i = this.f40828a;
        int i2 = this.f40829b;
        int i3 = this.f40830c;
        int i4 = this.f40831d;
        boolean z = this.f40832e;
        int i5 = this.f40833f;
        boolean z2 = this.f40834g;
        boolean z3 = this.f40835h;
        boolean z4 = this.f40836i;
        boolean z5 = this.f40837j;
        Bitmap.Config config = this.f40838k;
        return (((((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (z ? 1 : 0)) * 31) + i5) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + (z5 ? 1 : 0)) * 31) + (config != null ? config.hashCode() : 0);
    }

    public boolean isAutoRotate() {
        return this.f40836i;
    }

    public boolean isCircular() {
        return this.f40835h;
    }

    public boolean isCompress() {
        return this.f40837j;
    }

    public boolean isCrop() {
        return this.f40832e;
    }

    public boolean isFadeIn() {
        return this.f40847t;
    }

    public boolean isForceLoadingDrawable() {
        return this.f40844q;
    }

    public boolean isIgnoreGif() {
        return this.f40839l;
    }

    public boolean isSquare() {
        return this.f40834g;
    }

    public boolean isUseMemCache() {
        return this.f40849v;
    }

    public String toString() {
        return "_" + this.f40828a + "_" + this.f40829b + "_" + this.f40830c + "_" + this.f40831d + "_" + this.f40833f + "_" + this.f40838k + "_" + (this.f40832e ? 1 : 0) + (this.f40834g ? 1 : 0) + (this.f40835h ? 1 : 0) + (this.f40836i ? 1 : 0) + (this.f40837j ? 1 : 0);
    }

    /* renamed from: u */
    public final void m151u(ImageView imageView) {
        int i;
        int i2 = this.f40830c;
        if (i2 > 0 && (i = this.f40831d) > 0) {
            this.f40828a = i2;
            this.f40829b = i;
            return;
        }
        int screenWidth = DensityUtil.getScreenWidth();
        int screenHeight = DensityUtil.getScreenHeight();
        if (this == DEFAULT) {
            int i3 = (screenWidth * 3) / 2;
            this.f40830c = i3;
            this.f40828a = i3;
            int i4 = (screenHeight * 3) / 2;
            this.f40831d = i4;
            this.f40829b = i4;
            return;
        }
        if (this.f40830c < 0) {
            this.f40828a = (screenWidth * 3) / 2;
            this.f40837j = false;
        }
        if (this.f40831d < 0) {
            this.f40829b = (screenHeight * 3) / 2;
            this.f40837j = false;
        }
        if (imageView == null && this.f40828a <= 0 && this.f40829b <= 0) {
            this.f40828a = screenWidth;
            this.f40829b = screenHeight;
            return;
        }
        int i5 = this.f40828a;
        int i6 = this.f40829b;
        int i7 = i5;
        int i8 = i6;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            int i9 = i5;
            int i10 = i6;
            if (layoutParams != null) {
                int i11 = i5;
                if (i5 <= 0) {
                    int i12 = layoutParams.width;
                    if (i12 > 0) {
                        if (this.f40830c <= 0) {
                            this.f40830c = i12;
                        }
                        i11 = i12;
                    } else {
                        i11 = i5;
                        if (i12 != -2) {
                            i11 = imageView.getWidth();
                        }
                    }
                }
                i9 = i11;
                i10 = i6;
                if (i6 <= 0) {
                    int i13 = layoutParams.height;
                    if (i13 > 0) {
                        if (this.f40831d <= 0) {
                            this.f40831d = i13;
                        }
                        i10 = i13;
                        i9 = i11;
                    } else {
                        i9 = i11;
                        i10 = i6;
                        if (i13 != -2) {
                            i10 = imageView.getHeight();
                            i9 = i11;
                        }
                    }
                }
            }
            i7 = i9;
            i8 = i10;
            if (Build.VERSION.SDK_INT >= 16) {
                int i14 = i9;
                if (i9 <= 0) {
                    i14 = imageView.getMaxWidth();
                }
                i7 = i14;
                i8 = i10;
                if (i10 <= 0) {
                    i8 = imageView.getMaxHeight();
                    i7 = i14;
                }
            }
        }
        int i15 = i7 <= 0 ? screenWidth : i7;
        if (i8 <= 0) {
            i8 = screenHeight;
        }
        this.f40828a = i15;
        this.f40829b = i8;
    }
}
