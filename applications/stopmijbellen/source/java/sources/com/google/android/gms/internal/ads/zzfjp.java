package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjp.class */
public final class zzfjp {
    private final zzelg zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfea zzf;
    private final Clock zzg;
    private final zzalt zzh;

    public zzfjp(zzelg zzelgVar, zzcjf zzcjfVar, String str, String str2, Context context, zzfea zzfeaVar, Clock clock, zzalt zzaltVar) {
        this.zza = zzelgVar;
        this.zzb = zzcjfVar.zza;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfeaVar;
        this.zzg = clock;
        this.zzh = zzaltVar;
    }

    public static final List<String> zzd(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(zzf(str, "@gw_mpe@", C0082b.m8758d(23, "2.", i2)));
        }
        return arrayList;
    }

    private static String zze(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (zzciy.zzl()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    private static String zzf(String str, String str2, String str3) {
        String str4 = str3;
        if (true == TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    public final List<String> zza(zzfdz zzfdzVar, zzfdn zzfdnVar, List<String> list) {
        return zzb(zzfdzVar, zzfdnVar, false, "", "", list);
    }

    public final List<String> zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = true != z ? "0" : "1";
        for (String str5 : list) {
            String zzf = zzf(zzf(zzf(str5, "@gw_adlocid@", zzfdzVar.zza.zza.zzf), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.zzb);
            String str6 = zzf;
            if (zzfdnVar != null) {
                str6 = zzchj.zzc(zzf(zzf(zzf(zzf, "@gw_qdata@", zzfdnVar.zzz), "@gw_adnetid@", zzfdnVar.zzy), "@gw_allocid@", zzfdnVar.zzx), this.zze, zzfdnVar.zzT);
            }
            String zzf2 = zzf(zzf(zzf(str6, "@gw_adnetstatus@", this.zza.zzf()), "@gw_seqnum@", this.zzc), "@gw_sessid@", this.zzd);
            boolean z2 = false;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzch)).booleanValue()) {
                z2 = false;
                if (!TextUtils.isEmpty(str)) {
                    z2 = true;
                }
            }
            boolean z3 = !TextUtils.isEmpty(str2);
            boolean z4 = z3;
            if (!z2) {
                str3 = zzf2;
                if (z3) {
                    z4 = true;
                } else {
                    arrayList.add(str3);
                }
            }
            str3 = zzf2;
            if (this.zzh.zzf(Uri.parse(zzf2))) {
                Uri.Builder buildUpon = Uri.parse(zzf2).buildUpon();
                Uri.Builder builder = buildUpon;
                if (z2) {
                    builder = buildUpon.appendQueryParameter("ms", str);
                }
                Uri.Builder builder2 = builder;
                if (z4) {
                    builder2 = builder.appendQueryParameter("attok", str2);
                }
                str3 = builder2.build().toString();
            }
            arrayList.add(str3);
        }
        return arrayList;
    }

    public final List<String> zzc(zzfdn zzfdnVar, List<String> list, zzceg zzcegVar) {
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = this.zzg.currentTimeMillis();
        try {
            String zzc = zzcegVar.zzc();
            String num = Integer.toString(zzcegVar.zzb());
            zzfea zzfeaVar = this.zzf;
            String str = "";
            String zze = zzfeaVar == null ? "" : zze(zzfeaVar.zza);
            zzfea zzfeaVar2 = this.zzf;
            if (zzfeaVar2 != null) {
                str = zze(zzfeaVar2.zzb);
            }
            for (String str2 : list) {
                arrayList.add(zzchj.zzc(zzf(zzf(zzf(zzf(zzf(zzf(str2, "@gw_rwd_userid@", Uri.encode(zze)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(currentTimeMillis)), "@gw_rwd_itm@", Uri.encode(zzc)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.zzb), this.zze, zzfdnVar.zzT));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzciz.zzh("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }
}
