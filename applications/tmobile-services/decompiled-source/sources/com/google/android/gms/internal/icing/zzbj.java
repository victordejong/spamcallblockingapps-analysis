package com.google.android.gms.internal.icing;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbj.class */
public final class zzbj extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbj(zzbh zzbhVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzbq.m14007g();
    }
}
