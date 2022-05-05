package com.google.android.gms.ads.formats;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions.class */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_PORTRAIT = 1;
    public final boolean zzvo;
    public final int zzvp;
    public final boolean zzvq;
    public final int zzvr;
    public final VideoOptions zzvs;
    public final boolean zzvt;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement.class */
    public @interface AdChoicesPlacement {
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$Builder.class */
    public static final class Builder {
        public VideoOptions zzvs;
        public boolean zzvo = false;
        public int zzvp = -1;
        public boolean zzvq = false;
        public int zzvr = 1;
        public boolean zzvt = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.zzvr = i;
            return this;
        }

        public final Builder setImageOrientation(int i) {
            this.zzvp = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.zzvt = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.zzvq = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzvo = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzvs = videoOptions;
            return this;
        }
    }

    public NativeAdOptions(Builder builder) {
        this.zzvo = builder.zzvo;
        this.zzvp = builder.zzvp;
        this.zzvq = builder.zzvq;
        this.zzvr = builder.zzvr;
        this.zzvs = builder.zzvs;
        this.zzvt = builder.zzvt;
    }

    public final int getAdChoicesPlacement() {
        return this.zzvr;
    }

    public final int getImageOrientation() {
        return this.zzvp;
    }

    @Nullable
    public final VideoOptions getVideoOptions() {
        return this.zzvs;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.zzvq;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.zzvo;
    }

    public final boolean zzbe() {
        return this.zzvt;
    }
}
