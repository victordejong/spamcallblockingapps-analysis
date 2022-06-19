package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wn3.class */
public final class wn3 implements on3, AbstractC6816ol {

    /* renamed from: d */
    public static final zzfol<String, Integer> f31621d;

    /* renamed from: e */
    public static final zzfoj<Long> f31622e = zzfoj.zzm(6200000L, 3900000L, 2300000L, 1300000L, 620000L);

    /* renamed from: f */
    public static final zzfoj<Long> f31623f = zzfoj.zzm(248000L, 160000L, 142000L, 127000L, 113000L);

    /* renamed from: g */
    public static final zzfoj<Long> f31624g = zzfoj.zzm(2200000L, 1300000L, 950000L, 760000L, 520000L);

    /* renamed from: h */
    public static final zzfoj<Long> f31625h = zzfoj.zzm(4400000L, 2300000L, 1500000L, 1100000L, 640000L);

    /* renamed from: i */
    public static final zzfoj<Long> f31626i = zzfoj.zzm(10000000L, 7200000L, 5000000L, 2700000L, 1600000L);

    /* renamed from: j */
    public static final zzfoj<Long> f31627j = zzfoj.zzm(2600000L, 2200000L, 2000000L, 1500000L, 470000L);

    /* renamed from: k */
    private static wn3 f31628k;

    /* renamed from: l */
    private final zzfon<Integer, Long> f31629l;

    /* renamed from: o */
    private final AbstractC7210z8 f31632o;

    /* renamed from: q */
    private int f31634q;

    /* renamed from: r */
    private long f31635r;

    /* renamed from: s */
    private long f31636s;

    /* renamed from: t */
    private int f31637t;

    /* renamed from: u */
    private long f31638u;

    /* renamed from: v */
    private long f31639v;

    /* renamed from: w */
    private long f31640w;

    /* renamed from: x */
    private long f31641x;

    /* renamed from: m */
    private final mn3 f31630m = new mn3();

    /* renamed from: n */
    private final ro3 f31631n = new ro3(2000);

    /* renamed from: p */
    private final boolean f31633p = true;

