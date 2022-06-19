package com.appnext.core;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.appnext.base.p006a.p007a.C0474a;
import com.appnext.base.p010b.C0481b;
import java.util.concurrent.TimeUnit;
/* renamed from: com.appnext.core.r */
/* loaded from: classes-dex2jar.jar:com/appnext/core/r.class */
public final class C0571r {

    /* renamed from: eq */
    private static final long f1857eq = TimeUnit.DAYS.toMillis(30);

    /* renamed from: er */
    private static C0571r f1858er;

    /* renamed from: es */
    private String f1859es = "";

    private C0571r() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m42329a(C0571r c0571r, Context context) {
        if (context != null) {
            try {
                C0481b.m42559ak().m42554e("userAgent", WebSettings.getDefaultUserAgent(context.getApplicationContext()));
                C0481b.m42559ak().m42557b("userAgentStoreDate", System.currentTimeMillis());
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: aC */
    public static C0571r m42328aC() {
        if (f1858er == null) {
            synchronized (C0474a.class) {
                try {
                    if (f1858er == null) {
                        f1858er = new C0571r();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1858er;
    }

    /* renamed from: n */
    public final String m42326n(final Context context) {
        try {
            if (!TextUtils.isEmpty(this.f1859es)) {
                return this.f1859es;
            }
            this.f1859es = C0481b.m42559ak().m42555d("userAgent", "");
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.r.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        long m42560a = C0481b.m42559ak().m42560a("userAgentStoreDate", 0L);
                        if (!TextUtils.isEmpty(C0571r.this.f1859es) && System.currentTimeMillis() - C0571r.f1857eq >= m42560a) {
                            return;
                        }
                        C0571r.m42329a(C0571r.this, context);
                    } catch (Throwable th) {
                    }
                }
            });
            return this.f1859es;
        } catch (Throwable th) {
            return this.f1859es;
        }
    }
}
