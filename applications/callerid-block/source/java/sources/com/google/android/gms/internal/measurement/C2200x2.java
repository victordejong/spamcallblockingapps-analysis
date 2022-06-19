package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: com.google.android.gms.internal.measurement.x2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x2.class */
final class C2200x2 extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ y2 f9845a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C2200x2(y2 y2Var, Handler handler) {
        super(null);
        this.f9845a = y2Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f9845a.c();
    }
}
