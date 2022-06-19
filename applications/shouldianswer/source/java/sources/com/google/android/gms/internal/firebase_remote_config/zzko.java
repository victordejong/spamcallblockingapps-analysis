package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzko.class */
public enum zzko {
    DOUBLE(zzkr.DOUBLE, 1),
    FLOAT(zzkr.FLOAT, 5),
    INT64(zzkr.LONG, 0),
    UINT64(zzkr.LONG, 0),
    INT32(zzkr.INT, 0),
    FIXED64(zzkr.LONG, 1),
    FIXED32(zzkr.INT, 5),
    BOOL(zzkr.BOOLEAN, 0),
    STRING(zzkr.STRING, 2) { // from class: com.google.android.gms.internal.firebase_remote_config.zzkn
    },
    GROUP(zzkr.MESSAGE, 3) { // from class: com.google.android.gms.internal.firebase_remote_config.zzkq
    },
    MESSAGE(zzkr.MESSAGE, 2) { // from class: com.google.android.gms.internal.firebase_remote_config.zzkp
    },
    BYTES(zzkr.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.firebase_remote_config.zzks
    },
    UINT32(zzkr.INT, 0),
    ENUM(zzkr.ENUM, 0),
    SFIXED32(zzkr.INT, 5),
    SFIXED64(zzkr.LONG, 1),
    SINT32(zzkr.INT, 0),
    SINT64(zzkr.LONG, 0);
    
    private final zzkr zzzb;
    private final int zzzc;

    zzko(zzkr zzkrVar, int i) {
        this.zzzb = zzkrVar;
        this.zzzc = i;
    }

    /* synthetic */ zzko(zzkr zzkrVar, int i, zzkl zzklVar) {
        this(zzkrVar, i);
    }

    public final zzkr zzjj() {
        return this.zzzb;
    }

    public final int zzjk() {
        return this.zzzc;
    }
}
