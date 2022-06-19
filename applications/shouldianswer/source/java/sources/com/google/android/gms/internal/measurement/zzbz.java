package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbz.class */
public final class zzbz extends ContentObserver {
    private final /* synthetic */ zzbx zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbz(zzbx zzbxVar, Handler handler) {
        super(null);
        this.zza = zzbxVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zza.zzb();
    }
}
