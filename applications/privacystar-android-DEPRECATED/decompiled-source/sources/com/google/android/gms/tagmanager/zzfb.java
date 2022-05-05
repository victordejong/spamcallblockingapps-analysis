package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzi;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzp;
import com.google.android.gms.internal.measurement.zzrs;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.internal.measurement.zzry;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfb.class */
public final class zzfb {
    private static final zzdz<zzp> zzbep = new zzdz<>(zzgj.zzqg(), true);
    private final DataLayer zzazg;
    private final zzrw zzbeq;
    private final zzbo zzber;
    private final Map<String, zzbq> zzbes;
    private final Map<String, zzbq> zzbet;
    private final Map<String, zzbq> zzbeu;
    private final zzp<zzru, zzdz<zzp>> zzbev;
    private final zzp<String, zzfh> zzbew;
    private final Set<zzry> zzbex;
    private final Map<String, zzfi> zzbey;
    private volatile String zzbez;
    private int zzbfa;

    public zzfb(Context context, zzrw zzrwVar, DataLayer dataLayer, zzan zzanVar, zzan zzanVar2, zzbo zzboVar) {
        if (zzrwVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.zzbeq = zzrwVar;
        this.zzbex = new HashSet(zzrwVar.zzrw());
        this.zzazg = dataLayer;
        this.zzber = zzboVar;
        zzfc zzfcVar = new zzfc(this);
        new zzq();
        this.zzbev = zzq.zza(1048576, zzfcVar);
        zzfd zzfdVar = new zzfd(this);
        new zzq();
        this.zzbew = zzq.zza(1048576, zzfdVar);
        this.zzbes = new HashMap();
        zzb(new zzm(context));
        zzb(new zzam(zzanVar2));
        zzb(new zzaz(dataLayer));
        zzb(new zzgk(context, dataLayer));
        this.zzbet = new HashMap();
        zzc(new zzak());
        zzc(new zzbl());
        zzc(new zzbm());
        zzc(new zzbs());
        zzc(new zzbt());
        zzc(new zzde());
        zzc(new zzdf());
        zzc(new zzel());
        zzc(new zzfy());
        this.zzbeu = new HashMap();
        zza(new zze(context));
        zza(new zzf(context));
        zza(new zzh(context));
        zza(new zzi(context));
        zza(new zzj(context));
        zza(new zzk(context));
        zza(new zzl(context));
        zza(new zzt());
        zza(new zzaj(this.zzbeq.getVersion()));
        zza(new zzam(zzanVar));
        zza(new zzas(dataLayer));
        zza(new zzbc(context));
        zza(new zzbd());
        zza(new zzbk());
        zza(new zzbp(this));
        zza(new zzbu());
        zza(new zzbv());
        zza(new zzcv(context));
        zza(new zzcx());
        zza(new zzdd());
        zza(new zzdk());
        zza(new zzdm(context));
        zza(new zzea());
        zza(new zzee());
        zza(new zzei());
        zza(new zzek());
        zza(new zzem(context));
        zza(new zzfj());
        zza(new zzfk());
        zza(new zzge());
        zza(new zzgl());
        this.zzbey = new HashMap();
        for (zzry zzryVar : this.zzbex) {
            for (int i = 0; i < zzryVar.zzsu().size(); i++) {
                zzru zzruVar = zzryVar.zzsu().get(i);
                zzfi zzb = zzb(this.zzbey, zza(zzruVar));
                zzb.zza(zzryVar);
                zzb.zza(zzryVar, zzruVar);
                zzb.zza(zzryVar, "Unknown");
            }
            for (int i2 = 0; i2 < zzryVar.zzsv().size(); i2++) {
                zzru zzruVar2 = zzryVar.zzsv().get(i2);
                zzfi zzb2 = zzb(this.zzbey, zza(zzruVar2));
                zzb2.zza(zzryVar);
                zzb2.zzb(zzryVar, zzruVar2);
                zzb2.zzb(zzryVar, "Unknown");
            }
        }
        for (Map.Entry<String, List<zzru>> entry : this.zzbeq.zzss().entrySet()) {
            for (zzru zzruVar3 : entry.getValue()) {
                if (!zzgj.zzg(zzruVar3.zzry().get(zzb.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                    zzb(this.zzbey, entry.getKey()).zzb(zzruVar3);
                }
            }
        }
    }

    private final zzdz<zzp> zza(zzp zzpVar, Set<String> set, zzgm zzgmVar) {
        if (!zzpVar.zzqs) {
            return new zzdz<>(zzpVar, true);
        }
        int i = zzpVar.type;
        if (i != 7) {
            switch (i) {
                case 2:
                    zzp zzk = zzrs.zzk(zzpVar);
                    zzk.zzqj = new zzp[zzpVar.zzqj.length];
                    for (int i2 = 0; i2 < zzpVar.zzqj.length; i2++) {
                        zzdz<zzp> zza = zza(zzpVar.zzqj[i2], set, zzgmVar.zzw(i2));
                        if (zza == zzbep) {
                            return zzbep;
                        }
                        zzk.zzqj[i2] = zza.getObject();
                    }
                    return new zzdz<>(zzk, false);
                case 3:
                    zzp zzk2 = zzrs.zzk(zzpVar);
                    if (zzpVar.zzqk.length != zzpVar.zzql.length) {
                        String valueOf = String.valueOf(zzpVar.toString());
                        zzdi.m329e(valueOf.length() != 0 ? "Invalid serving value: ".concat(valueOf) : new String("Invalid serving value: "));
                        return zzbep;
                    }
                    zzk2.zzqk = new zzp[zzpVar.zzqk.length];
                    zzk2.zzql = new zzp[zzpVar.zzqk.length];
                    for (int i3 = 0; i3 < zzpVar.zzqk.length; i3++) {
                        zzdz<zzp> zza2 = zza(zzpVar.zzqk[i3], set, zzgmVar.zzx(i3));
                        zzdz<zzp> zza3 = zza(zzpVar.zzql[i3], set, zzgmVar.zzy(i3));
                        if (zza2 == zzbep || zza3 == zzbep) {
                            return zzbep;
                        }
                        zzk2.zzqk[i3] = zza2.getObject();
                        zzk2.zzql[i3] = zza3.getObject();
                    }
                    return new zzdz<>(zzk2, false);
                case 4:
                    if (set.contains(zzpVar.zzqm)) {
                        String str = zzpVar.zzqm;
                        String obj = set.toString();
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(obj).length());
                        sb.append("Macro cycle detected.  Current macro reference: ");
                        sb.append(str);
                        sb.append(".  Previous macro references: ");
                        sb.append(obj);
                        sb.append(".");
                        zzdi.m329e(sb.toString());
                        return zzbep;
                    }
                    set.add(zzpVar.zzqm);
                    zzdz<zzp> zza4 = zzgn.zza(zza(zzpVar.zzqm, set, zzgmVar.zzox()), zzpVar.zzqr);
                    set.remove(zzpVar.zzqm);
                    return zza4;
                default:
                    int i4 = zzpVar.type;
                    StringBuilder sb2 = new StringBuilder(25);
                    sb2.append("Unknown type: ");
                    sb2.append(i4);
                    zzdi.m329e(sb2.toString());
                    return zzbep;
            }
        } else {
            zzp zzk3 = zzrs.zzk(zzpVar);
            zzk3.zzqq = new zzp[zzpVar.zzqq.length];
            for (int i5 = 0; i5 < zzpVar.zzqq.length; i5++) {
                zzdz<zzp> zza5 = zza(zzpVar.zzqq[i5], set, zzgmVar.zzz(i5));
                if (zza5 == zzbep) {
                    return zzbep;
                }
                zzk3.zzqq[i5] = zza5.getObject();
            }
            return new zzdz<>(zzk3, false);
        }
    }

    @VisibleForTesting
    private final zzdz<Boolean> zza(zzru zzruVar, Set<String> set, zzen zzenVar) {
        zzdz<zzp> zza = zza(this.zzbet, zzruVar, set, zzenVar);
        Boolean zzg = zzgj.zzg(zza.getObject());
        zzenVar.zza(zzgj.zzj(zzg));
        return new zzdz<>(zzg, zza.zzoy());
    }

    private final zzdz<zzp> zza(String str, Set<String> set, zzdl zzdlVar) {
        zzru zzruVar;
        this.zzbfa++;
        zzfh zzfhVar = this.zzbew.get(str);
        if (zzfhVar != null) {
            this.zzber.zzoj();
            zza(zzfhVar.zzpm(), set);
            this.zzbfa--;
            return zzfhVar.zzpl();
        }
        zzfi zzfiVar = this.zzbey.get(str);
        if (zzfiVar == null) {
            String zzpk = zzpk();
            StringBuilder sb = new StringBuilder(String.valueOf(zzpk).length() + 15 + String.valueOf(str).length());
            sb.append(zzpk);
            sb.append("Invalid macro: ");
            sb.append(str);
            zzdi.m329e(sb.toString());
            this.zzbfa--;
            return zzbep;
        }
        zzdz<Set<zzru>> zza = zza(zzfiVar.zzpn(), set, new zzfe(this, zzfiVar.zzpo(), zzfiVar.zzpp(), zzfiVar.zzpr(), zzfiVar.zzpq()), zzdlVar.zznx());
        if (zza.getObject().isEmpty()) {
            zzruVar = zzfiVar.zzps();
        } else {
            if (zza.getObject().size() > 1) {
                String zzpk2 = zzpk();
                StringBuilder sb2 = new StringBuilder(String.valueOf(zzpk2).length() + 37 + String.valueOf(str).length());
                sb2.append(zzpk2);
                sb2.append("Multiple macros active for macroName ");
                sb2.append(str);
                zzdi.zzab(sb2.toString());
            }
            zzruVar = zza.getObject().iterator().next();
        }
        if (zzruVar == null) {
            this.zzbfa--;
            return zzbep;
        }
        zzdz<zzp> zza2 = zza(this.zzbeu, zzruVar, set, zzdlVar.zzop());
        zzdz<zzp> zzdzVar = zza2 == zzbep ? zzbep : new zzdz<>(zza2.getObject(), zza.zzoy() && zza2.zzoy());
        zzp zzpm = zzruVar.zzpm();
        if (zzdzVar.zzoy()) {
            this.zzbew.zza(str, new zzfh(zzdzVar, zzpm));
        }
        zza(zzpm, set);
        this.zzbfa--;
        return zzdzVar;
    }

    private final zzdz<zzp> zza(Map<String, zzbq> map, zzru zzruVar, Set<String> set, zzen zzenVar) {
        zzp zzpVar = zzruVar.zzry().get(zzb.FUNCTION.toString());
        if (zzpVar == null) {
            zzdi.m329e("No function id in properties");
            return zzbep;
        }
        String str = zzpVar.zzqn;
        zzbq zzbqVar = map.get(str);
        if (zzbqVar == null) {
            zzdi.m329e(String.valueOf(str).concat(" has no backing implementation."));
            return zzbep;
        }
        zzdz<zzp> zzdzVar = this.zzbev.get(zzruVar);
        if (zzdzVar != null) {
            this.zzber.zzoj();
            return zzdzVar;
        }
        HashMap hashMap = new HashMap();
        boolean z = true;
        boolean z2 = true;
        for (Map.Entry<String, zzp> entry : zzruVar.zzry().entrySet()) {
            zzdz<zzp> zza = zza(entry.getValue(), set, zzenVar.zzds(entry.getKey()).zzb(entry.getValue()));
            if (zza == zzbep) {
                return zzbep;
            }
            if (zza.zzoy()) {
                zzruVar.zza(entry.getKey(), zza.getObject());
            } else {
                z2 = false;
            }
            hashMap.put(entry.getKey(), zza.getObject());
        }
        if (!zzbqVar.zza(hashMap.keySet())) {
            String valueOf = String.valueOf(zzbqVar.zzol());
            String valueOf2 = String.valueOf(hashMap.keySet());
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
            sb.append("Incorrect keys for function ");
            sb.append(str);
            sb.append(" required ");
            sb.append(valueOf);
            sb.append(" had ");
            sb.append(valueOf2);
            zzdi.m329e(sb.toString());
            return zzbep;
        }
        if (!z2 || !zzbqVar.zznb()) {
            z = false;
        }
        zzdz<zzp> zzdzVar2 = new zzdz<>(zzbqVar.zze(hashMap), z);
        if (z) {
            this.zzbev.zza(zzruVar, zzdzVar2);
        }
        zzenVar.zza(zzdzVar2.getObject());
        return zzdzVar2;
    }

    private final zzdz<Set<zzru>> zza(Set<zzry> set, Set<String> set2, zzfg zzfgVar, zzfa zzfaVar) {
        zzdz zzdzVar;
        Set<zzru> hashSet = new HashSet<>();
        Set<zzru> hashSet2 = new HashSet<>();
        while (true) {
            boolean z = true;
            for (zzry zzryVar : set) {
                zzeq zzow = zzfaVar.zzow();
                Iterator<zzru> it = zzryVar.zzsb().iterator();
                while (true) {
                    boolean z2 = true;
                    while (true) {
                        if (!it.hasNext()) {
                            Iterator<zzru> it2 = zzryVar.zzsa().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    zzgj.zzj(true);
                                    zzdzVar = new zzdz(true, z2);
                                    break;
                                }
                                zzdz<Boolean> zza = zza(it2.next(), set2, zzow.zzor());
                                if (!zza.getObject().booleanValue()) {
                                    zzgj.zzj(false);
                                    zzdzVar = new zzdz(false, zza.zzoy());
                                    break;
                                }
                                z2 = z2 && zza.zzoy();
                            }
                        } else {
                            zzdz<Boolean> zza2 = zza(it.next(), set2, zzow.zzoq());
                            if (zza2.getObject().booleanValue()) {
                                zzgj.zzj(false);
                                zzdzVar = new zzdz(false, zza2.zzoy());
                                break;
                            } else if (!z2 || !zza2.zzoy()) {
                                z2 = false;
                            }
                        }
                    }
                }
                if (((Boolean) zzdzVar.getObject()).booleanValue()) {
                    zzfgVar.zza(zzryVar, hashSet, hashSet2, zzow);
                }
                if (!z || !zzdzVar.zzoy()) {
                    z = false;
                }
            }
            hashSet.removeAll(hashSet2);
            zzfaVar.zzb(hashSet);
            return new zzdz<>(hashSet, z);
        }
    }

