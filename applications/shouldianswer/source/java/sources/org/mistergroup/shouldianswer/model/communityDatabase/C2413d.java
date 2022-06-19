package org.mistergroup.shouldianswer.model.communityDatabase;

import java.util.Date;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2439m;
/* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/d.class */
public final class C2413d {

    /* renamed from: a */
    private int f6994a;

    /* renamed from: b */
    private String f6995b = "";

    /* renamed from: c */
    private EnumC2395ag f6996c = EnumC2395ag.UNKNOWN;

    /* renamed from: d */
    private EnumC2439m f6997d = EnumC2439m.NONE;

    /* renamed from: e */
    private String f6998e = "";

    /* renamed from: f */
    private String f6999f = "";

    /* renamed from: g */
    private String f7000g = "";

    /* renamed from: h */
    private String f7001h = "";

    /* renamed from: i */
    private Date f7002i;

    /* renamed from: a */
    public final EnumC2395ag m1118a() {
        return this.f6996c;
    }

    /* renamed from: a */
    public final void m1117a(int i) {
        this.f6994a = i;
    }

    /* renamed from: a */
    public final void m1116a(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6998e = str;
    }

    /* renamed from: a */
    public final void m1115a(EnumC2395ag enumC2395ag) {
        C1694h.m3117b(enumC2395ag, "<set-?>");
        this.f6996c = enumC2395ag;
    }

    /* renamed from: a */
    public final void m1114a(EnumC2439m enumC2439m) {
        C1694h.m3117b(enumC2439m, "<set-?>");
        this.f6997d = enumC2439m;
    }

    /* renamed from: b */
    public final EnumC2439m m1113b() {
        return this.f6997d;
    }

    /* renamed from: b */
    public final void m1112b(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6999f = str;
    }

    /* renamed from: c */
    public final String m1111c() {
        return this.f6998e;
    }

    /* renamed from: c */
    public final void m1110c(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f7000g = str;
    }

    /* renamed from: d */
    public final String m1109d() {
        return this.f6999f;
    }

    /* renamed from: e */
    public final String m1108e() {
        return this.f7000g;
    }

    /* renamed from: f */
    public final Date m1107f() {
        return this.f7002i;
    }
}
