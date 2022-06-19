package p117h8;

import android.support.p012v4.media.AbstractC0081a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.AbstractC2117d;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.sql.Date;
import p010a9.C0044a;
import p010a9.C0045b;
import p024b9.AbstractC0744d;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p124i4.C3102d;
import p235s8.AbstractC4332g;
import p235s8.C4331f;
import p278w8.C4776g;
import p278w8.C4785l;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
import p289x8.C4934c;
/* renamed from: h8.h */
/* loaded from: classes2-dex2jar.jar:h8/h.class */
public final class C3031h extends AbstractC0744d<C3030g> {

    /* renamed from: g */
    public static final C4933b<Integer> f10187g;

    /* renamed from: h */
    public static final C4933b<String> f10188h;

    /* renamed from: i */
    public static final C4933b<String> f10189i;

    /* renamed from: j */
    public static final C4934c<Long, Date> f10190j;

    /* renamed from: k */
    public static final AbstractC4932a[] f10191k;

    /* renamed from: f */
    public final C4331f f10192f;

    /* renamed from: h8.h$a */
    /* loaded from: classes2-dex2jar.jar:h8/h$a.class */
    public class C3032a implements C4934c.AbstractC4935a {
        @Override // p289x8.C4934c.AbstractC4935a
        /* renamed from: a */
        public AbstractC4332g mo229a(Class<?> cls) {
            return ((C3031h) FlowManager.m3907f(cls)).f10192f;
        }
    }

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3030g.class, FacebookAdapter.KEY_ID);
        f10187g = c4933b;
        C4933b<String> c4933b2 = new C4933b<>(C3030g.class, "data");
        f10188h = c4933b2;
        C4933b<String> c4933b3 = new C4933b<>(C3030g.class, "mid");
        f10189i = c4933b3;
        C4934c<Long, Date> c4934c = new C4934c<>(C3030g.class, "cached_date", true, new C3032a());
        f10190j = c4934c;
        f10191k = new AbstractC4932a[]{c4933b, c4933b2, c4933b3, c4934c};
    }

    public C3031h(AbstractC2117d abstractC2117d, AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
        this.f10192f = (C4331f) abstractC2117d.getTypeConverterForClass(Date.class);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3030g c3030g = (C3030g) obj;
        boolean z = true;
        if (c3030g.f10183b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3030g.class), mo2689c(c3030g)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3030g> mo2690b() {
        return C3030g.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3030g c3030g = (C3030g) obj;
        c3030g.f10183b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3030g.f10184c = c0860g.m7247p("data");
        c3030g.f10185d = c0860g.m7247p("mid");
        int columnIndex = c0860g.getColumnIndex("cached_date");
        if (columnIndex == -1 || c0860g.isNull(columnIndex)) {
            c3030g.f10186e = this.f10192f.m1096c(null);
        } else {
            c3030g.f10186e = this.f10192f.m1096c(Long.valueOf(c0860g.getLong(columnIndex)));
        }
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3030g();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3030g c3030g) {
        C3030g c3030g2 = c3030g;
        abstractC0081a.mo7274g(1, c3030g2.f10183b);
        mo2686f(abstractC0081a, c3030g2, 1);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3030g c3030g = (C3030g) obj;
        abstractC0081a.mo7274g(1, c3030g.f10183b);
        abstractC0081a.m8764k(2, c3030g.f10184c);
        abstractC0081a.m8764k(3, c3030g.f10185d);
        Date date = c3030g.f10186e;
        abstractC0081a.m8765i(4, date != null ? this.f10192f.mo1095a(date) : null);
        abstractC0081a.mo7274g(5, c3030g.f10183b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3030g> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3030g c3030g) {
        return Integer.valueOf(c3030g.f10183b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `Cache`(`id`,`data`,`mid`,`cached_date`) VALUES (?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `Cache`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `data` TEXT UNIQUE ON CONFLICT FAIL, `mid` TEXT UNIQUE ON CONFLICT FAIL, `cached_date` INTEGER)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `Cache`(`data`,`mid`,`cached_date`) VALUES (?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`Cache`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `Cache` SET `id`=?,`data`=?,`mid`=?,`cached_date`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3030g c3030g, Number number) {
        c3030g.f10183b = number.intValue();
    }

    /* renamed from: t */
    public final void mo2686f(AbstractC0081a abstractC0081a, C3030g c3030g, int i) {
        abstractC0081a.m8764k(i + 1, c3030g.f10184c);
        abstractC0081a.m8764k(i + 2, c3030g.f10185d);
        Date date = c3030g.f10186e;
        abstractC0081a.m8765i(i + 3, date != null ? this.f10192f.mo1095a(date) : null);
    }

    /* renamed from: u */
    public final C4785l mo2689c(C3030g c3030g) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10187g.m239a(Integer.valueOf(c3030g.f10183b)));
        return c4785l;
    }
}
