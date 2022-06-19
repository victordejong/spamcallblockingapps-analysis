package p193e.p194a.p1275v.p1276a.p1283c0;

import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.v.a.c0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/c.class */
public final class C20705c {

    /* renamed from: a */
    public final AbstractC20719p f58302a;

    /* renamed from: b */
    public final String f58303b;

    /* renamed from: c */
    public final boolean f58304c;

    /* renamed from: d */
    public final a<s> f58305d;

    /* renamed from: e */
    public final a<Boolean> f58306e;

    public C20705c(AbstractC20719p abstractC20719p, String str, boolean z, a aVar, a aVar2, int i) {
        z = (i & 4) != 0 ? false : z;
        aVar = (i & 8) != 0 ? C20703a.f58300b : aVar;
        a<Boolean> aVar3 = (i & 16) != 0 ? C20704b.f58301b : null;
        l.e(abstractC20719p, "iconBinder");
        l.e(str, "text");
        l.e(aVar, "onClick");
        l.e(aVar3, "onLongClick");
        this.f58302a = abstractC20719p;
        this.f58303b = str;
        this.f58304c = z;
        this.f58305d = aVar;
        this.f58306e = aVar3;
    }
}
