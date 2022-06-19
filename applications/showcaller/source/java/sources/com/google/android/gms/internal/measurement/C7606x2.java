package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.measurement.x2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x2.class */
public final class C7606x2 extends ContentObserver {
    public C7606x2(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C7619y2.f34778e;
        atomicBoolean.set(true);
    }
}
