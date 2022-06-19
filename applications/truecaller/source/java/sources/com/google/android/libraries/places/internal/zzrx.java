package com.google.android.libraries.places.internal;

import com.google.android.libraries.places.internal.zzrz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzrx.class */
public final class zzrx<T extends zzrz<T>> {
    private static final zzrx zzd = new zzrx(true);
    public final zzuj<T, Object> zza;
    private boolean zzb;
    private boolean zzc;

    private zzrx() {
        this.zza = zzuj.zza(16);
    }

    private zzrx(zzuj<T, Object> zzujVar) {
        this.zza = zzujVar;
        zzb();
    }

    private zzrx(boolean z) {
        this(zzuj.zza(0));
        zzb();
    }

    public static int zza(zzrz<?> zzrzVar, Object obj) {
        zzvk zzb = zzrzVar.zzb();
        int zza = zzrzVar.zza();
        if (zzrzVar.zzd()) {
            int i = 0;
            if (zzrzVar.zze()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzb, obj2);
                }
                return zzrs.zzl(i) + zzrs.zze(zza) + i;
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

    public static int zza(zzvk zzvkVar, int i, Object obj) {
        int zze = zzrs.zze(i);
        int i2 = zze;
        if (zzvkVar == zzvk.zzj) {
            zzsg.zza((zzto) obj);
            i2 = zze << 1;
        }
        return i2 + zzb(zzvkVar, obj);
    }

    public static <T extends zzrz<T>> zzrx<T> zza() {
        return zzd;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        zzto zztoVar = obj;
        if (obj instanceof zzst) {
            zzst zzstVar = (zzst) obj;
            zztoVar = zzst.zza();
        }
        return zztoVar;
    }

    private static Object zza(Object obj) {
        if (obj instanceof zztu) {
            return ((zztu) obj).zza();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static void zza(zzrs zzrsVar, zzvk zzvkVar, int i, Object obj) throws IOException {
        if (zzvkVar == zzvk.zzj) {
            zzto zztoVar = (zzto) obj;
            zzsg.zza(zztoVar);
            zzrsVar.zza(i, 3);
            zztoVar.zza(zzrsVar);
            zzrsVar.zza(i, 4);
            return;
        }
        zzrsVar.zza(i, zzvkVar.zzb());
        switch (zzsa.zzb[zzvkVar.ordinal()]) {
            case 1:
                zzrsVar.zza(((Double) obj).doubleValue());
                return;
            case 2:
                zzrsVar.zza(((Float) obj).floatValue());
                return;
            case 3:
                zzrsVar.zza(((Long) obj).longValue());
                return;
            case 4:
                zzrsVar.zza(((Long) obj).longValue());
                return;
            case 5:
                zzrsVar.zza(((Integer) obj).intValue());
                return;
            case 6:
                zzrsVar.zzc(((Long) obj).longValue());
                return;
            case 7:
                zzrsVar.zzd(((Integer) obj).intValue());
                return;
            case 8:
                zzrsVar.zza(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzto) obj).zza(zzrsVar);
                return;
            case 10:
                zzrsVar.zza((zzto) obj);
                return;
            case 11:
                if (obj instanceof zzrb) {
                    zzrsVar.zza((zzrb) obj);
                    return;
                } else {
                    zzrsVar.zza((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzrb) {
                    zzrsVar.zza((zzrb) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzrsVar.zzb(bArr, 0, bArr.length);
                return;
            case 13:
                zzrsVar.zzb(((Integer) obj).intValue());
                return;
            case 14:
                zzrsVar.zzd(((Integer) obj).intValue());
                return;
            case 15:
                zzrsVar.zzc(((Long) obj).longValue());
                return;
            case 16:
                zzrsVar.zzc(((Integer) obj).intValue());
                return;
            case 17:
                zzrsVar.zzb(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzsj) {
                    zzrsVar.zza(((zzsj) obj).zza());
                    return;
                } else {
                    zzrsVar.zza(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzvk zzvkVar, Object obj) {
        boolean z;
        zzsg.zza(obj);
        switch (zzsa.zza[zzvkVar.zza().ordinal()]) {
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
                if (!(obj instanceof zzrb)) {
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
                    if (obj instanceof zzsj) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzto)) {
                    if (obj instanceof zzst) {
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

    private static <T extends zzrz<T>> boolean zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() == zzvr.MESSAGE) {
            if (key.zzd()) {
                for (zzto zztoVar : (List) entry.getValue()) {
                    if (!zztoVar.zzc()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzto) {
                return ((zzto) value).zzc();
            } else if (value instanceof zzst) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private static int zzb(zzvk zzvkVar, Object obj) {
        switch (zzsa.zzb[zzvkVar.ordinal()]) {
            case 1:
                return zzrs.zzb(((Double) obj).doubleValue());
            case 2:
                return zzrs.zzb(((Float) obj).floatValue());
            case 3:
                return zzrs.zzd(((Long) obj).longValue());
            case 4:
                return zzrs.zze(((Long) obj).longValue());
            case 5:
                return zzrs.zzf(((Integer) obj).intValue());
            case 6:
                return zzrs.zzg(((Long) obj).longValue());
            case 7:
                return zzrs.zzi(((Integer) obj).intValue());
            case 8:
                return zzrs.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzrs.zzc((zzto) obj);
            case 10:
                return obj instanceof zzst ? zzrs.zza((zzst) obj) : zzrs.zzb((zzto) obj);
            case 11:
                return obj instanceof zzrb ? zzrs.zzb((zzrb) obj) : zzrs.zzb((String) obj);
            case 12:
                return obj instanceof zzrb ? zzrs.zzb((zzrb) obj) : zzrs.zzb((byte[]) obj);
            case 13:
                return zzrs.zzg(((Integer) obj).intValue());
            case 14:
                return zzrs.zzj(((Integer) obj).intValue());
            case 15:
                return zzrs.zzh(((Long) obj).longValue());
            case 16:
                return zzrs.zzh(((Integer) obj).intValue());
            case 17:
                return zzrs.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzsj ? zzrs.zzk(((zzsj) obj).zza()) : zzrs.zzk(((Integer) obj).intValue());
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
        if (obj instanceof zzst) {
            this.zzc = true;
        }
        this.zza.zza((zzuj<T, Object>) t, (T) obj);
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzto zztoVar = value;
        if (value instanceof zzst) {
            zzst zzstVar = (zzst) value;
            zztoVar = zzst.zza();
        }
        if (key.zzd()) {
            Object zza = zza((zzrx<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zztoVar) {
                ((List) arrayList).add(zza(obj));
            }
            this.zza.zza((zzuj<T, Object>) key, (T) arrayList);
        } else if (key.zzc() != zzvr.MESSAGE) {
            this.zza.zza((zzuj<T, Object>) key, (T) zza(zztoVar));
        } else {
            Object zza2 = zza((zzrx<T>) key);
            if (zza2 == null) {
                this.zza.zza((zzuj<T, Object>) key, (T) zza(zztoVar));
            } else {
                this.zza.zza((zzuj<T, Object>) key, (T) (zza2 instanceof zztu ? key.zza((zztu) zza2, (zztu) zztoVar) : key.zza(((zzto) zza2).zzl(), (zzto) zztoVar).zzg()));
            }
        }
    }

    private static int zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzc() != zzvr.MESSAGE || key.zzd() || key.zze()) ? zza((zzrz<?>) key, value) : value instanceof zzst ? zzrs.zzb(entry.getKey().zza(), (zzst) value) : zzrs.zzb(entry.getKey().zza(), (zzto) value);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzrx zzrxVar = new zzrx();
        for (int i = 0; i < this.zza.zzc(); i++) {
            Map.Entry<T, Object> zzb = this.zza.zzb(i);
            zzrxVar.zzb((zzrx) zzb.getKey(), zzb.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzd()) {
            zzrxVar.zzb((zzrx) entry.getKey(), entry.getValue());
        }
        zzrxVar.zzc = this.zzc;
        return zzrxVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzrx) {
            return this.zza.equals(((zzrx) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(zzrx<T> zzrxVar) {
        for (int i = 0; i < zzrxVar.zza.zzc(); i++) {
            zzb(zzrxVar.zza.zzb(i));
        }
        for (Map.Entry<T, Object> entry : zzrxVar.zza.zzd()) {
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
        return this.zzc ? new zzsu(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zze() {
        return this.zzc ? new zzsu(this.zza.zze().iterator()) : this.zza.zze().iterator();
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
