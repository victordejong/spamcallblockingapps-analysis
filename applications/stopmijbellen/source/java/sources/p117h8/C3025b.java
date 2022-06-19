package p117h8;

import android.support.p012v4.media.AbstractC0081a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import p010a9.C0044a;
import p010a9.C0045b;
import p024b9.AbstractC0744d;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p124i4.C3102d;
import p278w8.C4776g;
import p278w8.C4785l;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: h8.b */
/* loaded from: classes2-dex2jar.jar:h8/b.class */
public final class C3025b extends AbstractC0744d<C3024a> {

    /* renamed from: f */
    public static final C4933b<Integer> f10146f;

    /* renamed from: g */
    public static final C4933b<String> f10147g;

    /* renamed from: h */
    public static final AbstractC4932a[] f10148h;

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3024a.class, FacebookAdapter.KEY_ID);
        f10146f = c4933b;
        C4933b<String> c4933b2 = new C4933b<>(C3024a.class, "key");
        f10147g = c4933b2;
        f10148h = new AbstractC4932a[]{c4933b, c4933b2, new C4933b(C3024a.class, AppMeasurementSdk.ConditionalUserProperty.VALUE), new C4933b(C3024a.class, "data")};
    }

    public C3025b(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3024a c3024a = (C3024a) obj;
        boolean z = true;
        if (c3024a.f10142b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3024a.class), mo2689c(c3024a)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3024a> mo2690b() {
        return C3024a.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3024a c3024a = (C3024a) obj;
        c3024a.f10142b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3024a.f10143c = c0860g.m7247p("key");
        c3024a.f10144d = c0860g.m7247p(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        c3024a.f10145e = c0860g.m7247p("data");
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3024a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: f */
    public void mo2686f(AbstractC0081a abstractC0081a, Object obj, int i) {
        C3024a c3024a = (C3024a) obj;
        abstractC0081a.m8764k(i + 1, c3024a.f10143c);
        abstractC0081a.m8764k(i + 2, c3024a.f10144d);
        abstractC0081a.m8764k(i + 3, c3024a.f10145e);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3024a c3024a) {
        C3024a c3024a2 = c3024a;
        abstractC0081a.mo7274g(1, c3024a2.f10142b);
        abstractC0081a.m8764k(2, c3024a2.f10143c);
        abstractC0081a.m8764k(3, c3024a2.f10144d);
        abstractC0081a.m8764k(4, c3024a2.f10145e);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3024a c3024a = (C3024a) obj;
        abstractC0081a.mo7274g(1, c3024a.f10142b);
        abstractC0081a.m8764k(2, c3024a.f10143c);
        abstractC0081a.m8764k(3, c3024a.f10144d);
        abstractC0081a.m8764k(4, c3024a.f10145e);
        abstractC0081a.mo7274g(5, c3024a.f10142b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3024a> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3024a c3024a) {
        return Integer.valueOf(c3024a.f10142b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `AData`(`id`,`key`,`value`,`data`) VALUES (?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `AData`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `key` TEXT UNIQUE ON CONFLICT FAIL, `value` TEXT, `data` TEXT)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `AData`(`key`,`value`,`data`) VALUES (?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`AData`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `AData` SET `id`=?,`key`=?,`value`=?,`data`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3024a c3024a, Number number) {
        c3024a.f10142b = number.intValue();
    }

    /* renamed from: t */
    public final C4785l mo2689c(C3024a c3024a) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10146f.m239a(Integer.valueOf(c3024a.f10142b)));
        return c4785l;
    }
}
