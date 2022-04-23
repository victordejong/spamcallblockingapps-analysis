package com.google.android.gms.internal.clearcut;

import p131c.p161d.p170b.p224d.p252g.p255c.C4402q2;
/* JADX WARN: Init of enum zzqk can be incorrect */
/* JADX WARN: Init of enum zzql can be incorrect */
/* JADX WARN: Init of enum zzqm can be incorrect */
/* JADX WARN: Init of enum zzqn can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfl.class */
public enum zzfl {
    DOUBLE(zzfq.DOUBLE, 1),
    FLOAT(zzfq.FLOAT, 5),
    INT64(zzfq.LONG, 0),
    UINT64(zzfq.LONG, 0),
    INT32(zzfq.INT, 0),
    FIXED64(zzfq.LONG, 1),
    FIXED32(zzfq.INT, 5),
    BOOL(zzfq.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.clearcut.zzfm
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.clearcut.zzfn
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.clearcut.zzfo
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.clearcut.zzfp
    },
    UINT32(zzfq.INT, 0),
    ENUM(zzfq.ENUM, 0),
    SFIXED32(zzfq.INT, 5),
    SFIXED64(zzfq.LONG, 1),
    SINT32(zzfq.INT, 0),
    SINT64(zzfq.LONG, 0);
    
    public final zzfq zzqu;
    public final int zzqv;

    static {
        final zzfq zzfqVar = zzfq.STRING;
        final zzfq zzfqVar2 = zzfq.MESSAGE;
        final zzfq zzfqVar3 = zzfq.MESSAGE;
        final zzfq zzfqVar4 = zzfq.BYTE_STRING;
    }

    zzfl(zzfq zzfqVar, int i) {
        this.zzqu = zzfqVar;
        this.zzqv = i;
    }

    /* synthetic */ zzfl(zzfq zzfqVar, int i, C4402q2 q2Var) {
        this(zzfqVar, i);
    }

    public final zzfq zzek() {
        return this.zzqu;
    }

    public final int zzel() {
        return this.zzqv;
    }
}