    private static String zza(zzru zzruVar) {
        return zzgj.zzc(zzruVar.zzry().get(zzb.INSTANCE_NAME.toString()));
    }

    private final void zza(zzp zzpVar, Set<String> set) {
        zzdz<zzp> zza;
        if (zzpVar != null && (zza = zza(zzpVar, set, new zzdx())) != zzbep) {
            Object zzh = zzgj.zzh(zza.getObject());
            if (zzh instanceof Map) {
                this.zzazg.push((Map) zzh);
            } else if (zzh instanceof List) {
                for (Object obj : (List) zzh) {
                    if (obj instanceof Map) {
                        this.zzazg.push((Map) obj);
                    } else {
                        zzdi.zzab("pushAfterEvaluate: value not a Map");
                    }
                }
            } else {
                zzdi.zzab("pushAfterEvaluate: value not a Map or List");
            }
        }
    }

    @VisibleForTesting
    private final void zza(zzbq zzbqVar) {
        zza(this.zzbeu, zzbqVar);
    }

    private static void zza(Map<String, zzbq> map, zzbq zzbqVar) {
        if (map.containsKey(zzbqVar.zzok())) {
            String valueOf = String.valueOf(zzbqVar.zzok());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate function type name: ".concat(valueOf) : new String("Duplicate function type name: "));
        } else {
            map.put(zzbqVar.zzok(), zzbqVar);
        }
    }

