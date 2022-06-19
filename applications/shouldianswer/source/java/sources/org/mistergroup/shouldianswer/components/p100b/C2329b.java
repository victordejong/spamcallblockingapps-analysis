package org.mistergroup.shouldianswer.components.p100b;

import java.util.Date;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2439m;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.model.communityDatabase.C2413d;
/* renamed from: org.mistergroup.shouldianswer.components.b.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/b/b.class */
public final class C2329b {

    /* renamed from: a */
    private String f6591a;

    /* renamed from: b */
    private String f6592b;

    /* renamed from: c */
    private String f6593c;

    /* renamed from: d */
    private EnumC2439m f6594d = EnumC2439m.NONE;

    /* renamed from: e */
    private EnumC2395ag f6595e = EnumC2395ag.UNKNOWN;

    /* renamed from: f */
    private Date f6596f;

    /* renamed from: g */
    private NumberReport f6597g;

    /* renamed from: h */
    private C2413d f6598h;

    /* renamed from: a */
    public final String m1612a() {
        return this.f6591a;
    }

    /* renamed from: a */
    public final void m1611a(String str) {
        this.f6591a = str;
    }

    /* renamed from: a */
    public final void m1610a(Date date) {
        this.f6596f = date;
    }

    /* renamed from: a */
    public final void m1609a(NumberReport numberReport) {
        this.f6597g = numberReport;
    }

    /* renamed from: a */
    public final void m1608a(EnumC2395ag enumC2395ag) {
        C1694h.m3117b(enumC2395ag, "<set-?>");
        this.f6595e = enumC2395ag;
    }

    /* renamed from: a */
    public final void m1607a(C2413d c2413d) {
        this.f6598h = c2413d;
    }

    /* renamed from: a */
    public final void m1606a(EnumC2439m enumC2439m) {
        C1694h.m3117b(enumC2439m, "<set-?>");
        this.f6594d = enumC2439m;
    }

    /* renamed from: b */
    public final String m1605b() {
        return this.f6592b;
    }

    /* renamed from: b */
    public final void m1604b(String str) {
        this.f6592b = str;
    }

    /* renamed from: c */
    public final String m1603c() {
        return this.f6593c;
    }

    /* renamed from: c */
    public final void m1602c(String str) {
        this.f6593c = str;
    }

    /* renamed from: d */
    public final EnumC2439m m1601d() {
        return this.f6594d;
    }

    /* renamed from: e */
    public final EnumC2395ag m1600e() {
        return this.f6595e;
    }
}
