package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzdu;
import com.google.android.gms.internal.firebase-perf.zzew;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzhk;
import com.google.android.gms.internal.firebase_perf.zzeb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdz.class */
public final class zzdz<T extends zzeb<T>> {
    private static final com.google.android.gms.internal.firebase-perf.zzdz zznf = new zzdz(true);
    final zzgj<T, Object> zznc;
    private boolean zznd;
    private boolean zzne;

    private zzdz() {
        this.zznc = zzgj.zzat(16);
    }

    private zzdz(zzgj<T, Object> zzgjVar) {
        this.zznc = zzgjVar;
        zzfk();
    }

    private zzdz(boolean z) {
        this(zzgj.zzat(0));
        zzfk();
    }

    public static int zza(zzhk zzhkVar, int i, Object obj) {
        int zzy = zzdu.zzy(i);
        int i2 = zzy;
        if (zzhkVar == zzhk.zzvp) {
            zzei.zzf((zzfr) ((zzfr) obj));
            i2 = zzy << 1;
        }
        return i2 + zzb(zzhkVar, obj);
    }

    private final Object zza(T t) {
        Object obj = this.zznc.get(t);
        zzfr zzfrVar = obj;
        if (obj instanceof zzes) {
            zzes zzesVar = (zzes) obj;
            zzfrVar = zzes.zzgv();
        }
        return zzfrVar;
    }

