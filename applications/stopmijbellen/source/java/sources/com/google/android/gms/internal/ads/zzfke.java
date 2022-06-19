package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfke.class */
public final class zzfke extends zzfka {
    private static final Pattern zza = Pattern.compile("^[a-zA-Z0-9 ]+$");
    private final zzfkc zzb;
    private final zzfkb zzc;
    private zzflz zze;
    private zzflc zzf;
    private final List<zzfks> zzd = new ArrayList();
    private boolean zzg = false;
    private boolean zzh = false;
    private final String zzi = UUID.randomUUID().toString();

    public zzfke(zzfkb zzfkbVar, zzfkc zzfkcVar) {
        this.zzc = zzfkbVar;
        this.zzb = zzfkcVar;
        zzk(null);
        if (zzfkcVar.zzd() == zzfkd.HTML || zzfkcVar.zzd() == zzfkd.JAVASCRIPT) {
            this.zzf = new zzfld(zzfkcVar.zza());
        } else {
            this.zzf = new zzflf(zzfkcVar.zzi(), null);
        }
        this.zzf.zzj();
        zzfkp.zza().zzd(this);
        zzfkv.zza().zzd(this.zzf.zza(), zzfkbVar.zzb());
    }

    private final void zzk(View view) {
        this.zze = new zzflz(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final void zzb(View view, zzfkg zzfkgVar, String str) {
        zzfks zzfksVar;
        if (!this.zzh) {
            if (!zza.matcher("Ad overlay").matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            }
            Iterator<zzfks> it2 = this.zzd.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    zzfksVar = null;
                    break;
                }
                zzfksVar = it2.next();
                if (zzfksVar.zzb().get() == view) {
                    break;
                }
            }
            if (zzfksVar != null) {
                return;
            }
            this.zzd.add(new zzfks(view, zzfkgVar, "Ad overlay"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final void zzc() {
        if (this.zzh) {
            return;
        }
        this.zze.clear();
        if (!this.zzh) {
            this.zzd.clear();
        }
        this.zzh = true;
        zzfkv.zza().zzc(this.zzf.zza());
        zzfkp.zza().zze(this);
        this.zzf.zzc();
        this.zzf = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final void zzd(View view) {
        if (!this.zzh && zzf() != view) {
            zzk(view);
            this.zzf.zzb();
            Collection<zzfke> zzc = zzfkp.zza().zzc();
            if (zzc == null || zzc.size() <= 0) {
                return;
            }
            for (zzfke zzfkeVar : zzc) {
                if (zzfkeVar != this && zzfkeVar.zzf() == view) {
                    zzfkeVar.zze.clear();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final void zze() {
        if (this.zzg) {
            return;
        }
        this.zzg = true;
        zzfkp.zza().zzf(this);
        this.zzf.zzh(zzfkw.zzb().zza());
        this.zzf.zzf(this, this.zzb);
    }

    public final View zzf() {
        return this.zze.get();
    }

    public final zzflc zzg() {
        return this.zzf;
    }

    public final String zzh() {
        return this.zzi;
    }

    public final List<zzfks> zzi() {
        return this.zzd;
    }

    public final boolean zzj() {
        return this.zzg && !this.zzh;
    }
}
