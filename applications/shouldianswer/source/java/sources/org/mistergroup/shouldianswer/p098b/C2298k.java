package org.mistergroup.shouldianswer.p098b;

import android.media.RingtoneManager;
import androidx.core.app.C0445h;
import java.util.Calendar;
import java.util.Date;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.k */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/k.class */
public final class C2298k {

    /* renamed from: a */
    public static final C2298k f6489a = new C2298k();

    private C2298k() {
    }

    /* renamed from: b */
    private final void m1669b() {
        MyApp m1802a = MyApp.f5480c.m1802a();
        C3104j.m157a(C3104j.f9124a, "NOTIFICATION: UpdateDatabaseNotification.show", (String) null, 2, (Object) null);
        C3113m.f9165a.m129h();
        String string = m1802a.getString(2131755150);
        C1694h.m3122a((Object) string, "context.getString(R.string.app_name)");
        String string2 = m1802a.getString(2131755406);
        C1694h.m3122a((Object) string2, "context.getString(R.stri…_update_database_message)");
        MyApp myApp = m1802a;
        C0445h.C0450d m6620a = new C0445h.C0450d(myApp, C3113m.f9165a.m134c()).m6633a(2131230930).m6620a((CharSequence) string);
        String str = string2;
        C0445h.C0450d m6598f = m6620a.m6611b((CharSequence) str).m6604d(1).m6608c(-1).m6602d(true).m6610b(m1802a.getString(2131755150)).m6598f(1);
        m6598f.m6625a(RingtoneManager.getDefaultUri(2));
        C0445h.C0449c c0449c = new C0445h.C0449c();
        c0449c.m6635a(str);
        m6598f.m6621a(c0449c);
        m6598f.m6628a(MainFragment.f7560b.m752a(myApp));
        C3135y.f9272b.m21c().notify(78053121, m6598f.m6616b());
    }

    /* renamed from: a */
    public final boolean m1670a() {
        C3104j.m157a(C3104j.f9124a, "UpdateDatabaseNotification.check", (String) null, 2, (Object) null);
        if (new Date().getTime() - C2405c.f6946b.m1209I() > ((long) 345600000)) {
            long m1212F = C2405c.f6946b.m1212F();
            long time = new Date().getTime();
            if (time - m1212F <= C2405c.f6946b.m1178h()) {
                return false;
            }
            if (time - C2405c.f6946b.m1211G() <= C2405c.f6946b.m1174k()) {
                C3104j.m157a(C3104j.f9124a, "UpdateDatabaseNotification - its time, but notification was displayed in near history..need wait more", (String) null, 2, (Object) null);
                return false;
            }
            C3104j.m157a(C3104j.f9124a, "UpdateDatabaseNotification - its time", (String) null, 2, (Object) null);
            try {
                int i = Calendar.getInstance().get(11);
                if (i < 8 || i > 20) {
                    C3104j.m157a(C3104j.f9124a, "UpdateDatabaseNotification.check Bad day time", (String) null, 2, (Object) null);
                    return false;
                }
                C3074a.f8976a.m227c("notifyupdatedb");
                C2405c.f6946b.m1188c(time);
                m1669b();
                return true;
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                return false;
            }
        }
        return false;
    }
}
