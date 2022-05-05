package com.google.android.gms.internal.icing;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzba.class */
public final class zzba extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzba(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = zzax.f7884e;
        atomicBoolean.set(true);
    }
}
