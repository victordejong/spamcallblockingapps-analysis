package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boj.class */
public final class boj extends sq {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ bok f24796a;

    /* JADX INFO: Access modifiers changed from: protected */
    public boj(bok bokVar) {
        this.f24796a = bokVar;
    }

    @Override // com.google.android.gms.internal.ads.sr
    public final void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f24796a.f24797a.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.sr
    public final void a(zzaq zzaqVar) {
        this.f24796a.f24797a.setException(new zzap(zzaqVar.zzacu, zzaqVar.errorCode));
    }
}
