package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.util.Clock;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwg.class */
public class zzbwg {
    private final zzdkk zzfwg;
    private final Set<zzbya<zzvc>> zzgag;
    private final Set<zzbya<zzbrm>> zzgah;
    private final Set<zzbya<zzbse>> zzgai;
    private final Set<zzbya<zzbtg>> zzgaj;
    private final Set<zzbya<zzbtb>> zzgak;
    private final Set<zzbya<zzbrr>> zzgal;
    private final Set<zzbya<zzbsa>> zzgam;
    private final Set<zzbya<AdMetadataListener>> zzgan;
    private final Set<zzbya<AppEventListener>> zzgao;
    private final Set<zzbya<zzbtt>> zzgap;
    private final Set<zzbya<zzq>> zzgaq;
    private final Set<zzbya<zzbua>> zzgar;
    private zzbrp zzgas;
    private zzcuw zzgat;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwg$zza.class */
    public static final class zza {
        private zzdkk zzfwg;
        private Set<zzbya<zzbua>> zzgar = new HashSet();
        private Set<zzbya<zzvc>> zzgag = new HashSet();
        private Set<zzbya<zzbrm>> zzgah = new HashSet();
        private Set<zzbya<zzbse>> zzgai = new HashSet();
        private Set<zzbya<zzbtg>> zzgaj = new HashSet();
        private Set<zzbya<zzbtb>> zzgak = new HashSet();
        private Set<zzbya<zzbrr>> zzgal = new HashSet();
        private Set<zzbya<AdMetadataListener>> zzgan = new HashSet();
        private Set<zzbya<AppEventListener>> zzgao = new HashSet();
        private Set<zzbya<zzbsa>> zzgam = new HashSet();
        private Set<zzbya<zzbtt>> zzgau = new HashSet();
        private Set<zzbya<zzq>> zzgaq = new HashSet();

        public final zza zza(AppEventListener appEventListener, Executor executor) {
            this.zzgao.add(new zzbya<>(appEventListener, executor));
            return this;
        }

        public final zza zza(zzq zzqVar, Executor executor) {
            this.zzgaq.add(new zzbya<>(zzqVar, executor));
            return this;
        }

        public final zza zza(zzbrm zzbrmVar, Executor executor) {
            this.zzgah.add(new zzbya<>(zzbrmVar, executor));
            return this;
        }

        public final zza zza(zzbrr zzbrrVar, Executor executor) {
            this.zzgal.add(new zzbya<>(zzbrrVar, executor));
            return this;
        }

        public final zza zza(zzbsa zzbsaVar, Executor executor) {
            this.zzgam.add(new zzbya<>(zzbsaVar, executor));
            return this;
        }

        public final zza zza(zzbse zzbseVar, Executor executor) {
            this.zzgai.add(new zzbya<>(zzbseVar, executor));
            return this;
        }

        public final zza zza(zzbtb zzbtbVar, Executor executor) {
            this.zzgak.add(new zzbya<>(zzbtbVar, executor));
            return this;
        }

        public final zza zza(zzbtg zzbtgVar, Executor executor) {
            this.zzgaj.add(new zzbya<>(zzbtgVar, executor));
            return this;
        }

        public final zza zza(zzbtt zzbttVar, Executor executor) {
            this.zzgau.add(new zzbya<>(zzbttVar, executor));
            return this;
        }

        public final zza zza(zzbua zzbuaVar, Executor executor) {
            this.zzgar.add(new zzbya<>(zzbuaVar, executor));
            return this;
        }

        public final zza zza(zzdkk zzdkkVar) {
            this.zzfwg = zzdkkVar;
            return this;
        }

        public final zza zza(zzvc zzvcVar, Executor executor) {
            this.zzgag.add(new zzbya<>(zzvcVar, executor));
            return this;
        }

        public final zzbwg zzaml() {
            return new zzbwg(this);
        }
    }

    private zzbwg(zza zzaVar) {
        this.zzgag = zzaVar.zzgag;
        this.zzgai = zzaVar.zzgai;
        this.zzgaj = zzaVar.zzgaj;
        this.zzgah = zzaVar.zzgah;
        this.zzgak = zzaVar.zzgak;
        this.zzgal = zzaVar.zzgal;
        this.zzgam = zzaVar.zzgam;
        this.zzgan = zzaVar.zzgan;
        this.zzgao = zzaVar.zzgao;
        this.zzgap = zzaVar.zzgau;
        this.zzfwg = zzaVar.zzfwg;
        this.zzgaq = zzaVar.zzgaq;
        this.zzgar = zzaVar.zzgar;
    }

    public final zzcuw zza(Clock clock, zzcuy zzcuyVar, zzcrq zzcrqVar) {
        if (this.zzgat == null) {
            this.zzgat = new zzcuw(clock, zzcuyVar, zzcrqVar);
        }
        return this.zzgat;
    }

    public final Set<zzbya<zzbrm>> zzaly() {
        return this.zzgah;
    }

    public final Set<zzbya<zzbtb>> zzalz() {
        return this.zzgak;
    }

    public final Set<zzbya<zzbrr>> zzama() {
        return this.zzgal;
    }

    public final Set<zzbya<zzbsa>> zzamb() {
        return this.zzgam;
    }

    public final Set<zzbya<AdMetadataListener>> zzamc() {
        return this.zzgan;
    }

    public final Set<zzbya<AppEventListener>> zzamd() {
        return this.zzgao;
    }

    public final Set<zzbya<zzvc>> zzame() {
        return this.zzgag;
    }

    public final Set<zzbya<zzbse>> zzamf() {
        return this.zzgai;
    }

    public final Set<zzbya<zzbtg>> zzamg() {
        return this.zzgaj;
    }

    public final Set<zzbya<zzbtt>> zzamh() {
        return this.zzgap;
    }

    public final Set<zzbya<zzbua>> zzami() {
        return this.zzgar;
    }

    public final Set<zzbya<zzq>> zzamj() {
        return this.zzgaq;
    }

    public final zzdkk zzamk() {
        return this.zzfwg;
    }

    public final zzbrp zzc(Set<zzbya<zzbrr>> set) {
        if (this.zzgas == null) {
            this.zzgas = new zzbrp(set);
        }
        return this.zzgas;
    }
}
