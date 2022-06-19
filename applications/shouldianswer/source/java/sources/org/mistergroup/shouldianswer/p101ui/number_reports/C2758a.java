package org.mistergroup.shouldianswer.p101ui.number_reports;

import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.communityDatabase.C2413d;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/a.class */
public final class C2758a {

    /* renamed from: a */
    private C2413d f8221a;

    /* renamed from: b */
    private String f8222b;

    /* renamed from: c */
    private final EnumC2759a f8223c;

    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/a$a.class */
    public enum EnumC2759a {
        REVIEW,
        INFO,
        MORE_INFO,
        APP_PROMO
    }

    public C2758a(EnumC2759a enumC2759a) {
        C1694h.m3117b(enumC2759a, "itemType");
        this.f8223c = enumC2759a;
    }

    /* renamed from: a */
    public final C2413d m543a() {
        return this.f8221a;
    }

    /* renamed from: a */
    public final void m542a(C2413d c2413d) {
        this.f8221a = c2413d;
    }

    /* renamed from: b */
    public final String m541b() {
        return this.f8222b;
    }

    /* renamed from: c */
    public final EnumC2759a m540c() {
        return this.f8223c;
    }
}
