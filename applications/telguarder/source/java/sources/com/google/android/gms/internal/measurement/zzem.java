package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzem.class */
public final class zzem extends ContentObserver {
    final /* synthetic */ zzen zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzem(zzen zzenVar, Handler handler) {
        super(null);
        this.zza = zzenVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zza.zzc();
    }
}
