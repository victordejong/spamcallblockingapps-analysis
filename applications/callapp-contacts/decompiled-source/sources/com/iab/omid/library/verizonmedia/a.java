package com.iab.omid.library.verizonmedia;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.verizonmedia.b.b;
import com.iab.omid.library.verizonmedia.b.f;
import com.iab.omid.library.verizonmedia.d.d;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f33425a = new c();

    private a() {
    }

    public static void a(Context context) {
        c cVar = f33425a;
        Context applicationContext = context.getApplicationContext();
        d.a(applicationContext, "Application Context cannot be null");
        if (!cVar.f33472a) {
            cVar.f33472a = true;
            f a2 = f.a();
            a2.f33470b = new com.iab.omid.library.verizonmedia.a.d(new Handler(), applicationContext, new com.iab.omid.library.verizonmedia.a.a(), a2);
            b.a().f33453a = applicationContext.getApplicationContext();
            com.iab.omid.library.verizonmedia.d.b.a(applicationContext);
            com.iab.omid.library.verizonmedia.b.d.a().f33463a = applicationContext != null ? applicationContext.getApplicationContext() : null;
        }
    }

    public static boolean a() {
        return f33425a.f33472a;
    }
}
