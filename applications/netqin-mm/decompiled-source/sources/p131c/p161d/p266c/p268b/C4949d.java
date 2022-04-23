package p131c.p161d.p266c.p268b;

import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.b.d */
/* loaded from: classes2-dex2jar.jar:c/d/c/b/d.class */
public final class C4949d {

    /* renamed from: a */
    public final long f17584a;

    /* renamed from: b */
    public final long f17585b;

    /* renamed from: c */
    public final long f17586c;

    /* renamed from: d */
    public final long f17587d;

    /* renamed from: e */
    public final long f17588e;

    /* renamed from: f */
    public final long f17589f;

    public C4949d(long j, long j2, long j3, long j4, long j5, long j6) {
        boolean z = true;
        C4933n.m24791a(j >= 0);
        C4933n.m24791a(j2 >= 0);
        C4933n.m24791a(j3 >= 0);
        C4933n.m24791a(j4 >= 0);
        C4933n.m24791a(j5 >= 0);
        if (j6 < 0) {
            z = false;
        }
        C4933n.m24791a(z);
        this.f17584a = j;
        this.f17585b = j2;
        this.f17586c = j3;
        this.f17587d = j4;
        this.f17588e = j5;
        this.f17589f = j6;
    }

    /* renamed from: a */
    public long m24743a() {
        return this.f17589f;
    }

    /* renamed from: b */
    public long m24742b() {
        return this.f17584a;
    }

    /* renamed from: c */
    public long m24741c() {
        return this.f17587d;
    }

    /* renamed from: d */
    public long m24740d() {
        return this.f17586c;
    }

    /* renamed from: e */
    public long m24739e() {
        return this.f17585b;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4949d) {
            C4949d dVar = (C4949d) obj;
            z = false;
            if (this.f17584a == dVar.f17584a) {
                z = false;
                if (this.f17585b == dVar.f17585b) {
                    z = false;
                    if (this.f17586c == dVar.f17586c) {
                        z = false;
                        if (this.f17587d == dVar.f17587d) {
                            z = false;
                            if (this.f17588e == dVar.f17588e) {
                                z = false;
                                if (this.f17589f == dVar.f17589f) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public long m24738f() {
        return this.f17588e;
    }

    public int hashCode() {
        return C4928k.m24807a(Long.valueOf(this.f17584a), Long.valueOf(this.f17585b), Long.valueOf(this.f17586c), Long.valueOf(this.f17587d), Long.valueOf(this.f17588e), Long.valueOf(this.f17589f));
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24814a("hitCount", this.f17584a);
        a.m24814a("missCount", this.f17585b);
        a.m24814a("loadSuccessCount", this.f17586c);
        a.m24814a("loadExceptionCount", this.f17587d);
        a.m24814a("totalLoadTime", this.f17588e);
        a.m24814a("evictionCount", this.f17589f);
        return a.toString();
    }
}
