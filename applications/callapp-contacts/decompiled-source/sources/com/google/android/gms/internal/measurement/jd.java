package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jd.class */
public enum jd {
    DOUBLE(je.DOUBLE, 1),
    FLOAT(je.FLOAT, 5),
    INT64(je.LONG, 0),
    UINT64(je.LONG, 0),
    INT32(je.INT, 0),
    FIXED64(je.LONG, 1),
    FIXED32(je.INT, 5),
    BOOL(je.BOOLEAN, 0),
    STRING(je.STRING, 2),
    GROUP(je.MESSAGE, 3),
    MESSAGE(je.MESSAGE, 2),
    BYTES(je.BYTE_STRING, 2),
    UINT32(je.INT, 0),
    ENUM(je.ENUM, 0),
    SFIXED32(je.INT, 5),
    SFIXED64(je.LONG, 1),
    SINT32(je.INT, 0),
    SINT64(je.LONG, 0);
    
    private final je zzs;

    jd(je jeVar, int i) {
        this.zzs = jeVar;
    }

    public final je zza() {
        return this.zzs;
    }
}
