package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.zzbc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xt1.class */
public final class xt1 implements f03<ParcelFileDescriptor> {

    /* renamed from: a */
    final /* synthetic */ vc0 f32289a;

    public xt1(bu1 bu1Var, vc0 vc0Var) {
        this.f32289a = vc0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        try {
            this.f32289a.mo10045C6(zzbc.m17907k0(th));
        } catch (RemoteException e) {
            C5722o1.m17989l("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f32289a.mo10044s4(parcelFileDescriptor);
        } catch (RemoteException e) {
            C5722o1.m17989l("Service can't call client", e);
        }
    }
}
