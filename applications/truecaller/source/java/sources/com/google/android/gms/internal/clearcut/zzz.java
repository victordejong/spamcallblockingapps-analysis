package com.google.android.gms.internal.clearcut;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzz.class */
public final class zzz extends ContentObserver {
    public zzz(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = zzy.zzct;
        atomicBoolean.set(true);
    }
}