    public static void zza(zzdu zzduVar, zzhk zzhkVar, int i, Object obj) {
        if (zzhkVar == zzhk.zzvp) {
            zzfr zzfrVar = (zzfr) obj;
            zzei.zzf((zzfr) zzfrVar);
            zzduVar.zze(i, 3);
            zzfrVar.zzb(zzduVar);
            zzduVar.zze(i, 4);
            return;
        }
        zzduVar.zze(i, zzhkVar.zziq());
        switch (zzec.zznj[zzhkVar.ordinal()]) {
            case 1:
                zzduVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzduVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzduVar.zzak(((Long) obj).longValue());
                return;
            case 4:
                zzduVar.zzak(((Long) obj).longValue());
                return;
            case 5:
                zzduVar.zzu(((Integer) obj).intValue());
                return;
            case 6:
                zzduVar.zzam(((Long) obj).longValue());
                return;
            case 7:
                zzduVar.zzx(((Integer) obj).intValue());
                return;
            case 8:
                zzduVar.zzd(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzfr) obj).zzb(zzduVar);
                return;
            case 10:
                zzduVar.zzb((zzfr) obj);
                return;
            case 11:
                if (obj instanceof zzdd) {
                    zzduVar.zza((zzdd) obj);
                    return;
                } else {
                    zzduVar.zzaf((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzdd) {
                    zzduVar.zza((zzdd) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzduVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzduVar.zzv(((Integer) obj).intValue());
                return;
            case 14:
                zzduVar.zzx(((Integer) obj).intValue());
                return;
            case 15:
                zzduVar.zzam(((Long) obj).longValue());
                return;
            case 16:
                zzduVar.zzw(((Integer) obj).intValue());
                return;
            case 17:
                zzduVar.zzal(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzel) {
                    zzduVar.zzu(((zzel) obj).zzcq());
                    return;
                } else {
                    zzduVar.zzu(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(T t, Object obj) {
        if (!t.zzgf()) {
            zza(t.zzgd(), obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(t.zzgd(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzes) {
            this.zzne = true;
        }
        this.zznc.zza((zzgj<T, Object>) t, (T) obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzhk zzhkVar, Object obj) {
        boolean z;
        zzei.checkNotNull(obj);
        switch (zzec.zzni[zzhkVar.zzip().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                z = true;
                if (!(obj instanceof zzdd)) {
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof Integer)) {
                    if (obj instanceof zzel) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzfr)) {
                    if (obj instanceof zzes) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public static int zzb(zzeb<?> zzebVar, Object obj) {
        zzhk zzgd = zzebVar.zzgd();
        int zzcq = zzebVar.zzcq();
        if (zzebVar.zzgf()) {
            int i = 0;
            if (zzebVar.zzgg()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzgd, obj2);
                }
                return zzdu.zzy(zzcq) + i + zzdu.zzah(i);
            }
            Iterator it = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + zza(zzgd, zzcq, it.next());
            }
        } else {
            return zza(zzgd, zzcq, obj);
        }
    }

    private static int zzb(zzhk zzhkVar, Object obj) {
        switch (zzec.zznj[zzhkVar.ordinal()]) {
            case 1:
                return zzdu.zzb(((Double) obj).doubleValue());
            case 2:
                return zzdu.zzb(((Float) obj).floatValue());
            case 3:
                return zzdu.zzan(((Long) obj).longValue());
            case 4:
                return zzdu.zzao(((Long) obj).longValue());
            case 5:
                return zzdu.zzz(((Integer) obj).intValue());
            case 6:
                return zzdu.zzaq(((Long) obj).longValue());
            case 7:
                return zzdu.zzac(((Integer) obj).intValue());
            case 8:
                return zzdu.zze(((Boolean) obj).booleanValue());
            case 9:
                return zzdu.zzd((zzfr) ((zzfr) obj));
            case 10:
                return obj instanceof zzes ? zzdu.zza((zzew) ((zzes) obj)) : zzdu.zzc((zzfr) ((zzfr) obj));
            case 11:
                return obj instanceof zzdd ? zzdu.zzb((zzdd) ((zzdd) obj)) : zzdu.zzag((String) obj);
            case 12:
                return obj instanceof zzdd ? zzdu.zzb((zzdd) ((zzdd) obj)) : zzdu.zzc((byte[]) obj);
            case 13:
                return zzdu.zzaa(((Integer) obj).intValue());
            case 14:
                return zzdu.zzad(((Integer) obj).intValue());
            case 15:
                return zzdu.zzar(((Long) obj).longValue());
            case 16:
                return zzdu.zzab(((Integer) obj).intValue());
            case 17:
                return zzdu.zzap(((Long) obj).longValue());
            case 18:
                return obj instanceof zzel ? zzdu.zzae(((zzel) obj).zzcq()) : zzdu.zzae(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static <T extends zzeb<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzge() == zzhr.zzwj) {
            if (key.zzgf()) {
                for (zzfr zzfrVar : (List) entry.getValue()) {
                    if (!zzfrVar.isInitialized()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzfr) {
                return ((zzfr) value).isInitialized();
            } else if (value instanceof zzes) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private final void zzd(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzfr zzfrVar = value;
        if (value instanceof zzes) {
            zzes zzesVar = (zzes) value;
            zzfrVar = zzes.zzgv();
        }
        if (key.zzgf()) {
            Object zza = zza((zzdz<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzfrVar) {
                ((List) arrayList).add(zze(obj));
            }
            this.zznc.zza((zzgj<T, Object>) key, (T) arrayList);
        } else if (key.zzge() != zzhr.zzwj) {
            this.zznc.zza((zzgj<T, Object>) key, (T) zze(zzfrVar));
        } else {
            Object zza2 = zza((zzdz<T>) key);
            if (zza2 == null) {
                this.zznc.zza((zzgj<T, Object>) key, (T) zze(zzfrVar));
            } else {
                this.zznc.zza((zzgj<T, Object>) key, (T) (zza2 instanceof zzfx ? key.zza((zzfx) zza2, (zzfx) zzfrVar) : key.zza(((zzfr) zza2).zzgs(), (zzfr) zzfrVar).zzgm()));
            }
        }
    }

    private static int zze(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzge() != zzhr.zzwj || key.zzgf() || key.zzgg()) ? zzb((zzeb<?>) key, value) : value instanceof zzes ? zzdu.zzb(entry.getKey().zzcq(), (zzew) ((zzes) value)) : zzdu.zzb(entry.getKey().zzcq(), (zzfr) ((zzfr) value));
    }

    private static Object zze(Object obj) {
        if (obj instanceof zzfx) {
            return ((zzfx) obj).zzfg();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static <T extends zzeb<T>> zzdz<T> zzfy() {
        return zznf;
    }

    public final /* synthetic */ Object clone() {
        zzdz zzdzVar = new zzdz();
        for (int i = 0; i < this.zznc.zzhz(); i++) {
            Map.Entry<T, Object> zzau = this.zznc.zzau(i);
            zzdzVar.zza((zzdz) zzau.getKey(), zzau.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zznc.zzia()) {
            zzdzVar.zza((zzdz) entry.getKey(), entry.getValue());
        }
        zzdzVar.zzne = this.zzne;
        return zzdzVar;
    }

    public final Iterator<Map.Entry<T, Object>> descendingIterator() {
        return this.zzne ? new zzex(this.zznc.zzib().iterator()) : this.zznc.zzib().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzdz) {
            return this.zznc.equals(((zzdz) obj).zznc);
        }
        return false;
    }

    public final int hashCode() {
        return this.zznc.hashCode();
    }

    public final boolean isImmutable() {
        return this.zznd;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zznc.zzhz(); i++) {
            if (!zzc(this.zznc.zzau(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zznc.zzia()) {
            if (!zzc(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> iterator() {
        return this.zzne ? new zzex(this.zznc.entrySet().iterator()) : this.zznc.entrySet().iterator();
    }

    public final void zza(zzdz<T> zzdzVar) {
        for (int i = 0; i < zzdzVar.zznc.zzhz(); i++) {
            zzd(zzdzVar.zznc.zzau(i));
        }
        for (Map.Entry<T, Object> entry : zzdzVar.zznc.zzia()) {
            zzd(entry);
        }
    }

    public final void zzfk() {
        if (this.zznd) {
            return;
        }
        this.zznc.zzfk();
        this.zznd = true;
    }

    public final int zzfz() {
        int i = 0;
        for (int i2 = 0; i2 < this.zznc.zzhz(); i2++) {
            i += zze((Map.Entry) this.zznc.zzau(i2));
        }
        for (Map.Entry<T, Object> entry : this.zznc.zzia()) {
            i += zze((Map.Entry) entry);
        }
        return i;
    }
}
