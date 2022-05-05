package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhd.class */
public abstract class zzhd {

    /* renamed from: a */
    int f8473a;

    /* renamed from: b */
    int f8474b;

    /* renamed from: c */
    zzhe f8475c;

    private zzhd() {
        this.f8474b = 100;
    }

    /* renamed from: b */
    public static long m12608b(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static zzhd m12607c(byte[] bArr, int i, int i2, boolean z) {
        zzhf zzhfVar = new zzhf(bArr, i2);
        try {
            zzhfVar.mo12582h(i2);
            return zzhfVar;
        } catch (zzih e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: k */
    public static int m12606k(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: A */
    public abstract int mo12596A();

    /* renamed from: a */
    public abstract int mo12587a() throws IOException;

    /* renamed from: d */
    public abstract void mo12586d(int i) throws zzih;

    /* renamed from: e */
    public abstract double mo12585e() throws IOException;

    /* renamed from: f */
    public abstract boolean mo12584f(int i) throws IOException;

    /* renamed from: g */
    public abstract float mo12583g() throws IOException;

    /* renamed from: h */
    public abstract int mo12582h(int i) throws zzih;

    /* renamed from: i */
    public abstract long mo12581i() throws IOException;

    /* renamed from: j */
    public abstract void mo12580j(int i);

    /* renamed from: l */
    public abstract long mo12579l() throws IOException;

    /* renamed from: m */
    public abstract int mo12578m() throws IOException;

    /* renamed from: n */
    public abstract long mo12577n() throws IOException;

    /* renamed from: o */
    public abstract int mo12576o() throws IOException;

    /* renamed from: p */
    public abstract boolean mo12575p() throws IOException;

    /* renamed from: q */
    public abstract String mo12574q() throws IOException;

    /* renamed from: r */
    public abstract String mo12573r() throws IOException;

    /* renamed from: s */
    public abstract zzgr mo12572s() throws IOException;

    /* renamed from: t */
    public abstract int mo12571t() throws IOException;

    /* renamed from: u */
    public abstract int mo12570u() throws IOException;

    /* renamed from: v */
    public abstract int mo12569v() throws IOException;

    /* renamed from: w */
    public abstract long mo12568w() throws IOException;

    /* renamed from: x */
    public abstract int mo12567x() throws IOException;

    /* renamed from: y */
    public abstract long mo12566y() throws IOException;

    /* renamed from: z */
    public abstract boolean mo12565z() throws IOException;
}
