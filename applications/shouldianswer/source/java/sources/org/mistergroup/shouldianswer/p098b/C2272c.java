package org.mistergroup.shouldianswer.p098b;

import android.media.RingtoneManager;
import androidx.core.app.C0445h;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.p101ui.main.MainFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/c.class */
public final class C2272c {

    /* renamed from: a */
    public static final C2272c f6369a = new C2272c();

    private C2272c() {
    }

    /* renamed from: a */
    public final void m1711a() {
        MyApp m1802a = MyApp.f5480c.m1802a();
        C3104j.m157a(C3104j.f9124a, "NOTIFICATION: DisabledOverlayNotification.show", (String) null, 2, (Object) null);
        C3074a.f8976a.m227c("DisabledOverlayNotification.Show");
        C3113m.f9165a.m129h();
        String string = m1802a.getString(2131755150);
        C1694h.m3122a((Object) string, "context.getString(R.string.app_name)");
        String string2 = m1802a.getString(2131755398);
        C1694h.m3122a((Object) string2, "context.getString(R.stri…disabled_overlay_message)");
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
