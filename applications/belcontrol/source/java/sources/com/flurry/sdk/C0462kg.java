package com.flurry.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
/* renamed from: com.flurry.sdk.kg */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kg.class */
public class C0462kg {

    /* renamed from: e */
    private static final String f3458e = "kg";

    /* renamed from: f */
    private static C0462kg f3459f;

    /* renamed from: a */
    public final Context f3460a;

    /* renamed from: c */
    public final Handler f3462c;

    /* renamed from: d */
    public final String f3463d;

    /* renamed from: g */
    private final HandlerThread f3464g;

    /* renamed from: b */
    public final Handler f3461b = new Handler(Looper.getMainLooper());

    /* renamed from: h */
    private final C0480kw f3465h = new C0480kw();

    private C0462kg(Context context, String str) {
        this.f3460a = context.getApplicationContext();
        HandlerThread handlerThread = new HandlerThread("FlurryAgent");
        this.f3464g = handlerThread;
        handlerThread.start();
        this.f3462c = new Handler(handlerThread.getLooper());
        this.f3463d = str;
    }

    /* renamed from: a */
    public static C0462kg m4652a() {
        return f3459f;
    }

    /* renamed from: a */
    public static void m4651a(Context context, String str) {
        synchronized (C0462kg.class) {
            try {
                C0462kg c0462kg = f3459f;
                if (c0462kg != null) {
                    if (!c0462kg.f3463d.equals(str)) {
                        throw new IllegalStateException("Only one API key per application is supported!");
                    }
                    C0478ku.m4583e(f3458e, "Flurry is already initialized");
                } else if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null");
                } else {
                    if (TextUtils.isEmpty(str)) {
                        throw new IllegalArgumentException("API key must be specified");
                    }
                    C0462kg c0462kg2 = new C0462kg(context, str);
                    f3459f = c0462kg2;
                    c0462kg2.f3465h.m4582a(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final AbstractC0481kx m4650a(Class<? extends AbstractC0481kx> cls) {
        return this.f3465h.m4580b(cls);
    }

    /* renamed from: a */
    public final void m4649a(Runnable runnable) {
        this.f3461b.post(runnable);
    }

    /* renamed from: a */
    public final void m4648a(Runnable runnable, long j) {
        if (runnable == null) {
            return;
        }
        this.f3462c.postDelayed(runnable, j);
    }

    /* renamed from: b */
    public final void m4647b(Runnable runnable) {
        this.f3462c.post(runnable);
    }
}
