package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaae.class */
public final class zzaae extends zzyf {
    private zzajk zzcll;

    @Override // com.google.android.gms.internal.ads.zzyg
    public final String getVersionString() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void initialize() throws RemoteException {
        zzazk.zzev("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzaza.zzaac.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzaah
            private final zzaae zzcln;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcln = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcln.zzru();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppMuted(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppVolume(float f) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzaao zzaaoVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzajk zzajkVar) throws RemoteException {
        this.zzcll = zzajkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzane zzaneVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzb(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzcd(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzce(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final float zzra() throws RemoteException {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final boolean zzrb() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final List<zzajh> zzrc() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzrd() {
    }

    public final /* synthetic */ void zzru() {
        zzajk zzajkVar = this.zzcll;
        if (zzajkVar != null) {
            try {
                zzajkVar.zze(Collections.emptyList());
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onComplete event.", e);
            }
        }
    }
}
