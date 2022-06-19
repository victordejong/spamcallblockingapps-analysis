package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.VideoOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions.class */
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
    private final boolean zzbob;
    private final int zzbod;
    private final boolean zzboe;
    private final int zzbof;
    private final VideoOptions zzbog;
    private final boolean zzboh;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement.class */
    public @interface AdChoicesPlacement {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions$Builder.class */
    public static final class Builder {
        private VideoOptions zzbog;
        private boolean zzbob = false;
        private int zzbod = 0;
        private boolean zzboe = false;
        private int zzbof = 1;
        private boolean zzboh = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this);
        }

        public final Builder setAdChoicesPlacement(int i) {
            this.zzbof = i;
            return this;
        }

        public final Builder setMediaAspectRatio(int i) {
            this.zzbod = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.zzboh = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.zzboe = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzbob = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzbog = videoOptions;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio.class */
    public @interface NativeMediaAspectRatio {
    }

    private NativeAdOptions(Builder builder) {
        this.zzbob = builder.zzbob;
        this.zzbod = builder.zzbod;
        this.zzboe = builder.zzboe;
        this.zzbof = builder.zzbof;
        this.zzbog = builder.zzbog;
        this.zzboh = builder.zzboh;
    }

    public final int getAdChoicesPlacement() {
        return this.zzbof;
    }

    public final int getMediaAspectRatio() {
        return this.zzbod;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbog;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.zzboe;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.zzbob;
    }

    public final boolean zzjx() {
        return this.zzboh;
    }
}
