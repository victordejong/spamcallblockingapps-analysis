package org.mistergroup.shouldianswer.utils;

import android.app.Activity;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.i */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/i.class */
public final class C3103i {

    /* renamed from: a */
    public static final C3103i f9123a = new C3103i();

    private C3103i() {
    }

    /* renamed from: a */
    public final void m167a(Activity activity) {
        C1694h.m3117b(activity, "activity");
        try {
            View findViewById = activity.findViewById(16908290);
            C1694h.m3122a((Object) findViewById, "activity.findViewById<View>(android.R.id.content)");
            IBinder windowToken = findViewById.getWindowToken();
            InputMethodManager m15i = C3135y.f9272b.m15i();
            if (!m15i.isActive()) {
                return;
            }
            m15i.hideSoftInputFromWindow(windowToken, 0);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
