package p117h8;

import android.support.p012v4.media.AbstractC0081a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import p024b9.AbstractC0744d;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p124i4.C3102d;
import p278w8.C4776g;
import p278w8.C4785l;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: h8.s */
/* loaded from: classes2-dex2jar.jar:h8/s.class */
public final class C3045s extends AbstractC0744d<C3044r> {

    /* renamed from: f */
    public static final C4933b<Integer> f10317f;

    /* renamed from: g */
    public static final C4933b<String> f10318g;

    /* renamed from: h */
    public static final AbstractC4932a[] f10319h;

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3044r.class, FacebookAdapter.KEY_ID);
        f10317f = c4933b;
        C4933b<String> c4933b2 = new C4933b<>(C3044r.class, "data");
        f10318g = c4933b2;
        f10319h = new AbstractC4932a[]{c4933b, c4933b2};
    }

    public C3045s(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        return new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3044r.class), mo2689c((C3044r) obj)).m479g(abstractC0859f);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3044r> mo2690b() {
        return C3044r.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3044r c3044r = (C3044r) obj;
        c3044r.f10315b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3044r.f10316c = c0860g.m7247p("data");
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3044r();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: f */
    public void mo2686f(AbstractC0081a abstractC0081a, Object obj, int i) {
        C3044r c3044r = (C3044r) obj;
        abstractC0081a.mo7274g(i + 1, c3044r.f10315b);
        abstractC0081a.m8764k(i + 2, c3044r.f10316c);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3044r c3044r = (C3044r) obj;
        abstractC0081a.mo7274g(1, c3044r.f10315b);
        abstractC0081a.m8764k(2, c3044r.f10316c);
        abstractC0081a.mo7274g(3, c3044r.f10315b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `Main`(`id`,`data`) VALUES (?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `Main`(`id` INTEGER, `data` TEXT UNIQUE ON CONFLICT FAIL, PRIMARY KEY(`id`))";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`Main`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `Main` SET `id`=?,`data`=? WHERE `id`=?";
    }

    /* renamed from: t */
    public final C4785l mo2689c(C3044r c3044r) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10317f.m239a(Integer.valueOf(c3044r.f10315b)));
        return c4785l;
    }
}
