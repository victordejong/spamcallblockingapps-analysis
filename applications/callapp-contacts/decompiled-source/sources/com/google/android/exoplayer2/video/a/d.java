package com.google.android.exoplayer2.video.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final a f22377a;

    /* renamed from: b  reason: collision with root package name */
    public final a f22378b;

    /* renamed from: c  reason: collision with root package name */
    public final int f22379c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f22380d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final b[] f22381a;

        public a(b... bVarArr) {
            this.f22381a = bVarArr;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/d$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f22382a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22383b;

        /* renamed from: c  reason: collision with root package name */
        public final float[] f22384c;

        /* renamed from: d  reason: collision with root package name */
        public final float[] f22385d;

        public b(int i, float[] fArr, float[] fArr2, int i2) {
            this.f22382a = i;
            com.google.android.exoplayer2.util.a.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f22384c = fArr;
            this.f22385d = fArr2;
            this.f22383b = i2;
        }
    }

    public d(a aVar, int i) {
        this(aVar, aVar, i);
    }

    public d(a aVar, a aVar2, int i) {
        this.f22377a = aVar;
        this.f22378b = aVar2;
        this.f22379c = i;
        this.f22380d = aVar == aVar2;
    }
}
