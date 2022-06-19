package com.iab.omid.library.pubnativenet;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.pubnativenet.p437a.C16408a;
import com.iab.omid.library.pubnativenet.p437a.C16411d;
import com.iab.omid.library.pubnativenet.p439b.C16430b;
import com.iab.omid.library.pubnativenet.p439b.C16433d;
import com.iab.omid.library.pubnativenet.p439b.C16436f;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
/* renamed from: com.iab.omid.library.pubnativenet.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/a.class */
public final class C16407a {

    /* renamed from: a */
    private static C16437c f57888a = new C16437c();

    private C16407a() {
    }

    /* renamed from: a */
    public static void m7284a(Context context) {
        C16437c c16437c = f57888a;
        Context applicationContext = context.getApplicationContext();
        C16448d.m7223a(applicationContext, "Application Context cannot be null");
        if (!c16437c.f57948a) {
            c16437c.f57948a = true;
            C16436f m7247a = C16436f.m7247a();
            m7247a.f57944b = new C16411d(new Handler(), applicationContext, new C16408a(), m7247a);
            C16430b m7261a = C16430b.m7261a();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(m7261a);
            }
            C16445b.m7235a(applicationContext);
            C16433d.m7258a().f57937a = applicationContext != null ? applicationContext.getApplicationContext() : null;
        }
    }

    /* renamed from: a */
    public static boolean m7285a() {
        return f57888a.f57948a;
    }
}
