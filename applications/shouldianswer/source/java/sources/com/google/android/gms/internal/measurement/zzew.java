package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzew.class */
public final class zzew<T extends zzey<T>> {
    private static final zzew zzd = new zzew(true);
    final zzhi<T, Object> zza;
    private boolean zzb;
    private boolean zzc;

    private zzew() {
        this.zza = zzhi.zza(16);
    }

    private zzew(zzhi<T, Object> zzhiVar) {
        this.zza = zzhiVar;
        zzb();
    }

    private zzew(boolean z) {
        this(zzhi.zza(0));
        zzb();
    }

    public static int zza(zzey<?> zzeyVar, Object obj) {
        zzim zzb = zzeyVar.zzb();
        int zza = zzeyVar.zza();
        if (zzeyVar.zzd()) {
            int i = 0;
            if (zzeyVar.zze()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzb, obj2);
                }
                return zzen.zze(zza) + i + zzen.zzl(i);
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

    public static int zza(zzim zzimVar, int i, Object obj) {
        int zze = zzen.zze(i);
        int i2 = zze;
        if (zzimVar == zzim.GROUP) {
            zzff.zza((zzgo) obj);
            i2 = zze << 1;
        }
        return i2 + zzb(zzimVar, obj);
    }

    public static <T extends zzey<T>> zzew<T> zza() {
        return zzd;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        zzgo zzgoVar = obj;
        if (obj instanceof zzfp) {
            zzfp zzfpVar = (zzfp) obj;
            zzgoVar = zzfp.zza();
        }
        return zzgoVar;
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzgt) {
            return ((zzgt) obj).zza();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static void zza(zzen zzenVar, zzim zzimVar, int i, Object obj) {
        if (zzimVar == zzim.GROUP) {
            zzgo zzgoVar = (zzgo) obj;
            zzff.zza(zzgoVar);
            zzenVar.zza(i, 3);
            zzgoVar.zza(zzenVar);
            zzenVar.zza(i, 4);
            return;
        }
        zzenVar.zza(i, zzimVar.zzb());
        switch (zzev.zzb[zzimVar.ordinal()]) {
            case 1:
                zzenVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzenVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzenVar.zza(((Long) obj).longValue());
                return;
            case 4:
                zzenVar.zza(((Long) obj).longValue());
                return;
            case 5:
                zzenVar.zza(((Integer) obj).intValue());
                return;
            case 6:
                zzenVar.zzc(((Long) obj).longValue());
                return;
            case 7:
                zzenVar.zzd(((Integer) obj).intValue());
                return;
            case 8:
                zzenVar.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzgo) obj).zza(zzenVar);
                return;
            case 10:
                zzenVar.zza((zzgo) obj);
                return;
            case 11:
                if (obj instanceof zzdu) {
                    zzenVar.zza((zzdu) obj);
                    return;
                } else {
                    zzenVar.zza((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzdu) {
                    zzenVar.zza((zzdu) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzenVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzenVar.zzb(((Integer) obj).intValue());
                return;
            case 14:
                zzenVar.zzd(((Integer) obj).intValue());
                return;
            case 15:
                zzenVar.zzc(((Long) obj).longValue());
                return;
            case 16:
                zzenVar.zzc(((Integer) obj).intValue());
                return;
            case 17:
                zzenVar.zzb(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzfi) {
                    zzenVar.zza(((zzfi) obj).zza());
                    return;
                } else {
                    zzenVar.zza(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzim zzimVar, Object obj) {
        boolean z;
        zzff.zza(obj);
        switch (zzev.zza[zzimVar.zza().ordinal()]) {
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
                if (!(obj instanceof zzdu)) {
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
                    if (obj instanceof zzfi) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzgo)) {
                    if (obj instanceof zzfp) {
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

    private static <T extends zzey<T>> boolean zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() == zzip.MESSAGE) {
            if (key.zzd()) {
                for (zzgo zzgoVar : (List) entry.getValue()) {
                    if (!zzgoVar.zzbl()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzgo) {
                return ((zzgo) value).zzbl();
            } else if (value instanceof zzfp) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private static int zzb(zzim zzimVar, Object obj) {
        switch (zzev.zzb[zzimVar.ordinal()]) {
            case 1:
                return zzen.zzb(((Double) obj).doubleValue());
            case 2:
                return zzen.zzb(((Float) obj).floatValue());
            case 3:
                return zzen.zzd(((Long) obj).longValue());
            case 4:
                return zzen.zze(((Long) obj).longValue());
            case 5:
                return zzen.zzf(((Integer) obj).intValue());
            case 6:
                return zzen.zzg(((Long) obj).longValue());
            case 7:
                return zzen.zzi(((Integer) obj).intValue());
            case 8:
                return zzen.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzen.zzc((zzgo) obj);
            case 10:
                return obj instanceof zzfp ? zzen.zza((zzfp) obj) : zzen.zzb((zzgo) obj);
            case 11:
                return obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((String) obj);
            case 12:
                return obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((byte[]) obj);
            case 13:
                return zzen.zzg(((Integer) obj).intValue());
            case 14:
                return zzen.zzj(((Integer) obj).intValue());
            case 15:
                return zzen.zzh(((Long) obj).longValue());
            case 16:
                return zzen.zzh(((Integer) obj).intValue());
            case 17:
                return zzen.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzfi ? zzen.zzk(((zzfi) obj).zza()) : zzen.zzk(((Integer) obj).intValue());
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
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(t.zzb(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzfp) {
            this.zzc = true;
        }
        this.zza.zza((zzhi<T, Object>) t, (T) obj);
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzgo zzgoVar = value;
        if (value instanceof zzfp) {
            zzfp zzfpVar = (zzfp) value;
            zzgoVar = zzfp.zza();
        }
        if (key.zzd()) {
            Object zza = zza((zzew<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzgoVar) {
                ((List) arrayList).add(zza(obj));
            }
            this.zza.zza((zzhi<T, Object>) key, (T) arrayList);
        } else if (key.zzc() != zzip.MESSAGE) {
            this.zza.zza((zzhi<T, Object>) key, (T) zza(zzgoVar));
        } else {
            Object zza2 = zza((zzew<T>) key);
            if (zza2 == null) {
                this.zza.zza((zzhi<T, Object>) key, (T) zza(zzgoVar));
            } else {
                this.zza.zza((zzhi<T, Object>) key, (T) (zza2 instanceof zzgt ? key.zza((zzgt) zza2, (zzgt) zzgoVar) : key.zza(((zzgo) zza2).zzbr(), (zzgo) zzgoVar).zzu()));
            }
        }
    }

    private static int zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzc() != zzip.MESSAGE || key.zzd() || key.zze()) ? zza((zzey<?>) key, value) : value instanceof zzfp ? zzen.zzb(entry.getKey().zza(), (zzfp) value) : zzen.zzb(entry.getKey().zza(), (zzgo) value);
    }

    public final /* synthetic */ Object clone() {
        zzew zzewVar = new zzew();
        for (int i = 0; i < this.zza.zzc(); i++) {
            Map.Entry<T, Object> zzb = this.zza.zzb(i);
            zzewVar.zzb((zzew) zzb.getKey(), zzb.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzd()) {
            zzewVar.zzb((zzew) entry.getKey(), entry.getValue());
        }
        zzewVar.zzc = this.zzc;
        return zzewVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzew) {
            return this.zza.equals(((zzew) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(zzew<T> zzewVar) {
        for (int i = 0; i < zzewVar.zza.zzc(); i++) {
            zzb(zzewVar.zza.zzb(i));
        }
        for (Map.Entry<T, Object> entry : zzewVar.zza.zzd()) {
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
        return this.zzc ? new zzfu(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zze() {
        return this.zzc ? new zzfu(this.zza.zze().iterator()) : this.zza.zze().iterator();
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
