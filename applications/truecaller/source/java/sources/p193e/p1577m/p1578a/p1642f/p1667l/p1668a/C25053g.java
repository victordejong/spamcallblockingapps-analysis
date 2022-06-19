package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.internal.Preconditions;
/* renamed from: e.m.a.f.l.a.g */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/g.class */
public final class C25053g {

    /* renamed from: a */
    public final String f70087a;

    /* renamed from: b */
    public final String f70088b;

    /* renamed from: c */
    public final long f70089c;

    /* renamed from: d */
    public final long f70090d;

    /* renamed from: e */
    public final long f70091e;

    /* renamed from: f */
    public final long f70092f;

    /* renamed from: g */
    public final long f70093g;

    /* renamed from: h */
    public final Long f70094h;

    /* renamed from: i */
    public final Long f70095i;

    /* renamed from: j */
    public final Long f70096j;

    /* renamed from: k */
    public final Boolean f70097k;

    public C25053g(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.m38901g(str);
        Preconditions.m38901g(str2);
        Preconditions.m38907a(j >= 0);
        Preconditions.m38907a(j2 >= 0);
        Preconditions.m38907a(j3 >= 0);
        Preconditions.m38907a(j5 >= 0);
        this.f70087a = str;
        this.f70088b = str2;
        this.f70089c = j;
        this.f70090d = j2;
        this.f70091e = j3;
        this.f70092f = j4;
        this.f70093g = j5;
        this.f70094h = l;
        this.f70095i = l2;
        this.f70096j = l3;
        this.f70097k = bool;
    }

    /* renamed from: a */
    public final C25053g m4222a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C25053g(this.f70087a, this.f70088b, this.f70089c, this.f70090d, this.f70091e, this.f70092f, this.f70093g, this.f70094h, l, l2, bool);
    }

    /* renamed from: b */
    public final C25053g m4221b(long j, long j2) {
        return new C25053g(this.f70087a, this.f70088b, this.f70089c, this.f70090d, this.f70091e, this.f70092f, j, Long.valueOf(j2), this.f70095i, this.f70096j, this.f70097k);
    }

    /* renamed from: c */
    public final C25053g m4220c(long j) {
        return new C25053g(this.f70087a, this.f70088b, this.f70089c, this.f70090d, this.f70091e, j, this.f70093g, this.f70094h, this.f70095i, this.f70096j, this.f70097k);
    }
}
