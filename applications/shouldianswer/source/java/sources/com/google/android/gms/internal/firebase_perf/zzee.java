package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzeg;
import com.google.android.gms.internal.firebase-perf.zzet;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzee.class */
public final class zzee extends Enum<zzee> {
    private static final com.google.android.gms.internal.firebase-perf.zzee[] zzpp;

    /* renamed from: id */
    private final int f3836id;
    private final zzet zzpl;
    private final zzeg zzpm;
    private final Class<?> zzpn;
    private final boolean zzpo;
    private static final com.google.android.gms.internal.firebase-perf.zzee zznm = new zzee("DOUBLE", 0, 0, zzeg.zzpt, zzet.zzrd);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznn = new zzee("FLOAT", 1, 1, zzeg.zzpt, zzet.zzrc);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzno = new zzee("INT64", 2, 2, zzeg.zzpt, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznp = new zzee("UINT64", 3, 3, zzeg.zzpt, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznq = new zzee("INT32", 4, 4, zzeg.zzpt, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznr = new zzee("FIXED64", 5, 5, zzeg.zzpt, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzns = new zzee("FIXED32", 6, 6, zzeg.zzpt, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznt = new zzee("BOOL", 7, 7, zzeg.zzpt, zzet.zzre);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznu = new zzee("STRING", 8, 8, zzeg.zzpt, zzet.zzrf);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznv = new zzee("MESSAGE", 9, 9, zzeg.zzpt, zzet.zzri);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznw = new zzee("BYTES", 10, 10, zzeg.zzpt, zzet.zzrg);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznx = new zzee("UINT32", 11, 11, zzeg.zzpt, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzny = new zzee("ENUM", 12, 12, zzeg.zzpt, zzet.zzrh);
    private static final com.google.android.gms.internal.firebase-perf.zzee zznz = new zzee("SFIXED32", 13, 13, zzeg.zzpt, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoa = new zzee("SFIXED64", 14, 14, zzeg.zzpt, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzob = new zzee("SINT32", 15, 15, zzeg.zzpt, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoc = new zzee("SINT64", 16, 16, zzeg.zzpt, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzod = new zzee("GROUP", 17, 17, zzeg.zzpt, zzet.zzri);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoe = new zzee("DOUBLE_LIST", 18, 18, zzeg.zzpu, zzet.zzrd);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzof = new zzee("FLOAT_LIST", 19, 19, zzeg.zzpu, zzet.zzrc);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzog = new zzee("INT64_LIST", 20, 20, zzeg.zzpu, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoh = new zzee("UINT64_LIST", 21, 21, zzeg.zzpu, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoi = new zzee("INT32_LIST", 22, 22, zzeg.zzpu, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoj = new zzee("FIXED64_LIST", 23, 23, zzeg.zzpu, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzok = new zzee("FIXED32_LIST", 24, 24, zzeg.zzpu, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzol = new zzee("BOOL_LIST", 25, 25, zzeg.zzpu, zzet.zzre);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzom = new zzee("STRING_LIST", 26, 26, zzeg.zzpu, zzet.zzrf);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzon = new zzee("MESSAGE_LIST", 27, 27, zzeg.zzpu, zzet.zzri);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoo = new zzee("BYTES_LIST", 28, 28, zzeg.zzpu, zzet.zzrg);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzop = new zzee("UINT32_LIST", 29, 29, zzeg.zzpu, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoq = new zzee("ENUM_LIST", 30, 30, zzeg.zzpu, zzet.zzrh);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzor = new zzee("SFIXED32_LIST", 31, 31, zzeg.zzpu, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzos = new zzee("SFIXED64_LIST", 32, 32, zzeg.zzpu, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzot = new zzee("SINT32_LIST", 33, 33, zzeg.zzpu, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzou = new zzee("SINT64_LIST", 34, 34, zzeg.zzpu, zzet.zzrb);
    public static final com.google.android.gms.internal.firebase-perf.zzee zzov = new zzee("DOUBLE_LIST_PACKED", 35, 35, zzeg.zzpv, zzet.zzrd);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzow = new zzee("FLOAT_LIST_PACKED", 36, 36, zzeg.zzpv, zzet.zzrc);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzox = new zzee("INT64_LIST_PACKED", 37, 37, zzeg.zzpv, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoy = new zzee("UINT64_LIST_PACKED", 38, 38, zzeg.zzpv, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzoz = new zzee("INT32_LIST_PACKED", 39, 39, zzeg.zzpv, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpa = new zzee("FIXED64_LIST_PACKED", 40, 40, zzeg.zzpv, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpb = new zzee("FIXED32_LIST_PACKED", 41, 41, zzeg.zzpv, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpc = new zzee("BOOL_LIST_PACKED", 42, 42, zzeg.zzpv, zzet.zzre);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpd = new zzee("UINT32_LIST_PACKED", 43, 43, zzeg.zzpv, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpe = new zzee("ENUM_LIST_PACKED", 44, 44, zzeg.zzpv, zzet.zzrh);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpf = new zzee("SFIXED32_LIST_PACKED", 45, 45, zzeg.zzpv, zzet.zzra);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpg = new zzee("SFIXED64_LIST_PACKED", 46, 46, zzeg.zzpv, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzph = new zzee("SINT32_LIST_PACKED", 47, 47, zzeg.zzpv, zzet.zzra);
    public static final com.google.android.gms.internal.firebase-perf.zzee zzpi = new zzee("SINT64_LIST_PACKED", 48, 48, zzeg.zzpv, zzet.zzrb);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpj = new zzee("GROUP_LIST", 49, 49, zzeg.zzpu, zzet.zzri);
    private static final com.google.android.gms.internal.firebase-perf.zzee zzpk = new zzee("MAP", 50, 50, zzeg.zzpw, zzet.zzqz);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzee[] zzpr = {zznm, zznn, zzno, zznp, zznq, zznr, zzns, zznt, zznu, zznv, zznw, zznx, zzny, zznz, zzoa, zzob, zzoc, zzod, zzoe, zzof, zzog, zzoh, zzoi, zzoj, zzok, zzol, zzom, zzon, zzoo, zzop, zzoq, zzor, zzos, zzot, zzou, zzov, zzow, zzox, zzoy, zzoz, zzpa, zzpb, zzpc, zzpd, zzpe, zzpf, zzpg, zzph, zzpi, zzpj, zzpk};
    private static final Type[] zzpq = new Type[0];

    static {
        com.google.android.gms.internal.firebase-perf.zzee[] values = values();
        zzpp = new zzee[values.length];
        for (com.google.android.gms.internal.firebase-perf.zzee zzeeVar : values) {
            zzpp[((zzee) zzeeVar).f3836id] = zzeeVar;
        }
    }

    private zzee(String str, int i, int i2, zzeg zzegVar, zzet zzetVar) {
        super(str, i);
        this.f3836id = i2;
        this.zzpm = zzegVar;
        this.zzpl = zzetVar;
        int i3 = zzed.zznk[zzegVar.ordinal()];
        if (i3 == 1) {
            this.zzpn = zzetVar.zzgw();
        } else if (i3 != 2) {
            this.zzpn = null;
        } else {
            this.zzpn = zzetVar.zzgw();
        }
        boolean z = false;
        if (zzegVar == zzeg.zzpt) {
            int i4 = zzed.zznl[zzetVar.ordinal()];
            z = false;
            if (i4 != 1) {
                z = false;
                if (i4 != 2) {
                    z = false;
                    if (i4 != 3) {
                        z = true;
                    }
                }
            }
        }
        this.zzpo = z;
    }

    public static com.google.android.gms.internal.firebase-perf.zzee[] values() {
        return (zzee[]) zzpr.clone();
    }

    /* renamed from: id */
    public final int m3781id() {
        return this.f3836id;
    }
}
