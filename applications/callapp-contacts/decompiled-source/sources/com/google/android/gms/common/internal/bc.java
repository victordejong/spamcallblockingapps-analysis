package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bc.class */
public final class bc extends ar {

    /* renamed from: a  reason: collision with root package name */
    private d f22857a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22858b;

    public bc(d dVar, int i) {
        this.f22857a = dVar;
        this.f22858b = i;
    }

    @Override // com.google.android.gms.common.internal.k
    public final void a() {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.k
    public final void a(int i, IBinder iBinder, Bundle bundle) {
        o.a(this.f22857a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f22857a.onPostInitHandler(i, iBinder, bundle, this.f22858b);
        this.f22857a = null;
    }

    @Override // com.google.android.gms.common.internal.k
    public final void a(int i, IBinder iBinder, zzi zziVar) {
        d dVar = this.f22857a;
        o.a(dVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        o.a(zziVar);
        d.zzo(dVar, zziVar);
        a(i, iBinder, zziVar.zza);
    }
}
