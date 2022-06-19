package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgq.class */
public final class zzgq implements zzjg {
    private int tag;
    private final zzgj zzps;
    private int zzpt;
    private int zzpu = 0;

    private zzgq(zzgj zzgjVar) {
        this.zzps = (zzgj) zzhm.zza(zzgjVar, "input");
        this.zzps.zzpg = this;
    }

    public static zzgq zza(zzgj zzgjVar) {
        return zzgjVar.zzpg != null ? zzgjVar.zzpg : new zzgq(zzgjVar);
    }

    private final Object zza(zzko zzkoVar, Class<?> cls, zzgx zzgxVar) {
        switch (zzgp.zzpr[zzkoVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzfh());
            case 2:
                return zzfj();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzfl());
            case 5:
                return Integer.valueOf(zzfg());
            case 6:
                return Long.valueOf(zzff());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzfe());
            case 9:
                return Long.valueOf(zzfd());
            case 10:
                zzai(2);
                return zzc(zzjb.zzii().zzk(cls), zzgxVar);
            case 11:
                return Integer.valueOf(zzfm());
            case 12:
                return Long.valueOf(zzfn());
            case 13:
                return Integer.valueOf(zzfo());
            case 14:
                return Long.valueOf(zzfp());
            case 15:
                return zzfi();
            case 16:
                return Integer.valueOf(zzfk());
            case 17:
                return Long.valueOf(zzfc());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final void zza(List<String> list, boolean z) {
        int zzfb;
        int zzfb2;
        if ((this.tag & 7) == 2) {
            if (!(list instanceof zzhx) || z) {
                do {
                    list.add(z ? zzfi() : readString());
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            }
            zzhx zzhxVar = (zzhx) list;
            do {
                zzhxVar.zzd(zzfj());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
            return;
        }
        throw zzhq.zzhj();
    }

    private final void zzai(int i) {
        if ((this.tag & 7) == i) {
            return;
        }
        throw zzhq.zzhj();
    }

    private static void zzaj(int i) {
        if ((i & 7) == 0) {
            return;
        }
        throw zzhq.zzhl();
    }

    private static void zzak(int i) {
        if ((i & 3) == 0) {
            return;
        }
        throw zzhq.zzhl();
    }

    private final void zzal(int i) {
        if (this.zzps.zzfs() == i) {
            return;
        }
        throw zzhq.zzhe();
    }

    private final <T> T zzc(zzjf<T> zzjfVar, zzgx zzgxVar) {
        int zzfk = this.zzps.zzfk();
        if (this.zzps.zzpd < this.zzps.zzpe) {
            int zzaa = this.zzps.zzaa(zzfk);
            T newInstance = zzjfVar.newInstance();
            this.zzps.zzpd++;
            zzjfVar.zza(newInstance, this, zzgxVar);
            zzjfVar.zzm(newInstance);
            this.zzps.zzy(0);
            this.zzps.zzpd--;
            this.zzps.zzab(zzaa);
            return newInstance;
        }
        throw new zzhq("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final <T> T zzd(zzjf<T> zzjfVar, zzgx zzgxVar) {
        int i = this.zzpt;
        this.zzpt = ((this.tag >>> 3) << 3) | 4;
        try {
            T newInstance = zzjfVar.newInstance();
            zzjfVar.zza(newInstance, this, zzgxVar);
            zzjfVar.zzm(newInstance);
            if (this.tag == this.zzpt) {
                return newInstance;
            }
            throw zzhq.zzhl();
        } finally {
            this.zzpt = i;
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final double readDouble() {
        zzai(1);
        return this.zzps.readDouble();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final float readFloat() {
        zzai(5);
        return this.zzps.readFloat();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final String readString() {
        zzai(2);
        return this.zzps.readString();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void readStringList(List<String> list) {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final <T> T zza(zzjf<T> zzjfVar, zzgx zzgxVar) {
        zzai(2);
        return (T) zzc(zzjfVar, zzgxVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final <T> void zza(List<T> list, zzjf<T> zzjfVar, zzgx zzgxVar) {
        int zzfb;
        int i = this.tag;
        if ((i & 7) == 2) {
            do {
                list.add(zzc(zzjfVar, zzgxVar));
                if (this.zzps.zzfr() || this.zzpu != 0) {
                    return;
                }
                zzfb = this.zzps.zzfb();
            } while (zzfb == i);
            this.zzpu = zzfb;
            return;
        }
        throw zzhq.zzhj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final <K, V> void zza(Map<K, V> map, zzih<K, V> zzihVar, zzgx zzgxVar) {
        zzai(2);
        int zzaa = this.zzps.zzaa(this.zzps.zzfk());
        K k = zzihVar.zzvj;
        V v = zzihVar.zzvl;
        while (true) {
            try {
                int zzfz = zzfz();
                if (zzfz == Integer.MAX_VALUE || this.zzps.zzfr()) {
                    break;
                } else if (zzfz == 1) {
                    k = zza(zzihVar.zzvi, (Class<?>) null, (zzgx) null);
                } else if (zzfz != 2) {
                    try {
                        if (!zzga()) {
                            throw new zzhq("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzhp e) {
                        if (!zzga()) {
                            throw new zzhq("Unable to parse map entry.");
                        }
                    }
                } else {
                    v = zza(zzihVar.zzvk, zzihVar.zzvl.getClass(), zzgxVar);
                }
            } finally {
                this.zzps.zzab(zzaa);
            }
        }
        map.put(k, v);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final <T> T zzb(zzjf<T> zzjfVar, zzgx zzgxVar) {
        zzai(3);
        return (T) zzd(zzjfVar, zzgxVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final <T> void zzb(List<T> list, zzjf<T> zzjfVar, zzgx zzgxVar) {
        int zzfb;
        int i = this.tag;
        if ((i & 7) == 3) {
            do {
                list.add(zzd(zzjfVar, zzgxVar));
                if (this.zzps.zzfr() || this.zzpu != 0) {
                    return;
                }
                zzfb = this.zzps.zzfb();
            } while (zzfb == i);
            this.zzpu = zzfb;
            return;
        }
        throw zzhq.zzhj();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzc(List<Double> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzgt)) {
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.zzps.readDouble()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfk = this.zzps.zzfk();
                zzaj(zzfk);
                int zzfs = this.zzps.zzfs();
                do {
                    list.add(Double.valueOf(this.zzps.readDouble()));
                } while (this.zzps.zzfs() < zzfs + zzfk);
                return;
            }
        }
        zzgt zzgtVar = (zzgt) list;
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                zzgtVar.zze(this.zzps.readDouble());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfk2 = this.zzps.zzfk();
            zzaj(zzfk2);
            int zzfs2 = this.zzps.zzfs();
            do {
                zzgtVar.zze(this.zzps.readDouble());
            } while (this.zzps.zzfs() < zzfs2 + zzfk2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzd(List<Float> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhg)) {
            int i = this.tag & 7;
            if (i == 2) {
                int zzfk = this.zzps.zzfk();
                zzak(zzfk);
                int zzfs = this.zzps.zzfs();
                do {
                    list.add(Float.valueOf(this.zzps.readFloat()));
                } while (this.zzps.zzfs() < zzfs + zzfk);
                return;
            } else if (i != 5) {
                throw zzhq.zzhj();
            } else {
                do {
                    list.add(Float.valueOf(this.zzps.readFloat()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            }
        }
        zzhg zzhgVar = (zzhg) list;
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int zzfk2 = this.zzps.zzfk();
            zzak(zzfk2);
            int zzfs2 = this.zzps.zzfs();
            do {
                zzhgVar.zzd(this.zzps.readFloat());
            } while (this.zzps.zzfs() < zzfs2 + zzfk2);
        } else if (i2 != 5) {
            throw zzhq.zzhj();
        } else {
            do {
                zzhgVar.zzd(this.zzps.readFloat());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zze(List<Long> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzie)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zzps.zzfc()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Long.valueOf(this.zzps.zzfc()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzie zzieVar = (zzie) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzieVar.zzp(this.zzps.zzfc());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzieVar.zzp(this.zzps.zzfc());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzf(List<Long> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzie)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zzps.zzfd()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Long.valueOf(this.zzps.zzfd()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzie zzieVar = (zzie) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzieVar.zzp(this.zzps.zzfd());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzieVar.zzp(this.zzps.zzfd());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final long zzfc() {
        zzai(0);
        return this.zzps.zzfc();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final long zzfd() {
        zzai(0);
        return this.zzps.zzfd();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfe() {
        zzai(0);
        return this.zzps.zzfe();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final long zzff() {
        zzai(1);
        return this.zzps.zzff();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfg() {
        zzai(5);
        return this.zzps.zzfg();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final boolean zzfh() {
        zzai(0);
        return this.zzps.zzfh();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final String zzfi() {
        zzai(2);
        return this.zzps.zzfi();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final zzfx zzfj() {
        zzai(2);
        return this.zzps.zzfj();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfk() {
        zzai(0);
        return this.zzps.zzfk();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfl() {
        zzai(0);
        return this.zzps.zzfl();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfm() {
        zzai(5);
        return this.zzps.zzfm();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final long zzfn() {
        zzai(1);
        return this.zzps.zzfn();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfo() {
        zzai(0);
        return this.zzps.zzfo();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final long zzfp() {
        zzai(0);
        return this.zzps.zzfp();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final int zzfz() {
        int i = this.zzpu;
        if (i != 0) {
            this.tag = i;
            this.zzpu = 0;
        } else {
            this.tag = this.zzps.zzfb();
        }
        int i2 = this.tag;
        return (i2 == 0 || i2 == this.zzpt) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzg(List<Integer> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhk)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzps.zzfe()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Integer.valueOf(this.zzps.zzfe()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzhk zzhkVar = (zzhk) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzhkVar.zzbb(this.zzps.zzfe());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzhkVar.zzbb(this.zzps.zzfe());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final boolean zzga() {
        int i;
        if (this.zzps.zzfr() || (i = this.tag) == this.zzpt) {
            return false;
        }
        return this.zzps.zzz(i);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzh(List<Long> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzie)) {
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zzps.zzff()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfk = this.zzps.zzfk();
                zzaj(zzfk);
                int zzfs = this.zzps.zzfs();
                do {
                    list.add(Long.valueOf(this.zzps.zzff()));
                } while (this.zzps.zzfs() < zzfs + zzfk);
                return;
            }
        }
        zzie zzieVar = (zzie) list;
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                zzieVar.zzp(this.zzps.zzff());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfk2 = this.zzps.zzfk();
            zzaj(zzfk2);
            int zzfs2 = this.zzps.zzfs();
            do {
                zzieVar.zzp(this.zzps.zzff());
            } while (this.zzps.zzfs() < zzfs2 + zzfk2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzi(List<Integer> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhk)) {
            int i = this.tag & 7;
            if (i == 2) {
                int zzfk = this.zzps.zzfk();
                zzak(zzfk);
                int zzfs = this.zzps.zzfs();
                do {
                    list.add(Integer.valueOf(this.zzps.zzfg()));
                } while (this.zzps.zzfs() < zzfs + zzfk);
                return;
            } else if (i != 5) {
                throw zzhq.zzhj();
            } else {
                do {
                    list.add(Integer.valueOf(this.zzps.zzfg()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            }
        }
        zzhk zzhkVar = (zzhk) list;
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int zzfk2 = this.zzps.zzfk();
            zzak(zzfk2);
            int zzfs2 = this.zzps.zzfs();
            do {
                zzhkVar.zzbb(this.zzps.zzfg());
            } while (this.zzps.zzfs() < zzfs2 + zzfk2);
        } else if (i2 != 5) {
            throw zzhq.zzhj();
        } else {
            do {
                zzhkVar.zzbb(this.zzps.zzfg());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzj(List<Boolean> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzfv)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.zzps.zzfh()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Boolean.valueOf(this.zzps.zzfh()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzfv zzfvVar = (zzfv) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzfvVar.addBoolean(this.zzps.zzfh());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzfvVar.addBoolean(this.zzps.zzfh());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzk(List<String> list) {
        zza(list, true);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzl(List<zzfx> list) {
        int zzfb;
        if ((this.tag & 7) == 2) {
            do {
                list.add(zzfj());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb = this.zzps.zzfb();
            } while (zzfb == this.tag);
            this.zzpu = zzfb;
            return;
        }
        throw zzhq.zzhj();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzm(List<Integer> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhk)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzps.zzfk()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Integer.valueOf(this.zzps.zzfk()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzhk zzhkVar = (zzhk) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzhkVar.zzbb(this.zzps.zzfk());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzhkVar.zzbb(this.zzps.zzfk());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzn(List<Integer> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhk)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzps.zzfl()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Integer.valueOf(this.zzps.zzfl()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzhk zzhkVar = (zzhk) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzhkVar.zzbb(this.zzps.zzfl());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzhkVar.zzbb(this.zzps.zzfl());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzo(List<Integer> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhk)) {
            int i = this.tag & 7;
            if (i == 2) {
                int zzfk = this.zzps.zzfk();
                zzak(zzfk);
                int zzfs = this.zzps.zzfs();
                do {
                    list.add(Integer.valueOf(this.zzps.zzfm()));
                } while (this.zzps.zzfs() < zzfs + zzfk);
                return;
            } else if (i != 5) {
                throw zzhq.zzhj();
            } else {
                do {
                    list.add(Integer.valueOf(this.zzps.zzfm()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            }
        }
        zzhk zzhkVar = (zzhk) list;
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int zzfk2 = this.zzps.zzfk();
            zzak(zzfk2);
            int zzfs2 = this.zzps.zzfs();
            do {
                zzhkVar.zzbb(this.zzps.zzfm());
            } while (this.zzps.zzfs() < zzfs2 + zzfk2);
        } else if (i2 != 5) {
            throw zzhq.zzhj();
        } else {
            do {
                zzhkVar.zzbb(this.zzps.zzfm());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzp(List<Long> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzie)) {
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zzps.zzfn()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfk = this.zzps.zzfk();
                zzaj(zzfk);
                int zzfs = this.zzps.zzfs();
                do {
                    list.add(Long.valueOf(this.zzps.zzfn()));
                } while (this.zzps.zzfs() < zzfs + zzfk);
                return;
            }
        }
        zzie zzieVar = (zzie) list;
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                zzieVar.zzp(this.zzps.zzfn());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfk2 = this.zzps.zzfk();
            zzaj(zzfk2);
            int zzfs2 = this.zzps.zzfs();
            do {
                zzieVar.zzp(this.zzps.zzfn());
            } while (this.zzps.zzfs() < zzfs2 + zzfk2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzq(List<Integer> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzhk)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzps.zzfo()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Integer.valueOf(this.zzps.zzfo()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzhk zzhkVar = (zzhk) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzhkVar.zzbb(this.zzps.zzfo());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzhkVar.zzbb(this.zzps.zzfo());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjg
    public final void zzr(List<Long> list) {
        int zzfb;
        int zzfb2;
        if (!(list instanceof zzie)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zzps.zzfp()));
                    if (this.zzps.zzfr()) {
                        return;
                    }
                    zzfb = this.zzps.zzfb();
                } while (zzfb == this.tag);
                this.zzpu = zzfb;
                return;
            } else if (i != 2) {
                throw zzhq.zzhj();
            } else {
                int zzfs = this.zzps.zzfs() + this.zzps.zzfk();
                do {
                    list.add(Long.valueOf(this.zzps.zzfp()));
                } while (this.zzps.zzfs() < zzfs);
                zzal(zzfs);
                return;
            }
        }
        zzie zzieVar = (zzie) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzieVar.zzp(this.zzps.zzfp());
                if (this.zzps.zzfr()) {
                    return;
                }
                zzfb2 = this.zzps.zzfb();
            } while (zzfb2 == this.tag);
            this.zzpu = zzfb2;
        } else if (i2 != 2) {
            throw zzhq.zzhj();
        } else {
            int zzfs2 = this.zzps.zzfs() + this.zzps.zzfk();
            do {
                zzieVar.zzp(this.zzps.zzfp());
            } while (this.zzps.zzfs() < zzfs2);
            zzal(zzfs2);
        }
    }
}
