package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
import com.google.android.gms.ads.internal.util.zzd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpw.class */
public final class bpw implements dbi<ParcelFileDescriptor> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ sr f24855a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bpw(bpk bpkVar, sr srVar) {
        this.f24855a = srVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f24855a.a(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        try {
            this.f24855a.a(zzaq.zzc(th));
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }
}