    static {
        cx2 cx2Var = new cx2();
        cx2Var.m15979a("AD", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("AE", 1, 4, 4, 4, 2, 2);
        cx2Var.m15979a("AF", 4, 4, 3, 4, 2, 2);
        cx2Var.m15979a("AG", 4, 2, 1, 4, 2, 2);
        cx2Var.m15979a("AI", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("AL", 1, 1, 1, 1, 2, 2);
        cx2Var.m15979a("AM", 2, 2, 1, 3, 2, 2);
        cx2Var.m15979a("AO", 3, 4, 3, 1, 2, 2);
        cx2Var.m15979a("AR", 2, 4, 2, 1, 2, 2);
        cx2Var.m15979a("AS", 2, 2, 3, 3, 2, 2);
        cx2Var.m15979a("AT", 0, 1, 0, 0, 0, 2);
        cx2Var.m15979a("AU", 0, 2, 0, 1, 1, 2);
        cx2Var.m15979a("AW", 1, 2, 0, 4, 2, 2);
        cx2Var.m15979a("AX", 0, 2, 2, 2, 2, 2);
        cx2Var.m15979a("AZ", 3, 3, 3, 4, 4, 2);
        cx2Var.m15979a("BA", 1, 1, 0, 1, 2, 2);
        cx2Var.m15979a("BB", 0, 2, 0, 0, 2, 2);
        cx2Var.m15979a("BD", 2, 0, 3, 3, 2, 2);
        cx2Var.m15979a("BE", 0, 0, 2, 3, 2, 2);
        cx2Var.m15979a("BF", 4, 4, 4, 2, 2, 2);
        cx2Var.m15979a("BG", 0, 1, 0, 0, 2, 2);
        cx2Var.m15979a("BH", 1, 0, 2, 4, 2, 2);
        cx2Var.m15979a("BI", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("BJ", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("BL", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("BM", 0, 2, 0, 0, 2, 2);
        cx2Var.m15979a("BN", 3, 2, 1, 0, 2, 2);
        cx2Var.m15979a("BO", 1, 2, 4, 2, 2, 2);
        cx2Var.m15979a("BQ", 1, 2, 1, 2, 2, 2);
        cx2Var.m15979a("BR", 2, 4, 3, 2, 2, 2);
        cx2Var.m15979a("BS", 2, 2, 1, 3, 2, 2);
        cx2Var.m15979a("BT", 3, 0, 3, 2, 2, 2);
        cx2Var.m15979a("BW", 3, 4, 1, 1, 2, 2);
        cx2Var.m15979a("BY", 1, 1, 1, 2, 2, 2);
        cx2Var.m15979a("BZ", 2, 2, 2, 2, 2, 2);
        cx2Var.m15979a("CA", 0, 3, 1, 2, 4, 2);
        cx2Var.m15979a("CD", 4, 2, 2, 1, 2, 2);
        cx2Var.m15979a("CF", 4, 2, 3, 2, 2, 2);
        cx2Var.m15979a("CG", 3, 4, 2, 2, 2, 2);
        cx2Var.m15979a("CH", 0, 0, 0, 0, 1, 2);
        cx2Var.m15979a("CI", 3, 3, 3, 3, 2, 2);
        cx2Var.m15979a("CK", 2, 2, 3, 0, 2, 2);
        cx2Var.m15979a("CL", 1, 1, 2, 2, 2, 2);
        cx2Var.m15979a("CM", 3, 4, 3, 2, 2, 2);
        cx2Var.m15979a("CN", 2, 2, 2, 1, 3, 2);
        cx2Var.m15979a("CO", 2, 3, 4, 2, 2, 2);
        cx2Var.m15979a("CR", 2, 3, 4, 4, 2, 2);
        cx2Var.m15979a("CU", 4, 4, 2, 2, 2, 2);
        cx2Var.m15979a("CV", 2, 3, 1, 0, 2, 2);
        cx2Var.m15979a("CW", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("CY", 1, 1, 0, 0, 2, 2);
        cx2Var.m15979a("CZ", 0, 1, 0, 0, 1, 2);
        cx2Var.m15979a("DE", 0, 0, 1, 1, 0, 2);
        cx2Var.m15979a("DJ", 4, 0, 4, 4, 2, 2);
        cx2Var.m15979a("DK", 0, 0, 1, 0, 0, 2);
        cx2Var.m15979a("DM", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("DO", 3, 4, 4, 4, 2, 2);
        cx2Var.m15979a("DZ", 3, 3, 4, 4, 2, 4);
        cx2Var.m15979a("EC", 2, 4, 3, 1, 2, 2);
        cx2Var.m15979a("EE", 0, 1, 0, 0, 2, 2);
        cx2Var.m15979a("EG", 3, 4, 3, 3, 2, 2);
        cx2Var.m15979a("EH", 2, 2, 2, 2, 2, 2);
        cx2Var.m15979a("ER", 4, 2, 2, 2, 2, 2);
        cx2Var.m15979a("ES", 0, 1, 1, 1, 2, 2);
        cx2Var.m15979a("ET", 4, 4, 4, 1, 2, 2);
        cx2Var.m15979a("FI", 0, 0, 0, 0, 0, 2);
        cx2Var.m15979a("FJ", 3, 0, 2, 3, 2, 2);
        cx2Var.m15979a("FK", 4, 2, 2, 2, 2, 2);
        cx2Var.m15979a("FM", 3, 2, 4, 4, 2, 2);
        cx2Var.m15979a("FO", 1, 2, 0, 1, 2, 2);
        cx2Var.m15979a("FR", 1, 1, 2, 0, 1, 2);
        cx2Var.m15979a("GA", 3, 4, 1, 1, 2, 2);
        cx2Var.m15979a("GB", 0, 0, 1, 1, 1, 2);
        cx2Var.m15979a("GD", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("GE", 1, 1, 1, 2, 2, 2);
        cx2Var.m15979a("GF", 2, 2, 2, 3, 2, 2);
        cx2Var.m15979a("GG", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("GH", 3, 1, 3, 2, 2, 2);
        cx2Var.m15979a("GI", 0, 2, 0, 0, 2, 2);
        cx2Var.m15979a("GL", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("GM", 4, 3, 2, 4, 2, 2);
        cx2Var.m15979a("GN", 4, 3, 4, 2, 2, 2);
        cx2Var.m15979a("GP", 2, 1, 2, 3, 2, 2);
        cx2Var.m15979a("GQ", 4, 2, 2, 4, 2, 2);
        cx2Var.m15979a("GR", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("GT", 3, 2, 3, 1, 2, 2);
        cx2Var.m15979a("GU", 1, 2, 3, 4, 2, 2);
        cx2Var.m15979a("GW", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("GY", 3, 3, 3, 4, 2, 2);
        cx2Var.m15979a("HK", 0, 1, 2, 3, 2, 0);
        cx2Var.m15979a("HN", 3, 1, 3, 3, 2, 2);
        cx2Var.m15979a("HR", 1, 1, 0, 0, 3, 2);
        cx2Var.m15979a("HT", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("HU", 0, 0, 0, 0, 0, 2);
        cx2Var.m15979a("ID", 3, 2, 3, 3, 2, 2);
        cx2Var.m15979a("IE", 0, 0, 1, 1, 3, 2);
        cx2Var.m15979a("IL", 1, 0, 2, 3, 4, 2);
        cx2Var.m15979a("IM", 0, 2, 0, 1, 2, 2);
        cx2Var.m15979a("IN", 2, 1, 3, 3, 2, 2);
        cx2Var.m15979a("IO", 4, 2, 2, 4, 2, 2);
        cx2Var.m15979a("IQ", 3, 3, 4, 4, 2, 2);
        cx2Var.m15979a("IR", 3, 2, 3, 2, 2, 2);
        cx2Var.m15979a("IS", 0, 2, 0, 0, 2, 2);
        cx2Var.m15979a("IT", 0, 4, 0, 1, 2, 2);
        cx2Var.m15979a("JE", 2, 2, 1, 2, 2, 2);
        cx2Var.m15979a("JM", 3, 3, 4, 4, 2, 2);
        cx2Var.m15979a("JO", 2, 2, 1, 1, 2, 2);
        cx2Var.m15979a("JP", 0, 0, 0, 0, 2, 1);
        cx2Var.m15979a("KE", 3, 4, 2, 2, 2, 2);
        cx2Var.m15979a("KG", 2, 0, 1, 1, 2, 2);
        cx2Var.m15979a("KH", 1, 0, 4, 3, 2, 2);
        cx2Var.m15979a("KI", 4, 2, 4, 3, 2, 2);
        cx2Var.m15979a("KM", 4, 3, 2, 3, 2, 2);
        cx2Var.m15979a("KN", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("KP", 4, 2, 2, 2, 2, 2);
        cx2Var.m15979a("KR", 0, 0, 1, 3, 1, 2);
        cx2Var.m15979a("KW", 1, 3, 1, 1, 1, 2);
        cx2Var.m15979a("KY", 1, 2, 0, 2, 2, 2);
        cx2Var.m15979a("KZ", 2, 2, 2, 3, 2, 2);
        cx2Var.m15979a("LA", 1, 2, 1, 1, 2, 2);
        cx2Var.m15979a("LB", 3, 2, 0, 0, 2, 2);
        cx2Var.m15979a("LC", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("LI", 0, 2, 2, 2, 2, 2);
        cx2Var.m15979a("LK", 2, 0, 2, 3, 2, 2);
        cx2Var.m15979a("LR", 3, 4, 4, 3, 2, 2);
        cx2Var.m15979a("LS", 3, 3, 2, 3, 2, 2);
        cx2Var.m15979a("LT", 0, 0, 0, 0, 2, 2);
        cx2Var.m15979a("LU", 1, 0, 1, 1, 2, 2);
        cx2Var.m15979a("LV", 0, 0, 0, 0, 2, 2);
        cx2Var.m15979a("LY", 4, 2, 4, 3, 2, 2);
        cx2Var.m15979a("MA", 3, 2, 2, 1, 2, 2);
        cx2Var.m15979a("MC", 0, 2, 0, 0, 2, 2);
        cx2Var.m15979a("MD", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("ME", 1, 2, 0, 1, 2, 2);
        cx2Var.m15979a("MF", 2, 2, 1, 1, 2, 2);
        cx2Var.m15979a("MG", 3, 4, 2, 2, 2, 2);
        cx2Var.m15979a("MH", 4, 2, 2, 4, 2, 2);
        cx2Var.m15979a("MK", 1, 1, 0, 0, 2, 2);
        cx2Var.m15979a("ML", 4, 4, 2, 2, 2, 2);
        cx2Var.m15979a("MM", 2, 3, 3, 3, 2, 2);
        cx2Var.m15979a("MN", 2, 4, 2, 2, 2, 2);
        cx2Var.m15979a("MO", 0, 2, 4, 4, 2, 2);
        cx2Var.m15979a("MP", 0, 2, 2, 2, 2, 2);
        cx2Var.m15979a("MQ", 2, 2, 2, 3, 2, 2);
        cx2Var.m15979a("MR", 3, 0, 4, 3, 2, 2);
        cx2Var.m15979a("MS", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("MT", 0, 2, 0, 0, 2, 2);
        cx2Var.m15979a("MU", 2, 1, 1, 2, 2, 2);
        cx2Var.m15979a("MV", 4, 3, 2, 4, 2, 2);
        cx2Var.m15979a("MW", 4, 2, 1, 0, 2, 2);
        cx2Var.m15979a("MX", 2, 4, 4, 4, 4, 2);
        cx2Var.m15979a("MY", 1, 0, 3, 2, 2, 2);
        cx2Var.m15979a("MZ", 3, 3, 2, 1, 2, 2);
        cx2Var.m15979a("NA", 4, 3, 3, 2, 2, 2);
        cx2Var.m15979a("NC", 3, 0, 4, 4, 2, 2);
        cx2Var.m15979a("NE", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("NF", 2, 2, 2, 2, 2, 2);
        cx2Var.m15979a("NG", 3, 3, 2, 3, 2, 2);
        cx2Var.m15979a("NI", 2, 1, 4, 4, 2, 2);
        cx2Var.m15979a("NL", 0, 2, 3, 2, 0, 2);
        cx2Var.m15979a("NO", 0, 1, 2, 0, 0, 2);
        cx2Var.m15979a("NP", 2, 0, 4, 2, 2, 2);
        cx2Var.m15979a("NR", 3, 2, 3, 1, 2, 2);
        cx2Var.m15979a("NU", 4, 2, 2, 2, 2, 2);
        cx2Var.m15979a("NZ", 0, 2, 1, 2, 4, 2);
        cx2Var.m15979a("OM", 2, 2, 1, 3, 3, 2);
        cx2Var.m15979a("PA", 1, 3, 3, 3, 2, 2);
        cx2Var.m15979a("PE", 2, 3, 4, 4, 2, 2);
        cx2Var.m15979a("PF", 2, 2, 2, 1, 2, 2);
        cx2Var.m15979a("PG", 4, 4, 3, 2, 2, 2);
        cx2Var.m15979a("PH", 2, 1, 3, 3, 3, 2);
        cx2Var.m15979a("PK", 3, 2, 3, 3, 2, 2);
        cx2Var.m15979a("PL", 1, 0, 1, 2, 3, 2);
        cx2Var.m15979a("PM", 0, 2, 2, 2, 2, 2);
        cx2Var.m15979a("PR", 2, 1, 2, 2, 4, 3);
        cx2Var.m15979a("PS", 3, 3, 2, 2, 2, 2);
        cx2Var.m15979a("PT", 0, 1, 1, 0, 2, 2);
        cx2Var.m15979a("PW", 1, 2, 4, 1, 2, 2);
        cx2Var.m15979a("PY", 2, 0, 3, 2, 2, 2);
        cx2Var.m15979a("QA", 2, 3, 1, 2, 3, 2);
        cx2Var.m15979a("RE", 1, 0, 2, 2, 2, 2);
        cx2Var.m15979a("RO", 0, 1, 0, 1, 0, 2);
        cx2Var.m15979a("RS", 1, 2, 0, 0, 2, 2);
        cx2Var.m15979a("RU", 0, 1, 0, 1, 4, 2);
        cx2Var.m15979a("RW", 3, 3, 3, 1, 2, 2);
        cx2Var.m15979a("SA", 2, 2, 2, 1, 1, 2);
        cx2Var.m15979a("SB", 4, 2, 3, 2, 2, 2);
        cx2Var.m15979a("SC", 4, 2, 1, 3, 2, 2);
        cx2Var.m15979a("SD", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("SE", 0, 0, 0, 0, 0, 2);
        cx2Var.m15979a("SG", 1, 0, 1, 2, 3, 2);
        cx2Var.m15979a("SH", 4, 2, 2, 2, 2, 2);
        cx2Var.m15979a("SI", 0, 0, 0, 0, 2, 2);
        cx2Var.m15979a("SJ", 2, 2, 2, 2, 2, 2);
        cx2Var.m15979a("SK", 0, 1, 0, 0, 2, 2);
        cx2Var.m15979a("SL", 4, 3, 4, 0, 2, 2);
        cx2Var.m15979a("SM", 0, 2, 2, 2, 2, 2);
        cx2Var.m15979a("SN", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("SO", 3, 3, 3, 4, 2, 2);
        cx2Var.m15979a("SR", 3, 2, 2, 2, 2, 2);
        cx2Var.m15979a("SS", 4, 4, 3, 3, 2, 2);
        cx2Var.m15979a("ST", 2, 2, 1, 2, 2, 2);
        cx2Var.m15979a("SV", 2, 1, 4, 3, 2, 2);
        cx2Var.m15979a("SX", 2, 2, 1, 0, 2, 2);
        cx2Var.m15979a("SY", 4, 3, 3, 2, 2, 2);
        cx2Var.m15979a("SZ", 3, 3, 2, 4, 2, 2);
        cx2Var.m15979a("TC", 2, 2, 2, 0, 2, 2);
        cx2Var.m15979a("TD", 4, 3, 4, 4, 2, 2);
        cx2Var.m15979a("TG", 3, 2, 2, 4, 2, 2);
        cx2Var.m15979a("TH", 0, 3, 2, 3, 2, 2);
        cx2Var.m15979a("TJ", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("TL", 4, 0, 4, 4, 2, 2);
        cx2Var.m15979a("TM", 4, 2, 4, 3, 2, 2);
        cx2Var.m15979a("TN", 2, 1, 1, 2, 2, 2);
        cx2Var.m15979a("TO", 3, 3, 4, 3, 2, 2);
        cx2Var.m15979a("TR", 1, 2, 1, 1, 2, 2);
        cx2Var.m15979a("TT", 1, 4, 0, 1, 2, 2);
        cx2Var.m15979a("TV", 3, 2, 2, 4, 2, 2);
        cx2Var.m15979a("TW", 0, 0, 0, 0, 1, 0);
        cx2Var.m15979a("TZ", 3, 3, 3, 2, 2, 2);
        cx2Var.m15979a("UA", 0, 3, 1, 1, 2, 2);
        cx2Var.m15979a("UG", 3, 2, 3, 3, 2, 2);
        cx2Var.m15979a("US", 1, 1, 2, 2, 4, 2);
        cx2Var.m15979a("UY", 2, 2, 1, 1, 2, 2);
        cx2Var.m15979a("UZ", 2, 1, 3, 4, 2, 2);
        cx2Var.m15979a("VC", 1, 2, 2, 2, 2, 2);
        cx2Var.m15979a("VE", 4, 4, 4, 4, 2, 2);
        cx2Var.m15979a("VG", 2, 2, 1, 1, 2, 2);
        cx2Var.m15979a("VI", 1, 2, 1, 2, 2, 2);
        cx2Var.m15979a("VN", 0, 1, 3, 4, 2, 2);
        cx2Var.m15979a("VU", 4, 0, 3, 1, 2, 2);
        cx2Var.m15979a("WF", 4, 2, 2, 4, 2, 2);
        cx2Var.m15979a("WS", 3, 1, 3, 1, 2, 2);
        cx2Var.m15979a("XK", 0, 1, 1, 0, 2, 2);
        cx2Var.m15979a("YE", 4, 4, 4, 3, 2, 2);
        cx2Var.m15979a("YT", 4, 2, 2, 3, 2, 2);
        cx2Var.m15979a("ZA", 3, 3, 2, 1, 2, 2);
        cx2Var.m15979a("ZM", 3, 2, 3, 3, 2, 2);
        cx2Var.m15979a("ZW", 3, 2, 4, 3, 2, 2);
        f31621d = cx2Var.m15978b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ wn3(Context context, Context context2, Map<Integer, Long> map, int i, AbstractC7210z8 abstractC7210z8, boolean z) {
        this.f31629l = zzfon.zzb(context2);
        this.f31632o = i;
        if (context == null) {
            this.f31637t = 0;
            this.f31640w = m9540h(0);
            return;
        }
        C6620ja m14150a = C6620ja.m14150a(context);
        int m14148c = m14150a.m14148c();
        this.f31637t = m14148c;
        this.f31640w = m9540h(m14148c);
        m14150a.m14149b(new AbstractC6434ea(this) { // from class: com.google.android.gms.internal.ads.un3

            /* renamed from: a */
            private final wn3 f30684a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30684a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC6434ea
            /* renamed from: B */
            public final void mo10287B(int i2) {
                this.f30684a.m9543e(i2);
            }
        });
    }

    /* renamed from: d */
    public static wn3 m9544d(Context context) {
        wn3 wn3Var;
        synchronized (wn3.class) {
            try {
                if (f31628k == null) {
                    Context applicationContext = context == null ? null : context.getApplicationContext();
                    zzfoj<Integer> zza = f31621d.zza(C7101wa.m9673x(context));
                    zzfoj<Integer> zzfojVar = zza;
                    if (zza.isEmpty()) {
                        zzfojVar = zzfoj.zzn(2, 2, 2, 2, 2, 2);
                    }
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(0, 1000000L);
                    zzfoj<Long> zzfojVar2 = f31622e;
                    hashMap.put(2, zzfojVar2.get(zzfojVar.get(0).intValue()));
                    hashMap.put(3, f31623f.get(zzfojVar.get(1).intValue()));
                    hashMap.put(4, f31624g.get(zzfojVar.get(2).intValue()));
                    hashMap.put(5, f31625h.get(zzfojVar.get(3).intValue()));
                    hashMap.put(10, f31626i.get(zzfojVar.get(4).intValue()));
                    hashMap.put(9, f31627j.get(zzfojVar.get(5).intValue()));
                    hashMap.put(7, zzfojVar2.get(zzfojVar.get(0).intValue()));
                    f31628k = new wn3(applicationContext, hashMap, 2000, AbstractC7210z8.f32839a, true, null);
                }
                wn3Var = f31628k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return wn3Var;
    }

    /* renamed from: f */
    public final void m9543e(int i) {
        synchronized (this) {
            int i2 = this.f31637t;
            if (i2 == 0 || this.f31633p) {
                if (i2 == i) {
                    return;
                }
                this.f31637t = i;
                if (i == 1 || i == 0 || i == 8) {
                    return;
                }
                this.f31640w = m9540h(i);
                long elapsedRealtime = SystemClock.elapsedRealtime();
                m9541g(this.f31634q > 0 ? (int) (elapsedRealtime - this.f31635r) : 0, this.f31636s, this.f31640w);
                this.f31635r = elapsedRealtime;
                this.f31636s = 0L;
                this.f31639v = 0L;
                this.f31638u = 0L;
                this.f31631n.m11338a();
            }
        }
    }

    /* renamed from: g */
    private final void m9541g(int i, long j, long j2) {
        if (i == 0) {
            if (j == 0 && j2 == this.f31641x) {
                return;
            }
            i = 0;
        }
        this.f31641x = j2;
        this.f31630m.m13139c(i, j, j2);
    }

    /* renamed from: h */
    private final long m9540h(int i) {
        Long l = this.f31629l.get(Integer.valueOf(i));
        Long l2 = l;
        if (l == null) {
            l2 = this.f31629l.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    /* renamed from: i */
    private static boolean m9539i(C6472fb c6472fb, boolean z) {
        return z && !c6472fb.m15286b(8);
    }

    @Override // com.google.android.gms.internal.ads.on3
    /* renamed from: a */
    public final void mo9547a(nn3 nn3Var) {
        this.f31630m.m13140b(nn3Var);
    }

    @Override // com.google.android.gms.internal.ads.on3
    /* renamed from: b */
    public final void mo9546b(Handler handler, nn3 nn3Var) {
        this.f31630m.m13141a(handler, nn3Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: c */
    public final void mo9545c(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z, int i) {
        synchronized (this) {
            if (!m9539i(c6472fb, z)) {
                return;
            }
            this.f31636s += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: j */
    public final void mo9538j(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: l */
    public final void mo9537l(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z) {
        synchronized (this) {
            if (!m9539i(c6472fb, z)) {
                return;
            }
            if (this.f31634q == 0) {
                this.f31635r = SystemClock.elapsedRealtime();
            }
            this.f31634q++;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: r */
    public final void mo9536r(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z) {
        synchronized (this) {
            if (!m9539i(c6472fb, z)) {
                return;
            }
            C7173y8.m8895d(this.f31634q > 0);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.f31635r);
            this.f31638u += i;
            long j = this.f31639v;
            long j2 = this.f31636s;
            this.f31639v = j + j2;
            if (i > 0) {
                this.f31631n.m11337b((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.f31638u >= 2000 || this.f31639v >= 524288) {
                    this.f31640w = this.f31631n.m11336c(0.5f);
                }
                m9541g(i, this.f31636s, this.f31640w);
                this.f31635r = elapsedRealtime;
                this.f31636s = 0L;
            }
            this.f31634q--;
        }
    }
}
