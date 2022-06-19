package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzet.class */
public final class zzet extends ContentObserver {
    public zzet(zzeu zzeuVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzfg.zzc();
    }
}
