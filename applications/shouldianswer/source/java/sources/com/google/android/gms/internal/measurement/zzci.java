package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzci.class */
public final class zzci extends ContentObserver {
    public zzci(zzcg zzcgVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzcl.zza();
    }
}
