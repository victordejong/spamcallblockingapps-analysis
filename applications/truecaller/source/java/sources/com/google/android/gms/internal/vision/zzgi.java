package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzgk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzgi.class */
public final class zzgi<T extends zzgk<T>> {
    private static final zzgi zzte = new zzgi(true);
    public final zziw<T, Object> zztb;
    private boolean zztc;
    private boolean zztd;

    private zzgi() {
        this.zztb = zziw.zzbt(16);
    }

    private zzgi(zziw<T, Object> zziwVar) {
        this.zztb = zziwVar;
        zzdp();
    }

    private zzgi(boolean z) {
        this(zziw.zzbt(0));
        zzdp();
    }

    public static int zza(zzka zzkaVar, int i, Object obj) {
        int zzba = zzga.zzba(i);
        int i2 = zzba;
        if (zzkaVar == zzka.zzabv) {
            zzgt.zzf((zzic) obj);
            i2 = zzba << 1;
        }
        return i2 + zzb(zzkaVar, obj);
    }

    public static void zza(zzga zzgaVar, zzka zzkaVar, int i, Object obj) throws IOException {
        if (zzkaVar == zzka.zzabv) {
            zzic zzicVar = (zzic) obj;
            zzgt.zzf(zzicVar);
            zzgaVar.zzg(i, 3);
            zzicVar.zzb(zzgaVar);
            zzgaVar.zzg(i, 4);
            return;
        }
        zzgaVar.zzg(i, zzkaVar.zziq());
        switch (zzgl.zzrr[zzkaVar.ordinal()]) {
            case 1:
                zzgaVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzgaVar.zzs(((Float) obj).floatValue());
                return;
            case 3:
                zzgaVar.zzs(((Long) obj).longValue());
                return;
            case 4:
                zzgaVar.zzs(((Long) obj).longValue());
                return;
            case 5:
                zzgaVar.zzaw(((Integer) obj).intValue());
                return;
            case 6:
                zzgaVar.zzu(((Long) obj).longValue());
                return;
            case 7:
                zzgaVar.zzaz(((Integer) obj).intValue());
                return;
            case 8:
                zzgaVar.zzk(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzic) obj).zzb(zzgaVar);
                return;
            case 10:
                zzgaVar.zzb((zzic) obj);
                return;
            case 11:
                if (obj instanceof zzfh) {
                    zzgaVar.zza((zzfh) obj);
                    return;
                } else {
                    zzgaVar.zzx((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzfh) {
                    zzgaVar.zza((zzfh) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzgaVar.zze(bArr, 0, bArr.length);
                return;
            case 13:
                zzgaVar.zzax(((Integer) obj).intValue());
                return;
            case 14:
                zzgaVar.zzaz(((Integer) obj).intValue());
                return;
            case 15:
                zzgaVar.zzu(((Long) obj).longValue());
                return;
            case 16:
                zzgaVar.zzay(((Integer) obj).intValue());
                return;
            case 17:
                zzgaVar.zzt(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzgw) {
                    zzgaVar.zzaw(((zzgw) obj).zzag());
                    return;
                } else {
                    zzgaVar.zzaw(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzka zzkaVar, Object obj) {
        boolean z;
        zzgt.checkNotNull(obj);
        switch (zzgl.zzth[zzkaVar.zzip().ordinal()]) {
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
                if (!(obj instanceof zzfh)) {
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
                    if (obj instanceof zzgw) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzic)) {
                    if (obj instanceof zzhd) {
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

    private static int zzb(zzka zzkaVar, Object obj) {
        switch (zzgl.zzrr[zzkaVar.ordinal()]) {
            case 1:
                return zzga.zzb(((Double) obj).doubleValue());
            case 2:
                return zzga.zzt(((Float) obj).floatValue());
            case 3:
                return zzga.zzv(((Long) obj).longValue());
            case 4:
                return zzga.zzw(((Long) obj).longValue());
            case 5:
                return zzga.zzbb(((Integer) obj).intValue());
            case 6:
                return zzga.zzy(((Long) obj).longValue());
            case 7:
                return zzga.zzbe(((Integer) obj).intValue());
            case 8:
                return zzga.zzl(((Boolean) obj).booleanValue());
            case 9:
                return zzga.zzd((zzic) obj);
            case 10:
                return obj instanceof zzhd ? zzga.zza((zzhd) obj) : zzga.zzc((zzic) obj);
            case 11:
                return obj instanceof zzfh ? zzga.zzb((zzfh) obj) : zzga.zzy((String) obj);
            case 12:
                return obj instanceof zzfh ? zzga.zzb((zzfh) obj) : zzga.zzf((byte[]) obj);
            case 13:
                return zzga.zzbc(((Integer) obj).intValue());
            case 14:
                return zzga.zzbf(((Integer) obj).intValue());
            case 15:
                return zzga.zzz(((Long) obj).longValue());
            case 16:
                return zzga.zzbd(((Integer) obj).intValue());
            case 17:
                return zzga.zzx(((Long) obj).longValue());
            case 18:
                return obj instanceof zzgw ? zzga.zzbg(((zzgw) obj).zzag()) : zzga.zzbg(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static <T extends zzgk<T>> boolean zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzft() == zzkd.MESSAGE) {
            if (key.zzfu()) {
                for (zzic zzicVar : (List) entry.getValue()) {
                    if (!zzicVar.isInitialized()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzic) {
                return ((zzic) value).isInitialized();
            } else if (value instanceof zzhd) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    public static int zzc(zzgk<?> zzgkVar, Object obj) {
        zzka zzfs = zzgkVar.zzfs();
        int zzag = zzgkVar.zzag();
        if (zzgkVar.zzfu()) {
            int i = 0;
            if (zzgkVar.zzfv()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzfs, obj2);
                }
                return zzga.zzbi(i) + zzga.zzba(zzag) + i;
            }
            Iterator it = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + zza(zzfs, zzag, it.next());
            }
        } else {
            return zza(zzfs, zzag, obj);
        }
    }

    private final void zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzic zzicVar = value;
        if (value instanceof zzhd) {
            zzhd zzhdVar = (zzhd) value;
            zzicVar = zzhd.zzgu();
        }
        if (key.zzfu()) {
            Object zza = zza((zzgi<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzicVar) {
                ((List) arrayList).add(zzh(obj));
            }
            this.zztb.zza((zziw<T, Object>) key, (T) arrayList);
        } else if (key.zzft() != zzkd.MESSAGE) {
            this.zztb.zza((zziw<T, Object>) key, (T) zzh(zzicVar));
        } else {
            Object zza2 = zza((zzgi<T>) key);
            if (zza2 == null) {
                this.zztb.zza((zziw<T, Object>) key, (T) zzh(zzicVar));
            } else {
                this.zztb.zza((zziw<T, Object>) key, (T) (zza2 instanceof zzih ? key.zza((zzih) zza2, (zzih) zzicVar) : key.zza(((zzic) zza2).zzgi(), (zzic) zzicVar).zzgc()));
            }
        }
    }

    private static int zzd(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzft() != zzkd.MESSAGE || key.zzfu() || key.zzfv()) ? zzc(key, value) : value instanceof zzhd ? zzga.zzb(entry.getKey().zzag(), (zzhd) value) : zzga.zzb(entry.getKey().zzag(), (zzic) value);
    }

    public static <T extends zzgk<T>> zzgi<T> zzfn() {
        return zzte;
    }

    private static Object zzh(Object obj) {
        if (obj instanceof zzih) {
            return ((zzih) obj).zzdm();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzgi zzgiVar = new zzgi();
        for (int i = 0; i < this.zztb.zzhx(); i++) {
            Map.Entry<T, Object> zzbu = this.zztb.zzbu(i);
            zzgiVar.zza((zzgi) zzbu.getKey(), zzbu.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zztb.zzhy()) {
            zzgiVar.zza((zzgi) entry.getKey(), entry.getValue());
        }
        zzgiVar.zztd = this.zztd;
        return zzgiVar;
    }

    public final Iterator<Map.Entry<T, Object>> descendingIterator() {
        return this.zztd ? new zzhi(this.zztb.zzhz().iterator()) : this.zztb.zzhz().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzgi) {
            return this.zztb.equals(((zzgi) obj).zztb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zztb.hashCode();
    }

    public final boolean isImmutable() {
        return this.zztc;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zztb.zzhx(); i++) {
            if (!zzb(this.zztb.zzbu(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zztb.zzhy()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> iterator() {
        return this.zztd ? new zzhi(this.zztb.entrySet().iterator()) : this.zztb.entrySet().iterator();
    }

    public final Object zza(T t) {
        Object obj = this.zztb.get(t);
        zzic zzicVar = obj;
        if (obj instanceof zzhd) {
            zzhd zzhdVar = (zzhd) obj;
            zzicVar = zzhd.zzgu();
        }
        return zzicVar;
    }

    public final void zza(zzgi<T> zzgiVar) {
        for (int i = 0; i < zzgiVar.zztb.zzhx(); i++) {
            zzc(zzgiVar.zztb.zzbu(i));
        }
        for (Map.Entry<T, Object> entry : zzgiVar.zztb.zzhy()) {
            zzc(entry);
        }
    }

    public final void zza(T t, Object obj) {
        if (!t.zzfu()) {
            zza(t.zzfs(), obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                zza(t.zzfs(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzhd) {
            this.zztd = true;
        }
        this.zztb.zza((zziw<T, Object>) t, (T) obj);
    }

    public final void zzb(T t, Object obj) {
        ArrayList arrayList;
        if (t.zzfu()) {
            zza(t.zzfs(), obj);
            Object zza = zza((zzgi<T>) t);
            if (zza == null) {
                ArrayList arrayList2 = new ArrayList();
                this.zztb.zza((zziw<T, Object>) t, (T) arrayList2);
                arrayList = arrayList2;
            } else {
                arrayList = (List) zza;
            }
            arrayList.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    public final void zzdp() {
        if (this.zztc) {
            return;
        }
        this.zztb.zzdp();
        this.zztc = true;
    }

    public final int zzfo() {
        int i = 0;
        for (int i2 = 0; i2 < this.zztb.zzhx(); i2++) {
            i += zzd(this.zztb.zzbu(i2));
        }
        for (Map.Entry<T, Object> entry : this.zztb.zzhy()) {
            i += zzd(entry);
        }
        return i;
    }
}