    private static zzfi zzb(Map<String, zzfi> map, String str) {
        zzfi zzfiVar = map.get(str);
        zzfi zzfiVar2 = zzfiVar;
        if (zzfiVar == null) {
            zzfiVar2 = new zzfi();
            map.put(str, zzfiVar2);
        }
        return zzfiVar2;
    }

    @VisibleForTesting
    private final void zzb(zzbq zzbqVar) {
        zza(this.zzbes, zzbqVar);
    }

    @VisibleForTesting
    private final void zzc(zzbq zzbqVar) {
        zza(this.zzbet, zzbqVar);
    }

    @VisibleForTesting
    private final void zzdw(String str) {
        synchronized (this) {
            this.zzbez = str;
        }
    }

    private final String zzpk() {
        if (this.zzbfa <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.zzbfa));
        for (int i = 2; i < this.zzbfa; i++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    public final void zzda(String str) {
        synchronized (this) {
            zzdw(str);
            zzar zzoi = this.zzber.zzdm(str).zzoi();
            for (zzru zzruVar : zza(this.zzbex, new HashSet(), new zzff(this), zzoi.zznx()).getObject()) {
                zza(this.zzbes, zzruVar, new HashSet(), zzoi.zznw());
            }
            zzdw(null);
        }
    }

    public final zzdz<zzp> zzdv(String str) {
        this.zzbfa = 0;
        return zza(str, new HashSet(), this.zzber.zzdl(str).zzoh());
    }

    public final void zzf(List<zzn> list) {
        zzi[] zziVarArr;
        Map<String, Object> map;
        synchronized (this) {
            for (zzn zznVar : list) {
                if (zznVar.name != null && zznVar.name.startsWith("gaExperiment:")) {
                    DataLayer dataLayer = this.zzazg;
                    if (zznVar.zzqe == null) {
                        zzdi.zzab("supplemental missing experimentSupplemental");
                    } else {
                        for (zzp zzpVar : zznVar.zzqe.zzop) {
                            dataLayer.zzdd(zzgj.zzc(zzpVar));
                        }
                        for (zzp zzpVar2 : zznVar.zzqe.zzoo) {
                            Object zzh = zzgj.zzh(zzpVar2);
                            if (!(zzh instanceof Map)) {
                                String valueOf = String.valueOf(zzh);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                                sb.append("value: ");
                                sb.append(valueOf);
                                sb.append(" is not a map value, ignored.");
                                zzdi.zzab(sb.toString());
                                map = null;
                            } else {
                                map = (Map) zzh;
                            }
                            if (map != null) {
                                dataLayer.push(map);
                            }
                        }
                        for (zzi zziVar : zznVar.zzqe.zzoq) {
                            if (zziVar.zzoj == null) {
                                zzdi.zzab("GaExperimentRandom: No key");
                            } else {
                                Object obj = dataLayer.get(zziVar.zzoj);
                                Long valueOf2 = !(obj instanceof Number) ? null : Long.valueOf(((Number) obj).longValue());
                                long j = zziVar.zzok;
                                long j2 = zziVar.zzol;
                                if (!zziVar.zzom || valueOf2 == null || valueOf2.longValue() < j || valueOf2.longValue() > j2) {
                                    if (j <= j2) {
                                        obj = Long.valueOf(Math.round((Math.random() * (j2 - j)) + j));
                                    } else {
                                        zzdi.zzab("GaExperimentRandom: random range invalid");
                                    }
                                }
                                dataLayer.zzdd(zziVar.zzoj);
                                Map<String, Object> zzk = DataLayer.zzk(zziVar.zzoj, obj);
                                if (zziVar.zzon > 0) {
                                    if (!zzk.containsKey("gtm")) {
                                        zzk.put("gtm", DataLayer.mapOf("lifetime", Long.valueOf(zziVar.zzon)));
                                    } else {
                                        Object obj2 = zzk.get("gtm");
                                        if (obj2 instanceof Map) {
                                            ((Map) obj2).put("lifetime", Long.valueOf(zziVar.zzon));
                                        } else {
                                            zzdi.zzab("GaExperimentRandom: gtm not a map");
                                        }
                                    }
                                }
                                dataLayer.push(zzk);
                            }
                        }
                    }
                }
                String valueOf3 = String.valueOf(zznVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 22);
                sb2.append("Ignored supplemental: ");
                sb2.append(valueOf3);
                zzdi.m328v(sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzpj() {
        String str;
        synchronized (this) {
            str = this.zzbez;
        }
        return str;
    }
}
