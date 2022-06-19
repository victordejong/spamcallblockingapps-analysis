package org.mistergroup.shouldianswer.p098b;

import android.media.RingtoneManager;
import androidx.core.app.C0445h;
import java.util.Date;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/d.class */
public final class C2273d {

    /* renamed from: a */
    public static final C2273d f6370a = new C2273d();

    private C2273d() {
    }

    /* renamed from: a */
    public final void m1710a(boolean z) {
        MyApp m1802a = MyApp.f5480c.m1802a();
        long time = new Date().getTime();
        long m1161x = C2405c.f6946b.m1161x();
        if (!z && time - m1161x < C2405c.f6946b.m1175j()) {
            C3104j.m157a(C3104j.f9124a, "NOTIFICATION: InvalidPermissionsNotification - skip due timeForInvalidPermissionsNotification", (String) null, 2, (Object) null);
            return;
        }
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "InvalidPermissionsNotification.Show Permission callPhone=" + String.valueOf(C3115o.f9175a.m118e()), (String) null, 2, (Object) null);
        C3104j c3104j2 = C3104j.f9124a;
        C3104j.m157a(c3104j2, "InvalidPermissionsNotification.Show Permission canReadCallLog=" + String.valueOf(C3115o.f9175a.m117f()), (String) null, 2, (Object) null);
        C3104j c3104j3 = C3104j.f9124a;
        C3104j.m157a(c3104j3, "InvalidPermissionsNotification.Show Permission canReadPhoneState=" + String.valueOf(C3115o.f9175a.m115h()), (String) null, 2, (Object) null);
        C3104j c3104j4 = C3104j.f9124a;
        C3104j.m157a(c3104j4, "InvalidPermissionsNotification.Show Permission canProcessOutgoingCalls=" + String.valueOf(C3115o.f9175a.m114i()), (String) null, 2, (Object) null);
        C3104j c3104j5 = C3104j.f9124a;
        C3104j.m157a(c3104j5, "InvalidPermissionsNotification.Show Permission canReadContact=" + String.valueOf(C3115o.f9175a.m113j()), (String) null, 2, (Object) null);
        C3104j.m158a(C3104j.f9124a, new Exception("InvalidPermissionsNotification displayed"), (String) null, 2, (Object) null);
        C2405c.f6946b.m1192b(new Date().getTime());
        C3104j.m157a(C3104j.f9124a, "NOTIFICATION: InvalidPermissionsNotification.show", (String) null, 2, (Object) null);
        C2405c.f6946b.m1200a(0L);
        C3074a.f8976a.m227c("InvalidPermissionsNotification.Show");
        C3113m.f9165a.m129h();
        String string = m1802a.getString(2131755150);
        C1694h.m3122a((Object) string, "context.getString(R.string.app_name)");
        String string2 = m1802a.getString(2131755073);
        C1694h.m3122a((Object) string2, "context.getString(R.stri…ions_tv_main_description)");
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
}
