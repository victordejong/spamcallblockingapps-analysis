package com.iab.omid.library.mopub;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.mopub.p428a.C16340a;
import com.iab.omid.library.mopub.p428a.C16343d;
import com.iab.omid.library.mopub.p430b.C16363b;
import com.iab.omid.library.mopub.p430b.C16367d;
import com.iab.omid.library.mopub.p430b.C16370f;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p432d.C16382d;
/* renamed from: com.iab.omid.library.mopub.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/a.class */
public final class C16339a {

    /* renamed from: a */
    private static C16371c f57756a = new C16371c();

    private C16339a() {
    }

    /* renamed from: a */
    public static String m7386a() {
        return "1.3.4-Mopub";
    }

    /* renamed from: a */
    public static void m7385a(Context context) {
        C16371c c16371c = f57756a;
        Context applicationContext = context.getApplicationContext();
        C16382d.m7325a(applicationContext, "Application Context cannot be null");
        if (!c16371c.f57819a) {
            c16371c.f57819a = true;
            C16370f m7349a = C16370f.m7349a();
            m7349a.f57815b = new C16343d(new Handler(), applicationContext, new C16340a(), m7349a);
            C16363b.m7363a().f57797a = applicationContext.getApplicationContext();
            C16379b.m7337a(applicationContext);
            C16367d.m7359a().f57808a = applicationContext != null ? applicationContext.getApplicationContext() : null;
        }
    }

    /* renamed from: b */
    public static boolean m7384b() {
        return f57756a.f57819a;
    }
}
