package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhg.class */
public final class zzhg extends ContentObserver {
    public zzhg(zzhh zzhhVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzht.zzc();
    }
}
