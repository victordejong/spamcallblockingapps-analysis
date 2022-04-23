package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import p131c.p161d.p170b.p224d.p252g.p253a.vf0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrg.class */
public final class zzrg {

    /* renamed from: a */
    public final Object f28911a = new Object();

    /* renamed from: b */
    public vf0 f28912b = null;

    /* renamed from: c */
    public boolean f28913c = false;

    /* renamed from: a */
    public final Activity m11511a() {
        synchronized (this.f28911a) {
            if (this.f28912b == null) {
                return null;
            }
            return this.f28912b.m26199a();
        }
    }

    /* renamed from: a */
    public final void m11510a(Context context) {
        synchronized (this.f28911a) {
            if (!this.f28913c) {
                Application application = null;
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                if (context2 instanceof Application) {
                    application = (Application) context2;
                }
                if (application == null) {
                    zzbbq.m15852d("Can not cast Context to Application");
                    return;
                }
                if (this.f28912b == null) {
                    this.f28912b = new vf0();
                }
                this.f28912b.m26197a(application, context);
                this.f28913c = true;
            }
        }
    }

    /* renamed from: a */
    public final void m11509a(zzrh zzrhVar) {
        synchronized (this.f28911a) {
            if (this.f28912b == null) {
                this.f28912b = new vf0();
            }
            this.f28912b.m26194a(zzrhVar);
        }
    }

    /* renamed from: b */
    public final Context m11508b() {
        synchronized (this.f28911a) {
            if (this.f28912b == null) {
                return null;
            }
            return this.f28912b.m26193b();
        }
    }

    /* renamed from: b */
    public final void m11507b(zzrh zzrhVar) {
        synchronized (this.f28911a) {
            if (this.f28912b != null) {
                this.f28912b.m26191b(zzrhVar);
            }
        }
    }
}
