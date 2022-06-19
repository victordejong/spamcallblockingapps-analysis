package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpw.class */
public final class bpw implements dbi<ParcelFileDescriptor> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC12914sr f44446a;

    public bpw(bpk bpkVar, AbstractC12914sr abstractC12914sr) {
        this.f44446a = abstractC12914sr;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f44446a.mo14188a(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        try {
            this.f44446a.mo14187a(zzaq.zzc(th));
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }
}
