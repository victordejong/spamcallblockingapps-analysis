package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/st2.class */
public final class st2 {

    /* renamed from: a */
    private final Object f8557a = new Object();
    @GuardedBy("activityTrackerLock")

    /* renamed from: b */
    private qt2 f8558b = null;
    @GuardedBy("activityTrackerLock")

    /* renamed from: c */
    private boolean f8559c = false;

    /* renamed from: a */
    public final void m5588a(Context context) {
        synchronized (this.f8557a) {
            if (!this.f8559c) {
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                Application application = context2 instanceof Application ? (Application) context2 : null;
                if (application == null) {
                    C1894po.m6180f("Can not cast Context to Application");
                    return;
                }
                if (this.f8558b == null) {
                    this.f8558b = new qt2();
                }
                this.f8558b.m6044a(application, context);
                this.f8559c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m5587b(rt2 rt2Var) {
        synchronized (this.f8557a) {
            if (this.f8558b == null) {
                this.f8558b = new qt2();
            }
            this.f8558b.m6043b(rt2Var);
        }
    }

    /* renamed from: c */
    public final void m5586c(rt2 rt2Var) {
        synchronized (this.f8557a) {
            qt2 qt2Var = this.f8558b;
            if (qt2Var != null) {
                qt2Var.m6042c(rt2Var);
            }
        }
    }

    /* renamed from: d */
    public final Activity m5585d() {
        synchronized (this.f8557a) {
            qt2 qt2Var = this.f8558b;
            if (qt2Var == null) {
                return null;
            }
            return qt2Var.m6041d();
        }
    }

    /* renamed from: e */
    public final Context m5584e() {
        synchronized (this.f8557a) {
            qt2 qt2Var = this.f8558b;
            if (qt2Var == null) {
                return null;
            }
            return qt2Var.m6040e();
        }
    }
}
