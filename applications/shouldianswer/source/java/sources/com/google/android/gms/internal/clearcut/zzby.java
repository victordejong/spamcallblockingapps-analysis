package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzca;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzby.class */
public final class zzby<FieldDescriptorType extends zzca<FieldDescriptorType>> {
    private static final zzby zzgw = new zzby(true);
    private boolean zzgu;
    private boolean zzgv = false;
    private final zzei<FieldDescriptorType, Object> zzgt = zzei.zzaj(16);

    private zzby() {
    }

    private zzby(boolean z) {
        zzv();
    }

    public static int zza(zzfl zzflVar, int i, Object obj) {
        int zzr = zzbn.zzr(i);
        int i2 = zzr;
        if (zzflVar == zzfl.GROUP) {
            zzci.zzf((zzdo) obj);
            i2 = zzr << 1;
        }
        return i2 + zzb(zzflVar, obj);
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzgt.get(fielddescriptortype);
        zzdo zzdoVar = obj;
        if (obj instanceof zzcr) {
            zzdoVar = zzcr.zzbr();
        }
        return zzdoVar;
    }

    public static void zza(zzbn zzbnVar, zzfl zzflVar, int i, Object obj) {
        if (zzflVar == zzfl.GROUP) {
            zzdo zzdoVar = (zzdo) obj;
            zzci.zzf(zzdoVar);
            zzbnVar.zzb(i, 3);
            zzdoVar.zzb(zzbnVar);
            zzbnVar.zzb(i, 4);
            return;
        }
        zzbnVar.zzb(i, zzflVar.zzel());
        switch (zzbz.zzgq[zzflVar.ordinal()]) {
            case 1:
                zzbnVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzbnVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzbnVar.zzb(((Long) obj).longValue());
                return;
            case 4:
                zzbnVar.zzb(((Long) obj).longValue());
                return;
            case 5:
                zzbnVar.zzn(((Integer) obj).intValue());
                return;
            case 6:
                zzbnVar.zzd(((Long) obj).longValue());
                return;
            case 7:
                zzbnVar.zzq(((Integer) obj).intValue());
                return;
            case 8:
                zzbnVar.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzdo) obj).zzb(zzbnVar);
                return;
            case 10:
                zzbnVar.zzb((zzdo) obj);
                return;
            case 11:
                if (obj instanceof zzbb) {
                    zzbnVar.zza((zzbb) obj);
                    return;
                } else {
                    zzbnVar.zzg((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzbb) {
                    zzbnVar.zza((zzbb) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzbnVar.zzd(bArr, 0, bArr.length);
                return;
            case 13:
                zzbnVar.zzo(((Integer) obj).intValue());
                return;
            case 14:
                zzbnVar.zzq(((Integer) obj).intValue());
                return;
            case 15:
                zzbnVar.zzd(((Long) obj).longValue());
                return;
            case 16:
                zzbnVar.zzp(((Integer) obj).intValue());
                return;
            case 17:
                zzbnVar.zzc(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzcj) {
                    zzbnVar.zzn(((zzcj) obj).zzc());
                    return;
                } else {
                    zzbnVar.zzn(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzaw()) {
            zza(fielddescriptortype.zzau(), obj);
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
                zza(fielddescriptortype.zzau(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzcr) {
            this.zzgv = true;
        }
        this.zzgt.zza((zzei<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    private static void zza(zzfl zzflVar, Object obj) {
        boolean z;
        zzci.checkNotNull(obj);
        switch (zzbz.zzgx[zzflVar.zzek().ordinal()]) {
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
                if (!(obj instanceof zzbb)) {
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
                    if (obj instanceof zzcj) {
                        z = true;
                        break;
                    }
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzdo)) {
                    z = false;
                    if (obj instanceof zzcr) {
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

    public static <T extends zzca<T>> zzby<T> zzar() {
        return zzgw;
    }

    private static int zzb(zzca<?> zzcaVar, Object obj) {
        zzfl zzau = zzcaVar.zzau();
        int zzc = zzcaVar.zzc();
        if (zzcaVar.zzaw()) {
            int i = 0;
            List<Object> list = (List) obj;
            if (zzcaVar.zzax()) {
                for (Object obj2 : list) {
                    i += zzb(zzau, obj2);
                }
                return zzbn.zzr(zzc) + i + zzbn.zzz(i);
            }
            Iterator it = list.iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + zza(zzau, zzc, it.next());
            }
        } else {
            return zza(zzau, zzc, obj);
        }
    }

    private static int zzb(zzfl zzflVar, Object obj) {
        switch (zzbz.zzgq[zzflVar.ordinal()]) {
            case 1:
                return zzbn.zzb(((Double) obj).doubleValue());
            case 2:
                return zzbn.zzb(((Float) obj).floatValue());
            case 3:
                return zzbn.zze(((Long) obj).longValue());
            case 4:
                return zzbn.zzf(((Long) obj).longValue());
            case 5:
                return zzbn.zzs(((Integer) obj).intValue());
            case 6:
                return zzbn.zzh(((Long) obj).longValue());
            case 7:
                return zzbn.zzv(((Integer) obj).intValue());
            case 8:
                return zzbn.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzbn.zzd((zzdo) obj);
            case 10:
                return obj instanceof zzcr ? zzbn.zza((zzcr) obj) : zzbn.zzc((zzdo) obj);
            case 11:
                return obj instanceof zzbb ? zzbn.zzb((zzbb) obj) : zzbn.zzh((String) obj);
            case 12:
                return obj instanceof zzbb ? zzbn.zzb((zzbb) obj) : zzbn.zzd((byte[]) obj);
            case 13:
                return zzbn.zzt(((Integer) obj).intValue());
            case 14:
                return zzbn.zzw(((Integer) obj).intValue());
            case 15:
                return zzbn.zzi(((Long) obj).longValue());
            case 16:
                return zzbn.zzu(((Integer) obj).intValue());
            case 17:
                return zzbn.zzg(((Long) obj).longValue());
            case 18:
                return obj instanceof zzcj ? zzbn.zzx(((zzcj) obj).zzc()) : zzbn.zzx(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzav() == zzfq.MESSAGE) {
            boolean zzaw = key.zzaw();
            Object value = entry.getValue();
            if (!zzaw) {
                if (value instanceof zzdo) {
                    return ((zzdo) value).isInitialized();
                } else if (value instanceof zzcr) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
            for (zzdo zzdoVar : (List) value) {
                if (!zzdoVar.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        zzdo zzdoVar = value;
        if (value instanceof zzcr) {
            zzdoVar = zzcr.zzbr();
        }
        if (key.zzaw()) {
            Object zza = zza((zzby<FieldDescriptorType>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzdoVar) {
                ((List) arrayList).add(zzd(obj));
            }
            this.zzgt.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) arrayList);
        } else if (key.zzav() != zzfq.MESSAGE) {
            this.zzgt.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzd(zzdoVar));
        } else {
            Object zza2 = zza((zzby<FieldDescriptorType>) key);
            if (zza2 == null) {
                this.zzgt.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzd(zzdoVar));
            } else {
                this.zzgt.zza((zzei<FieldDescriptorType, Object>) key, (FieldDescriptorType) (zza2 instanceof zzdv ? key.zza((zzdv) zza2, (zzdv) zzdoVar) : key.zza(((zzdo) zza2).zzbc(), (zzdo) zzdoVar).zzbj()));
            }
        }
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzav() != zzfq.MESSAGE || key.zzaw() || key.zzax()) {
            return zzb((zzca<?>) key, value);
        }
        boolean z = value instanceof zzcr;
        int zzc = entry.getKey().zzc();
        return z ? zzbn.zzb(zzc, (zzcr) value) : zzbn.zzd(zzc, (zzdo) value);
    }

    private static Object zzd(Object obj) {
        if (obj instanceof zzdv) {
            return ((zzdv) obj).zzci();
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
        zzby zzbyVar = new zzby();
        for (int i = 0; i < this.zzgt.zzdr(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzak = this.zzgt.zzak(i);
            zzbyVar.zza((zzby) zzak.getKey(), zzak.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            zzbyVar.zza((zzby) entry.getKey(), entry.getValue());
        }
        zzbyVar.zzgv = this.zzgv;
        return zzbyVar;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        return this.zzgv ? new zzcu(this.zzgt.zzdt().iterator()) : this.zzgt.zzdt().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzby) {
            return this.zzgt.equals(((zzby) obj).zzgt);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzgt.hashCode();
    }

    public final boolean isEmpty() {
        return this.zzgt.isEmpty();
    }

    public final boolean isImmutable() {
        return this.zzgu;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzgt.zzdr(); i++) {
            if (!zzb(this.zzgt.zzak(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzgv ? new zzcu(this.zzgt.entrySet().iterator()) : this.zzgt.entrySet().iterator();
    }

    public final void zza(zzby<FieldDescriptorType> zzbyVar) {
        for (int i = 0; i < zzbyVar.zzgt.zzdr(); i++) {
            zzc(zzbyVar.zzgt.zzak(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzbyVar.zzgt.zzds()) {
            zzc(entry);
        }
    }

    public final int zzas() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzgt.zzdr(); i2++) {
            Map.Entry<FieldDescriptorType, Object> zzak = this.zzgt.zzak(i2);
            i += zzb((zzca<?>) zzak.getKey(), zzak.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            i += zzb((zzca<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    public final int zzat() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzgt.zzdr(); i2++) {
            i += zzd((Map.Entry) this.zzgt.zzak(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzgt.zzds()) {
            i += zzd((Map.Entry) entry);
        }
        return i;
    }

    public final void zzv() {
        if (this.zzgu) {
            return;
        }
        this.zzgt.zzv();
        this.zzgu = true;
    }
}
