package org.mistergroup.shouldianswer.p098b;

import android.media.RingtoneManager;
import androidx.core.app.C0445h;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.p101ui.promo.PromoFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.g */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/g.class */
public final class C2278g {

    /* renamed from: a */
    public static final C2278g f6398a = new C2278g();

    private C2278g() {
    }

    /* renamed from: b */
    private final void m1706b() {
        C3104j.m157a(C3104j.f9124a, "NOTIFICATION: PromoNotification.show", (String) null, 2, (Object) null);
        MyApp m1802a = MyApp.f5480c.m1802a();
        int m1162w = C2405c.f6946b.m1162w();
        C1705p c1705p = C1705p.f4394a;
        String string = m1802a.getString(2131755404);
        C1694h.m3122a((Object) string, "context.getString(R.stri…fication_promo_app_title)");
        Object[] objArr = {String.valueOf(m1162w)};
        String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
        C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
        String string2 = m1802a.getString(2131755403);
        C1694h.m3122a((Object) string2, "context.getString(R.stri…cation_promo_app_message)");
        MyApp myApp = m1802a;
        C0445h.C0450d m6620a = new C0445h.C0450d(myApp, C3113m.f9165a.m134c()).m6633a(2131230930).m6620a((CharSequence) format);
        String str = string2;
        C0445h.C0450d m6598f = m6620a.m6611b((CharSequence) str).m6604d(1).m6608c(-1).m6602d(true).m6610b(m1802a.getString(2131755150)).m6598f(1);
        m6598f.m6625a(RingtoneManager.getDefaultUri(2));
        C0445h.C0449c c0449c = new C0445h.C0449c();
        c0449c.m6635a(str);
        m6598f.m6621a(c0449c);
        m6598f.m6628a(PromoFragment.f8266b.m499a(myApp));
        C3135y.f9272b.m21c().notify(780517124, m6598f.m6616b());
    }

    /* renamed from: a */
    public final boolean m1707a() {
        C3104j.m157a(C3104j.f9124a, "PromoNotification.check", (String) null, 2, (Object) null);
        C3113m.f9165a.m129h();
        if (!C2398ai.f6930a.m1279d()) {
            C3104j.m157a(C3104j.f9124a, "PromoNotification.check appPromo disabled", (String) null, 2, (Object) null);
            return false;
        }
        long m1167r = C2405c.f6946b.m1167r();
        long time = new Date().getTime();
        if (m1167r == 0) {
            C2405c.f6946b.m1200a(time);
            C3104j.m157a(C3104j.f9124a, "PromoNotification.check lastPromoTime is not set yet...setting to actual time", (String) null, 2, (Object) null);
            return false;
        }
        long j = time - m1167r;
        if (j <= C2405c.f6946b.m1176i()) {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "PromoNotification.check not enough daysFromLastPromo=" + String.valueOf(j), (String) null, 2, (Object) null);
            return false;
        }
        C3104j c3104j2 = C3104j.f9124a;
        C3104j.m157a(c3104j2, "PromoNotification.check statsCheckedTotal needs be more than 20 and is " + String.valueOf(C2405c.f6946b.m1162w()), (String) null, 2, (Object) null);
        if (C2405c.f6946b.m1162w() <= 20) {
            C3104j.m157a(C3104j.f9124a, "PromoNotification.check Dont checked 20 calls yet", (String) null, 2, (Object) null);
            return false;
        }
        try {
            int i = Calendar.getInstance().get(11);
            if (i < 8 || i > 20) {
                C3104j.m157a(C3104j.f9124a, "PromoNotification.check Bad day time", (String) null, 2, (Object) null);
                return false;
            }
            C3104j.m157a(C3104j.f9124a, "PromoNotification.check Show Promo Notification", (String) null, 2, (Object) null);
            C3074a.f8976a.m227c("PromoShow");
            C2405c.f6946b.m1200a(time);
            m1706b();
            return true;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }
}
