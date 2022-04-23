package com.bytedance.sdk.adnet;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.c.b;
import com.bytedance.sdk.adnet.c.f;
import com.bytedance.sdk.adnet.core.k;
import com.bytedance.sdk.adnet.core.l;
import com.bytedance.sdk.adnet.core.n;
import com.bytedance.sdk.adnet.core.o;
import com.bytedance.sdk.adnet.d.d;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static n f8179a;

    /* renamed from: b  reason: collision with root package name */
    private static String f8180b;

    /* renamed from: c  reason: collision with root package name */
    private static b f8181c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f8182d = true;
    private static com.bytedance.sdk.adnet.c.a e;

    public static b a() {
        b bVar = f8181c;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalArgumentException("sITTNetDepend is null");
    }

    public static l a(Context context) {
        return k.a(context);
    }

    public static l a(Context context, IHttpStack iHttpStack, int i) {
        return k.a(context, iHttpStack, i);
    }

    public static void a(Activity activity) {
        if (activity != null) {
            final Context applicationContext = activity.getApplicationContext();
            e.b(new g("adnet onActivityResume") { // from class: com.bytedance.sdk.adnet.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    com.bytedance.sdk.adnet.a.a.a(applicationContext).c();
                    com.bytedance.sdk.adnet.a.a.a(applicationContext);
                    com.bytedance.sdk.adnet.a.a.b(applicationContext);
                }
            });
        }
    }

    public static void a(Context context, Application application, boolean z) {
        if (context != null) {
            f.a().a(context, com.bytedance.sdk.adnet.d.g.b(context));
            if (com.bytedance.sdk.adnet.d.g.a(context) || (!com.bytedance.sdk.adnet.d.g.b(context) && z)) {
                com.bytedance.sdk.adnet.a.a.a(context).c();
                com.bytedance.sdk.adnet.a.a.a(context).a();
            }
            if (com.bytedance.sdk.adnet.d.g.b(context)) {
                com.bytedance.sdk.adnet.a.a.a(context);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("tryInitAdTTNet context is null");
    }

    public static void a(com.bytedance.sdk.adnet.c.a aVar) {
        e = aVar;
    }

    public static void a(b bVar) {
        f8181c = bVar;
    }

    public static void a(boolean z) {
        f8182d = z;
    }

    public static String b(Context context) {
        try {
            if (TextUtils.isEmpty(f8180b)) {
                File file = new File(context.getCacheDir(), "VAdNetSdk");
                file.mkdirs();
                f8180b = file.getAbsolutePath();
            }
        } catch (Throwable th) {
            o.a(th, "init adnetsdk default directory error ", new Object[0]);
        }
        return f8180b;
    }

    public static boolean b() {
        return f8182d;
    }

    public static void c() {
        d.a(d.a.DEBUG);
    }

    public static com.bytedance.sdk.adnet.c.a d() {
        return e;
    }
}
