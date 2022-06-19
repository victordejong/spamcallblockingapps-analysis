package p193e.p1577m.p1578a.p1580b.p1583j;

import android.util.Base64;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.C24144j;
/* renamed from: e.m.a.b.j.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/r.class */
public abstract class AbstractC24158r {

    /* renamed from: e.m.a.b.j.r$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/r$a.class */
    public static abstract class AbstractC24159a {
        /* renamed from: a */
        public abstract AbstractC24158r mo5523a();

        /* renamed from: b */
        public abstract AbstractC24159a mo5522b(String str);

        /* renamed from: c */
        public abstract AbstractC24159a mo5521c(EnumC23989d enumC23989d);
    }

    /* renamed from: a */
    public static AbstractC24159a m5527a() {
        C24144j.C24146b c24146b = new C24144j.C24146b();
        c24146b.mo5521c(EnumC23989d.DEFAULT);
        return c24146b;
    }

    /* renamed from: b */
    public abstract String mo5526b();

    /* renamed from: c */
    public abstract byte[] mo5525c();

    /* renamed from: d */
    public abstract EnumC23989d mo5524d();

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo5526b(), mo5524d(), mo5525c() == null ? "" : Base64.encodeToString(mo5525c(), 2));
    }
}
