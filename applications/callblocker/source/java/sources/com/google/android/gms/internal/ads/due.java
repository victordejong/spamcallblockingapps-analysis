package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/due.class */
public final class due {

    /* renamed from: a */
    private final Object f15773a = new Object();
    @GuardedBy("activityTrackerLock")

    /* renamed from: b */
    private duh f15774b = null;
    @GuardedBy("activityTrackerLock")

    /* renamed from: c */
    private boolean f15775c = false;

    /* renamed from: a */
    public final Activity m8567a() {
        Activity m8558a;
        synchronized (this.f15773a) {
            m8558a = this.f15774b != null ? this.f15774b.m8558a() : null;
        }
        return m8558a;
    }

    /* renamed from: a */
    public final void m8566a(Context context) {
        synchronized (this.f15773a) {
            if (!this.f15775c) {
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                Application application = context2 instanceof Application ? (Application) context2 : null;
                if (application == null) {
                    C3556uu.m6745e("Can not cast Context to Application");
                    return;
                }
                if (this.f15774b == null) {
                    this.f15774b = new duh();
                }
                this.f15774b.m8556a(application, context);
                this.f15775c = true;
            }
        }
    }

    /* renamed from: a */
    public final void m8565a(duj dujVar) {
        synchronized (this.f15773a) {
            if (this.f15774b == null) {
                this.f15774b = new duh();
            }
            this.f15774b.m8553a(dujVar);
        }
    }

    /* renamed from: b */
    public final Context m8564b() {
        Context m8552b;
        synchronized (this.f15773a) {
            m8552b = this.f15774b != null ? this.f15774b.m8552b() : null;
        }
        return m8552b;
    }

    /* renamed from: b */
    public final void m8563b(duj dujVar) {
        synchronized (this.f15773a) {
            if (this.f15774b == null) {
                return;
            }
            this.f15774b.m8550b(dujVar);
        }
    }
}
