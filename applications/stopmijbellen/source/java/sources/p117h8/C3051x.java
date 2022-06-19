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
/* renamed from: h8.x */
/* loaded from: classes2-dex2jar.jar:h8/x.class */
public final class C3051x extends AbstractC0744d<C3050w> {

    /* renamed from: f */
    public static final C4933b<Integer> f10379f;

    /* renamed from: g */
    public static final C4933b<String> f10380g;

    /* renamed from: h */
    public static final C4933b<String> f10381h;

    /* renamed from: i */
    public static final C4933b<String> f10382i;

    /* renamed from: j */
    public static final C4933b<Integer> f10383j;

    /* renamed from: k */
    public static final AbstractC4932a[] f10384k;

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3050w.class, FacebookAdapter.KEY_ID);
        f10379f = c4933b;
        C4933b<String> c4933b2 = new C4933b<>(C3050w.class, "number");
        f10380g = c4933b2;
        C4933b<String> c4933b3 = new C4933b<>(C3050w.class, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f10381h = c4933b3;
        C4933b<String> c4933b4 = new C4933b<>(C3050w.class, "image_uri");
        f10382i = c4933b4;
        C4933b<Integer> c4933b5 = new C4933b<>(C3050w.class, "category");
        f10383j = c4933b5;
        f10384k = new AbstractC4932a[]{c4933b, c4933b2, c4933b3, c4933b4, c4933b5};
    }

    public C3051x(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3050w c3050w = (C3050w) obj;
        boolean z = true;
        if (c3050w.f10374b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3050w.class), mo2689c(c3050w)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3050w> mo2690b() {
        return C3050w.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3050w c3050w = (C3050w) obj;
        c3050w.f10374b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3050w.f10375c = c0860g.m7247p("number");
        c3050w.f10376d = c0860g.m7247p(AppMeasurementSdk.ConditionalUserProperty.NAME);
        c3050w.f10377e = c0860g.m7247p("image_uri");
        c3050w.f10378f = c0860g.m7250k("category");
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3050w();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3050w c3050w) {
        C3050w c3050w2 = c3050w;
        abstractC0081a.mo7274g(1, c3050w2.f10374b);
        mo2686f(abstractC0081a, c3050w2, 1);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3050w c3050w = (C3050w) obj;
        abstractC0081a.mo7274g(1, c3050w.f10374b);
        abstractC0081a.m8764k(2, c3050w.f10375c);
        abstractC0081a.m8764k(3, c3050w.f10376d);
        abstractC0081a.m8764k(4, c3050w.f10377e);
        abstractC0081a.mo7274g(5, c3050w.f10378f);
        abstractC0081a.mo7274g(6, c3050w.f10374b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3050w> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3050w c3050w) {
        return Integer.valueOf(c3050w.f10374b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `WL`(`id`,`number`,`name`,`image_uri`,`category`) VALUES (?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `WL`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `number` TEXT, `name` TEXT, `image_uri` TEXT, `category` INTEGER)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `WL`(`number`,`name`,`image_uri`,`category`) VALUES (?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`WL`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `WL` SET `id`=?,`number`=?,`name`=?,`image_uri`=?,`category`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3050w c3050w, Number number) {
        c3050w.f10374b = number.intValue();
    }

    /* renamed from: t */
    public final void mo2686f(AbstractC0081a abstractC0081a, C3050w c3050w, int i) {
        abstractC0081a.m8764k(i + 1, c3050w.f10375c);
        abstractC0081a.m8764k(i + 2, c3050w.f10376d);
        abstractC0081a.m8764k(i + 3, c3050w.f10377e);
        abstractC0081a.mo7274g(i + 4, c3050w.f10378f);
    }

    /* renamed from: u */
    public final C4785l mo2689c(C3050w c3050w) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10379f.m239a(Integer.valueOf(c3050w.f10374b)));
        return c4785l;
    }
}
