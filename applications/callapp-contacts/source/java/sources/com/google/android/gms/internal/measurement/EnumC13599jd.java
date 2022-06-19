package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.jd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jd.class */
public enum EnumC13599jd {
    DOUBLE(EnumC13600je.DOUBLE, 1),
    FLOAT(EnumC13600je.FLOAT, 5),
    INT64(EnumC13600je.LONG, 0),
    UINT64(EnumC13600je.LONG, 0),
    INT32(EnumC13600je.INT, 0),
    FIXED64(EnumC13600je.LONG, 1),
    FIXED32(EnumC13600je.INT, 5),
    BOOL(EnumC13600je.BOOLEAN, 0),
    STRING(EnumC13600je.STRING, 2),
    GROUP(EnumC13600je.MESSAGE, 3),
    MESSAGE(EnumC13600je.MESSAGE, 2),
    BYTES(EnumC13600je.BYTE_STRING, 2),
    UINT32(EnumC13600je.INT, 0),
    ENUM(EnumC13600je.ENUM, 0),
    SFIXED32(EnumC13600je.INT, 5),
    SFIXED64(EnumC13600je.LONG, 1),
    SINT32(EnumC13600je.INT, 0),
    SINT64(EnumC13600je.LONG, 0);
    
    private final EnumC13600je zzs;

    EnumC13599jd(EnumC13600je enumC13600je, int i) {
        this.zzs = enumC13600je;
    }

    public final EnumC13600je zza() {
        return this.zzs;
    }
}
