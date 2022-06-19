package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.measurement.dd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dd.class */
public final class C13437dd extends ContentObserver {
    public C13437dd(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C13438de.f50632k;
        atomicBoolean.set(true);
    }
}
