package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.c1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c1.class */
public final class BinderC6112c1 extends AbstractBinderC6165r0 {

    /* renamed from: d */
    private AbstractC6113d f19494d;

    /* renamed from: e */
    private final int f19495e;

    public BinderC6112c1(AbstractC6113d abstractC6113d, int i) {
        this.f19494d = abstractC6113d;
        this.f19495e = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6141k
    /* renamed from: i2 */
    public final void mo17051i2(int i, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.AbstractC6141k
    /* renamed from: t3 */
    public final void mo17050t3(int i, IBinder iBinder, Bundle bundle) {
        C6155o.m17017k(this.f19494d, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f19494d.m17125M(i, iBinder, bundle, this.f19495e);
        this.f19494d = null;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6141k
    /* renamed from: w4 */
    public final void mo17049w4(int i, IBinder iBinder, zzi zziVar) {
        AbstractC6113d abstractC6113d = this.f19494d;
        C6155o.m17017k(abstractC6113d, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        C6155o.m17018j(zziVar);
        AbstractC6113d.m17100g0(abstractC6113d, zziVar);
        mo17050t3(i, iBinder, zziVar.f19633d);
    }
}
