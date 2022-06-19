package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.c3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/c3.class */
public final class C7320c3 extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ C7334d3 f34373a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7320c3(C7334d3 c7334d3, Handler handler) {
        super(null);
        this.f34373a = c7334d3;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f34373a.m7610c();
    }
}
