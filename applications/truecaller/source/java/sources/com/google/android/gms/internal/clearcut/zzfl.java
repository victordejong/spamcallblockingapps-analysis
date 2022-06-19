package com.google.android.gms.internal.clearcut;
/* JADX WARN: Init of enum zzqe can be incorrect */
/* JADX WARN: Init of enum zzqf can be incorrect */
/* JADX WARN: Init of enum zzqg can be incorrect */
/* JADX WARN: Init of enum zzqh can be incorrect */
/* JADX WARN: Init of enum zzqi can be incorrect */
/* JADX WARN: Init of enum zzql can be incorrect */
/* JADX WARN: Init of enum zzqm can be incorrect */
/* JADX WARN: Init of enum zzqo can be incorrect */
/* JADX WARN: Init of enum zzqq can be incorrect */
/* JADX WARN: Init of enum zzqr can be incorrect */
/* JADX WARN: Init of enum zzqs can be incorrect */
/* JADX WARN: Init of enum zzqt can be incorrect */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfl.class */
public enum zzfl {
    DOUBLE(zzfq.DOUBLE, 1),
    FLOAT(zzfq.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzfq.BOOLEAN, 0),
    STRING(zzfq.STRING, 2) { // from class: com.google.android.gms.internal.clearcut.zzfm
    },
    GROUP(r0, 3) { // from class: com.google.android.gms.internal.clearcut.zzfn
    },
    MESSAGE(r0, 2) { // from class: com.google.android.gms.internal.clearcut.zzfo
    },
    BYTES(zzfq.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.clearcut.zzfp
    },
    UINT32(r0, 0),
    ENUM(zzfq.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzfq zzqu;
    private final int zzqv;

    static {
        zzfq zzfqVar = zzfq.LONG;
        zzfq zzfqVar2 = zzfq.INT;
        zzfq zzfqVar3 = zzfq.MESSAGE;
    }

    zzfl(zzfq zzfqVar, int i) {
        this.zzqu = zzfqVar;
        this.zzqv = i;
    }

    /* synthetic */ zzfl(zzfq zzfqVar, int i, zzfk zzfkVar) {
        this(zzfqVar, i);
    }

    public final zzfq zzek() {
        return this.zzqu;
    }

    public final int zzel() {
        return this.zzqv;
    }
}
