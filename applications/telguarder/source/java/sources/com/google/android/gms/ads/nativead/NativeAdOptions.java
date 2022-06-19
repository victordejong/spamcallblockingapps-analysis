package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.VideoOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions.class */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;
    private final boolean zzbnr;
    private final int zzbnt;
    private final boolean zzbnu;
    private final int zzbnv;
    private final VideoOptions zzbnw;
    private final boolean zzbnx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement.class */
    public @interface AdChoicesPlacement {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions$Builder.class */
    public static final class Builder {
        private VideoOptions zzbnw;
        private boolean zzbnr = false;
        private int zzbnt = 0;
        private boolean zzbnu = false;
        private int zzbnv = 1;
        private boolean zzbnx = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this);
        }

        public final Builder setAdChoicesPlacement(int i) {
            this.zzbnv = i;
            return this;
        }

        public final Builder setMediaAspectRatio(int i) {
            this.zzbnt = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.zzbnx = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.zzbnu = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzbnr = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzbnw = videoOptions;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio.class */
    public @interface NativeMediaAspectRatio {
    }

    private NativeAdOptions(Builder builder) {
        this.zzbnr = builder.zzbnr;
        this.zzbnt = builder.zzbnt;
        this.zzbnu = builder.zzbnu;
        this.zzbnv = builder.zzbnv;
        this.zzbnw = builder.zzbnw;
        this.zzbnx = builder.zzbnx;
    }

    public final int getAdChoicesPlacement() {
        return this.zzbnv;
    }

    public final int getMediaAspectRatio() {
        return this.zzbnt;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbnw;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.zzbnu;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.zzbnr;
    }

    public final boolean zzjt() {
        return this.zzbnx;
    }
}
