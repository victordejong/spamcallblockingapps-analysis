package com.google.android.exoplayer2.video.p347a;

import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.video.a.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/d.class */
public final class C11644d {

    /* renamed from: a */
    public final C11645a f38789a;

    /* renamed from: b */
    public final C11645a f38790b;

    /* renamed from: c */
    public final int f38791c;

    /* renamed from: d */
    public final boolean f38792d;

    /* renamed from: com.google.android.exoplayer2.video.a.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/d$a.class */
    public static final class C11645a {

        /* renamed from: a */
        public final C11646b[] f38793a;

        public C11645a(C11646b... c11646bArr) {
            this.f38793a = c11646bArr;
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.a.d$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/d$b.class */
    public static final class C11646b {

        /* renamed from: a */
        public final int f38794a;

        /* renamed from: b */
        public final int f38795b;

        /* renamed from: c */
        public final float[] f38796c;

        /* renamed from: d */
        public final float[] f38797d;

        public C11646b(int i, float[] fArr, float[] fArr2, int i2) {
            this.f38794a = i;
            C11593a.m20022a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f38796c = fArr;
            this.f38797d = fArr2;
            this.f38795b = i2;
        }
    }

    public C11644d(C11645a c11645a, int i) {
        this(c11645a, c11645a, i);
    }

    public C11644d(C11645a c11645a, C11645a c11645a2, int i) {
        this.f38789a = c11645a;
        this.f38790b = c11645a2;
        this.f38791c = i;
        this.f38792d = c11645a == c11645a2;
    }
}
