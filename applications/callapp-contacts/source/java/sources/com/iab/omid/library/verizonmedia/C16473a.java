package com.iab.omid.library.verizonmedia;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.verizonmedia.p446a.C16474a;
import com.iab.omid.library.verizonmedia.p446a.C16477d;
import com.iab.omid.library.verizonmedia.p448b.C16495b;
import com.iab.omid.library.verizonmedia.p448b.C16499d;
import com.iab.omid.library.verizonmedia.p448b.C16502f;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
/* renamed from: com.iab.omid.library.verizonmedia.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/a.class */
public final class C16473a {

    /* renamed from: a */
    private static C16503c f58017a = new C16503c();

    private C16473a() {
    }

    /* renamed from: a */
    public static void m7180a(Context context) {
        C16503c c16503c = f58017a;
        Context applicationContext = context.getApplicationContext();
        C16514d.m7102a(applicationContext, "Application Context cannot be null");
        if (!c16503c.f58080a) {
            c16503c.f58080a = true;
            C16502f m7127a = C16502f.m7127a();
            m7127a.f58076b = new C16477d(new Handler(), applicationContext, new C16474a(), m7127a);
            C16495b.m7142a().f58058a = applicationContext.getApplicationContext();
            C16511b.m7114a(applicationContext);
            C16499d.m7137a().f58069a = applicationContext != null ? applicationContext.getApplicationContext() : null;
        }
    }

    /* renamed from: a */
    public static boolean m7181a() {
        return f58017a.f58080a;
    }
}
