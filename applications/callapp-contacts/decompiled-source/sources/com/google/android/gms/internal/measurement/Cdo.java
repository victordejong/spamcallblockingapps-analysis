package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.do  reason: invalid class name */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/do.class */
public final class Cdo extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Cdo(dp dpVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        ec.a();
    }
}
