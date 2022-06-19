package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.bc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bc.class */
public final class BinderC12004bc extends AbstractBinderC11992ar {

    /* renamed from: a */
    private AbstractC12025d f39506a;

    /* renamed from: b */
    private final int f39507b;

    public BinderC12004bc(AbstractC12025d abstractC12025d, int i) {
        this.f39506a = abstractC12025d;
        this.f39507b = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12039k
    /* renamed from: a */
    public final void mo19173a() {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.AbstractC12039k
    /* renamed from: a */
    public final void mo19172a(int i, IBinder iBinder, Bundle bundle) {
        C12045o.m19161a(this.f39506a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f39506a.onPostInitHandler(i, iBinder, bundle, this.f39507b);
        this.f39506a = null;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12039k
    /* renamed from: a */
    public final void mo19171a(int i, IBinder iBinder, zzi zziVar) {
        AbstractC12025d abstractC12025d = this.f39506a;
        C12045o.m19161a(abstractC12025d, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        C12045o.m19162a(zziVar);
        AbstractC12025d.zzo(abstractC12025d, zziVar);
        mo19172a(i, iBinder, zziVar.zza);
    }
}
