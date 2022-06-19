package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.ax */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ax.class */
public final class C3808ax extends ContentObserver {

    /* renamed from: a */
    private final /* synthetic */ C3806av f17868a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3808ax(C3806av c3806av, Handler handler) {
        super(null);
        this.f17868a = c3806av;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f17868a.m5899b();
    }
}
