package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbx.class */
public final class zzcbx extends ContextWrapper {
    public static Context zza(Context context) {
        if (!(context instanceof zzcbx)) {
            Context applicationContext = context.getApplicationContext();
            return applicationContext == null ? context : applicationContext;
        }
        return ((zzcbx) context).getBaseContext();
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
