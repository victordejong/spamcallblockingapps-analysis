package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.measurement.at */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/at.class */
public final class C3804at extends ContentObserver {
    public C3804at(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C3805au.f17848e;
        atomicBoolean.set(true);
    }
}
