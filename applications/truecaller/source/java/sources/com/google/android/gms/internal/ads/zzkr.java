package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkr.class */
public final class zzkr implements zzki, zzay {
    public static final zzfol<String, Integer> zza;
    public static final zzfoj<Long> zzb = zzfoj.zzm(6200000L, 3900000L, 2300000L, 1300000L, 620000L);
    public static final zzfoj<Long> zzc = zzfoj.zzm(248000L, 160000L, 142000L, 127000L, 113000L);
    public static final zzfoj<Long> zzd = zzfoj.zzm(2200000L, 1300000L, 950000L, 760000L, 520000L);
    public static final zzfoj<Long> zze = zzfoj.zzm(4400000L, 2300000L, 1500000L, 1100000L, 640000L);
    public static final zzfoj<Long> zzf = zzfoj.zzm(10000000L, 7200000L, 5000000L, 2700000L, 1600000L);
    public static final zzfoj<Long> zzg = zzfoj.zzm(2600000L, 2200000L, 2000000L, 1500000L, 470000L);
    private static zzkr zzh;
    private final zzfon<Integer, Long> zzi;
    private final zzkg zzj;
    private final zzlo zzk;
    private final zzaku zzl;
    private final boolean zzm;
    private int zzn;
    private long zzo;
    private long zzp;
    private int zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;

