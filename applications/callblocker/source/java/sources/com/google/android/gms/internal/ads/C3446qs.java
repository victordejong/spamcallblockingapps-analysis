package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.qs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qs.class */
public final class C3446qs extends ContextWrapper {

    /* renamed from: a */
    private Context f17297a;

    /* renamed from: b */
    private WeakReference<Activity> f17298b = new WeakReference<>(null);

    private C3446qs(Context context) {
        super(context);
    }

    /* renamed from: a */
    private final Intent m7297a(Intent intent) {
        synchronized (this) {
            if (this.f17297a != null && intent.getComponent() != null && intent.getComponent().getPackageName().equals(this.f17297a.getPackageName())) {
                Intent intent2 = (Intent) intent.clone();
                intent2.setClassName(super.getPackageName(), intent.getComponent().getClassName());
                intent = intent2;
            }
        }
        return intent;
    }

    /* renamed from: a */
    public static C3446qs m7298a(Context context) {
        return new C3446qs(m7293c(context));
    }

    /* renamed from: b */
    public static Context m7295b(Context context) {
        return context instanceof C3446qs ? ((C3446qs) context).getBaseContext() : m7293c(context);
    }

    /* renamed from: b */
    private final void m7294b(Intent intent) {
        synchronized (this) {
            Activity activity = this.f17298b.get();
            if (activity == null) {
                intent.addFlags(268435456);
                super.startActivity(intent);
            } else {
                Intent intent2 = (Intent) intent.clone();
                intent2.setFlags(intent.getFlags() & (-268435457));
                activity.startActivity(intent2);
            }
        }
    }

    /* renamed from: c */
    private static Context m7293c(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context;
    }

    /* renamed from: a */
    public final void m7296a(String str) {
        synchronized (this) {
            this.f17297a = super.createPackageContext(str, 0);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ApplicationInfo getApplicationInfo() {
        ApplicationInfo applicationInfo;
        synchronized (this) {
            applicationInfo = this.f17297a != null ? this.f17297a.getApplicationInfo() : super.getApplicationInfo();
        }
        return applicationInfo;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageName() {
        String packageName;
        synchronized (this) {
            packageName = this.f17297a != null ? this.f17297a.getPackageName() : super.getPackageName();
        }
        return packageName;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageResourcePath() {
        String packageResourcePath;
        synchronized (this) {
            packageResourcePath = this.f17297a != null ? this.f17297a.getPackageResourcePath() : super.getPackageResourcePath();
        }
        return packageResourcePath;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        synchronized (this) {
            m7294b(m7297a(intent));
        }
    }
}
