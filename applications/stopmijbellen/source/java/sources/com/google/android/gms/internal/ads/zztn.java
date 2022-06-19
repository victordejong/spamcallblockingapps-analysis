package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztn.class */
public final class zztn implements zzte, zzdx {
    public static final zzfsu<String, Integer> zza;
    public static final zzfss<Long> zzb = zzfss.zzs(5400000L, 3300000L, 2000000L, 1300000L, 760000L);
    public static final zzfss<Long> zzc = zzfss.zzs(1700000L, 820000L, 450000L, 180000L, 130000L);
    public static final zzfss<Long> zzd = zzfss.zzs(2300000L, 1300000L, 1000000L, 820000L, 570000L);
    public static final zzfss<Long> zze = zzfss.zzs(3400000L, 2000000L, 1400000L, 1000000L, 620000L);
    public static final zzfss<Long> zzf = zzfss.zzs(7500000L, 5200000L, 3700000L, 1800000L, 1100000L);
    public static final zzfss<Long> zzg = zzfss.zzs(3300000L, 1900000L, 1700000L, 1500000L, 1200000L);
    private static zztn zzh;
    private final zzfsw<Integer, Long> zzi;
    private final zztc zzj;
    private final zzuk zzk;
    private final zzdz zzl;
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
        zzfst zzfstVar = new zzfst();
        zzfstVar.zza("AD", 1, 2, 0, 0, 2, 2);
        zzfstVar.zza("AE", 1, 4, 4, 4, 3, 2);
        zzfstVar.zza("AF", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("AG", 2, 3, 1, 2, 2, 2);
        zzfstVar.zza("AI", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("AL", 1, 2, 0, 1, 2, 2);
        zzfstVar.zza("AM", 2, 3, 2, 4, 2, 2);
        zzfstVar.zza("AO", 3, 4, 3, 2, 2, 2);
        zzfstVar.zza("AQ", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("AR", 2, 4, 1, 1, 2, 2);
        zzfstVar.zza("AS", 2, 2, 2, 3, 2, 2);
        zzfstVar.zza("AT", 0, 0, 0, 0, 0, 2);
        zzfstVar.zza("AU", 0, 1, 0, 1, 2, 2);
        zzfstVar.zza("AW", 1, 2, 4, 4, 2, 2);
        zzfstVar.zza("AX", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("AZ", 3, 2, 4, 4, 2, 2);
        zzfstVar.zza("BA", 1, 2, 0, 1, 2, 2);
        zzfstVar.zza("BB", 0, 2, 0, 0, 2, 2);
        zzfstVar.zza("BD", 2, 1, 3, 3, 2, 2);
        zzfstVar.zza("BE", 0, 0, 3, 3, 2, 2);
        zzfstVar.zza("BF", 4, 3, 4, 3, 2, 2);
        zzfstVar.zza("BG", 0, 0, 0, 0, 1, 2);
        zzfstVar.zza("BH", 1, 2, 2, 4, 4, 2);
        zzfstVar.zza("BI", 4, 3, 4, 4, 2, 2);
        zzfstVar.zza("BJ", 4, 4, 3, 4, 2, 2);
        zzfstVar.zza("BL", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("BM", 1, 2, 0, 0, 2, 2);
        zzfstVar.zza("BN", 3, 2, 1, 1, 2, 2);
        zzfstVar.zza("BO", 1, 3, 3, 2, 2, 2);
        zzfstVar.zza("BQ", 1, 2, 2, 0, 2, 2);
        zzfstVar.zza("BR", 2, 3, 2, 2, 2, 2);
        zzfstVar.zza("BS", 4, 2, 2, 3, 2, 2);
        zzfstVar.zza("BT", 3, 1, 3, 2, 2, 2);
        zzfstVar.zza("BW", 3, 4, 1, 0, 2, 2);
        zzfstVar.zza("BY", 0, 1, 1, 3, 2, 2);
        zzfstVar.zza("BZ", 2, 4, 2, 2, 2, 2);
        zzfstVar.zza("CA", 0, 2, 1, 2, 4, 1);
        zzfstVar.zza("CD", 4, 2, 3, 1, 2, 2);
        zzfstVar.zza("CF", 4, 2, 3, 2, 2, 2);
        zzfstVar.zza("CG", 2, 4, 3, 4, 2, 2);
        zzfstVar.zza("CH", 0, 0, 0, 0, 0, 2);
        zzfstVar.zza("CI", 3, 3, 3, 4, 2, 2);
        zzfstVar.zza("CK", 2, 2, 2, 1, 2, 2);
        zzfstVar.zza("CL", 1, 1, 2, 2, 3, 2);
        zzfstVar.zza("CM", 3, 4, 3, 2, 2, 2);
        zzfstVar.zza("CN", 2, 0, 2, 2, 3, 1);
        zzfstVar.zza("CO", 2, 2, 4, 2, 2, 2);
        zzfstVar.zza("CR", 2, 2, 4, 4, 2, 2);
        zzfstVar.zza("CU", 4, 4, 3, 2, 2, 2);
        zzfstVar.zza("CV", 2, 3, 1, 0, 2, 2);
        zzfstVar.zza("CW", 2, 2, 0, 0, 2, 2);
        zzfstVar.zza("CX", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("CY", 1, 0, 0, 0, 1, 2);
        zzfstVar.zza("CZ", 0, 0, 0, 0, 1, 2);
        zzfstVar.zza("DE", 0, 0, 2, 2, 1, 2);
        zzfstVar.zza("DJ", 4, 1, 4, 4, 2, 2);
        zzfstVar.zza("DK", 0, 0, 1, 0, 0, 2);
        zzfstVar.zza("DM", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("DO", 3, 4, 4, 4, 2, 2);
        zzfstVar.zza("DZ", 4, 3, 4, 4, 2, 2);
        zzfstVar.zza("EC", 2, 4, 2, 1, 2, 2);
        zzfstVar.zza("EE", 0, 0, 0, 0, 2, 2);
        zzfstVar.zza("EG", 3, 4, 2, 3, 2, 2);
        zzfstVar.zza("EH", 2, 2, 2, 2, 2, 2);
        zzfstVar.zza("ER", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("ES", 0, 1, 1, 1, 2, 2);
        zzfstVar.zza("ET", 4, 4, 3, 1, 2, 2);
        zzfstVar.zza("FI", 0, 0, 0, 1, 0, 2);
        zzfstVar.zza("FJ", 3, 1, 3, 3, 2, 2);
        zzfstVar.zza("FK", 3, 2, 2, 2, 2, 2);
        zzfstVar.zza("FM", 3, 2, 4, 2, 2, 2);
        zzfstVar.zza("FO", 0, 2, 0, 0, 2, 2);
        zzfstVar.zza("FR", 1, 1, 2, 1, 1, 1);
        zzfstVar.zza("GA", 2, 3, 1, 1, 2, 2);
        zzfstVar.zza("GB", 0, 0, 1, 1, 2, 3);
        zzfstVar.zza("GD", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("GE", 1, 1, 1, 3, 2, 2);
        zzfstVar.zza("GF", 2, 1, 2, 3, 2, 2);
        zzfstVar.zza("GG", 0, 2, 0, 0, 2, 2);
        zzfstVar.zza("GH", 3, 2, 3, 2, 2, 2);
        zzfstVar.zza("GI", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("GL", 1, 2, 0, 0, 2, 2);
        zzfstVar.zza("GM", 4, 2, 2, 4, 2, 2);
        zzfstVar.zza("GN", 4, 3, 4, 2, 2, 2);
        zzfstVar.zza("GP", 2, 1, 2, 3, 2, 2);
        zzfstVar.zza("GQ", 4, 2, 3, 4, 2, 2);
        zzfstVar.zza("GR", 1, 0, 0, 0, 2, 2);
        zzfstVar.zza("GT", 2, 3, 2, 1, 2, 2);
        zzfstVar.zza("GU", 1, 2, 4, 4, 2, 2);
        zzfstVar.zza("GW", 3, 4, 3, 3, 2, 2);
        zzfstVar.zza("GY", 3, 4, 1, 0, 2, 2);
        zzfstVar.zza("HK", 0, 1, 2, 3, 2, 0);
        zzfstVar.zza("HN", 3, 2, 3, 3, 2, 2);
        zzfstVar.zza("HR", 1, 0, 0, 0, 2, 2);
        zzfstVar.zza("HT", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("HU", 0, 0, 0, 1, 3, 2);
        zzfstVar.zza("ID", 3, 2, 3, 3, 3, 2);
        zzfstVar.zza("IE", 0, 1, 1, 1, 2, 2);
        zzfstVar.zza("IL", 1, 1, 2, 3, 4, 2);
        zzfstVar.zza("IM", 0, 2, 0, 1, 2, 2);
        zzfstVar.zza("IN", 1, 1, 3, 2, 4, 3);
        zzfstVar.zza("IO", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("IQ", 3, 3, 3, 3, 2, 2);
        zzfstVar.zza("IR", 3, 0, 1, 1, 3, 0);
        zzfstVar.zza("IS", 0, 0, 0, 0, 0, 2);
        zzfstVar.zza("IT", 0, 1, 0, 1, 1, 2);
        zzfstVar.zza("JE", 3, 2, 1, 2, 2, 2);
        zzfstVar.zza("JM", 3, 4, 4, 4, 2, 2);
        zzfstVar.zza("JO", 1, 0, 0, 1, 2, 2);
        zzfstVar.zza("JP", 0, 1, 0, 1, 1, 1);
        zzfstVar.zza("KE", 3, 3, 2, 2, 2, 2);
        zzfstVar.zza("KG", 2, 1, 1, 1, 2, 2);
        zzfstVar.zza("KH", 1, 1, 4, 2, 2, 2);
        zzfstVar.zza("KI", 4, 2, 4, 3, 2, 2);
        zzfstVar.zza("KM", 4, 2, 4, 3, 2, 2);
        zzfstVar.zza("KN", 2, 2, 2, 2, 2, 2);
        zzfstVar.zza("KP", 3, 2, 2, 2, 2, 2);
        zzfstVar.zza("KR", 0, 0, 1, 3, 4, 4);
        zzfstVar.zza("KW", 1, 1, 0, 0, 0, 2);
        zzfstVar.zza("KY", 1, 2, 0, 1, 2, 2);
        zzfstVar.zza("KZ", 1, 1, 2, 2, 2, 2);
        zzfstVar.zza("LA", 2, 2, 1, 2, 2, 2);
        zzfstVar.zza("LB", 3, 2, 1, 4, 2, 2);
        zzfstVar.zza("LC", 1, 2, 0, 0, 2, 2);
        zzfstVar.zza("LI", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("LK", 3, 1, 3, 4, 4, 2);
        zzfstVar.zza("LR", 3, 4, 4, 3, 2, 2);
        zzfstVar.zza("LS", 3, 3, 4, 3, 2, 2);
        zzfstVar.zza("LT", 0, 0, 0, 0, 2, 2);
        zzfstVar.zza("LU", 1, 0, 2, 2, 2, 2);
        zzfstVar.zza("LV", 0, 0, 0, 0, 2, 2);
        zzfstVar.zza("LY", 4, 2, 4, 3, 2, 2);
        zzfstVar.zza(RequestConfiguration.MAX_AD_CONTENT_RATING_MA, 3, 2, 2, 2, 2, 2);
        zzfstVar.zza("MC", 0, 2, 2, 0, 2, 2);
        zzfstVar.zza("MD", 1, 0, 0, 0, 2, 2);
        zzfstVar.zza("ME", 1, 0, 0, 1, 2, 2);
        zzfstVar.zza("MF", 1, 2, 1, 0, 2, 2);
        zzfstVar.zza("MG", 3, 4, 2, 2, 2, 2);
        zzfstVar.zza("MH", 3, 2, 2, 4, 2, 2);
        zzfstVar.zza("MK", 1, 0, 0, 0, 2, 2);
        zzfstVar.zza("ML", 4, 3, 3, 1, 2, 2);
        zzfstVar.zza("MM", 2, 4, 3, 3, 2, 2);
        zzfstVar.zza("MN", 2, 0, 1, 2, 2, 2);
        zzfstVar.zza("MO", 0, 2, 4, 4, 2, 2);
        zzfstVar.zza("MP", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("MQ", 2, 1, 2, 3, 2, 2);
        zzfstVar.zza("MR", 4, 1, 3, 4, 2, 2);
        zzfstVar.zza("MS", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("MT", 0, 0, 0, 0, 2, 2);
        zzfstVar.zza("MU", 3, 1, 1, 2, 2, 2);
        zzfstVar.zza("MV", 3, 4, 1, 4, 2, 2);
        zzfstVar.zza("MW", 4, 2, 1, 0, 2, 2);
        zzfstVar.zza("MX", 2, 4, 3, 4, 2, 2);
        zzfstVar.zza("MY", 2, 1, 3, 3, 2, 2);
        zzfstVar.zza("MZ", 3, 2, 2, 2, 2, 2);
        zzfstVar.zza("NA", 4, 3, 2, 2, 2, 2);
        zzfstVar.zza("NC", 3, 2, 4, 4, 2, 2);
        zzfstVar.zza("NE", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("NF", 2, 2, 2, 2, 2, 2);
        zzfstVar.zza("NG", 3, 4, 1, 1, 2, 2);
        zzfstVar.zza("NI", 2, 3, 4, 3, 2, 2);
        zzfstVar.zza("NL", 0, 0, 3, 2, 0, 4);
        zzfstVar.zza("NO", 0, 0, 2, 0, 0, 2);
        zzfstVar.zza("NP", 2, 1, 4, 3, 2, 2);
        zzfstVar.zza("NR", 3, 2, 2, 0, 2, 2);
        zzfstVar.zza("NU", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("NZ", 1, 0, 1, 2, 4, 2);
        zzfstVar.zza("OM", 2, 3, 1, 3, 4, 2);
        zzfstVar.zza("PA", 1, 3, 3, 3, 2, 2);
        zzfstVar.zza("PE", 2, 3, 4, 4, 4, 2);
        zzfstVar.zza("PF", 2, 3, 3, 1, 2, 2);
        zzfstVar.zza(RequestConfiguration.MAX_AD_CONTENT_RATING_PG, 4, 4, 3, 2, 2, 2);
        zzfstVar.zza("PH", 2, 2, 3, 3, 3, 2);
        zzfstVar.zza("PK", 3, 2, 3, 3, 2, 2);
        zzfstVar.zza("PL", 1, 1, 2, 2, 3, 2);
        zzfstVar.zza("PM", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("PR", 2, 3, 2, 2, 3, 3);
        zzfstVar.zza("PS", 3, 4, 1, 2, 2, 2);
        zzfstVar.zza("PT", 0, 1, 0, 0, 2, 2);
        zzfstVar.zza("PW", 2, 2, 4, 1, 2, 2);
        zzfstVar.zza("PY", 2, 2, 3, 2, 2, 2);
        zzfstVar.zza("QA", 2, 4, 2, 4, 4, 2);
        zzfstVar.zza("RE", 1, 1, 1, 2, 2, 2);
        zzfstVar.zza("RO", 0, 0, 1, 1, 1, 2);
        zzfstVar.zza("RS", 1, 0, 0, 0, 2, 2);
        zzfstVar.zza("RU", 0, 0, 0, 1, 2, 2);
        zzfstVar.zza("RW", 3, 4, 3, 0, 2, 2);
        zzfstVar.zza("SA", 2, 2, 1, 1, 2, 2);
        zzfstVar.zza("SB", 4, 2, 4, 3, 2, 2);
        zzfstVar.zza("SC", 4, 3, 0, 2, 2, 2);
        zzfstVar.zza("SD", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("SE", 0, 0, 0, 0, 0, 2);
        zzfstVar.zza("SG", 1, 1, 2, 3, 1, 4);
        zzfstVar.zza("SH", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("SI", 0, 0, 0, 0, 1, 2);
        zzfstVar.zza("SJ", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("SK", 0, 0, 0, 0, 0, 2);
        zzfstVar.zza("SL", 4, 3, 4, 1, 2, 2);
        zzfstVar.zza("SM", 0, 2, 2, 2, 2, 2);
        zzfstVar.zza("SN", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("SO", 3, 2, 3, 3, 2, 2);
        zzfstVar.zza("SR", 2, 3, 2, 2, 2, 2);
        zzfstVar.zza("SS", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("ST", 3, 2, 2, 2, 2, 2);
        zzfstVar.zza("SV", 2, 2, 3, 3, 2, 2);
        zzfstVar.zza("SX", 2, 2, 1, 0, 2, 2);
        zzfstVar.zza("SY", 4, 3, 4, 4, 2, 2);
        zzfstVar.zza("SZ", 4, 3, 2, 4, 2, 2);
        zzfstVar.zza("TC", 2, 2, 1, 0, 2, 2);
        zzfstVar.zza("TD", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("TG", 3, 3, 2, 0, 2, 2);
        zzfstVar.zza("TH", 0, 3, 2, 3, 3, 0);
        zzfstVar.zza("TJ", 4, 2, 4, 4, 2, 2);
        zzfstVar.zza("TL", 4, 3, 4, 4, 2, 2);
        zzfstVar.zza("TM", 4, 2, 4, 2, 2, 2);
        zzfstVar.zza("TN", 2, 2, 1, 1, 2, 2);
        zzfstVar.zza("TO", 4, 2, 3, 3, 2, 2);
        zzfstVar.zza("TR", 1, 1, 0, 1, 2, 2);
        zzfstVar.zza("TT", 1, 4, 1, 1, 2, 2);
        zzfstVar.zza("TV", 4, 2, 2, 2, 2, 2);
        zzfstVar.zza("TW", 0, 0, 0, 0, 0, 0);
        zzfstVar.zza("TZ", 3, 4, 3, 3, 2, 2);
        zzfstVar.zza("UA", 0, 3, 1, 1, 2, 2);
        zzfstVar.zza("UG", 3, 3, 3, 3, 2, 2);
        zzfstVar.zza("US", 1, 1, 2, 2, 3, 2);
        zzfstVar.zza("UY", 2, 2, 1, 2, 2, 2);
        zzfstVar.zza("UZ", 2, 2, 3, 4, 2, 2);
        zzfstVar.zza("VC", 1, 2, 2, 2, 2, 2);
        zzfstVar.zza("VE", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("VG", 2, 2, 1, 1, 2, 2);
        zzfstVar.zza("VI", 1, 2, 1, 3, 2, 2);
        zzfstVar.zza("VN", 0, 3, 3, 4, 2, 2);
        zzfstVar.zza("VU", 4, 2, 2, 1, 2, 2);
        zzfstVar.zza("WF", 4, 2, 2, 4, 2, 2);
        zzfstVar.zza("WS", 3, 1, 2, 1, 2, 2);
        zzfstVar.zza("XK", 1, 1, 1, 1, 2, 2);
        zzfstVar.zza("YE", 4, 4, 4, 4, 2, 2);
        zzfstVar.zza("YT", 4, 1, 1, 1, 2, 2);
        zzfstVar.zza("ZA", 3, 3, 1, 1, 1, 2);
        zzfstVar.zza("ZM", 3, 3, 4, 2, 2, 2);
        zzfstVar.zza("ZW", 3, 2, 4, 3, 2, 2);
        zza = zzfstVar.zzb();
    }

    @Deprecated
    public zztn() {
        zzfsw.zzd();
        zzdz zzdzVar = zzdz.zza;
        throw null;
    }

    public /* synthetic */ zztn(Context context, Map map, int i, zzdz zzdzVar, boolean z, zztm zztmVar) {
        this.zzi = zzfsw.zzc(map);
        this.zzj = new zztc();
        this.zzk = new zzuk(AdError.SERVER_ERROR_CODE);
        this.zzl = zzdzVar;
        this.zzm = true;
        if (context == null) {
            this.zzq = 0;
            this.zzt = zzi(0);
            return;
        }
        zzfb zzb2 = zzfb.zzb(context);
        int zza2 = zzb2.zza();
        this.zzq = zza2;
        this.zzt = zzi(zza2);
        zzb2.zzd(new zztl(this));
    }

    public static zztn zzg(Context context) {
        zztn zztnVar;
        synchronized (zztn.class) {
            try {
                if (zzh == null) {
                    Context applicationContext = context == null ? null : context.getApplicationContext();
                    zzfss<Integer> zza2 = zza.zza(zzfn.zzG(context));
                    zzfss<Integer> zzfssVar = zza2;
                    if (zza2.isEmpty()) {
                        zzfssVar = zzfss.zzt(2, 2, 2, 2, 2, 2);
                    }
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(0, 1000000L);
                    zzfss<Long> zzfssVar2 = zzb;
                    hashMap.put(2, zzfssVar2.get(zzfssVar.get(0).intValue()));
                    hashMap.put(3, zzc.get(zzfssVar.get(1).intValue()));
                    hashMap.put(4, zzd.get(zzfssVar.get(2).intValue()));
                    hashMap.put(5, zze.get(zzfssVar.get(3).intValue()));
                    hashMap.put(10, zzf.get(zzfssVar.get(4).intValue()));
                    hashMap.put(9, zzg.get(zzfssVar.get(5).intValue()));
                    hashMap.put(7, zzfssVar2.get(zzfssVar.get(0).intValue()));
                    zzh = new zztn(applicationContext, hashMap, AdError.SERVER_ERROR_CODE, zzdz.zza, true, null);
                }
                zztnVar = zzh;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zztnVar;
    }

    private final long zzi(int i) {
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

    private final void zzj(int i, long j, long j2) {
        if (i == 0) {
            if (j == 0 && j2 == this.zzu) {
                return;
            }
            i = 0;
        }
        this.zzu = j2;
        this.zzj.zzb(i, j, j2);
    }

    public final void zzk(int i) {
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
                this.zzt = zzi(i);
                long elapsedRealtime = SystemClock.elapsedRealtime();
                zzj(this.zzn > 0 ? (int) (elapsedRealtime - this.zzo) : 0, this.zzp, this.zzt);
                this.zzo = elapsedRealtime;
                this.zzp = 0L;
                this.zzs = 0L;
                this.zzr = 0L;
                this.zzk.zzc();
            }
        }
    }

    private static boolean zzl(zzdm zzdmVar, boolean z) {
        return z && !zzdmVar.zzb(8);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zza(zzdi zzdiVar, zzdm zzdmVar, boolean z, int i) {
        synchronized (this) {
            if (!zzl(zzdmVar, z)) {
                return;
            }
            this.zzp += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzb(zzdi zzdiVar, zzdm zzdmVar, boolean z) {
        synchronized (this) {
            if (!zzl(zzdmVar, z)) {
                return;
            }
            zzdy.zzf(this.zzn > 0);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.zzo);
            this.zzr += i;
            long j = this.zzs;
            long j2 = this.zzp;
            this.zzs = j + j2;
            if (i > 0) {
                this.zzk.zzb((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.zzr >= 2000 || this.zzs >= 524288) {
                    this.zzt = this.zzk.zza(0.5f);
                }
                zzj(i, this.zzp, this.zzt);
                this.zzo = elapsedRealtime;
                this.zzp = 0L;
            }
            this.zzn--;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzc(zzdi zzdiVar, zzdm zzdmVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzd(zzdi zzdiVar, zzdm zzdmVar, boolean z) {
        synchronized (this) {
            if (!zzl(zzdmVar, z)) {
                return;
            }
            if (this.zzn == 0) {
                this.zzo = SystemClock.elapsedRealtime();
            }
            this.zzn++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    public final void zze(Handler handler, zztd zztdVar) {
        this.zzj.zza(handler, zztdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    public final void zzf(zztd zztdVar) {
        this.zzj.zzc(zztdVar);
    }
}
