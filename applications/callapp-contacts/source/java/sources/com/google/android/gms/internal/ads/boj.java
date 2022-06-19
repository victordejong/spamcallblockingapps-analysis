package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boj.class */
public final class boj extends AbstractBinderC12913sq {

    /* renamed from: a */
    private final /* synthetic */ bok f44381a;

    public boj(bok bokVar) {
        this.f44381a = bokVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12914sr
    /* renamed from: a */
    public final void mo14188a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f44381a.f44382a.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12914sr
    /* renamed from: a */
    public final void mo14187a(zzaq zzaqVar) {
        this.f44381a.f44382a.setException(new zzap(zzaqVar.zzacu, zzaqVar.errorCode));
    }
}
