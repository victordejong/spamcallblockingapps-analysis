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
/* renamed from: h8.d */
/* loaded from: classes2-dex2jar.jar:h8/d.class */
public final class C3027d extends AbstractC0744d<C3026c> {

    /* renamed from: f */
    public static final C4933b<Integer> f10155f;

    /* renamed from: g */
    public static final C4933b<String> f10156g;

    /* renamed from: h */
    public static final C4933b<String> f10157h;

    /* renamed from: i */
    public static final C4933b<String> f10158i;

    /* renamed from: j */
    public static final C4933b<Integer> f10159j;

    /* renamed from: k */
    public static final AbstractC4932a[] f10160k;

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3026c.class, FacebookAdapter.KEY_ID);
        f10155f = c4933b;
        C4933b<String> c4933b2 = new C4933b<>(C3026c.class, "number");
        f10156g = c4933b2;
        C4933b<String> c4933b3 = new C4933b<>(C3026c.class, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f10157h = c4933b3;
        C4933b<String> c4933b4 = new C4933b<>(C3026c.class, "image_uri");
        f10158i = c4933b4;
        C4933b<Integer> c4933b5 = new C4933b<>(C3026c.class, "category");
        f10159j = c4933b5;
        f10160k = new AbstractC4932a[]{c4933b, c4933b2, c4933b3, c4933b4, c4933b5, new C4933b(C3026c.class, "complain")};
    }

    public C3027d(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3026c c3026c = (C3026c) obj;
        boolean z = true;
        if (c3026c.f10149b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3026c.class), mo2689c(c3026c)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3026c> mo2690b() {
        return C3026c.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3026c c3026c = (C3026c) obj;
        c3026c.f10149b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3026c.f10150c = c0860g.m7247p("number");
        c3026c.f10151d = c0860g.m7247p(AppMeasurementSdk.ConditionalUserProperty.NAME);
        c3026c.f10152e = c0860g.m7247p("image_uri");
        c3026c.f10153f = c0860g.m7250k("category");
        int columnIndex = c0860g.getColumnIndex("complain");
        if (columnIndex == -1 || c0860g.isNull(columnIndex)) {
            c3026c.f10154g = false;
        } else {
            c3026c.f10154g = c0860g.m7251d(columnIndex);
        }
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3026c();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3026c c3026c) {
        C3026c c3026c2 = c3026c;
        abstractC0081a.mo7274g(1, c3026c2.f10149b);
        mo2686f(abstractC0081a, c3026c2, 1);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3026c c3026c = (C3026c) obj;
        abstractC0081a.mo7274g(1, c3026c.f10149b);
        abstractC0081a.m8764k(2, c3026c.f10150c);
        abstractC0081a.m8764k(3, c3026c.f10151d);
        abstractC0081a.m8764k(4, c3026c.f10152e);
        abstractC0081a.mo7274g(5, c3026c.f10153f);
        abstractC0081a.mo7274g(6, (c3026c.f10154g ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(7, c3026c.f10149b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3026c> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3026c c3026c) {
        return Integer.valueOf(c3026c.f10149b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `BL`(`id`,`number`,`name`,`image_uri`,`category`,`complain`) VALUES (?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `BL`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `number` TEXT, `name` TEXT, `image_uri` TEXT, `category` INTEGER, `complain` INTEGER)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `BL`(`number`,`name`,`image_uri`,`category`,`complain`) VALUES (?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`BL`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `BL` SET `id`=?,`number`=?,`name`=?,`image_uri`=?,`category`=?,`complain`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3026c c3026c, Number number) {
        c3026c.f10149b = number.intValue();
    }

    /* renamed from: t */
    public final void mo2686f(AbstractC0081a abstractC0081a, C3026c c3026c, int i) {
        abstractC0081a.m8764k(i + 1, c3026c.f10150c);
        abstractC0081a.m8764k(i + 2, c3026c.f10151d);
        abstractC0081a.m8764k(i + 3, c3026c.f10152e);
        abstractC0081a.mo7274g(i + 4, c3026c.f10153f);
        abstractC0081a.mo7274g(i + 5, (c3026c.f10154g ? 1 : null) == 1 ? 1L : 0L);
    }

    /* renamed from: u */
    public final C4785l mo2689c(C3026c c3026c) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10155f.m239a(Integer.valueOf(c3026c.f10149b)));
        return c4785l;
    }
}
