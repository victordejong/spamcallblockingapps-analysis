package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.measurement.s2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s2.class */
final class C2171s2 extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2171s2(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C2179t2.f9834e;
        atomicBoolean.set(true);
    }
}
