package com.google.android.gms.internal.vision;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzax.class */
public final class zzax extends ContentObserver {
    public zzax(zzav zzavVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzbe.zzab();
    }
}
