package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzhl;
import com.google.android.gms.internal.firebase-perf.zzhr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhk.class */
public class zzhk extends Enum<zzhk> {
    private final zzhr zzvy;
    private final int zzvz;
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvg = new zzhk("DOUBLE", 0, zzhr.zzwe, 1);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvh = new zzhk("FLOAT", 1, zzhr.zzwd, 5);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvi = new zzhk("INT64", 2, zzhr.zzwc, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvj = new zzhk("UINT64", 3, zzhr.zzwc, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvk = new zzhk("INT32", 4, zzhr.zzwb, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvl = new zzhk("FIXED64", 5, zzhr.zzwc, 1);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvm = new zzhk("FIXED32", 6, zzhr.zzwb, 5);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvn = new zzhk("BOOL", 7, zzhr.zzwf, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvo = new zzhk("STRING", 8, zzhr.zzwg, 2) { // from class: com.google.android.gms.internal.firebase_perf.zzhn
    };
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvp = new zzhk("GROUP", 9, zzhr.zzwj, 3) { // from class: com.google.android.gms.internal.firebase_perf.zzhm
    };
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvq = new zzhk("MESSAGE", 10, zzhr.zzwj, 2) { // from class: com.google.android.gms.internal.firebase_perf.zzhp
    };
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvr = new zzhk("BYTES", 11, zzhr.zzwh, 2) { // from class: com.google.android.gms.internal.firebase_perf.zzho
    };
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvs = new zzhk("UINT32", 12, zzhr.zzwb, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvt = new zzhk("ENUM", 13, zzhr.zzwi, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvu = new zzhk("SFIXED32", 14, zzhr.zzwb, 5);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvv = new zzhk("SFIXED64", 15, zzhr.zzwc, 1);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvw = new zzhk("SINT32", 16, zzhr.zzwb, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhk zzvx = new zzhk("SINT64", 17, zzhr.zzwc, 0);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzhk[] zzwa = {zzvg, zzvh, zzvi, zzvj, zzvk, zzvl, zzvm, zzvn, zzvo, zzvp, zzvq, zzvr, zzvs, zzvt, zzvu, zzvv, zzvw, zzvx};

    private zzhk(String str, int i, zzhr zzhrVar, int i2) {
        super(str, i);
        this.zzvy = zzhrVar;
        this.zzvz = i2;
    }

    public /* synthetic */ zzhk(String str, int i, zzhr zzhrVar, int i2, zzhl zzhlVar) {
        this(str, i, zzhrVar, i2);
    }

    public static com.google.android.gms.internal.firebase-perf.zzhk[] values() {
        return (zzhk[]) zzwa.clone();
    }

    public final zzhr zzip() {
        return this.zzvy;
    }

    public final int zziq() {
        return this.zzvz;
    }
}
