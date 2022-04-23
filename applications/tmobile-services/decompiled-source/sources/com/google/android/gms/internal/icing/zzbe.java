package com.google.android.gms.internal.icing;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbe.class */
final class zzbe extends ContentObserver {

    /* renamed from: a */
    private final /* synthetic */ zzbc f7906a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbe(zzbc zzbcVar, Handler handler) {
        super(null);
        this.f7906a = zzbcVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f7906a.m14030d();
    }
}
