package com.google.android.gms.internal.clearcut;

import androidx.customview.p026a.AbstractC0610a;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Field;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzed.class */
final class zzed {
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
    private int zznr = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    private int zzns = AbstractC0610a.INVALID_ID;
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
        this.zznh = new zzee(str);
        this.zzmj = objArr;
        this.flags = this.zznh.next();
        this.zznj = this.zznh.next();
        int[] iArr = null;
        if (this.zznj == 0) {
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
        this.zznk = this.zznh.next();
        this.zznl = this.zznh.next();
        this.zzmk = this.zznh.next();
        this.zzml = this.zznh.next();
        this.zznn = this.zznh.next();
        this.zzmm = this.zznh.next();
        this.zznm = this.zznh.next();
        this.zzno = this.zznh.next();
        int next = this.zznh.next();
        this.zzms = next != 0 ? new int[next] : iArr;
        this.zznp = (this.zznk << 1) + this.zznl;
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
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
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

    public final boolean next() {
        int i;
        Class<?> type;
        if (!this.zznh.hasNext()) {
            return false;
        }
        this.zzny = this.zznh.next();
        this.zznz = this.zznh.next();
        this.zzoa = this.zznz & 255;
        int i2 = this.zzny;
        if (i2 < this.zznr) {
            this.zznr = i2;
        }
        int i3 = this.zzny;
        if (i3 > this.zzns) {
            this.zzns = i3;
        }
        if (this.zzoa == zzcb.MAP.m3783id()) {
            this.zznt++;
        } else if (this.zzoa >= zzcb.DOUBLE_LIST.m3783id() && this.zzoa <= zzcb.GROUP_LIST.m3783id()) {
            this.zznu++;
        }
        this.zznx++;
        if (zzeh.zzc(this.zznr, this.zzny, this.zznx)) {
            this.zznw = this.zzny + 1;
            i = this.zznw - this.zznr;
        } else {
            i = this.zznv + 1;
        }
        this.zznv = i;
        if ((this.zznz & 1024) != 0) {
            int[] iArr = this.zzms;
            int i4 = this.zznq;
            this.zznq = i4 + 1;
            iArr[i4] = this.zzny;
        }
        this.zzoe = null;
        this.zzof = null;
        this.zzog = null;
        if (zzda()) {
            this.zzob = this.zznh.next();
            if (this.zzoa != zzcb.MESSAGE.m3783id() + 51 && this.zzoa != zzcb.GROUP.m3783id() + 51) {
                if (this.zzoa != zzcb.ENUM.m3783id() + 51 || !zzcz()) {
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
            if (this.zzoa == zzcb.MESSAGE.m3783id() || this.zzoa == zzcb.GROUP.m3783id()) {
                type = this.zzod.getType();
            } else {
                if (this.zzoa != zzcb.MESSAGE_LIST.m3783id() && this.zzoa != zzcb.GROUP_LIST.m3783id()) {
                    if (this.zzoa == zzcb.ENUM.m3783id() || this.zzoa == zzcb.ENUM_LIST.m3783id() || this.zzoa == zzcb.ENUM_LIST_PACKED.m3783id()) {
                        if (!zzcz()) {
                            return true;
                        }
                    } else if (this.zzoa != zzcb.MAP.m3783id()) {
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
        return this.zzoa > zzcb.MAP.m3783id();
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
        return zzcz() && this.zzoa <= zzcb.GROUP.m3783id();
    }

    public final Field zzdf() {
        int i = (this.zznk << 1) + (this.zzoc / 32);
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
