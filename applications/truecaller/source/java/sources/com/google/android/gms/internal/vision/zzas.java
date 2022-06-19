package com.google.android.gms.internal.vision;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzas.class */
public final class zzas extends ContentObserver {
    private final /* synthetic */ zzaq zzfq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(zzaq zzaqVar, Handler handler) {
        super(null);
        this.zzfq = zzaqVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zzfq.zzv();
    }
}
