package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzaz.class */
public abstract class zzaz {
    private final void zza(boolean z, Object obj) {
        boolean z2;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (zzbt.isNull(obj)) {
            zzaw();
        } else if (obj instanceof String) {
            writeString((String) obj);
        } else {
            boolean z3 = true;
            if (obj instanceof Number) {
                if (z) {
                    writeString(obj.toString());
                } else if (obj instanceof BigDecimal) {
                    zza((BigDecimal) obj);
                } else if (obj instanceof BigInteger) {
                    zza((BigInteger) obj);
                } else if (obj instanceof Long) {
                    zza(((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    float floatValue = ((Number) obj).floatValue();
                    if (Float.isInfinite(floatValue) || Float.isNaN(floatValue)) {
                        z3 = false;
                    }
                    if (!z3) {
                        throw new IllegalArgumentException();
                    }
                    zza(floatValue);
                } else if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                    zze(((Number) obj).intValue());
                } else {
                    double doubleValue = ((Number) obj).doubleValue();
                    if (!(!Double.isInfinite(doubleValue) && !Double.isNaN(doubleValue))) {
                        throw new IllegalArgumentException();
                    }
                    zza(doubleValue);
                }
            } else if (obj instanceof Boolean) {
                writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof zzbw) {
                writeString(((zzbw) obj).zzbx());
            } else if ((obj instanceof Iterable) || cls.isArray()) {
                zzas();
                for (Object obj2 : zzco.zzi(obj)) {
                    zza(z, obj2);
                }
                zzat();
            } else if (cls.isEnum()) {
                String name = zzbz.zza((Enum) obj).getName();
                if (name == null) {
                    zzaw();
                } else {
                    writeString(name);
                }
            } else {
                zzau();
                boolean z4 = (obj instanceof Map) && !(obj instanceof zzby);
                zzbr zzc = z4 ? null : zzbr.zzc(cls);
                for (Map.Entry<String, Object> entry : zzbt.zzf(obj).entrySet()) {
                    Object value = entry.getValue();
                    if (value != null) {
                        String key = entry.getKey();
                        if (z4) {
                            z2 = z;
                        } else {
                            zzbz zzae = zzc.zzae(key);
                            Field zzbz = zzae == null ? null : zzae.zzbz();
                            z2 = (zzbz == null || zzbz.getAnnotation(zzbe.class) == null) ? false : true;
                        }
                        zzad(key);
                        zza(z2, value);
                    }
                }
                zzav();
            }
        }
    }

    public abstract void flush();

    public abstract void writeBoolean(boolean z);

    public abstract void writeString(String str);

    public abstract void zza(double d);

    public abstract void zza(float f);

    public abstract void zza(long j);

    public abstract void zza(BigDecimal bigDecimal);

    public abstract void zza(BigInteger bigInteger);

    public abstract void zzad(String str);

    public abstract void zzas();

    public abstract void zzat();

    public abstract void zzau();

    public abstract void zzav();

    public abstract void zzaw();

    public void zzax() {
    }

    public final void zzd(Object obj) {
        zza(false, obj);
    }

    public abstract void zze(int i);
}