    static {
        zzfok zzfokVar = new zzfok();
        zzfokVar.zza("AD", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("AE", 1, 4, 4, 4, 2, 2);
        zzfokVar.zza("AF", 4, 4, 3, 4, 2, 2);
        zzfokVar.zza("AG", 4, 2, 1, 4, 2, 2);
        zzfokVar.zza("AI", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("AL", 1, 1, 1, 1, 2, 2);
        zzfokVar.zza("AM", 2, 2, 1, 3, 2, 2);
        zzfokVar.zza("AO", 3, 4, 3, 1, 2, 2);
        zzfokVar.zza("AR", 2, 4, 2, 1, 2, 2);
        zzfokVar.zza("AS", 2, 2, 3, 3, 2, 2);
        zzfokVar.zza("AT", 0, 1, 0, 0, 0, 2);
        zzfokVar.zza("AU", 0, 2, 0, 1, 1, 2);
        zzfokVar.zza("AW", 1, 2, 0, 4, 2, 2);
        zzfokVar.zza("AX", 0, 2, 2, 2, 2, 2);
        zzfokVar.zza("AZ", 3, 3, 3, 4, 4, 2);
        zzfokVar.zza("BA", 1, 1, 0, 1, 2, 2);
        zzfokVar.zza("BB", 0, 2, 0, 0, 2, 2);
        zzfokVar.zza("BD", 2, 0, 3, 3, 2, 2);
        zzfokVar.zza("BE", 0, 0, 2, 3, 2, 2);
        zzfokVar.zza("BF", 4, 4, 4, 2, 2, 2);
        zzfokVar.zza("BG", 0, 1, 0, 0, 2, 2);
        zzfokVar.zza("BH", 1, 0, 2, 4, 2, 2);
        zzfokVar.zza("BI", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("BJ", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("BL", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("BM", 0, 2, 0, 0, 2, 2);
        zzfokVar.zza("BN", 3, 2, 1, 0, 2, 2);
        zzfokVar.zza("BO", 1, 2, 4, 2, 2, 2);
        zzfokVar.zza("BQ", 1, 2, 1, 2, 2, 2);
        zzfokVar.zza("BR", 2, 4, 3, 2, 2, 2);
        zzfokVar.zza("BS", 2, 2, 1, 3, 2, 2);
        zzfokVar.zza("BT", 3, 0, 3, 2, 2, 2);
        zzfokVar.zza("BW", 3, 4, 1, 1, 2, 2);
        zzfokVar.zza("BY", 1, 1, 1, 2, 2, 2);
        zzfokVar.zza("BZ", 2, 2, 2, 2, 2, 2);
        zzfokVar.zza("CA", 0, 3, 1, 2, 4, 2);
        zzfokVar.zza("CD", 4, 2, 2, 1, 2, 2);
        zzfokVar.zza("CF", 4, 2, 3, 2, 2, 2);
        zzfokVar.zza("CG", 3, 4, 2, 2, 2, 2);
        zzfokVar.zza("CH", 0, 0, 0, 0, 1, 2);
        zzfokVar.zza("CI", 3, 3, 3, 3, 2, 2);
        zzfokVar.zza("CK", 2, 2, 3, 0, 2, 2);
        zzfokVar.zza("CL", 1, 1, 2, 2, 2, 2);
        zzfokVar.zza("CM", 3, 4, 3, 2, 2, 2);
        zzfokVar.zza("CN", 2, 2, 2, 1, 3, 2);
        zzfokVar.zza("CO", 2, 3, 4, 2, 2, 2);
        zzfokVar.zza("CR", 2, 3, 4, 4, 2, 2);
        zzfokVar.zza("CU", 4, 4, 2, 2, 2, 2);
        zzfokVar.zza("CV", 2, 3, 1, 0, 2, 2);
        zzfokVar.zza("CW", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("CY", 1, 1, 0, 0, 2, 2);
        zzfokVar.zza("CZ", 0, 1, 0, 0, 1, 2);
        zzfokVar.zza("DE", 0, 0, 1, 1, 0, 2);
        zzfokVar.zza("DJ", 4, 0, 4, 4, 2, 2);
        zzfokVar.zza("DK", 0, 0, 1, 0, 0, 2);
        zzfokVar.zza("DM", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("DO", 3, 4, 4, 4, 2, 2);
        zzfokVar.zza("DZ", 3, 3, 4, 4, 2, 4);
        zzfokVar.zza("EC", 2, 4, 3, 1, 2, 2);
        zzfokVar.zza("EE", 0, 1, 0, 0, 2, 2);
        zzfokVar.zza("EG", 3, 4, 3, 3, 2, 2);
        zzfokVar.zza("EH", 2, 2, 2, 2, 2, 2);
        zzfokVar.zza("ER", 4, 2, 2, 2, 2, 2);
        zzfokVar.zza("ES", 0, 1, 1, 1, 2, 2);
        zzfokVar.zza("ET", 4, 4, 4, 1, 2, 2);
        zzfokVar.zza("FI", 0, 0, 0, 0, 0, 2);
        zzfokVar.zza("FJ", 3, 0, 2, 3, 2, 2);
        zzfokVar.zza("FK", 4, 2, 2, 2, 2, 2);
        zzfokVar.zza("FM", 3, 2, 4, 4, 2, 2);
        zzfokVar.zza("FO", 1, 2, 0, 1, 2, 2);
        zzfokVar.zza("FR", 1, 1, 2, 0, 1, 2);
        zzfokVar.zza("GA", 3, 4, 1, 1, 2, 2);
        zzfokVar.zza("GB", 0, 0, 1, 1, 1, 2);
        zzfokVar.zza("GD", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("GE", 1, 1, 1, 2, 2, 2);
        zzfokVar.zza("GF", 2, 2, 2, 3, 2, 2);
        zzfokVar.zza("GG", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("GH", 3, 1, 3, 2, 2, 2);
        zzfokVar.zza("GI", 0, 2, 0, 0, 2, 2);
        zzfokVar.zza("GL", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("GM", 4, 3, 2, 4, 2, 2);
        zzfokVar.zza("GN", 4, 3, 4, 2, 2, 2);
        zzfokVar.zza("GP", 2, 1, 2, 3, 2, 2);
        zzfokVar.zza("GQ", 4, 2, 2, 4, 2, 2);
        zzfokVar.zza("GR", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("GT", 3, 2, 3, 1, 2, 2);
        zzfokVar.zza("GU", 1, 2, 3, 4, 2, 2);
        zzfokVar.zza("GW", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("GY", 3, 3, 3, 4, 2, 2);
        zzfokVar.zza("HK", 0, 1, 2, 3, 2, 0);
        zzfokVar.zza("HN", 3, 1, 3, 3, 2, 2);
        zzfokVar.zza("HR", 1, 1, 0, 0, 3, 2);
        zzfokVar.zza("HT", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("HU", 0, 0, 0, 0, 0, 2);
        zzfokVar.zza("ID", 3, 2, 3, 3, 2, 2);
        zzfokVar.zza("IE", 0, 0, 1, 1, 3, 2);
        zzfokVar.zza("IL", 1, 0, 2, 3, 4, 2);
        zzfokVar.zza("IM", 0, 2, 0, 1, 2, 2);
        zzfokVar.zza("IN", 2, 1, 3, 3, 2, 2);
        zzfokVar.zza("IO", 4, 2, 2, 4, 2, 2);
        zzfokVar.zza("IQ", 3, 3, 4, 4, 2, 2);
        zzfokVar.zza("IR", 3, 2, 3, 2, 2, 2);
        zzfokVar.zza("IS", 0, 2, 0, 0, 2, 2);
        zzfokVar.zza("IT", 0, 4, 0, 1, 2, 2);
        zzfokVar.zza("JE", 2, 2, 1, 2, 2, 2);
        zzfokVar.zza("JM", 3, 3, 4, 4, 2, 2);
        zzfokVar.zza("JO", 2, 2, 1, 1, 2, 2);
        zzfokVar.zza("JP", 0, 0, 0, 0, 2, 1);
        zzfokVar.zza("KE", 3, 4, 2, 2, 2, 2);
        zzfokVar.zza("KG", 2, 0, 1, 1, 2, 2);
        zzfokVar.zza("KH", 1, 0, 4, 3, 2, 2);
        zzfokVar.zza("KI", 4, 2, 4, 3, 2, 2);
        zzfokVar.zza("KM", 4, 3, 2, 3, 2, 2);
        zzfokVar.zza("KN", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("KP", 4, 2, 2, 2, 2, 2);
        zzfokVar.zza("KR", 0, 0, 1, 3, 1, 2);
        zzfokVar.zza("KW", 1, 3, 1, 1, 1, 2);
        zzfokVar.zza("KY", 1, 2, 0, 2, 2, 2);
        zzfokVar.zza("KZ", 2, 2, 2, 3, 2, 2);
        zzfokVar.zza("LA", 1, 2, 1, 1, 2, 2);
        zzfokVar.zza("LB", 3, 2, 0, 0, 2, 2);
        zzfokVar.zza("LC", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("LI", 0, 2, 2, 2, 2, 2);
        zzfokVar.zza("LK", 2, 0, 2, 3, 2, 2);
        zzfokVar.zza("LR", 3, 4, 4, 3, 2, 2);
        zzfokVar.zza("LS", 3, 3, 2, 3, 2, 2);
        zzfokVar.zza("LT", 0, 0, 0, 0, 2, 2);
        zzfokVar.zza("LU", 1, 0, 1, 1, 2, 2);
        zzfokVar.zza("LV", 0, 0, 0, 0, 2, 2);
        zzfokVar.zza("LY", 4, 2, 4, 3, 2, 2);
        zzfokVar.zza(RequestConfiguration.MAX_AD_CONTENT_RATING_MA, 3, 2, 2, 1, 2, 2);
        zzfokVar.zza("MC", 0, 2, 0, 0, 2, 2);
        zzfokVar.zza("MD", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("ME", 1, 2, 0, 1, 2, 2);
        zzfokVar.zza("MF", 2, 2, 1, 1, 2, 2);
        zzfokVar.zza("MG", 3, 4, 2, 2, 2, 2);
        zzfokVar.zza("MH", 4, 2, 2, 4, 2, 2);
        zzfokVar.zza("MK", 1, 1, 0, 0, 2, 2);
        zzfokVar.zza("ML", 4, 4, 2, 2, 2, 2);
        zzfokVar.zza("MM", 2, 3, 3, 3, 2, 2);
        zzfokVar.zza("MN", 2, 4, 2, 2, 2, 2);
        zzfokVar.zza("MO", 0, 2, 4, 4, 2, 2);
        zzfokVar.zza("MP", 0, 2, 2, 2, 2, 2);
        zzfokVar.zza("MQ", 2, 2, 2, 3, 2, 2);
        zzfokVar.zza("MR", 3, 0, 4, 3, 2, 2);
        zzfokVar.zza("MS", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("MT", 0, 2, 0, 0, 2, 2);
        zzfokVar.zza("MU", 2, 1, 1, 2, 2, 2);
        zzfokVar.zza("MV", 4, 3, 2, 4, 2, 2);
        zzfokVar.zza("MW", 4, 2, 1, 0, 2, 2);
        zzfokVar.zza("MX", 2, 4, 4, 4, 4, 2);
        zzfokVar.zza("MY", 1, 0, 3, 2, 2, 2);
        zzfokVar.zza("MZ", 3, 3, 2, 1, 2, 2);
        zzfokVar.zza(AnalyticsConstants.NOT_AVAILABLE, 4, 3, 3, 2, 2, 2);
        zzfokVar.zza("NC", 3, 0, 4, 4, 2, 2);
        zzfokVar.zza("NE", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("NF", 2, 2, 2, 2, 2, 2);
        zzfokVar.zza("NG", 3, 3, 2, 3, 2, 2);
        zzfokVar.zza("NI", 2, 1, 4, 4, 2, 2);
        zzfokVar.zza("NL", 0, 2, 3, 2, 0, 2);
        zzfokVar.zza("NO", 0, 1, 2, 0, 0, 2);
        zzfokVar.zza("NP", 2, 0, 4, 2, 2, 2);
        zzfokVar.zza("NR", 3, 2, 3, 1, 2, 2);
        zzfokVar.zza("NU", 4, 2, 2, 2, 2, 2);
        zzfokVar.zza("NZ", 0, 2, 1, 2, 4, 2);
        zzfokVar.zza("OM", 2, 2, 1, 3, 3, 2);
        zzfokVar.zza("PA", 1, 3, 3, 3, 2, 2);
        zzfokVar.zza("PE", 2, 3, 4, 4, 2, 2);
        zzfokVar.zza("PF", 2, 2, 2, 1, 2, 2);
        zzfokVar.zza(RequestConfiguration.MAX_AD_CONTENT_RATING_PG, 4, 4, 3, 2, 2, 2);
        zzfokVar.zza("PH", 2, 1, 3, 3, 3, 2);
        zzfokVar.zza("PK", 3, 2, 3, 3, 2, 2);
        zzfokVar.zza("PL", 1, 0, 1, 2, 3, 2);
        zzfokVar.zza("PM", 0, 2, 2, 2, 2, 2);
        zzfokVar.zza("PR", 2, 1, 2, 2, 4, 3);
        zzfokVar.zza("PS", 3, 3, 2, 2, 2, 2);
        zzfokVar.zza("PT", 0, 1, 1, 0, 2, 2);
        zzfokVar.zza("PW", 1, 2, 4, 1, 2, 2);
        zzfokVar.zza("PY", 2, 0, 3, 2, 2, 2);
        zzfokVar.zza("QA", 2, 3, 1, 2, 3, 2);
        zzfokVar.zza("RE", 1, 0, 2, 2, 2, 2);
        zzfokVar.zza("RO", 0, 1, 0, 1, 0, 2);
        zzfokVar.zza("RS", 1, 2, 0, 0, 2, 2);
        zzfokVar.zza("RU", 0, 1, 0, 1, 4, 2);
        zzfokVar.zza("RW", 3, 3, 3, 1, 2, 2);
        zzfokVar.zza("SA", 2, 2, 2, 1, 1, 2);
        zzfokVar.zza("SB", 4, 2, 3, 2, 2, 2);
        zzfokVar.zza("SC", 4, 2, 1, 3, 2, 2);
        zzfokVar.zza("SD", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("SE", 0, 0, 0, 0, 0, 2);
        zzfokVar.zza("SG", 1, 0, 1, 2, 3, 2);
        zzfokVar.zza("SH", 4, 2, 2, 2, 2, 2);
        zzfokVar.zza("SI", 0, 0, 0, 0, 2, 2);
        zzfokVar.zza("SJ", 2, 2, 2, 2, 2, 2);
        zzfokVar.zza("SK", 0, 1, 0, 0, 2, 2);
        zzfokVar.zza("SL", 4, 3, 4, 0, 2, 2);
        zzfokVar.zza("SM", 0, 2, 2, 2, 2, 2);
        zzfokVar.zza("SN", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("SO", 3, 3, 3, 4, 2, 2);
        zzfokVar.zza("SR", 3, 2, 2, 2, 2, 2);
        zzfokVar.zza("SS", 4, 4, 3, 3, 2, 2);
        zzfokVar.zza("ST", 2, 2, 1, 2, 2, 2);
        zzfokVar.zza("SV", 2, 1, 4, 3, 2, 2);
        zzfokVar.zza("SX", 2, 2, 1, 0, 2, 2);
        zzfokVar.zza("SY", 4, 3, 3, 2, 2, 2);
        zzfokVar.zza("SZ", 3, 3, 2, 4, 2, 2);
        zzfokVar.zza("TC", 2, 2, 2, 0, 2, 2);
        zzfokVar.zza("TD", 4, 3, 4, 4, 2, 2);
        zzfokVar.zza("TG", 3, 2, 2, 4, 2, 2);
        zzfokVar.zza("TH", 0, 3, 2, 3, 2, 2);
        zzfokVar.zza("TJ", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("TL", 4, 0, 4, 4, 2, 2);
        zzfokVar.zza("TM", 4, 2, 4, 3, 2, 2);
        zzfokVar.zza("TN", 2, 1, 1, 2, 2, 2);
        zzfokVar.zza("TO", 3, 3, 4, 3, 2, 2);
        zzfokVar.zza("TR", 1, 2, 1, 1, 2, 2);
        zzfokVar.zza("TT", 1, 4, 0, 1, 2, 2);
        zzfokVar.zza("TV", 3, 2, 2, 4, 2, 2);
        zzfokVar.zza("TW", 0, 0, 0, 0, 1, 0);
        zzfokVar.zza("TZ", 3, 3, 3, 2, 2, 2);
        zzfokVar.zza("UA", 0, 3, 1, 1, 2, 2);
        zzfokVar.zza("UG", 3, 2, 3, 3, 2, 2);
        zzfokVar.zza("US", 1, 1, 2, 2, 4, 2);
        zzfokVar.zza("UY", 2, 2, 1, 1, 2, 2);
        zzfokVar.zza("UZ", 2, 1, 3, 4, 2, 2);
        zzfokVar.zza("VC", 1, 2, 2, 2, 2, 2);
        zzfokVar.zza("VE", 4, 4, 4, 4, 2, 2);
        zzfokVar.zza("VG", 2, 2, 1, 1, 2, 2);
        zzfokVar.zza("VI", 1, 2, 1, 2, 2, 2);
        zzfokVar.zza("VN", 0, 1, 3, 4, 2, 2);
        zzfokVar.zza("VU", 4, 0, 3, 1, 2, 2);
        zzfokVar.zza("WF", 4, 2, 2, 4, 2, 2);
        zzfokVar.zza("WS", 3, 1, 3, 1, 2, 2);
        zzfokVar.zza("XK", 0, 1, 1, 0, 2, 2);
        zzfokVar.zza("YE", 4, 4, 4, 3, 2, 2);
        zzfokVar.zza("YT", 4, 2, 2, 3, 2, 2);
        zzfokVar.zza("ZA", 3, 3, 2, 1, 2, 2);
        zzfokVar.zza("ZM", 3, 2, 3, 3, 2, 2);
        zzfokVar.zza("ZW", 3, 2, 4, 3, 2, 2);
        zza = zzfokVar.zzb();
    }

    @Deprecated
    public zzkr() {
        zzfon.zza();
        zzaku zzakuVar = zzaku.zza;
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzkr(Context context, Context context2, Map<Integer, Long> map, int i, zzaku zzakuVar, boolean z) {
        this.zzi = zzfon.zzb(context2);
        this.zzj = new zzkg();
        this.zzk = new zzlo(2000);
        this.zzl = i;
        this.zzm = true;
        if (context == null) {
            this.zzq = 0;
            this.zzt = zzk(0);
            return;
        }
        zzamd zza2 = zzamd.zza(context);
        int zzc2 = zza2.zzc();
        this.zzq = zzc2;
        this.zzt = zzk(zzc2);
        zza2.zzb(new zzalz(this) { // from class: com.google.android.gms.internal.ads.zzkp
            private final zzkr zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzalz
            public final void zza(int i2) {
                this.zza.zzh(i2);
            }
        });
    }

    public static zzkr zzg(Context context) {
        zzkr zzkrVar;
        synchronized (zzkr.class) {
            try {
                if (zzh == null) {
                    Context applicationContext = context == null ? null : context.getApplicationContext();
                    zzfoj<Integer> zza2 = zza.zza(zzamq.zzX(context));
                    zzfoj<Integer> zzfojVar = zza2;
                    if (zza2.isEmpty()) {
                        zzfojVar = zzfoj.zzn(2, 2, 2, 2, 2, 2);
                    }
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(0, 1000000L);
                    zzfoj<Long> zzfojVar2 = zzb;
                    hashMap.put(2, zzfojVar2.get(zzfojVar.get(0).intValue()));
                    hashMap.put(3, zzc.get(zzfojVar.get(1).intValue()));
                    hashMap.put(4, zzd.get(zzfojVar.get(2).intValue()));
                    hashMap.put(5, zze.get(zzfojVar.get(3).intValue()));
                    hashMap.put(10, zzf.get(zzfojVar.get(4).intValue()));
                    hashMap.put(9, zzg.get(zzfojVar.get(5).intValue()));
                    hashMap.put(7, zzfojVar2.get(zzfojVar.get(0).intValue()));
                    zzh = new zzkr(applicationContext, hashMap, 2000, zzaku.zza, true, null);
                }
                zzkrVar = zzh;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzkrVar;
    }

    /* renamed from: zzi */
    public final void zzh(int i) {
        synchronized (this) {
            int i2 = this.zzq;
            if (i2 == 0 || this.zzm) {
                if (i2 == i) {
                    return;
                }
                this.zzq = i;
                if (i == 1 || i == 0 || i == 8) {
                    return;
                }
                this.zzt = zzk(i);
                long elapsedRealtime = SystemClock.elapsedRealtime();
                zzj(this.zzn > 0 ? (int) (elapsedRealtime - this.zzo) : 0, this.zzp, this.zzt);
                this.zzo = elapsedRealtime;
                this.zzp = 0L;
                this.zzs = 0L;
                this.zzr = 0L;
                this.zzk.zza();
            }
        }
    }

    private final void zzj(int i, long j, long j2) {
        if (i == 0) {
            if (j == 0 && j2 == this.zzu) {
                return;
            }
            i = 0;
        }
        this.zzu = j2;
        this.zzj.zzc(i, j, j2);
    }

    private final long zzk(int i) {
        Long l = this.zzi.get(Integer.valueOf(i));
        Long l2 = l;
        if (l == null) {
            l2 = this.zzi.get(0);
        }
        Long l3 = l2;
        if (l2 == null) {
            l3 = 1000000L;
        }
        return l3.longValue();
    }

    private static boolean zzl(zzan zzanVar, boolean z) {
        return z && !zzanVar.zzb(8);
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zza(zzaj zzajVar, zzan zzanVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zzb(zzaj zzajVar, zzan zzanVar, boolean z) {
        synchronized (this) {
            if (!zzl(zzanVar, z)) {
                return;
            }
            if (this.zzn == 0) {
                this.zzo = SystemClock.elapsedRealtime();
            }
            this.zzn++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zzc(zzaj zzajVar, zzan zzanVar, boolean z, int i) {
        synchronized (this) {
            if (!zzl(zzanVar, z)) {
                return;
            }
            this.zzp += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zzd(zzaj zzajVar, zzan zzanVar, boolean z) {
        synchronized (this) {
            if (!zzl(zzanVar, z)) {
                return;
            }
            zzakt.zzd(this.zzn > 0);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.zzo);
            this.zzr += i;
            long j = this.zzs;
            long j2 = this.zzp;
            this.zzs = j + j2;
            if (i > 0) {
                this.zzk.zzb((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.zzr >= 2000 || this.zzs >= 524288) {
                    this.zzt = this.zzk.zzc(0.5f);
                }
                zzj(i, this.zzp, this.zzt);
                this.zzo = elapsedRealtime;
                this.zzp = 0L;
            }
            this.zzn--;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzki
    public final void zze(Handler handler, zzkh zzkhVar) {
        this.zzj.zza(handler, zzkhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzki
    public final void zzf(zzkh zzkhVar) {
        this.zzj.zzb(zzkhVar);
    }
}
