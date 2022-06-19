package org.mistergroup.shouldianswer.model;

import java.util.Date;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.model.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/b.class */
public final class C2404b {
    /* renamed from: a */
    public final int m1224a(EnumC2395ag enumC2395ag) {
        C1694h.m3117b(enumC2395ag, "rating");
        return enumC2395ag.m1315a();
    }

    /* renamed from: a */
    public final int m1223a(EnumC2429h enumC2429h) {
        C1694h.m3117b(enumC2429h, "value");
        return enumC2429h.ordinal();
    }

    /* renamed from: a */
    public final int m1222a(EnumC2436k enumC2436k) {
        C1694h.m3117b(enumC2436k, "value");
        return enumC2436k.m1025a();
    }

    /* renamed from: a */
    public final int m1221a(EnumC2439m enumC2439m) {
        C1694h.m3117b(enumC2439m, "category");
        return enumC2439m.m1019a();
    }

    /* renamed from: a */
    public final Long m1225a(Date date) {
        return date != null ? Long.valueOf(date.getTime()) : null;
    }

    /* renamed from: a */
    public final Date m1226a(Long l) {
        return l == null ? null : new Date(l.longValue());
    }

    /* renamed from: a */
    public final EnumC2436k m1227a(int i) {
        return EnumC2436k.f7111i.m1024a(i);
    }

    /* renamed from: b */
    public final EnumC2429h m1220b(int i) {
        return EnumC2429h.values()[i];
    }

    /* renamed from: c */
    public final EnumC2395ag m1219c(int i) {
        return EnumC2395ag.f6924e.m1314a(i);
    }

    /* renamed from: d */
    public final EnumC2439m m1218d(int i) {
        return EnumC2439m.f7139w.m1016a(i);
    }
}
