package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.kk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kk.class */
public final class C6667kk {

    /* renamed from: a */
    private final Object f25237a = new Object();

    /* renamed from: b */
    private C6593ik f25238b = null;

    /* renamed from: c */
    private boolean f25239c = false;

    /* renamed from: a */
    public final void m13877a(Context context) {
        synchronized (this.f25237a) {
            if (!this.f25239c) {
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                Application application = context2 instanceof Application ? (Application) context2 : null;
                if (application == null) {
                    ei0.m15464f("Can not cast Context to Application");
                    return;
                }
                if (this.f25238b == null) {
                    this.f25238b = new C6593ik();
                }
                this.f25238b.m14367f(application, context);
                this.f25239c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m13876b(AbstractC6630jk abstractC6630jk) {
        synchronized (this.f25237a) {
            if (this.f25238b == null) {
                this.f25238b = new C6593ik();
            }
            this.f25238b.m14366g(abstractC6630jk);
        }
    }

    /* renamed from: c */
    public final void m13875c(AbstractC6630jk abstractC6630jk) {
        synchronized (this.f25237a) {
            C6593ik c6593ik = this.f25238b;
            if (c6593ik == null) {
                return;
            }
            c6593ik.m14365h(abstractC6630jk);
        }
    }

    /* renamed from: d */
    public final Activity m13874d() {
        synchronized (this.f25237a) {
            C6593ik c6593ik = this.f25238b;
            if (c6593ik != null) {
                return c6593ik.m14364i();
            }
            return null;
        }
    }

    /* renamed from: e */
    public final Context m13873e() {
        synchronized (this.f25237a) {
            C6593ik c6593ik = this.f25238b;
            if (c6593ik != null) {
                return c6593ik.m14363j();
            }
            return null;
        }
    }
}
