package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmi.class */
public abstract class dmi {

    /* renamed from: a */
    int f47216a;

    /* renamed from: b */
    int f47217b;

    /* renamed from: c */
    int f47218c;

    /* renamed from: d */
    dmp f47219d;

    /* renamed from: e */
    private boolean f47220e;

    /* JADX INFO: Access modifiers changed from: private */
    public dmi() {
        this.f47217b = 100;
        this.f47218c = Integer.MAX_VALUE;
        this.f47220e = false;
    }

    /* renamed from: a */
    public static long m16456a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static dmi m16455a(byte[] bArr, int i, int i2, boolean z) {
        dmk dmkVar = new dmk(bArr, i, i2, z);
        try {
            dmkVar.mo16439c(i2);
            return dmkVar;
        } catch (zzenn e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m16454e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public abstract int mo16444a() throws IOException;

    /* renamed from: a */
    public abstract void mo16443a(int i) throws zzenn;

    /* renamed from: b */
    public abstract double mo16442b() throws IOException;

    /* renamed from: b */
    public abstract boolean mo16441b(int i) throws IOException;

    /* renamed from: c */
    public abstract float mo16440c() throws IOException;

    /* renamed from: c */
    public abstract int mo16439c(int i) throws zzenn;

    /* renamed from: d */
    public abstract long mo16438d() throws IOException;

    /* renamed from: d */
    public abstract void mo16437d(int i);

    /* renamed from: e */
    public abstract long mo16436e() throws IOException;

    /* renamed from: f */
    public abstract int mo16435f() throws IOException;

    /* renamed from: g */
    public abstract long mo16433g() throws IOException;

    /* renamed from: h */
    public abstract int mo16431h() throws IOException;

    /* renamed from: i */
    public abstract boolean mo16429i() throws IOException;

    /* renamed from: j */
    public abstract String mo16427j() throws IOException;

    /* renamed from: k */
    public abstract String mo16425k() throws IOException;

    /* renamed from: l */
    public abstract dlw mo16423l() throws IOException;

    /* renamed from: m */
    public abstract int mo16422m() throws IOException;

    /* renamed from: n */
    public abstract int mo16421n() throws IOException;

    /* renamed from: o */
    public abstract int mo16420o() throws IOException;

    /* renamed from: p */
    public abstract long mo16419p() throws IOException;

    /* renamed from: q */
    public abstract int mo16418q() throws IOException;

    /* renamed from: r */
    public abstract long mo16417r() throws IOException;

    /* renamed from: s */
    public abstract long mo16416s() throws IOException;

    /* renamed from: t */
    public abstract boolean mo16415t() throws IOException;

    /* renamed from: u */
    public abstract int mo16414u();
}
