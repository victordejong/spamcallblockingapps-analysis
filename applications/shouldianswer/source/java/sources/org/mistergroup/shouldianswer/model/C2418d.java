package org.mistergroup.shouldianswer.model;

import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.model.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/d.class */
public final class C2418d {

    /* renamed from: a */
    private int f7017a;

    /* renamed from: b */
    private String f7018b;

    /* renamed from: c */
    private String f7019c;

    /* renamed from: d */
    private String f7020d;

    /* renamed from: e */
    private boolean f7021e;

    /* renamed from: f */
    private boolean f7022f;

    /* renamed from: a */
    public final int m1092a() {
        return this.f7017a;
    }

    /* renamed from: a */
    public final void m1091a(int i) {
        this.f7017a = i;
    }

    /* renamed from: a */
    public final void m1090a(String str) {
        this.f7018b = str;
    }

    /* renamed from: a */
    public final void m1089a(String str, String str2, String str3) {
        C1694h.m3117b(str, "number");
        C1694h.m3117b(str2, "numberNormalized");
        C1694h.m3117b(str3, "country");
        this.f7018b = str;
        this.f7019c = str2;
        this.f7020d = str3;
    }

    /* renamed from: a */
    public final void m1088a(boolean z) {
        this.f7021e = z;
    }

    /* renamed from: b */
    public final String m1087b() {
        return this.f7018b;
    }

    /* renamed from: b */
    public final void m1086b(String str) {
        this.f7019c = str;
    }

    /* renamed from: b */
    public final void m1085b(boolean z) {
        this.f7022f = z;
    }

    /* renamed from: c */
    public final String m1084c() {
        return this.f7019c;
    }

    /* renamed from: c */
    public final void m1083c(String str) {
        this.f7020d = str;
    }

    /* renamed from: d */
    public final String m1082d() {
        return this.f7020d;
    }

    /* renamed from: e */
    public final boolean m1081e() {
        return this.f7021e;
    }

    /* renamed from: f */
    public final boolean m1080f() {
        return this.f7022f;
    }

    /* renamed from: g */
    public final NumberInfo m1079g() {
        String str = this.f7018b;
        String str2 = this.f7020d;
        if (str2 == null) {
            C1694h.m3124a();
        }
        return new NumberInfo(str, str2, EnumC2436k.UNKNOWN, false, 8, null);
    }
}
