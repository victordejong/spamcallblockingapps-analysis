package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztp.class */
public final class zztp implements zzdi {
    private final Context zza;
    private final List<zzdx> zzb = new ArrayList();
    private final zzdi zzc;
    private zzdi zzd;
    private zzdi zze;
    private zzdi zzf;
    private zzdi zzg;
    private zzdi zzh;
    private zzdi zzi;
    private zzdi zzj;
    private zzdi zzk;

    public zztp(Context context, zzdi zzdiVar) {
        this.zza = context.getApplicationContext();
        this.zzc = zzdiVar;
    }

    private final zzdi zzc() {
        if (this.zze == null) {
            zzsz zzszVar = new zzsz(this.zza);
            this.zze = zzszVar;
            zzd(zzszVar);
        }
        return this.zze;
    }

    private final void zzd(zzdi zzdiVar) {
        for (int i = 0; i < this.zzb.size(); i++) {
            zzdiVar.zzb(this.zzb.get(i));
        }
    }

    private static final void zze(zzdi zzdiVar, zzdx zzdxVar) {
        if (zzdiVar != null) {
            zzdiVar.zzb(zzdxVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public final Map<String, List<String>> zza() {
        zzdi zzdiVar = this.zzk;
        return zzdiVar == null ? Collections.emptyMap() : zzdiVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzb(zzdx zzdxVar) {
        Objects.requireNonNull(zzdxVar);
        this.zzc.zzb(zzdxVar);
        this.zzb.add(zzdxVar);
        zze(this.zzd, zzdxVar);
        zze(this.zze, zzdxVar);
        zze(this.zzf, zzdxVar);
        zze(this.zzg, zzdxVar);
        zze(this.zzh, zzdxVar);
        zze(this.zzi, zzdxVar);
        zze(this.zzj, zzdxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        zzdi zzdiVar = this.zzk;
        Objects.requireNonNull(zzdiVar);
        return zzdiVar.zzg(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws IOException {
        zzdi zzdiVar;
        zzdy.zzf(this.zzk == null);
        String scheme = zzdmVar.zza.getScheme();
        if (zzfn.zzS(zzdmVar.zza)) {
            String path = zzdmVar.zza.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.zzd == null) {
                    zztt zzttVar = new zztt();
                    this.zzd = zzttVar;
                    zzd(zzttVar);
                }
                this.zzk = this.zzd;
            } else {
                this.zzk = zzc();
            }
        } else if ("asset".equals(scheme)) {
            this.zzk = zzc();
        } else if (AppLovinEventTypes.USER_VIEWED_CONTENT.equals(scheme)) {
            if (this.zzf == null) {
                zzti zztiVar = new zzti(this.zza);
                this.zzf = zztiVar;
                zzd(zztiVar);
            }
            this.zzk = this.zzf;
        } else if ("rtmp".equals(scheme)) {
            if (this.zzg == null) {
                try {
                    zzdi zzdiVar2 = (zzdi) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.zzg = zzdiVar2;
                    zzd(zzdiVar2);
                } catch (ClassNotFoundException e) {
                    Log.w("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating RTMP extension", e2);
                }
                if (this.zzg == null) {
                    this.zzg = this.zzc;
                }
            }
            this.zzk = this.zzg;
        } else if ("udp".equals(scheme)) {
            if (this.zzh == null) {
                zzun zzunVar = new zzun(AdError.SERVER_ERROR_CODE);
                this.zzh = zzunVar;
                zzd(zzunVar);
            }
            this.zzk = this.zzh;
        } else if ("data".equals(scheme)) {
            if (this.zzi == null) {
                zztj zztjVar = new zztj();
                this.zzi = zztjVar;
                zzd(zztjVar);
            }
            this.zzk = this.zzi;
        } else {
            if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.zzj == null) {
                    zzuf zzufVar = new zzuf(this.zza);
                    this.zzj = zzufVar;
                    zzd(zzufVar);
                }
                zzdiVar = this.zzj;
            } else {
                zzdiVar = this.zzc;
            }
            this.zzk = zzdiVar;
        }
        return this.zzk.zzh(zzdmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        zzdi zzdiVar = this.zzk;
        if (zzdiVar == null) {
            return null;
        }
        return zzdiVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws IOException {
        zzdi zzdiVar = this.zzk;
        if (zzdiVar != null) {
            try {
                zzdiVar.zzj();
            } finally {
                this.zzk = null;
            }
        }
    }
}
