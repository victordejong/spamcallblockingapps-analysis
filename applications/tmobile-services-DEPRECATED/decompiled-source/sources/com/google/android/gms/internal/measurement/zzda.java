package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzda.class */
public final class zzda extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzda(zzcy zzcyVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzdh.m12772g();
    }
}
