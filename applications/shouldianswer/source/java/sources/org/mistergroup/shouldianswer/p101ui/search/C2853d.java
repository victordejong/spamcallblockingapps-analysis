package org.mistergroup.shouldianswer.p101ui.search;

import android.text.Spanned;
import java.util.Date;
import kotlin.AbstractC1660e;
import kotlin.C1707f;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1698l;
import kotlin.p081e.p083b.C1703n;
import kotlin.p085g.AbstractC1722e;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2646c;
/* renamed from: org.mistergroup.shouldianswer.ui.search.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/d.class */
public final class C2853d {

    /* renamed from: a */
    static final /* synthetic */ AbstractC1722e[] f8490a = {C1703n.m3104a(new C1698l(C1703n.m3107a(C2853d.class), "formattedDate", "getFormattedDate()Ljava/lang/String;"))};

    /* renamed from: b */
    private C2302a f8491b;

    /* renamed from: c */
    private C2646c f8492c;

    /* renamed from: d */
    private C2385ac f8493d;

    /* renamed from: e */
    private Spanned f8494e;

    /* renamed from: f */
    private Spanned f8495f;

    /* renamed from: g */
    private String f8496g;

    /* renamed from: h */
    private int f8497h;

    /* renamed from: i */
    private Date f8498i = new Date();

    /* renamed from: j */
    private final AbstractC1660e f8499j = C1707f.m3074a(new C2855b());

    /* renamed from: k */
    private final EnumC2854a f8500k;

    /* renamed from: org.mistergroup.shouldianswer.ui.search.d$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/d$a.class */
    public enum EnumC2854a {
        CONTACT,
        NUMBER,
        NEW_CONTACT,
        ONLINE_SEARCH,
        INFO
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.search.d$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/d$b.class */
    public static final class C2855b extends AbstractC1695i implements AbstractC1662a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2855b() {
            super(0);
            C2853d.this = r4;
        }

        /* renamed from: b */
        public final String mo3a() {
            return MyApp.f5480c.m1802a().m1807a().format(C2853d.this.m381h());
        }
    }

    public C2853d(EnumC2854a enumC2854a) {
        C1694h.m3117b(enumC2854a, "itemType");
        this.f8500k = enumC2854a;
    }

    /* renamed from: a */
    public final C2302a m396a() {
        return this.f8491b;
    }

    /* renamed from: a */
    public final void m395a(int i) {
        this.f8497h = i;
    }

    /* renamed from: a */
    public final void m394a(Spanned spanned) {
        this.f8494e = spanned;
    }

    /* renamed from: a */
    public final void m393a(String str) {
        this.f8496g = str;
    }

    /* renamed from: a */
    public final void m392a(Date date) {
        C1694h.m3117b(date, "<set-?>");
        this.f8498i = date;
    }

    /* renamed from: a */
    public final void m391a(C2302a c2302a) {
        this.f8491b = c2302a;
    }

    /* renamed from: a */
    public final void m390a(C2385ac c2385ac) {
        this.f8493d = c2385ac;
    }

    /* renamed from: a */
    public final void m389a(C2646c c2646c) {
        this.f8492c = c2646c;
    }

    /* renamed from: b */
    public final C2646c m388b() {
        return this.f8492c;
    }

    /* renamed from: b */
    public final void m387b(Spanned spanned) {
        this.f8495f = spanned;
    }

    /* renamed from: c */
    public final C2385ac m386c() {
        return this.f8493d;
    }

    /* renamed from: d */
    public final Spanned m385d() {
        return this.f8494e;
    }

    /* renamed from: e */
    public final Spanned m384e() {
        return this.f8495f;
    }

    /* renamed from: f */
    public final String m383f() {
        return this.f8496g;
    }

    /* renamed from: g */
    public final int m382g() {
        return this.f8497h;
    }

    /* renamed from: h */
    public final Date m381h() {
        return this.f8498i;
    }

    /* renamed from: i */
    public final String m380i() {
        AbstractC1660e abstractC1660e = this.f8499j;
        AbstractC1722e abstractC1722e = f8490a[0];
        return (String) abstractC1660e.mo2977a();
    }

    /* renamed from: j */
    public final EnumC2854a m379j() {
        return this.f8500k;
    }
}
