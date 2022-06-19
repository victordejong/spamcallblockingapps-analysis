package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzjw;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzju.class */
public final class zzju<T extends zzjw<T>> {
    private static final zzju zzd = new zzju(true);
    public final zzmf<T, Object> zza;
    private boolean zzb;
    private boolean zzc;

    private zzju() {
        this.zza = zzmf.zza(16);
    }

    private zzju(zzmf<T, Object> zzmfVar) {
        this.zza = zzmfVar;
        zzb();
    }

    private zzju(boolean z) {
        this(zzmf.zza(0));
        zzb();
    }

    public static int zza(zzjw<?> zzjwVar, Object obj) {
        zzng zzb = zzjwVar.zzb();
        int zza = zzjwVar.zza();
        if (zzjwVar.zzd()) {
            int i = 0;
            if (zzjwVar.zze()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzb, obj2);
                }
                return zzjp.zzl(i) + zzjp.zze(zza) + i;
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

    public static int zza(zzng zzngVar, int i, Object obj) {
        int zze = zzjp.zze(i);
        int i2 = zze;
        if (zzngVar == zzng.GROUP) {
            zzkf.zza((zzlk) obj);
            i2 = zze << 1;
        }
        return i2 + zzb(zzngVar, obj);
    }

    public static <T extends zzjw<T>> zzju<T> zza() {
        return zzd;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        zzlk zzlkVar = obj;
        if (obj instanceof zzkp) {
            zzkp zzkpVar = (zzkp) obj;
            zzlkVar = zzkp.zza();
        }
        return zzlkVar;
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzlq) {
            return ((zzlq) obj).zza();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static void zza(zzjp zzjpVar, zzng zzngVar, int i, Object obj) throws IOException {
        if (zzngVar == zzng.GROUP) {
            zzlk zzlkVar = (zzlk) obj;
            zzkf.zza(zzlkVar);
            zzjpVar.zza(i, 3);
            zzlkVar.zza(zzjpVar);
            zzjpVar.zza(i, 4);
            return;
        }
        zzjpVar.zza(i, zzngVar.zzb());
        switch (zzjx.zzb[zzngVar.ordinal()]) {
            case 1:
                zzjpVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzjpVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzjpVar.zza(((Long) obj).longValue());
                return;
            case 4:
                zzjpVar.zza(((Long) obj).longValue());
                return;
            case 5:
                zzjpVar.zza(((Integer) obj).intValue());
                return;
            case 6:
                zzjpVar.zzc(((Long) obj).longValue());
                return;
            case 7:
                zzjpVar.zzd(((Integer) obj).intValue());
                return;
            case 8:
                zzjpVar.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzlk) obj).zza(zzjpVar);
                return;
            case 10:
                zzjpVar.zza((zzlk) obj);
                return;
            case 11:
                if (obj instanceof zziy) {
                    zzjpVar.zza((zziy) obj);
                    return;
                } else {
                    zzjpVar.zza((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zziy) {
                    zzjpVar.zza((zziy) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzjpVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzjpVar.zzb(((Integer) obj).intValue());
                return;
            case 14:
                zzjpVar.zzd(((Integer) obj).intValue());
                return;
            case 15:
                zzjpVar.zzc(((Long) obj).longValue());
                return;
            case 16:
                zzjpVar.zzc(((Integer) obj).intValue());
                return;
            case 17:
                zzjpVar.zzb(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzke) {
                    zzjpVar.zza(((zzke) obj).zza());
                    return;
                } else {
                    zzjpVar.zza(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzng zzngVar, Object obj) {
        boolean z;
        zzkf.zza(obj);
        switch (zzjx.zza[zzngVar.zza().ordinal()]) {
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
                if (!(obj instanceof zziy)) {
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
                    if (obj instanceof zzke) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzlk)) {
                    if (obj instanceof zzkp) {
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

    private static <T extends zzjw<T>> boolean zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() == zznn.MESSAGE) {
            if (key.zzd()) {
                for (zzlk zzlkVar : (List) entry.getValue()) {
                    if (!zzlkVar.mo38714a_()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzlk) {
                return ((zzlk) value).mo38714a_();
            } else if (value instanceof zzkp) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private static int zzb(zzng zzngVar, Object obj) {
        switch (zzjx.zzb[zzngVar.ordinal()]) {
            case 1:
                return zzjp.zzb(((Double) obj).doubleValue());
            case 2:
                return zzjp.zzb(((Float) obj).floatValue());
            case 3:
                return zzjp.zzd(((Long) obj).longValue());
            case 4:
                return zzjp.zze(((Long) obj).longValue());
            case 5:
                return zzjp.zzf(((Integer) obj).intValue());
            case 6:
                return zzjp.zzg(((Long) obj).longValue());
            case 7:
                return zzjp.zzi(((Integer) obj).intValue());
            case 8:
                return zzjp.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzjp.zzc((zzlk) obj);
            case 10:
                return obj instanceof zzkp ? zzjp.zza((zzkp) obj) : zzjp.zzb((zzlk) obj);
            case 11:
                return obj instanceof zziy ? zzjp.zzb((zziy) obj) : zzjp.zzb((String) obj);
            case 12:
                return obj instanceof zziy ? zzjp.zzb((zziy) obj) : zzjp.zzb((byte[]) obj);
            case 13:
                return zzjp.zzg(((Integer) obj).intValue());
            case 14:
                return zzjp.zzj(((Integer) obj).intValue());
            case 15:
                return zzjp.zzh(((Long) obj).longValue());
            case 16:
                return zzjp.zzh(((Integer) obj).intValue());
            case 17:
                return zzjp.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzke ? zzjp.zzk(((zzke) obj).zza()) : zzjp.zzk(((Integer) obj).intValue());
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
        if (obj instanceof zzkp) {
            this.zzc = true;
        }
        this.zza.zza((zzmf<T, Object>) t, (T) obj);
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzlk zzlkVar = value;
        if (value instanceof zzkp) {
            zzkp zzkpVar = (zzkp) value;
            zzlkVar = zzkp.zza();
        }
        if (key.zzd()) {
            Object zza = zza((zzju<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzlkVar) {
                ((List) arrayList).add(zza(obj));
            }
            this.zza.zza((zzmf<T, Object>) key, (T) arrayList);
        } else if (key.zzc() != zznn.MESSAGE) {
            this.zza.zza((zzmf<T, Object>) key, (T) zza(zzlkVar));
        } else {
            Object zza2 = zza((zzju<T>) key);
            if (zza2 == null) {
                this.zza.zza((zzmf<T, Object>) key, (T) zza(zzlkVar));
            } else {
                this.zza.zza((zzmf<T, Object>) key, (T) (zza2 instanceof zzlq ? key.zza((zzlq) zza2, (zzlq) zzlkVar) : key.zza(((zzlk) zza2).zzm(), (zzlk) zzlkVar).zzh()));
            }
        }
    }

    private static int zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzc() != zznn.MESSAGE || key.zzd() || key.zze()) ? zza((zzjw<?>) key, value) : value instanceof zzkp ? zzjp.zzb(entry.getKey().zza(), (zzkp) value) : zzjp.zzb(entry.getKey().zza(), (zzlk) value);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzju zzjuVar = new zzju();
        for (int i = 0; i < this.zza.zzc(); i++) {
            Map.Entry<T, Object> zzb = this.zza.zzb(i);
            zzjuVar.zzb((zzju) zzb.getKey(), zzb.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzd()) {
            zzjuVar.zzb((zzju) entry.getKey(), entry.getValue());
        }
        zzjuVar.zzc = this.zzc;
        return zzjuVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzju) {
            return this.zza.equals(((zzju) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(zzju<T> zzjuVar) {
        for (int i = 0; i < zzjuVar.zza.zzc(); i++) {
            zzb(zzjuVar.zza.zzb(i));
        }
        for (Map.Entry<T, Object> entry : zzjuVar.zza.zzd()) {
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
        return this.zzc ? new zzkq(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zze() {
        return this.zzc ? new zzkq(this.zza.zze().iterator()) : this.zza.zze().iterator();
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
