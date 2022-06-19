package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzekw;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeku.class */
public final class zzeku<T extends zzekw<T>> {
    private static final zzeku zzins = new zzeku(true);
    final zzeno<T, Object> zzinp;
    private boolean zzinq;
    private boolean zzinr;

    private zzeku() {
        this.zzinp = zzeno.zzht(16);
    }

    private zzeku(zzeno<T, Object> zzenoVar) {
        this.zzinp = zzenoVar;
        zzbgf();
    }

    private zzeku(boolean z) {
        this(zzeno.zzht(0));
        zzbgf();
    }

    public static int zza(zzeos zzeosVar, int i, Object obj) {
        int zzgv = zzekl.zzgv(i);
        int i2 = zzgv;
        if (zzeosVar == zzeos.GROUP) {
            zzeld.zzk((zzemo) obj);
            i2 = zzgv << 1;
        }
        return i2 + zzb(zzeosVar, obj);
    }

    private final Object zza(T t) {
        Object obj = this.zzinp.get(t);
        zzemo zzemoVar = obj;
        if (obj instanceof zzelp) {
            zzelp zzelpVar = (zzelp) obj;
            zzemoVar = zzelp.zzbjj();
        }
        return zzemoVar;
    }

    public static void zza(zzekl zzeklVar, zzeos zzeosVar, int i, Object obj) throws IOException {
        if (zzeosVar == zzeos.GROUP) {
            zzemo zzemoVar = (zzemo) obj;
            zzeld.zzk(zzemoVar);
            zzeklVar.writeTag(i, 3);
            zzemoVar.zzb(zzeklVar);
            zzeklVar.writeTag(i, 4);
            return;
        }
        zzeklVar.writeTag(i, zzeosVar.zzblj());
        switch (zzekt.zzimy[zzeosVar.ordinal()]) {
            case 1:
                zzeklVar.zzc(((Double) obj).doubleValue());
                return;
            case 2:
                zzeklVar.zzf(((Float) obj).floatValue());
                return;
            case 3:
                zzeklVar.zzfh(((Long) obj).longValue());
                return;
            case 4:
                zzeklVar.zzfh(((Long) obj).longValue());
                return;
            case 5:
                zzeklVar.zzgr(((Integer) obj).intValue());
                return;
            case 6:
                zzeklVar.zzfj(((Long) obj).longValue());
                return;
            case 7:
                zzeklVar.zzgu(((Integer) obj).intValue());
                return;
            case 8:
                zzeklVar.zzbr(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzemo) obj).zzb(zzeklVar);
                return;
            case 10:
                zzeklVar.zzg((zzemo) obj);
                return;
            case 11:
                if (obj instanceof zzejr) {
                    zzeklVar.zzai((zzejr) obj);
                    return;
                } else {
                    zzeklVar.zzhz((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzejr) {
                    zzeklVar.zzai((zzejr) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzeklVar.zzk(bArr, 0, bArr.length);
                return;
            case 13:
                zzeklVar.zzgs(((Integer) obj).intValue());
                return;
            case 14:
                zzeklVar.zzgu(((Integer) obj).intValue());
                return;
            case 15:
                zzeklVar.zzfj(((Long) obj).longValue());
                return;
            case 16:
                zzeklVar.zzgt(((Integer) obj).intValue());
                return;
            case 17:
                zzeklVar.zzfi(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzelg) {
                    zzeklVar.zzgr(((zzelg) obj).zzv());
                    return;
                } else {
                    zzeklVar.zzgr(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    private final void zza(T t, Object obj) {
        if (!t.zzbif()) {
            zza(t.zzbid(), obj);
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
                zza(t.zzbid(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzelp) {
            this.zzinr = true;
        }
        this.zzinp.zza((zzeno<T, Object>) t, (T) obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zza(zzeos zzeosVar, Object obj) {
        boolean z;
        zzeld.checkNotNull(obj);
        switch (zzekt.zzino[zzeosVar.zzbli().ordinal()]) {
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
                if (!(obj instanceof zzejr)) {
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
                    if (obj instanceof zzelg) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzemo)) {
                    if (obj instanceof zzelp) {
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

    private static Object zzal(Object obj) {
        if (obj instanceof zzemt) {
            return ((zzemt) obj).zzbgb();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int zzb(zzekw<?> zzekwVar, Object obj) {
        zzeos zzbid = zzekwVar.zzbid();
        int zzv = zzekwVar.zzv();
        if (zzekwVar.zzbif()) {
            int i = 0;
            if (zzekwVar.zzbig()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzbid, obj2);
                }
                return zzekl.zzgv(zzv) + i + zzekl.zzhd(i);
            }
            Iterator it = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + zza(zzbid, zzv, it.next());
            }
        } else {
            return zza(zzbid, zzv, obj);
        }
    }

    private static int zzb(zzeos zzeosVar, Object obj) {
        switch (zzekt.zzimy[zzeosVar.ordinal()]) {
            case 1:
                return zzekl.zzd(((Double) obj).doubleValue());
            case 2:
                return zzekl.zzg(((Float) obj).floatValue());
            case 3:
                return zzekl.zzfk(((Long) obj).longValue());
            case 4:
                return zzekl.zzfl(((Long) obj).longValue());
            case 5:
                return zzekl.zzgw(((Integer) obj).intValue());
            case 6:
                return zzekl.zzfn(((Long) obj).longValue());
            case 7:
                return zzekl.zzgz(((Integer) obj).intValue());
            case 8:
                return zzekl.zzbs(((Boolean) obj).booleanValue());
            case 9:
                return zzekl.zzi((zzemo) obj);
            case 10:
                return obj instanceof zzelp ? zzekl.zza((zzelp) obj) : zzekl.zzh((zzemo) obj);
            case 11:
                return obj instanceof zzejr ? zzekl.zzaj((zzejr) obj) : zzekl.zzia((String) obj);
            case 12:
                return obj instanceof zzejr ? zzekl.zzaj((zzejr) obj) : zzekl.zzw((byte[]) obj);
            case 13:
                return zzekl.zzgx(((Integer) obj).intValue());
            case 14:
                return zzekl.zzha(((Integer) obj).intValue());
            case 15:
                return zzekl.zzfo(((Long) obj).longValue());
            case 16:
                return zzekl.zzgy(((Integer) obj).intValue());
            case 17:
                return zzekl.zzfm(((Long) obj).longValue());
            case 18:
                return obj instanceof zzelg ? zzekl.zzhb(((zzelg) obj).zzv()) : zzekl.zzhb(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static <T extends zzekw<T>> boolean zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzbie() == zzeov.MESSAGE) {
            if (key.zzbif()) {
                for (zzemo zzemoVar : (List) entry.getValue()) {
                    if (!zzemoVar.isInitialized()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof zzemo) {
                return ((zzemo) value).isInitialized();
            } else if (value instanceof zzelp) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    public static <T extends zzekw<T>> zzeku<T> zzbib() {
        return zzins;
    }

    private final void zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        zzemo zzemoVar = value;
        if (value instanceof zzelp) {
            zzelp zzelpVar = (zzelp) value;
            zzemoVar = zzelp.zzbjj();
        }
        if (key.zzbif()) {
            Object zza = zza((zzeku<T>) key);
            ArrayList arrayList = zza;
            if (zza == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) zzemoVar) {
                ((List) arrayList).add(zzal(obj));
            }
            this.zzinp.zza((zzeno<T, Object>) key, (T) arrayList);
        } else if (key.zzbie() != zzeov.MESSAGE) {
            this.zzinp.zza((zzeno<T, Object>) key, (T) zzal(zzemoVar));
        } else {
            Object zza2 = zza((zzeku<T>) key);
            if (zza2 == null) {
                this.zzinp.zza((zzeno<T, Object>) key, (T) zzal(zzemoVar));
            } else {
                this.zzinp.zza((zzeno<T, Object>) key, (T) (zza2 instanceof zzemt ? key.zza((zzemt) zza2, (zzemt) zzemoVar) : key.zza(((zzemo) zza2).zzbio(), (zzemo) zzemoVar).zzbiw()));
            }
        }
    }

    private static int zzd(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.zzbie() != zzeov.MESSAGE || key.zzbif() || key.zzbig()) ? zzb((zzekw<?>) key, value) : value instanceof zzelp ? zzekl.zzb(entry.getKey().zzv(), (zzelp) value) : zzekl.zzb(entry.getKey().zzv(), (zzemo) value);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzeku zzekuVar = new zzeku();
        for (int i = 0; i < this.zzinp.zzbkq(); i++) {
            Map.Entry<T, Object> zzhu = this.zzinp.zzhu(i);
            zzekuVar.zza((zzeku) zzhu.getKey(), zzhu.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zzinp.zzbkr()) {
            zzekuVar.zza((zzeku) entry.getKey(), entry.getValue());
        }
        zzekuVar.zzinr = this.zzinr;
        return zzekuVar;
    }

    public final Iterator<Map.Entry<T, Object>> descendingIterator() {
        return this.zzinr ? new zzelu(this.zzinp.zzbks().iterator()) : this.zzinp.zzbks().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzeku) {
            return this.zzinp.equals(((zzeku) obj).zzinp);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzinp.hashCode();
    }

    public final boolean isImmutable() {
        return this.zzinq;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzinp.zzbkq(); i++) {
            if (!zzb(this.zzinp.zzhu(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zzinp.zzbkr()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> iterator() {
        return this.zzinr ? new zzelu(this.zzinp.entrySet().iterator()) : this.zzinp.entrySet().iterator();
    }

    public final void zza(zzeku<T> zzekuVar) {
        for (int i = 0; i < zzekuVar.zzinp.zzbkq(); i++) {
            zzc(zzekuVar.zzinp.zzhu(i));
        }
        for (Map.Entry<T, Object> entry : zzekuVar.zzinp.zzbkr()) {
            zzc(entry);
        }
    }

    public final void zzbgf() {
        if (this.zzinq) {
            return;
        }
        this.zzinp.zzbgf();
        this.zzinq = true;
    }

    public final int zzbic() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzinp.zzbkq(); i2++) {
            i += zzd(this.zzinp.zzhu(i2));
        }
        for (Map.Entry<T, Object> entry : this.zzinp.zzbkr()) {
            i += zzd(entry);
        }
        return i;
    }
}
