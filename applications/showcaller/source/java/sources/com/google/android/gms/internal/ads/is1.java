package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbb;
import com.google.android.gms.ads.internal.util.zzbc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/is1.class */
public final class is1 extends uc0 {

    /* renamed from: d */
    final /* synthetic */ ls1 f24423d;

    public is1(ls1 ls1Var) {
        this.f24423d = ls1Var;
    }

    @Override // com.google.android.gms.internal.ads.vc0
    /* renamed from: C6 */
    public final void mo10045C6(zzbc zzbcVar) {
        this.f24423d.f26263a.m10014f(new zzbb(zzbcVar.f18606d, zzbcVar.f18607e));
    }

    @Override // com.google.android.gms.internal.ads.vc0
    /* renamed from: s4 */
    public final void mo10044s4(ParcelFileDescriptor parcelFileDescriptor) {
        this.f24423d.f26263a.m10016c(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
