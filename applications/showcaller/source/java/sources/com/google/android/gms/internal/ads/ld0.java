package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ld0.class */
public final class ld0 extends ContextWrapper {
    /* renamed from: a */
    public static Context m13583a(Context context) {
        if (!(context instanceof ld0)) {
            Context applicationContext = context.getApplicationContext();
            return applicationContext == null ? context : applicationContext;
        }
        return ((ld0) context).getBaseContext();
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
