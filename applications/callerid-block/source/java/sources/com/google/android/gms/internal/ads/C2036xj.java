package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
/* renamed from: com.google.android.gms.internal.ads.xj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xj.class */
public final class C2036xj extends ContextWrapper {
    /* renamed from: a */
    public static Context m4900a(Context context) {
        if (!(context instanceof C2036xj)) {
            Context applicationContext = context.getApplicationContext();
            return applicationContext == null ? context : applicationContext;
        }
        return ((C2036xj) context).getBaseContext();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        throw null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ApplicationInfo getApplicationInfo() {
        synchronized (this) {
            throw null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageName() {
        synchronized (this) {
            throw null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageResourcePath() {
        synchronized (this) {
            throw null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        synchronized (this) {
            throw null;
        }
    }
}
