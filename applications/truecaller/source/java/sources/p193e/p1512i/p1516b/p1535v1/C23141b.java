package p193e.p1512i.p1516b.p1535v1;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.WindowManager;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import java.util.Locale;
import p1727n3.p1807k.p1816e.C26512d;
import p193e.p1512i.p1516b.C22940e3;
import p193e.p1512i.p1516b.p1531s2.C23078c;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.p;
import s1.z.c.l;
/* renamed from: e.i.b.v1.b */
/* loaded from: classes-dex2jar.jar:e/i/b/v1/b.class */
public class C23141b {

    /* renamed from: a */
    public final Context f64103a;

    /* renamed from: b */
    public final C23139a f64104b;

    /* renamed from: c */
    public final C23078c f64105c;

    /* renamed from: d */
    public final C22940e3 f64106d;

    public C23141b(Context context, C23139a c23139a, C23078c c23078c, C22940e3 c22940e3) {
        l.f(context, AnalyticsConstants.CONTEXT);
        l.f(c23139a, "connectionTypeFetcher");
        l.f(c23078c, "androidUtil");
        l.f(c22940e3, "session");
        this.f64103a = context;
        this.f64104b = c23139a;
        this.f64105c = c23078c;
        this.f64106d = c22940e3;
    }

    /* renamed from: a */
    public final Point m7468a() {
        Point point = new Point();
        Object systemService = this.f64103a.getSystemService("window");
        if (systemService != null) {
            ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
            return point;
        }
        throw new p("null cannot be cast to non-null type android.view.WindowManager");
    }

    /* renamed from: b */
    public final List<Locale> m7467b() {
        Resources system = Resources.getSystem();
        l.b(system, "Resources.getSystem()");
        C26512d m43225k0 = MediaSessionCompat.m43225k0(system.getConfiguration());
        l.b(m43225k0, "ConfigurationCompat.getL…etSystem().configuration)");
        int m1717c = m43225k0.m1717c();
        Locale[] localeArr = new Locale[m1717c];
        for (int i = 0; i < m1717c; i++) {
            localeArr[i] = m43225k0.m1718b(i);
        }
        return C25225a.m3897h3(localeArr);
    }
}
