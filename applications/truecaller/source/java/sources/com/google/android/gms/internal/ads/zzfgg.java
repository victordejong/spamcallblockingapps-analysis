package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgg.class */
public final class zzfgg extends zzfgc {
    private static final Pattern zza = Pattern.compile("^[a-zA-Z0-9 ]+$");
    private final zzfge zzb;
    private final zzfgd zzc;
    private zzfib zze;
    private zzfhe zzf;
    private final List<zzfgu> zzd = new ArrayList();
    private boolean zzg = false;
    private boolean zzh = false;
    private final String zzi = UUID.randomUUID().toString();

    public zzfgg(zzfgd zzfgdVar, zzfge zzfgeVar) {
        this.zzc = zzfgdVar;
        this.zzb = zzfgeVar;
        zzk(null);
        if (zzfgeVar.zzi() == zzfgf.HTML || zzfgeVar.zzi() == zzfgf.JAVASCRIPT) {
            this.zzf = new zzfhf(zzfgeVar.zzf());
        } else {
            this.zzf = new zzfhh(zzfgeVar.zze(), null);
        }
        this.zzf.zza();
        zzfgr.zza().zzb(this);
        zzfgx.zza().zzb(this.zzf.zzd(), zzfgdVar.zzb());
    }

    private final void zzk(View view) {
        this.zze = new zzfib(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final void zza() {
        if (this.zzg) {
            return;
        }
        this.zzg = true;
        zzfgr.zza().zzc(this);
        this.zzf.zzj(zzfgy.zza().zzf());
        this.zzf.zzh(this, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final void zzb(View view) {
        if (!this.zzh && zzi() != view) {
            zzk(view);
            this.zzf.zzk();
            Collection<zzfgg> zze = zzfgr.zza().zze();
            if (zze == null || zze.size() <= 0) {
                return;
            }
            for (zzfgg zzfggVar : zze) {
                if (zzfggVar != this && zzfggVar.zzi() == view) {
                    zzfggVar.zze.clear();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final void zzc() {
        if (this.zzh) {
            return;
        }
        this.zze.clear();
        if (!this.zzh) {
            this.zzd.clear();
        }
        this.zzh = true;
        zzfgx.zza().zzd(this.zzf.zzd());
        zzfgr.zza().zzd(this);
        this.zzf.zzb();
        this.zzf = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final void zzd(View view, zzfgi zzfgiVar, String str) {
        zzfgu zzfguVar;
        if (!this.zzh) {
            if (!zza.matcher("Ad overlay").matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            }
            Iterator<zzfgu> it = this.zzd.iterator();
            while (true) {
                if (!it.hasNext()) {
                    zzfguVar = null;
                    break;
                }
                zzfguVar = it.next();
                if (zzfguVar.zza().get() == view) {
                    break;
                }
            }
            if (zzfguVar != null) {
                return;
            }
            this.zzd.add(new zzfgu(view, zzfgiVar, "Ad overlay"));
        }
    }

    public final List<zzfgu> zzf() {
        return this.zzd;
    }

    public final zzfhe zzg() {
        return this.zzf;
    }

    public final String zzh() {
        return this.zzi;
    }

    public final View zzi() {
        return this.zze.get();
    }

    public final boolean zzj() {
        return this.zzg && !this.zzh;
    }
}
