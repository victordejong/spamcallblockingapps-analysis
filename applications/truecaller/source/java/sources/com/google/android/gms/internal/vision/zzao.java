package com.google.android.gms.internal.vision;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzao.class */
public final class zzao extends ContentObserver {
    public zzao(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = zzal.zzew;
        atomicBoolean.set(true);
    }
}
