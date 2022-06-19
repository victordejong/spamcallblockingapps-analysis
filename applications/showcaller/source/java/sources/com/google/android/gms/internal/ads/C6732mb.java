package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.mb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mb.class */
public final class C6732mb {

    /* renamed from: a */
    public final AbstractC6589ig f26506a;

    /* renamed from: b */
    public final Object f26507b;

    /* renamed from: c */
    public final int f26508c;

    /* renamed from: d */
    public final AbstractC6996tg[] f26509d = new AbstractC6996tg[2];

    /* renamed from: e */
    public final boolean[] f26510e = new boolean[2];

    /* renamed from: f */
    public final long f26511f;

    /* renamed from: g */
    public int f26512g;

    /* renamed from: h */
    public long f26513h;

    /* renamed from: i */
    public boolean f26514i;

    /* renamed from: j */
    public boolean f26515j;

    /* renamed from: k */
    public boolean f26516k;

    /* renamed from: l */
    public C6732mb f26517l;

    /* renamed from: m */
    public C6738mh f26518m;

    /* renamed from: n */
    private final AbstractC7028ub[] f26519n;

    /* renamed from: o */
    private final AbstractC7065vb[] f26520o;

    /* renamed from: p */
    private final AbstractC6701lh f26521p;

    /* renamed from: q */
    private final AbstractC6663kg f26522q;

    /* renamed from: r */
    private C6738mh f26523r;

    /* renamed from: s */
    private final gl0 f26524s;

    public C6732mb(AbstractC7028ub[] abstractC7028ubArr, AbstractC7065vb[] abstractC7065vbArr, long j, AbstractC6701lh abstractC6701lh, gl0 gl0Var, AbstractC6663kg abstractC6663kg, Object obj, int i, int i2, boolean z, long j2, byte[] bArr) {
        this.f26519n = abstractC7028ubArr;
        this.f26520o = abstractC7065vbArr;
        this.f26511f = j;
        this.f26521p = abstractC6701lh;
        this.f26524s = gl0Var;
        this.f26522q = abstractC6663kg;
        Objects.requireNonNull(obj);
        this.f26507b = obj;
        this.f26508c = i;
        this.f26512g = i2;
        this.f26514i = z;
        this.f26513h = j2;
        this.f26506a = abstractC6663kg.mo12918d(i2, gl0Var.m14901l());
    }

    /* renamed from: a */
    public final boolean m13314a() {
        boolean z = true;
        if (this.f26515j) {
            if (this.f26516k) {
                if (this.f26506a.mo13562k() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public final boolean m13313b() {
        C6738mh mo13519a = this.f26521p.mo13519a(this.f26520o, this.f26506a.mo13560m());
        C6738mh c6738mh = this.f26523r;
        if (c6738mh != null) {
            for (int i = 0; i < 2; i++) {
                if (mo13519a.m13198a(c6738mh, i)) {
                }
            }
            return false;
        }
        this.f26518m = mo13519a;
        return true;
    }

    /* renamed from: c */
    public final long m13312c(long j, boolean z) {
        return m13311d(j, false, new boolean[2]);
    }

    /* renamed from: d */
    public final long m13311d(long j, boolean z, boolean[] zArr) {
        C6627jh c6627jh = this.f26518m.f26598b;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= 2) {
                break;
            }
            boolean[] zArr2 = this.f26510e;
            if (z || !this.f26518m.m13198a(this.f26523r, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long mo13564i = this.f26506a.mo13564i(c6627jh.m14127b(), this.f26510e, this.f26509d, zArr, j);
        this.f26523r = this.f26518m;
        this.f26516k = false;
        int i2 = 0;
        while (true) {
            AbstractC6996tg[] abstractC6996tgArr = this.f26509d;
            if (i2 >= 2) {
                this.f26524s.m14911b(this.f26519n, this.f26518m.f26597a, c6627jh);
                return mo13564i;
            }
            if (abstractC6996tgArr[i2] != null) {
                C6367ci.m16039d(c6627jh.m14128a(i2) != null);
                this.f26516k = true;
            } else {
                C6367ci.m16039d(c6627jh.m14128a(i2) == null);
            }
            i2++;
        }
    }

    /* renamed from: e */
    public final void m13310e() {
        try {
            this.f26522q.mo12921a(this.f26506a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
