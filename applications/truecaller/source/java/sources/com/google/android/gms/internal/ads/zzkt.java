package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkt.class */
public final class zzkt implements zzaj {
    private final Context zza;
    private final List<zzay> zzb = new ArrayList();
    private final zzaj zzc;
    private zzaj zzd;
    private zzaj zze;
    private zzaj zzf;
    private zzaj zzg;
    private zzaj zzh;
    private zzaj zzi;
    private zzaj zzj;
    private zzaj zzk;

    public zzkt(Context context, zzaj zzajVar) {
        this.zza = context.getApplicationContext();
        this.zzc = zzajVar;
    }

    private final zzaj zzb() {
        if (this.zze == null) {
            zzkd zzkdVar = new zzkd(this.zza);
            this.zze = zzkdVar;
            zzc(zzkdVar);
        }
        return this.zze;
    }

    private final void zzc(zzaj zzajVar) {
        for (int i = 0; i < this.zzb.size(); i++) {
            zzajVar.zza(this.zzb.get(i));
        }
    }

    private static final void zzd(zzaj zzajVar, zzay zzayVar) {
        if (zzajVar != null) {
            zzajVar.zza(zzayVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zza(zzay zzayVar) {
        Objects.requireNonNull(zzayVar);
        this.zzc.zza(zzayVar);
        this.zzb.add(zzayVar);
        zzd(this.zzd, zzayVar);
        zzd(this.zze, zzayVar);
        zzd(this.zzf, zzayVar);
        zzd(this.zzg, zzayVar);
        zzd(this.zzh, zzayVar);
        zzd(this.zzi, zzayVar);
        zzd(this.zzj, zzayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Map<String, List<String>> zzf() {
        zzaj zzajVar = this.zzk;
        return zzajVar == null ? Collections.emptyMap() : zzajVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        zzaj zzajVar = this.zzk;
        Objects.requireNonNull(zzajVar);
        return zzajVar.zzg(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final long zzh(zzan zzanVar) throws IOException {
        zzaj zzajVar;
        zzakt.zzd(this.zzk == null);
        String scheme = zzanVar.zza.getScheme();
        if (zzamq.zzb(zzanVar.zza)) {
            String path = zzanVar.zza.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.zzd == null) {
                    zzkx zzkxVar = new zzkx();
                    this.zzd = zzkxVar;
                    zzc(zzkxVar);
                }
                this.zzk = this.zzd;
            } else {
                this.zzk = zzb();
            }
        } else if ("asset".equals(scheme)) {
            this.zzk = zzb();
        } else if ("content".equals(scheme)) {
            if (this.zzf == null) {
                zzkm zzkmVar = new zzkm(this.zza);
                this.zzf = zzkmVar;
                zzc(zzkmVar);
            }
            this.zzk = this.zzf;
        } else if ("rtmp".equals(scheme)) {
            if (this.zzg == null) {
                try {
                    zzaj zzajVar2 = (zzaj) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.zzg = zzajVar2;
                    zzc(zzajVar2);
                } catch (ClassNotFoundException e) {
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
                zzlr zzlrVar = new zzlr(2000);
                this.zzh = zzlrVar;
                zzc(zzlrVar);
            }
            this.zzk = this.zzh;
        } else if (RemoteMessageConst.DATA.equals(scheme)) {
            if (this.zzi == null) {
                zzkn zzknVar = new zzkn();
                this.zzi = zzknVar;
                zzc(zzknVar);
            }
            this.zzk = this.zzi;
        } else {
            if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.zzj == null) {
                    zzlj zzljVar = new zzlj(this.zza);
                    this.zzj = zzljVar;
                    zzc(zzljVar);
                }
                zzajVar = this.zzj;
            } else {
                zzajVar = this.zzc;
            }
            this.zzk = zzajVar;
        }
        return this.zzk.zzh(zzanVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        zzaj zzajVar = this.zzk;
        if (zzajVar == null) {
            return null;
        }
        return zzajVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws IOException {
        zzaj zzajVar = this.zzk;
        if (zzajVar != null) {
            try {
                zzajVar.zzj();
            } finally {
                this.zzk = null;
            }
        }
    }
}
