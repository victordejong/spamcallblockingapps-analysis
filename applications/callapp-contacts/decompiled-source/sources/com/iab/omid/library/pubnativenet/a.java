package com.iab.omid.library.pubnativenet;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.pubnativenet.b.b;
import com.iab.omid.library.pubnativenet.b.f;
import com.iab.omid.library.pubnativenet.d.d;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f33330a = new c();

    private a() {
    }

    public static void a(Context context) {
        c cVar = f33330a;
        Context applicationContext = context.getApplicationContext();
        d.a(applicationContext, "Application Context cannot be null");
        if (!cVar.f33376a) {
            cVar.f33376a = true;
            f a2 = f.a();
            a2.f33374b = new com.iab.omid.library.pubnativenet.a.d(new Handler(), applicationContext, new com.iab.omid.library.pubnativenet.a.a(), a2);
            b a3 = b.a();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(a3);
            }
            com.iab.omid.library.pubnativenet.d.b.a(applicationContext);
            com.iab.omid.library.pubnativenet.b.d.a().f33367a = applicationContext != null ? applicationContext.getApplicationContext() : null;
        }
    }

    public static boolean a() {
        return f33330a.f33376a;
    }
}
