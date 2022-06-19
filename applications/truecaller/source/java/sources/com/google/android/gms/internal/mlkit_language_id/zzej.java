package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.internal.mlkit_language_id.zzel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzej.class */
public final class zzej<T extends zzel<T>> {
    private static final zzej zzd = new zzej(true);
    public final zzgq<T, Object> zza;
    private boolean zzb;
    private boolean zzc;

    private zzej() {
        this.zza = zzgq.zza(16);
    }

    private zzej(zzgq<T, Object> zzgqVar) {
        this.zza = zzgqVar;
        zzb();
    }

    private zzej(boolean z) {
        this(zzgq.zza(0));
        zzb();
    }

    public static int zza(zzel<?> zzelVar, Object obj) {
        zzhv zzb = zzelVar.zzb();
        int zza = zzelVar.zza();
        if (zzelVar.zzd()) {
            int i = 0;
            if (zzelVar.zze()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzb, obj2);
                }
                return zzea.zzl(i) + zzea.zze(zza) + i;
            }
            Iterator it = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + zza(zzb, zza, it.next());
            }
        } else {
            return zza(zzb, zza, obj);
        }
    }

    public static int zza(zzhv zzhvVar, int i, Object obj) {
        int zze = zzea.zze(i);
        int i2 = zze;
        if (zzhvVar == zzhv.GROUP) {
            zzeq.zza((zzfz) obj);
            i2 = zze << 1;
        }
        return i2 + zzb(zzhvVar, obj);
    }

    public static <T extends zzel<T>> zzej<T> zza() {
        return zzd;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        zzfz zzfzVar = obj;
        if (obj instanceof zzfa) {
            zzfa zzfaVar = (zzfa) obj;
            zzfzVar = zzfa.zza();
        }
        return zzfzVar;
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzgf) {
            return ((zzgf) obj).zza();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static void zza(zzea zzeaVar, zzhv zzhvVar, int i, Object obj) throws IOException {
        if (zzhvVar == zzhv.GROUP) {
            zzfz zzfzVar = (zzfz) obj;
            zzeq.zza(zzfzVar);
            zzeaVar.zza(i, 3);
            zzfzVar.zza(zzeaVar);
            zzeaVar.zza(i, 4);
            return;
        }
        zzeaVar.zza(i, zzhvVar.zzb());
        switch (zzei.zzb[zzhvVar.ordinal()]) {
            case 1:
                zzeaVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzeaVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzeaVar.zza(((Long) obj).longValue());
                return;
            case 4:
                zzeaVar.zza(((Long) obj).longValue());
                return;
            case 5:
                zzeaVar.zza(((Integer) obj).intValue());
                return;
            case 6:
                zzeaVar.zzc(((Long) obj).longValue());
                return;
            case 7:
                zzeaVar.zzd(((Integer) obj).intValue());
                return;
            case 8:
                zzeaVar.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzfz) obj).zza(zzeaVar);
                return;
            case 10:
                zzeaVar.zza((zzfz) obj);
                return;
            case 11:
                if (obj instanceof zzdn) {
                    zzeaVar.zza((zzdn) obj);
                    return;
                } else {
                    zzeaVar.zza((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzdn) {
                    zzeaVar.zza((zzdn) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzeaVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzeaVar.zzb(((Integer) obj).intValue());
                return;
            case 14:
                zzeaVar.zzd(((Integer) obj).intValue());
                return;
            case 15:
                zzeaVar.zzc(((Long) obj).longValue());
                return;
            case 16:
                zzeaVar.zzc(((Integer) obj).intValue());
                return;
            case 17:
                zzeaVar.zzb(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzet) {
                    zzeaVar.zza(((zzet) obj).zza());
                    return;
                } else {
                    zzeaVar.zza(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzhv zzhvVar, Object obj) {
        boolean z;
        zzeq.zza(obj);
        switch (zzei.zza[zzhvVar.zza().ordinal()]) {
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
                if (!(obj instanceof zzdn)) {
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
                    if (obj instanceof zzet) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzfz)) {
                    if (obj instanceof zzfa) {
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

    private static <T extends zzel<T>> boolean zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() == zzhy.MESSAGE) {
            if (key.zzd()) {
                for (zzfz zzfzVar : (List) entry.getValue()) {
                    if (!zzfzVar.zzi()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzfz) {
                return ((zzfz) value).zzi();
            } else if (value instanceof zzfa) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private static int zzb(zzhv zzhvVar, Object obj) {
        switch (zzei.zzb[zzhvVar.ordinal()]) {
            case 1:
                return zzea.zzb(((Double) obj).doubleValue());
            case 2:
                return zzea.zzb(((Float) obj).floatValue());
            case 3:
                return zzea.zzd(((Long) obj).longValue());
            case 4:
                return zzea.zze(((Long) obj).longValue());
            case 5:
                return zzea.zzf(((Integer) obj).intValue());
            case 6:
                return zzea.zzg(((Long) obj).longValue());
            case 7:
                return zzea.zzi(((Integer) obj).intValue());
            case 8:
                return zzea.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzea.zzc((zzfz) obj);
            case 10:
                return obj instanceof zzfa ? zzea.zza((zzfa) obj) : zzea.zzb((zzfz) obj);
            case 11:
                return obj instanceof zzdn ? zzea.zzb((zzdn) obj) : zzea.zzb((String) obj);
            case 12:
                return obj instanceof zzdn ? zzea.zzb((zzdn) obj) : zzea.zzb((byte[]) obj);
            case 13:
                return zzea.zzg(((Integer) obj).intValue());
            case 14:
                return zzea.zzj(((Integer) obj).intValue());
            case 15:
                return zzea.zzh(((Long) obj).longValue());
            case 16:
                return zzea.zzh(((Integer) obj).intValue());
            case 17:
                return zzea.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzet ? zzea.zzk(((zzet) obj).zza()) : zzea.zzk(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private final void zzb(T t, Object obj) {
        if (!t.zzd()) {
            zza(t.zzb(), obj);
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
                zza(t.zzb(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzfa) {
            this.zzc = true;
        }
        this.zza.zza((zzgq<T, Object>) t, (T) obj);
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzfz zzfzVar = value;
        if (value instanceof zzfa) {
            zzfa zzfaVar = (zzfa) value;
            zzfzVar = zzfa.zza();
        }
        if (key.zzd()) {
            Object zza = zza((zzej<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzfzVar) {
                ((List) arrayList).add(zza(obj));
            }
            this.zza.zza((zzgq<T, Object>) key, (T) arrayList);
        } else if (key.zzc() != zzhy.MESSAGE) {
            this.zza.zza((zzgq<T, Object>) key, (T) zza(zzfzVar));
        } else {
            Object zza2 = zza((zzej<T>) key);
            if (zza2 == null) {
                this.zza.zza((zzgq<T, Object>) key, (T) zza(zzfzVar));
            } else {
                this.zza.zza((zzgq<T, Object>) key, (T) (zza2 instanceof zzgf ? key.zza((zzgf) zza2, (zzgf) zzfzVar) : key.zza(((zzfz) zza2).zzm(), (zzfz) zzfzVar).zzg()));
            }
        }
    }

    private static int zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzc() != zzhy.MESSAGE || key.zzd() || key.zze()) ? zza((zzel<?>) key, value) : value instanceof zzfa ? zzea.zzb(entry.getKey().zza(), (zzfa) value) : zzea.zzb(entry.getKey().zza(), (zzfz) value);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzej zzejVar = new zzej();
        for (int i = 0; i < this.zza.zzc(); i++) {
            Map.Entry<T, Object> zzb = this.zza.zzb(i);
            zzejVar.zzb((zzej) zzb.getKey(), zzb.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzd()) {
            zzejVar.zzb((zzej) entry.getKey(), entry.getValue());
        }
        zzejVar.zzc = this.zzc;
        return zzejVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzej) {
            return this.zza.equals(((zzej) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(zzej<T> zzejVar) {
        for (int i = 0; i < zzejVar.zza.zzc(); i++) {
            zzb(zzejVar.zza.zzb(i));
        }
        for (Map.Entry<T, Object> entry : zzejVar.zza.zzd()) {
            zzb(entry);
        }
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        this.zza.zza();
        this.zzb = true;
    }

    public final boolean zzc() {
        return this.zzb;
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        return this.zzc ? new zzff(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zze() {
        return this.zzc ? new zzff(this.zza.zze().iterator()) : this.zza.zze().iterator();
    }

    public final boolean zzf() {
        for (int i = 0; i < this.zza.zzc(); i++) {
            if (!zza((Map.Entry) this.zza.zzb(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zza.zzd()) {
            if (!zza((Map.Entry) entry)) {
                return false;
            }
        }
        return true;
    }

    public final int zzg() {
        int i = 0;
        for (int i2 = 0; i2 < this.zza.zzc(); i2++) {
            i += zzc(this.zza.zzb(i2));
        }
        for (Map.Entry<T, Object> entry : this.zza.zzd()) {
            i += zzc(entry);
        }
        return i;
    }
}
