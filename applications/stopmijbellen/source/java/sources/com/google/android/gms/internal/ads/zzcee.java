package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcee.class */
public final class zzcee extends ContextWrapper {
    public static Context zza(Context context) {
        if (!(context instanceof zzcee)) {
            Context applicationContext = context.getApplicationContext();
            return applicationContext == null ? context : applicationContext;
        }
        return ((zzcee) context).getBaseContext();
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
