package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Field;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzed.class */
public final class zzed {
    private final int flags;
    private final Object[] zzmj;
    private final int zzmk;
    private final int zzml;
    private final int zzmm;
    private final int[] zzms;
    private final zzee zznh;
    private Class<?> zzni;
    private final int zznj;
    private final int zznk;
    private final int zznl;
    private final int zznm;
    private final int zznn;
    private final int zzno;
    private int zznp;
    private int zznq;
    private int zznr = Integer.MAX_VALUE;
    private int zzns = Integer.MIN_VALUE;
    private int zznt = 0;
    private int zznu = 0;
    private int zznv = 0;
    private int zznw = 0;
    private int zznx = 0;
    private int zzny;
    private int zznz;
    private int zzoa;
    private int zzob;
    private int zzoc;
    private Field zzod;
    private Object zzoe;
    private Object zzof;
    private Object zzog;

    public zzed(Class<?> cls, String str, Object[] objArr) {
        this.zzni = cls;
        zzee zzeeVar = new zzee(str);
        this.zznh = zzeeVar;
        this.zzmj = objArr;
        this.flags = zzeeVar.next();
        int next = zzeeVar.next();
        this.zznj = next;
        int[] iArr = null;
        if (next == 0) {
            this.zznk = 0;
            this.zznl = 0;
            this.zzmk = 0;
            this.zzml = 0;
            this.zznm = 0;
            this.zznn = 0;
            this.zzmm = 0;
            this.zzno = 0;
            this.zzms = null;
            return;
        }
        int next2 = zzeeVar.next();
        this.zznk = next2;
        int next3 = zzeeVar.next();
        this.zznl = next3;
        this.zzmk = zzeeVar.next();
        this.zzml = zzeeVar.next();
        this.zznn = zzeeVar.next();
        this.zzmm = zzeeVar.next();
        this.zznm = zzeeVar.next();
        this.zzno = zzeeVar.next();
        int next4 = zzeeVar.next();
        this.zzms = next4 != 0 ? new int[next4] : iArr;
        this.zznp = (next2 << 1) + next3;
    }

