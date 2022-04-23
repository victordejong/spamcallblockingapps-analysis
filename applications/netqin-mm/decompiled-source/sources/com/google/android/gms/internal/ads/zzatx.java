package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatx.class */
public final class zzatx extends ContextWrapper {

    /* renamed from: a */
    public Context f24518a;

    /* renamed from: b */
    public WeakReference<Activity> f24519b = new WeakReference<>(null);

    public zzatx(Context context) {
        super(context);
    }

    /* renamed from: a */
    public static zzatx m16351a(Context context) {
        return new zzatx(m16346c(context));
    }

    /* renamed from: b */
    public static Context m16348b(Context context) {
        return context instanceof zzatx ? ((zzatx) context).getBaseContext() : m16346c(context);
    }

    /* renamed from: c */
    public static Context m16346c(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final Intent m16350a(Intent intent) {
        synchronized (this) {
            if (!(this.f24518a == null || intent.getComponent() == null || !intent.getComponent().getPackageName().equals(this.f24518a.getPackageName()))) {
                Intent intent2 = (Intent) intent.clone();
                intent2.setClassName(super.getPackageName(), intent.getComponent().getClassName());
                return intent2;
            }
            return intent;
        }
    }

    /* renamed from: a */
    public final void m16349a(String str) throws PackageManager.NameNotFoundException {
        synchronized (this) {
            this.f24518a = super.createPackageContext(str, 0);
        }
    }

    /* renamed from: b */
    public final void m16347b(Intent intent) {
        synchronized (this) {
            Activity activity = this.f24519b.get();
            if (activity == null) {
                intent.addFlags(268435456);
                super.startActivity(intent);
                return;
            }
            Intent intent2 = (Intent) intent.clone();
            intent2.setFlags(intent.getFlags() & (-268435457));
            activity.startActivity(intent2);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ApplicationInfo getApplicationInfo() {
        synchronized (this) {
            if (this.f24518a != null) {
                return this.f24518a.getApplicationInfo();
            }
            return super.getApplicationInfo();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageName() {
        synchronized (this) {
            if (this.f24518a != null) {
                return this.f24518a.getPackageName();
            }
            return super.getPackageName();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageResourcePath() {
        synchronized (this) {
            if (this.f24518a != null) {
                return this.f24518a.getPackageResourcePath();
            }
            return super.getPackageResourcePath();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        synchronized (this) {
            m16347b(m16350a(intent));
        }
    }
}
