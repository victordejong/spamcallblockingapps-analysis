package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions.class */
public final class NativeAdOptions {

    /* renamed from: a */
    public final boolean f22698a;

    /* renamed from: b */
    public final int f22699b;

    /* renamed from: c */
    public final int f22700c;

    /* renamed from: d */
    public final boolean f22701d;

    /* renamed from: e */
    public final int f22702e;

    /* renamed from: f */
    public final VideoOptions f22703f;

    /* renamed from: g */
    public final boolean f22704g;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement.class */
    public @interface AdChoicesPlacement {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$Builder.class */
    public static final class Builder {

        /* renamed from: e */
        public VideoOptions f22709e;

        /* renamed from: a */
        public boolean f22705a = false;

        /* renamed from: b */
        public int f22706b = -1;

        /* renamed from: c */
        public int f22707c = 0;

        /* renamed from: d */
        public boolean f22708d = false;

        /* renamed from: f */
        public int f22710f = 1;

        /* renamed from: g */
        public boolean f22711g = false;

        /* renamed from: a */
        public final Builder m18062a(@AdChoicesPlacement int i) {
            this.f22710f = i;
            return this;
        }

        /* renamed from: a */
        public final Builder m18061a(VideoOptions videoOptions) {
            this.f22709e = videoOptions;
            return this;
        }

        /* renamed from: a */
        public final Builder m18059a(boolean z) {
            this.f22708d = z;
            return this;
        }

        /* renamed from: a */
        public final NativeAdOptions m18063a() {
            return new NativeAdOptions(this);
        }

        @Deprecated
        /* renamed from: b */
        public final Builder m18058b(int i) {
            this.f22706b = i;
            return this;
        }

        /* renamed from: b */
        public final Builder m18056b(boolean z) {
            this.f22705a = z;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio.class */
    public @interface NativeMediaAspectRatio {
    }

    public NativeAdOptions(Builder builder) {
        this.f22698a = builder.f22705a;
        this.f22699b = builder.f22706b;
        this.f22700c = builder.f22707c;
        this.f22701d = builder.f22708d;
        this.f22702e = builder.f22710f;
        this.f22703f = builder.f22709e;
        this.f22704g = builder.f22711g;
    }

    /* renamed from: a */
    public final int m18070a() {
        return this.f22702e;
    }

    @Deprecated
    /* renamed from: b */
    public final int m18069b() {
        return this.f22699b;
    }

    /* renamed from: c */
    public final int m18068c() {
        return this.f22700c;
    }

    /* renamed from: d */
    public final VideoOptions m18067d() {
        return this.f22703f;
    }

    /* renamed from: e */
    public final boolean m18066e() {
        return this.f22701d;
    }

    /* renamed from: f */
    public final boolean m18065f() {
        return this.f22698a;
    }

    /* renamed from: g */
    public final boolean m18064g() {
        return this.f22704g;
    }
}
