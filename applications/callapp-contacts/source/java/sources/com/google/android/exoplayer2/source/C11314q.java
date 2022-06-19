package com.google.android.exoplayer2.source;
/* renamed from: com.google.android.exoplayer2.source.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/q.class */
public class C11314q {

    /* renamed from: a */
    public final Object f37148a;

    /* renamed from: b */
    public final int f37149b;

    /* renamed from: c */
    public final int f37150c;

    /* renamed from: d */
    public final long f37151d;

    /* renamed from: e */
    public final int f37152e;

    public C11314q(C11314q c11314q) {
        this.f37148a = c11314q.f37148a;
        this.f37149b = c11314q.f37149b;
        this.f37150c = c11314q.f37150c;
        this.f37151d = c11314q.f37151d;
        this.f37152e = c11314q.f37152e;
    }

    public C11314q(Object obj) {
        this(obj, -1L);
    }

    public C11314q(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private C11314q(Object obj, int i, int i2, long j, int i3) {
        this.f37148a = obj;
        this.f37149b = i;
        this.f37150c = i2;
        this.f37151d = j;
        this.f37152e = i3;
    }

    public C11314q(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public C11314q(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    /* renamed from: a */
    public C11314q mo20936a(Object obj) {
        return this.f37148a.equals(obj) ? this : new C11314q(obj, this.f37149b, this.f37150c, this.f37151d, this.f37152e);
    }

    /* renamed from: a */
    public final boolean m20944a() {
        return this.f37149b != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11314q)) {
            return false;
        }
        C11314q c11314q = (C11314q) obj;
        return this.f37148a.equals(c11314q.f37148a) && this.f37149b == c11314q.f37149b && this.f37150c == c11314q.f37150c && this.f37151d == c11314q.f37151d && this.f37152e == c11314q.f37152e;
    }

    public int hashCode() {
        return ((((((((this.f37148a.hashCode() + 527) * 31) + this.f37149b) * 31) + this.f37150c) * 31) + ((int) this.f37151d)) * 31) + this.f37152e;
    }
}