    public static /* synthetic */ int zza(zzed zzedVar) {
        return zzedVar.flags;
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            throw new RuntimeException(C22128a.m8618h(C22128a.m8736A(C22128a.m8623f2(arrays, name.length() + C22128a.m8623f2(str, 40)), "Field ", str, " for ", name), " not found. Known fields are ", arrays));
        }
    }

    public static /* synthetic */ int zzb(zzed zzedVar) {
        return zzedVar.zzmk;
    }

    public static /* synthetic */ int zzc(zzed zzedVar) {
        return zzedVar.zzml;
    }

    private final Object zzcw() {
        Object[] objArr = this.zzmj;
        int i = this.zznp;
        this.zznp = i + 1;
        return objArr[i];
    }

    private final boolean zzcz() {
        return (this.flags & 1) == 1;
    }

    public static /* synthetic */ int zzd(zzed zzedVar) {
        return zzedVar.zznj;
    }

    public static /* synthetic */ int zze(zzed zzedVar) {
        return zzedVar.zznm;
    }

    public static /* synthetic */ int zzf(zzed zzedVar) {
        return zzedVar.zzno;
    }

    public static /* synthetic */ int[] zzg(zzed zzedVar) {
        return zzedVar.zzms;
    }

    public static /* synthetic */ int zzh(zzed zzedVar) {
        return zzedVar.zznn;
    }

    public static /* synthetic */ int zzi(zzed zzedVar) {
        return zzedVar.zzmm;
    }

    public final boolean next() {
        int i;
        Class<?> type;
        if (!this.zznh.hasNext()) {
            return false;
        }
        this.zzny = this.zznh.next();
        int next = this.zznh.next();
        this.zznz = next;
        int i2 = next & 255;
        this.zzoa = i2;
        int i3 = this.zzny;
        if (i3 < this.zznr) {
            this.zznr = i3;
        }
        if (i3 > this.zzns) {
            this.zzns = i3;
        }
        zzcb zzcbVar = zzcb.MAP;
        if (i2 == zzcbVar.m38720id()) {
            this.zznt++;
        } else if (this.zzoa >= zzcb.DOUBLE_LIST.m38720id() && this.zzoa <= zzcb.GROUP_LIST.m38720id()) {
            this.zznu++;
        }
        int i4 = this.zznx + 1;
        this.zznx = i4;
        if (zzeh.zzc(this.zznr, this.zzny, i4)) {
            int i5 = this.zzny + 1;
            this.zznw = i5;
            i = i5 - this.zznr;
        } else {
            i = this.zznv + 1;
        }
        this.zznv = i;
        if ((this.zznz & 1024) != 0) {
            int[] iArr = this.zzms;
            int i6 = this.zznq;
            this.zznq = i6 + 1;
            iArr[i6] = this.zzny;
        }
        this.zzoe = null;
        this.zzof = null;
        this.zzog = null;
        if (zzda()) {
            this.zzob = this.zznh.next();
            if (this.zzoa != zzcb.MESSAGE.m38720id() + 51 && this.zzoa != zzcb.GROUP.m38720id() + 51) {
                if (this.zzoa != zzcb.ENUM.m38720id() + 51 || !zzcz()) {
                    return true;
                }
                this.zzof = zzcw();
                return true;
            }
            type = zzcw();
        } else {
            this.zzod = zza(this.zzni, (String) zzcw());
            if (zzde()) {
                this.zzoc = this.zznh.next();
            }
            if (this.zzoa == zzcb.MESSAGE.m38720id() || this.zzoa == zzcb.GROUP.m38720id()) {
                type = this.zzod.getType();
            } else {
                if (this.zzoa != zzcb.MESSAGE_LIST.m38720id() && this.zzoa != zzcb.GROUP_LIST.m38720id()) {
                    if (this.zzoa == zzcb.ENUM.m38720id() || this.zzoa == zzcb.ENUM_LIST.m38720id() || this.zzoa == zzcb.ENUM_LIST_PACKED.m38720id()) {
                        if (!zzcz()) {
                            return true;
                        }
                    } else if (this.zzoa != zzcbVar.m38720id()) {
                        return true;
                    } else {
                        this.zzog = zzcw();
                        boolean z = false;
                        if ((this.zznz & 2048) != 0) {
                            z = true;
                        }
                        if (!z) {
                            return true;
                        }
                    }
                    this.zzof = zzcw();
                    return true;
                }
                type = zzcw();
            }
        }
        this.zzoe = type;
        return true;
    }

    public final int zzcx() {
        return this.zzny;
    }

    public final int zzcy() {
        return this.zzoa;
    }

    public final boolean zzda() {
        return this.zzoa > zzcb.MAP.m38720id();
    }

    public final Field zzdb() {
        int i = this.zzob << 1;
        Object obj = this.zzmj[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field zza = zza(this.zzni, (String) obj);
        this.zzmj[i] = zza;
        return zza;
    }

    public final Field zzdc() {
        int i = (this.zzob << 1) + 1;
        Object obj = this.zzmj[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field zza = zza(this.zzni, (String) obj);
        this.zzmj[i] = zza;
        return zza;
    }

    public final Field zzdd() {
        return this.zzod;
    }

    public final boolean zzde() {
        return zzcz() && this.zzoa <= zzcb.GROUP.m38720id();
    }

    public final Field zzdf() {
        int i = (this.zzoc / 32) + (this.zznk << 1);
        Object obj = this.zzmj[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field zza = zza(this.zzni, (String) obj);
        this.zzmj[i] = zza;
        return zza;
    }

    public final int zzdg() {
        return this.zzoc % 32;
    }

    public final boolean zzdh() {
        return (this.zznz & 256) != 0;
    }

    public final boolean zzdi() {
        return (this.zznz & 512) != 0;
    }

    public final Object zzdj() {
        return this.zzoe;
    }

    public final Object zzdk() {
        return this.zzof;
    }

    public final Object zzdl() {
        return this.zzog;
    }
}
