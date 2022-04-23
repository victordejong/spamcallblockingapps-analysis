package com.iab.omid.library.mopub;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.mopub.b.b;
import com.iab.omid.library.mopub.b.f;
import com.iab.omid.library.mopub.d.d;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f33234a = new c();

    private a() {
    }

    public static String a() {
        return "1.3.4-Mopub";
    }

    public static void a(Context context) {
        c cVar = f33234a;
        Context applicationContext = context.getApplicationContext();
        d.a(applicationContext, "Application Context cannot be null");
        if (!cVar.f33281a) {
            cVar.f33281a = true;
            f a2 = f.a();
            a2.f33279b = new com.iab.omid.library.mopub.a.d(new Handler(), applicationContext, new com.iab.omid.library.mopub.a.a(), a2);
            b.a().f33262a = applicationContext.getApplicationContext();
            com.iab.omid.library.mopub.d.b.a(applicationContext);
            com.iab.omid.library.mopub.b.d.a().f33272a = applicationContext != null ? applicationContext.getApplicationContext() : null;
        }
    }

    public static boolean b() {
        return f33234a.f33281a;
    }
}
