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
/* renamed from: h8.j */
/* loaded from: classes2-dex2jar.jar:h8/j.class */
public final class C3034j extends AbstractC0744d<C3033i> {

    /* renamed from: f */
    public static final C4933b<Integer> f10201f;

    /* renamed from: g */
    public static final C4933b<Integer> f10202g;

    /* renamed from: h */
    public static final C4933b<String> f10203h;

    /* renamed from: i */
    public static final C4933b<String> f10204i;

    /* renamed from: j */
    public static final C4933b<String> f10205j;

    /* renamed from: k */
    public static final C4933b<Integer> f10206k;

    /* renamed from: l */
    public static final C4933b<String> f10207l;

    /* renamed from: m */
    public static final AbstractC4932a[] f10208m;

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3033i.class, FacebookAdapter.KEY_ID);
        f10201f = c4933b;
        C4933b<Integer> c4933b2 = new C4933b<>(C3033i.class, "contact_id");
        f10202g = c4933b2;
        C4933b<String> c4933b3 = new C4933b<>(C3033i.class, "number");
        f10203h = c4933b3;
        C4933b<String> c4933b4 = new C4933b<>(C3033i.class, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f10204i = c4933b4;
        C4933b<String> c4933b5 = new C4933b<>(C3033i.class, "alternativeName");
        f10205j = c4933b5;
        C4933b<Integer> c4933b6 = new C4933b<>(C3033i.class, "checked");
        f10206k = c4933b6;
        C4933b<String> c4933b7 = new C4933b<>(C3033i.class, "image_uri");
        f10207l = c4933b7;
        f10208m = new AbstractC4932a[]{c4933b, c4933b2, c4933b3, c4933b4, c4933b5, c4933b6, c4933b7, new C4933b(C3033i.class, "phone_id")};
    }

    public C3034j(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3033i c3033i = (C3033i) obj;
        boolean z = true;
        if (c3033i.f10193b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3033i.class), mo2689c(c3033i)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3033i> mo2690b() {
        return C3033i.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3033i c3033i = (C3033i) obj;
        c3033i.f10193b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3033i.f10194c = c0860g.m7250k("contact_id");
        c3033i.f10195d = c0860g.m7247p("number");
        c3033i.f10196e = c0860g.m7247p(AppMeasurementSdk.ConditionalUserProperty.NAME);
        c3033i.f10197f = c0860g.m7247p("alternativeName");
        c3033i.f10198g = c0860g.m7250k("checked");
        c3033i.f10199h = c0860g.m7247p("image_uri");
        c3033i.f10200i = c0860g.m7250k("phone_id");
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3033i();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3033i c3033i) {
        C3033i c3033i2 = c3033i;
        abstractC0081a.mo7274g(1, c3033i2.f10193b);
        mo2686f(abstractC0081a, c3033i2, 1);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3033i c3033i = (C3033i) obj;
        abstractC0081a.mo7274g(1, c3033i.f10193b);
        abstractC0081a.mo7274g(2, c3033i.f10194c);
        abstractC0081a.m8764k(3, c3033i.f10195d);
        abstractC0081a.m8764k(4, c3033i.f10196e);
        abstractC0081a.m8764k(5, c3033i.f10197f);
        abstractC0081a.mo7274g(6, c3033i.f10198g);
        abstractC0081a.m8764k(7, c3033i.f10199h);
        abstractC0081a.mo7274g(8, c3033i.f10200i);
        abstractC0081a.mo7274g(9, c3033i.f10193b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3033i> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3033i c3033i) {
        return Integer.valueOf(c3033i.f10193b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `Contacts`(`id`,`contact_id`,`number`,`name`,`alternativeName`,`checked`,`image_uri`,`phone_id`) VALUES (?,?,?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `Contacts`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `contact_id` INTEGER, `number` TEXT, `name` TEXT, `alternativeName` TEXT, `checked` INTEGER, `image_uri` TEXT, `phone_id` INTEGER)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `Contacts`(`contact_id`,`number`,`name`,`alternativeName`,`checked`,`image_uri`,`phone_id`) VALUES (?,?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`Contacts`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `Contacts` SET `id`=?,`contact_id`=?,`number`=?,`name`=?,`alternativeName`=?,`checked`=?,`image_uri`=?,`phone_id`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3033i c3033i, Number number) {
        c3033i.f10193b = number.intValue();
    }

    /* renamed from: t */
    public final void mo2686f(AbstractC0081a abstractC0081a, C3033i c3033i, int i) {
        abstractC0081a.mo7274g(i + 1, c3033i.f10194c);
        abstractC0081a.m8764k(i + 2, c3033i.f10195d);
        abstractC0081a.m8764k(i + 3, c3033i.f10196e);
        abstractC0081a.m8764k(i + 4, c3033i.f10197f);
        abstractC0081a.mo7274g(i + 5, c3033i.f10198g);
        abstractC0081a.m8764k(i + 6, c3033i.f10199h);
        abstractC0081a.mo7274g(i + 7, c3033i.f10200i);
    }

    /* renamed from: u */
    public final C4785l mo2689c(C3033i c3033i) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10201f.m239a(Integer.valueOf(c3033i.f10193b)));
        return c4785l;
    }
}
