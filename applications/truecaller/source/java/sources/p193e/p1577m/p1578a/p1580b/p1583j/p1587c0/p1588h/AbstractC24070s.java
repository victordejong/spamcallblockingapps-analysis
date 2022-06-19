package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24066q;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.c0.h.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/s.class */
public abstract class AbstractC24070s {

    /* renamed from: e.m.a.b.j.c0.h.s$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/s$a.class */
    public static abstract class AbstractC24071a {

        /* renamed from: e.m.a.b.j.c0.h.s$a$a */
        /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/s$a$a.class */
        public static abstract class AbstractC24072a {
            /* renamed from: a */
            public abstract AbstractC24071a mo5585a();

            /* renamed from: b */
            public abstract AbstractC24072a mo5584b(long j);

            /* renamed from: c */
            public abstract AbstractC24072a mo5583c(long j);
        }

        /* renamed from: a */
        public static AbstractC24072a m5589a() {
            C24066q.C24068b c24068b = new C24066q.C24068b();
            Set<EnumC24073b> emptySet = Collections.emptySet();
            Objects.requireNonNull(emptySet, "Null flags");
            c24068b.f66724c = emptySet;
            return c24068b;
        }

        /* renamed from: b */
        public abstract long mo5588b();

        /* renamed from: c */
        public abstract Set<EnumC24073b> mo5587c();

        /* renamed from: d */
        public abstract long mo5586d();
    }

    /* renamed from: e.m.a.b.j.c0.h.s$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/s$b.class */
    public enum EnumC24073b {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: a */
    public abstract AbstractC24130a mo5592a();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: b */
    public long m5591b(EnumC23989d enumC23989d, long j, int i) {
        int i2;
        long mo5549a = mo5592a().mo5549a();
        AbstractC24071a abstractC24071a = mo5590c().get(enumC23989d);
        ?? mo5588b = abstractC24071a.mo5588b();
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * ((double) mo5588b) * Math.max(1.0d, Math.log(10000.0d) / Math.log((((mo5588b > 1L ? 1 : (mo5588b == 1L ? 0 : -1)) > 0 ? mo5588b : true) == true ? 1L : 0L) * i2))), j - mo5549a), abstractC24071a.mo5586d());
    }

    /* renamed from: c */
    public abstract Map<EnumC23989d, AbstractC24071a> mo5590c();
}
