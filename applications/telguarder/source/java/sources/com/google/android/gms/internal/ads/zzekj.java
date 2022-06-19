package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekj.class */
public final class zzekj implements zzend {
    private int tag;
    private final zzekc zzimz;
    private int zzina;
    private int zzinb = 0;

    private zzekj(zzekc zzekcVar) {
        zzekc zzekcVar2 = (zzekc) zzeld.zza(zzekcVar, "input");
        this.zzimz = zzekcVar2;
        zzekcVar2.zzimo = this;
    }

    public static zzekj zza(zzekc zzekcVar) {
        return zzekcVar.zzimo != null ? zzekcVar.zzimo : new zzekj(zzekcVar);
    }

    private final Object zza(zzeos zzeosVar, Class<?> cls, zzeko zzekoVar) throws IOException {
        switch (zzeki.zzimy[zzeosVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzbgy());
            case 2:
                return zzbha();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzbhc());
            case 5:
                return Integer.valueOf(zzbgx());
            case 6:
                return Long.valueOf(zzbgw());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzbgv());
            case 9:
                return Long.valueOf(zzbgu());
            case 10:
                zzgn(2);
                return zzc(zzenc.zzbkf().zzh(cls), zzekoVar);
            case 11:
                return Integer.valueOf(zzbhd());
            case 12:
                return Long.valueOf(zzbhe());
            case 13:
                return Integer.valueOf(zzbhf());
            case 14:
                return Long.valueOf(zzbhg());
            case 15:
                return zzbgz();
            case 16:
                return Integer.valueOf(zzbhb());
            case 17:
                return Long.valueOf(zzbgt());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int zzbgs;
        int zzbgs2;
        if ((this.tag & 7) == 2) {
            if (!(list instanceof zzelv) || z) {
                do {
                    list.add(z ? zzbgz() : readString());
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            }
            zzelv zzelvVar = (zzelv) list;
            do {
                zzelvVar.zzak(zzbha());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
            return;
        }
        throw zzelo.zzbjf();
    }

    private final <T> T zzc(zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException {
        int zzbhb = this.zzimz.zzbhb();
        if (this.zzimz.zziml < this.zzimz.zzimm) {
            int zzgf = this.zzimz.zzgf(zzbhb);
            T newInstance = zzenjVar.newInstance();
            this.zzimz.zziml++;
            zzenjVar.zza(newInstance, this, zzekoVar);
            zzenjVar.zzak(newInstance);
            this.zzimz.zzgd(0);
            this.zzimz.zziml--;
            this.zzimz.zzgg(zzgf);
            return newInstance;
        }
        throw new zzelo("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final <T> T zzd(zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException {
        int i = this.zzina;
        this.zzina = ((this.tag >>> 3) << 3) | 4;
        try {
            T newInstance = zzenjVar.newInstance();
            zzenjVar.zza(newInstance, this, zzekoVar);
            zzenjVar.zzak(newInstance);
            if (this.tag == this.zzina) {
                return newInstance;
            }
            throw zzelo.zzbjh();
        } finally {
            this.zzina = i;
        }
    }

    private final void zzgn(int i) throws IOException {
        if ((this.tag & 7) == i) {
            return;
        }
        throw zzelo.zzbjf();
    }

    private static void zzgo(int i) throws IOException {
        if ((i & 7) == 0) {
            return;
        }
        throw zzelo.zzbjh();
    }

    private static void zzgp(int i) throws IOException {
        if ((i & 3) == 0) {
            return;
        }
        throw zzelo.zzbjh();
    }

    private final void zzgq(int i) throws IOException {
        if (this.zzimz.zzbhj() == i) {
            return;
        }
        throw zzelo.zzbja();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final double readDouble() throws IOException {
        zzgn(1);
        return this.zzimz.readDouble();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final float readFloat() throws IOException {
        zzgn(5);
        return this.zzimz.readFloat();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final String readString() throws IOException {
        zzgn(2);
        return this.zzimz.readString();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> T zza(zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException {
        zzgn(2);
        return (T) zzc(zzenjVar, zzekoVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> void zza(List<T> list, zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException {
        int zzbgs;
        int i = this.tag;
        if ((i & 7) == 2) {
            do {
                list.add(zzc(zzenjVar, zzekoVar));
                if (this.zzimz.zzbhi() || this.zzinb != 0) {
                    return;
                }
                zzbgs = this.zzimz.zzbgs();
            } while (zzbgs == i);
            this.zzinb = zzbgs;
            return;
        }
        throw zzelo.zzbjf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzend
    public final <K, V> void zza(Map<K, V> map, zzemf<K, V> zzemfVar, zzeko zzekoVar) throws IOException {
        zzgn(2);
        int zzgf = this.zzimz.zzgf(this.zzimz.zzbhb());
        K k = zzemfVar.zzisl;
        V v = zzemfVar.zzclv;
        while (true) {
            try {
                int zzbhq = zzbhq();
                if (zzbhq == Integer.MAX_VALUE || this.zzimz.zzbhi()) {
                    break;
                } else if (zzbhq == 1) {
                    k = zza(zzemfVar.zzisk, (Class<?>) null, (zzeko) null);
                } else if (zzbhq != 2) {
                    try {
                        if (!zzbhr()) {
                            throw new zzelo("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzeln e) {
                        if (!zzbhr()) {
                            throw new zzelo("Unable to parse map entry.");
                        }
                    }
                } else {
                    v = zza(zzemfVar.zzism, zzemfVar.zzclv.getClass(), zzekoVar);
                }
            } finally {
                this.zzimz.zzgg(zzgf);
            }
        }
        map.put(k, v);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzaa(List<Integer> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzele)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhf()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhf()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzele zzeleVar = (zzele) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzeleVar.zzhh(this.zzimz.zzbhf());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzeleVar.zzhh(this.zzimz.zzbhf());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzab(List<Long> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzemc)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhg()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhg()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzemc zzemcVar = (zzemc) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzemcVar.zzfr(this.zzimz.zzbhg());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzemcVar.zzfr(this.zzimz.zzbhg());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> T zzb(zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException {
        zzgn(3);
        return (T) zzd(zzenjVar, zzekoVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> void zzb(List<T> list, zzenj<T> zzenjVar, zzeko zzekoVar) throws IOException {
        int zzbgs;
        int i = this.tag;
        if ((i & 7) == 3) {
            do {
                list.add(zzd(zzenjVar, zzekoVar));
                if (this.zzimz.zzbhi() || this.zzinb != 0) {
                    return;
                }
                zzbgs = this.zzimz.zzbgs();
            } while (zzbgs == i);
            this.zzinb = zzbgs;
            return;
        }
        throw zzelo.zzbjf();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbgt() throws IOException {
        zzgn(0);
        return this.zzimz.zzbgt();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbgu() throws IOException {
        zzgn(0);
        return this.zzimz.zzbgu();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbgv() throws IOException {
        zzgn(0);
        return this.zzimz.zzbgv();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbgw() throws IOException {
        zzgn(1);
        return this.zzimz.zzbgw();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbgx() throws IOException {
        zzgn(5);
        return this.zzimz.zzbgx();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final boolean zzbgy() throws IOException {
        zzgn(0);
        return this.zzimz.zzbgy();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final String zzbgz() throws IOException {
        zzgn(2);
        return this.zzimz.zzbgz();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final zzejr zzbha() throws IOException {
        zzgn(2);
        return this.zzimz.zzbha();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhb() throws IOException {
        zzgn(0);
        return this.zzimz.zzbhb();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhc() throws IOException {
        zzgn(0);
        return this.zzimz.zzbhc();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhd() throws IOException {
        zzgn(5);
        return this.zzimz.zzbhd();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbhe() throws IOException {
        zzgn(1);
        return this.zzimz.zzbhe();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhf() throws IOException {
        zzgn(0);
        return this.zzimz.zzbhf();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbhg() throws IOException {
        zzgn(0);
        return this.zzimz.zzbhg();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhq() throws IOException {
        int i = this.zzinb;
        if (i != 0) {
            this.tag = i;
            this.zzinb = 0;
        } else {
            this.tag = this.zzimz.zzbgs();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.zzina) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final boolean zzbhr() throws IOException {
        int i;
        if (this.zzimz.zzbhi() || (i = this.tag) == this.zzina) {
            return false;
        }
        return this.zzimz.zzge(i);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzm(List<Double> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzekm)) {
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.zzimz.readDouble()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhb = this.zzimz.zzbhb();
                zzgo(zzbhb);
                int zzbhj = this.zzimz.zzbhj();
                do {
                    list.add(Double.valueOf(this.zzimz.readDouble()));
                } while (this.zzimz.zzbhj() < zzbhj + zzbhb);
                return;
            }
        }
        zzekm zzekmVar = (zzekm) list;
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                zzekmVar.zze(this.zzimz.readDouble());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhb2 = this.zzimz.zzbhb();
            zzgo(zzbhb2);
            int zzbhj2 = this.zzimz.zzbhj();
            do {
                zzekmVar.zze(this.zzimz.readDouble());
            } while (this.zzimz.zzbhj() < zzbhj2 + zzbhb2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzn(List<Float> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzela)) {
            int i = this.tag & 7;
            if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgp(zzbhb);
                int zzbhj = this.zzimz.zzbhj();
                do {
                    list.add(Float.valueOf(this.zzimz.readFloat()));
                } while (this.zzimz.zzbhj() < zzbhj + zzbhb);
                return;
            } else if (i != 5) {
                throw zzelo.zzbjf();
            } else {
                do {
                    list.add(Float.valueOf(this.zzimz.readFloat()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            }
        }
        zzela zzelaVar = (zzela) list;
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int zzbhb2 = this.zzimz.zzbhb();
            zzgp(zzbhb2);
            int zzbhj2 = this.zzimz.zzbhj();
            do {
                zzelaVar.zzh(this.zzimz.readFloat());
            } while (this.zzimz.zzbhj() < zzbhj2 + zzbhb2);
        } else if (i2 != 5) {
            throw zzelo.zzbjf();
        } else {
            do {
                zzelaVar.zzh(this.zzimz.readFloat());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzo(List<Long> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzemc)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgt()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgt()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzemc zzemcVar = (zzemc) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzemcVar.zzfr(this.zzimz.zzbgt());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzemcVar.zzfr(this.zzimz.zzbgt());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzp(List<Long> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzemc)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgu()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgu()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzemc zzemcVar = (zzemc) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzemcVar.zzfr(this.zzimz.zzbgu());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzemcVar.zzfr(this.zzimz.zzbgu());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzq(List<Integer> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzele)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgv()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgv()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzele zzeleVar = (zzele) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzeleVar.zzhh(this.zzimz.zzbgv());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzeleVar.zzhh(this.zzimz.zzbgv());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzr(List<Long> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzemc)) {
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgw()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhb = this.zzimz.zzbhb();
                zzgo(zzbhb);
                int zzbhj = this.zzimz.zzbhj();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgw()));
                } while (this.zzimz.zzbhj() < zzbhj + zzbhb);
                return;
            }
        }
        zzemc zzemcVar = (zzemc) list;
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                zzemcVar.zzfr(this.zzimz.zzbgw());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhb2 = this.zzimz.zzbhb();
            zzgo(zzbhb2);
            int zzbhj2 = this.zzimz.zzbhj();
            do {
                zzemcVar.zzfr(this.zzimz.zzbgw());
            } while (this.zzimz.zzbhj() < zzbhj2 + zzbhb2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzs(List<Integer> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzele)) {
            int i = this.tag & 7;
            if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgp(zzbhb);
                int zzbhj = this.zzimz.zzbhj();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgx()));
                } while (this.zzimz.zzbhj() < zzbhj + zzbhb);
                return;
            } else if (i != 5) {
                throw zzelo.zzbjf();
            } else {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgx()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            }
        }
        zzele zzeleVar = (zzele) list;
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int zzbhb2 = this.zzimz.zzbhb();
            zzgp(zzbhb2);
            int zzbhj2 = this.zzimz.zzbhj();
            do {
                zzeleVar.zzhh(this.zzimz.zzbgx());
            } while (this.zzimz.zzbhj() < zzbhj2 + zzbhb2);
        } else if (i2 != 5) {
            throw zzelo.zzbjf();
        } else {
            do {
                zzeleVar.zzhh(this.zzimz.zzbgx());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzt(List<Boolean> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzejp)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.zzimz.zzbgy()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Boolean.valueOf(this.zzimz.zzbgy()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzejp zzejpVar = (zzejp) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzejpVar.addBoolean(this.zzimz.zzbgy());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzejpVar.addBoolean(this.zzimz.zzbgy());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzu(List<String> list) throws IOException {
        zza(list, true);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzv(List<zzejr> list) throws IOException {
        int zzbgs;
        if ((this.tag & 7) == 2) {
            do {
                list.add(zzbha());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs = this.zzimz.zzbgs();
            } while (zzbgs == this.tag);
            this.zzinb = zzbgs;
            return;
        }
        throw zzelo.zzbjf();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzw(List<Integer> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzele)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhb()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhb()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzele zzeleVar = (zzele) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzeleVar.zzhh(this.zzimz.zzbhb());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzeleVar.zzhh(this.zzimz.zzbhb());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzx(List<Integer> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzele)) {
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhc()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhc()));
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
                return;
            }
        }
        zzele zzeleVar = (zzele) list;
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                zzeleVar.zzhh(this.zzimz.zzbhc());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
            do {
                zzeleVar.zzhh(this.zzimz.zzbhc());
            } while (this.zzimz.zzbhj() < zzbhj2);
            zzgq(zzbhj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzy(List<Integer> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzele)) {
            int i = this.tag & 7;
            if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgp(zzbhb);
                int zzbhj = this.zzimz.zzbhj();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhd()));
                } while (this.zzimz.zzbhj() < zzbhj + zzbhb);
                return;
            } else if (i != 5) {
                throw zzelo.zzbjf();
            } else {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhd()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            }
        }
        zzele zzeleVar = (zzele) list;
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int zzbhb2 = this.zzimz.zzbhb();
            zzgp(zzbhb2);
            int zzbhj2 = this.zzimz.zzbhj();
            do {
                zzeleVar.zzhh(this.zzimz.zzbhd());
            } while (this.zzimz.zzbhj() < zzbhj2 + zzbhb2);
        } else if (i2 != 5) {
            throw zzelo.zzbjf();
        } else {
            do {
                zzeleVar.zzhh(this.zzimz.zzbhd());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzz(List<Long> list) throws IOException {
        int zzbgs;
        int zzbgs2;
        if (!(list instanceof zzemc)) {
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhe()));
                    if (this.zzimz.zzbhi()) {
                        return;
                    }
                    zzbgs = this.zzimz.zzbgs();
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
                return;
            } else if (i != 2) {
                throw zzelo.zzbjf();
            } else {
                int zzbhb = this.zzimz.zzbhb();
                zzgo(zzbhb);
                int zzbhj = this.zzimz.zzbhj();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhe()));
                } while (this.zzimz.zzbhj() < zzbhj + zzbhb);
                return;
            }
        }
        zzemc zzemcVar = (zzemc) list;
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                zzemcVar.zzfr(this.zzimz.zzbhe());
                if (this.zzimz.zzbhi()) {
                    return;
                }
                zzbgs2 = this.zzimz.zzbgs();
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        } else if (i2 != 2) {
            throw zzelo.zzbjf();
        } else {
            int zzbhb2 = this.zzimz.zzbhb();
            zzgo(zzbhb2);
            int zzbhj2 = this.zzimz.zzbhj();
            do {
                zzemcVar.zzfr(this.zzimz.zzbhe());
            } while (this.zzimz.zzbhj() < zzbhj2 + zzbhb2);
        }
    }
}
