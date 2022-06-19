package com.facebook.internal.p037u0.p038k;

import android.app.ActivityManager;
import com.facebook.internal.p037u0.p040m.C1220a;
import p193e.p1538j.C23228f0;
/* renamed from: com.facebook.internal.u0.k.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/k/a.class */
public final /* synthetic */ class RunnableC1211a implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1211a f3282a = new RunnableC1211a();

    @Override // java.lang.Runnable
    public final void run() {
        C1214d c1214d = C1214d.f3285a;
        if (C1220a.m41623b(C1214d.class)) {
            return;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            Object systemService = C23228f0.m7354a().getSystemService("activity");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
            }
            C1214d.m41627a((ActivityManager) systemService);
        } catch (Exception e) {
        } catch (Throwable th) {
            C1220a.m41624a(th, C1214d.class);
        }
    }
}
