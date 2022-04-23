package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
/* renamed from: c.d.b.d.i.a.h */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/h.class */
public final class C4706h {

    /* renamed from: a */
    public final String f17102a;

    /* renamed from: b */
    public final String f17103b;

    /* renamed from: c */
    public final long f17104c;

    /* renamed from: d */
    public final long f17105d;

    /* renamed from: e */
    public final long f17106e;

    /* renamed from: f */
    public final long f17107f;

    /* renamed from: g */
    public final long f17108g;

    /* renamed from: h */
    public final Long f17109h;

    /* renamed from: i */
    public final Long f17110i;

    /* renamed from: j */
    public final Long f17111j;

    /* renamed from: k */
    public final Boolean f17112k;

    public C4706h(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.m17281b(str);
        Preconditions.m17281b(str2);
        boolean z = true;
        Preconditions.m17284a(j >= 0);
        Preconditions.m17284a(j2 >= 0);
        Preconditions.m17284a(j3 >= 0);
        if (j5 < 0) {
            z = false;
        }
        Preconditions.m17284a(z);
        this.f17102a = str;
        this.f17103b = str2;
        this.f17104c = j;
        this.f17105d = j2;
        this.f17106e = j3;
        this.f17107f = j4;
        this.f17108g = j5;
        this.f17109h = l;
        this.f17110i = l2;
        this.f17111j = l3;
        this.f17112k = bool;
    }

    public C4706h(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j3, 0L, null, null, null, null);
    }

    /* renamed from: a */
    public final C4706h m25016a(long j) {
        return new C4706h(this.f17102a, this.f17103b, this.f17104c, this.f17105d, this.f17106e, j, this.f17108g, this.f17109h, this.f17110i, this.f17111j, this.f17112k);
    }

    /* renamed from: a */
    public final C4706h m25015a(long j, long j2) {
        return new C4706h(this.f17102a, this.f17103b, this.f17104c, this.f17105d, this.f17106e, this.f17107f, j, Long.valueOf(j2), this.f17110i, this.f17111j, this.f17112k);
    }

    /* renamed from: a */
    public final C4706h m25014a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C4706h(this.f17102a, this.f17103b, this.f17104c, this.f17105d, this.f17106e, this.f17107f, this.f17108g, this.f17109h, l, l2, bool);
    }
}
