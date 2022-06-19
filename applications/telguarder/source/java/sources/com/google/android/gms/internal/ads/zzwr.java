package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwr.class */
public final class zzwr {
    private static zzwr zzcjk = new zzwr();
    private final zzaza zzcjl;
    private final zzwc zzcjm;
    private final String zzcjn;
    private final zzabg zzcjo;
    private final zzabi zzcjp;
    private final zzabl zzcjq;
    private final zzazn zzcjr;
    private final Random zzcjs;
    private final WeakHashMap<QueryInfo, String> zzcjt;

    protected zzwr() {
        this(new zzaza(), new zzwc(new zzvj(), new zzvk(), new zzzz(), new zzagv(), new zzauy(), new zzawc(), new zzarp(), new zzagu()), new zzabg(), new zzabi(), new zzabl(), zzaza.zzzy(), new zzazn(0, 204204000, true), new Random(), new WeakHashMap());
    }

    private zzwr(zzaza zzazaVar, zzwc zzwcVar, zzabg zzabgVar, zzabi zzabiVar, zzabl zzablVar, String str, zzazn zzaznVar, Random random, WeakHashMap<QueryInfo, String> weakHashMap) {
        this.zzcjl = zzazaVar;
        this.zzcjm = zzwcVar;
        this.zzcjo = zzabgVar;
        this.zzcjp = zzabiVar;
        this.zzcjq = zzablVar;
        this.zzcjn = str;
        this.zzcjr = zzaznVar;
        this.zzcjs = random;
        this.zzcjt = weakHashMap;
    }

    public static zzaza zzqn() {
        return zzcjk.zzcjl;
    }

    public static zzwc zzqo() {
        return zzcjk.zzcjm;
    }

    public static zzabi zzqp() {
        return zzcjk.zzcjp;
    }

    public static zzabg zzqq() {
        return zzcjk.zzcjo;
    }

    public static zzabl zzqr() {
        return zzcjk.zzcjq;
    }

    public static String zzqs() {
        return zzcjk.zzcjn;
    }

    public static zzazn zzqt() {
        return zzcjk.zzcjr;
    }

    public static Random zzqu() {
        return zzcjk.zzcjs;
    }

    public static WeakHashMap<QueryInfo, String> zzqv() {
        return zzcjk.zzcjt;
    }
}
