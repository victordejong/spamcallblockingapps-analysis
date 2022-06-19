package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzha.class */
public final class zzha<FieldDescriptorType extends zzhc<FieldDescriptorType>> {
    private static final zzha zzqi = new zzha(true);
    private boolean zzqg;
    private boolean zzqh = false;
    final zzjk<FieldDescriptorType, Object> zzqf = zzjk.zzbl(16);

    private zzha() {
    }

    private zzha(boolean z) {
        zzes();
    }

    public static int zza(zzko zzkoVar, int i, Object obj) {
        int zzaq = zzgs.zzaq(i);
        int i2 = zzaq;
        if (zzkoVar == zzko.GROUP) {
            zzhm.zzf((zziq) obj);
            i2 = zzaq << 1;
        }
        return i2 + zzb(zzkoVar, obj);
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzqf.get(fielddescriptortype);
        zziq zziqVar = obj;
        if (obj instanceof zzhr) {
            zziqVar = zzhr.zzhn();
        }
        return zziqVar;
    }

    public static void zza(zzgs zzgsVar, zzko zzkoVar, int i, Object obj) {
        if (zzkoVar == zzko.GROUP) {
            zziq zziqVar = (zziq) obj;
            zzhm.zzf(zziqVar);
            zzgsVar.zzc(i, 3);
            zziqVar.zzb(zzgsVar);
            zzgsVar.zzc(i, 4);
            return;
        }
        zzgsVar.zzc(i, zzkoVar.zzjk());
        switch (zzhd.zzpr[zzkoVar.ordinal()]) {
            case 1:
                zzgsVar.zzc(((Double) obj).doubleValue());
                return;
            case 2:
                zzgsVar.zzb(((Float) obj).floatValue());
                return;
            case 3:
                zzgsVar.zzf(((Long) obj).longValue());
                return;
            case 4:
                zzgsVar.zzf(((Long) obj).longValue());
                return;
            case 5:
                zzgsVar.zzam(((Integer) obj).intValue());
                return;
            case 6:
                zzgsVar.zzh(((Long) obj).longValue());
                return;
            case 7:
                zzgsVar.zzap(((Integer) obj).intValue());
                return;
            case 8:
                zzgsVar.zzd(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zziq) obj).zzb(zzgsVar);
                return;
            case 10:
                zzgsVar.zzb((zziq) obj);
                return;
            case 11:
                if (obj instanceof zzfx) {
                    zzgsVar.zzb((zzfx) obj);
                    return;
                } else {
                    zzgsVar.zzbk((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzfx) {
                    zzgsVar.zzb((zzfx) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzgsVar.zzd(bArr, 0, bArr.length);
                return;
            case 13:
                zzgsVar.zzan(((Integer) obj).intValue());
                return;
            case 14:
                zzgsVar.zzap(((Integer) obj).intValue());
                return;
            case 15:
                zzgsVar.zzh(((Long) obj).longValue());
                return;
            case 16:
                zzgsVar.zzao(((Integer) obj).intValue());
                return;
            case 17:
                zzgsVar.zzg(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzhl) {
                    zzgsVar.zzam(((zzhl) obj).zzgn());
                    return;
                } else {
                    zzgsVar.zzam(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzgq()) {
            zza(fielddescriptortype.zzgo(), obj);
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
                zza(fielddescriptortype.zzgo(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzhr) {
            this.zzqh = true;
        }
        this.zzqf.zza((zzjk<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    private static void zza(zzko zzkoVar, Object obj) {
        boolean z;
        zzhm.checkNotNull(obj);
        switch (zzhd.zzql[zzkoVar.zzjj().ordinal()]) {
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
                if (!(obj instanceof zzfx)) {
                    z = false;
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof Integer)) {
                    z = false;
                    if (obj instanceof zzhl) {
                        z = true;
                        break;
                    }
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zziq)) {
                    z = false;
                    if (obj instanceof zzhr) {
                        z = true;
                        break;
                    }
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

    public static int zzb(zzhc<?> zzhcVar, Object obj) {
        zzko zzgo = zzhcVar.zzgo();
        int zzgn = zzhcVar.zzgn();
        if (zzhcVar.zzgq()) {
            int i = 0;
            if (zzhcVar.zzgr()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzgo, obj2);
                }
                return zzgs.zzaq(zzgn) + i + zzgs.zzay(i);
            }
            Iterator it = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + zza(zzgo, zzgn, it.next());
            }
        } else {
            return zza(zzgo, zzgn, obj);
        }
    }

    private static int zzb(zzko zzkoVar, Object obj) {
        switch (zzhd.zzpr[zzkoVar.ordinal()]) {
            case 1:
                return zzgs.zzd(((Double) obj).doubleValue());
            case 2:
                return zzgs.zzc(((Float) obj).floatValue());
            case 3:
                return zzgs.zzi(((Long) obj).longValue());
            case 4:
                return zzgs.zzj(((Long) obj).longValue());
            case 5:
                return zzgs.zzar(((Integer) obj).intValue());
            case 6:
                return zzgs.zzl(((Long) obj).longValue());
            case 7:
                return zzgs.zzau(((Integer) obj).intValue());
            case 8:
                return zzgs.zze(((Boolean) obj).booleanValue());
            case 9:
                return zzgs.zzd((zziq) obj);
            case 10:
                return obj instanceof zzhr ? zzgs.zza((zzhr) obj) : zzgs.zzc((zziq) obj);
            case 11:
                return obj instanceof zzfx ? zzgs.zzc((zzfx) obj) : zzgs.zzbl((String) obj);
            case 12:
                return obj instanceof zzfx ? zzgs.zzc((zzfx) obj) : zzgs.zzd((byte[]) obj);
            case 13:
                return zzgs.zzas(((Integer) obj).intValue());
            case 14:
                return zzgs.zzav(((Integer) obj).intValue());
            case 15:
                return zzgs.zzm(((Long) obj).longValue());
            case 16:
                return zzgs.zzat(((Integer) obj).intValue());
            case 17:
                return zzgs.zzk(((Long) obj).longValue());
            case 18:
                return obj instanceof zzhl ? zzgs.zzaw(((zzhl) obj).zzgn()) : zzgs.zzaw(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzgp() == zzkr.MESSAGE) {
            if (key.zzgq()) {
                for (zziq zziqVar : (List) entry.getValue()) {
                    if (!zziqVar.isInitialized()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zziq) {
                return ((zziq) value).isInitialized();
            } else if (value instanceof zzhr) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        zziq zziqVar = value;
        if (value instanceof zzhr) {
            zziqVar = zzhr.zzhn();
        }
        if (key.zzgq()) {
            Object zza = zza((zzha<FieldDescriptorType>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zziqVar) {
                ((List) arrayList).add(zzn(obj));
            }
            this.zzqf.zza((zzjk<FieldDescriptorType, Object>) key, (FieldDescriptorType) arrayList);
        } else if (key.zzgp() != zzkr.MESSAGE) {
            this.zzqf.zza((zzjk<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzn(zziqVar));
        } else {
            Object zza2 = zza((zzha<FieldDescriptorType>) key);
            if (zza2 == null) {
                this.zzqf.zza((zzjk<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzn(zziqVar));
            } else {
                this.zzqf.zza((zzjk<FieldDescriptorType, Object>) key, (FieldDescriptorType) (zza2 instanceof zziv ? key.zza((zziv) zza2, (zziv) zziqVar) : key.zza(((zziq) zza2).zzgu(), (zziq) zziqVar).zzhb()));
            }
        }
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzgp() != zzkr.MESSAGE || key.zzgq() || key.zzgr()) ? zzb((zzhc<?>) key, value) : value instanceof zzhr ? zzgs.zzb(entry.getKey().zzgn(), (zzhr) value) : zzgs.zzb(entry.getKey().zzgn(), (zziq) value);
    }

    public static <T extends zzhc<T>> zzha<T> zzgi() {
        return zzqi;
    }

    private static Object zzn(Object obj) {
        if (obj instanceof zziv) {
            return ((zziv) obj).zzie();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final /* synthetic */ Object clone() {
        zzha zzhaVar = new zzha();
        for (int i = 0; i < this.zzqf.zzir(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzbm = this.zzqf.zzbm(i);
            zzhaVar.zza((zzha) zzbm.getKey(), zzbm.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzqf.zzis()) {
            zzhaVar.zza((zzha) entry.getKey(), entry.getValue());
        }
        zzhaVar.zzqh = this.zzqh;
        return zzhaVar;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        return this.zzqh ? new zzhw(this.zzqf.zzit().iterator()) : this.zzqf.zzit().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzha) {
            return this.zzqf.equals(((zzha) obj).zzqf);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzqf.hashCode();
    }

    public final boolean isImmutable() {
        return this.zzqg;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzqf.zzir(); i++) {
            if (!zzb(this.zzqf.zzbm(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzqf.zzis()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzqh ? new zzhw(this.zzqf.entrySet().iterator()) : this.zzqf.entrySet().iterator();
    }

    public final void zza(zzha<FieldDescriptorType> zzhaVar) {
        for (int i = 0; i < zzhaVar.zzqf.zzir(); i++) {
            zzc(zzhaVar.zzqf.zzbm(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzhaVar.zzqf.zzis()) {
            zzc(entry);
        }
    }

    public final void zzes() {
        if (this.zzqg) {
            return;
        }
        this.zzqf.zzes();
        this.zzqg = true;
    }

    public final int zzgj() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzqf.zzir(); i2++) {
            i += zzd(this.zzqf.zzbm(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzqf.zzis()) {
            i += zzd(entry);
        }
        return i;
    }
}
