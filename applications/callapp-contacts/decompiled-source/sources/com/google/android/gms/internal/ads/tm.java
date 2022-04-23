package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tm.class */
public final class tm extends ContextWrapper {
    public static Context a(Context context) {
        if (context instanceof tm) {
            return ((tm) context).getBaseContext();
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        throw new NoSuchMethodError();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final ApplicationInfo getApplicationInfo() {
        synchronized (this) {
            throw new NoSuchMethodError();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageName() {
        synchronized (this) {
            throw new NoSuchMethodError();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final String getPackageResourcePath() {
        synchronized (this) {
            throw new NoSuchMethodError();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        synchronized (this) {
            throw new NoSuchMethodError();
        }
    }
}
