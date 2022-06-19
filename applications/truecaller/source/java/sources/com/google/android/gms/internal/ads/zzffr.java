package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffr.class */
public final class zzffr {
    private final zzehp zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfam zzf;
    private final Clock zzg;
    private final zzaas zzh;

    public zzffr(zzehp zzehpVar, zzcgz zzcgzVar, String str, String str2, Context context, zzfam zzfamVar, Clock clock, zzaas zzaasVar) {
        this.zza = zzehpVar;
        this.zzb = zzcgzVar.zza;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfamVar;
        this.zzg = clock;
        this.zzh = zzaasVar;
    }

    public static final List<String> zzd(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(zze(str, "@gw_mpe@", C22128a.m8690L1(23, "2.", i2)));
        }
        return arrayList;
    }

    private static String zze(String str, String str2, String str3) {
        String str4 = str3;
        if (true == TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    private static String zzf(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (zzcgs.zzj()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    public final List<String> zza(zzfal zzfalVar, zzezz zzezzVar, List<String> list) {
        return zzb(zzfalVar, zzezzVar, false, "", "", list);
    }

    public final List<String> zzb(zzfal zzfalVar, zzezz zzezzVar, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = true != z ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1";
        for (String str5 : list) {
            String zze = zze(zze(zze(str5, "@gw_adlocid@", zzfalVar.zza.zza.zzf), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.zzb);
            String str6 = zze;
            if (zzezzVar != null) {
                str6 = zzcfc.zza(zze(zze(zze(zze, "@gw_qdata@", zzezzVar.zzy), "@gw_adnetid@", zzezzVar.zzx), "@gw_allocid@", zzezzVar.zzw), this.zze, zzezzVar.zzS);
            }
            String zze2 = zze(zze(zze(str6, "@gw_adnetstatus@", this.zza.zzg()), "@gw_seqnum@", this.zzc), "@gw_sessid@", this.zzd);
            boolean z2 = false;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzca)).booleanValue()) {
                z2 = false;
                if (!TextUtils.isEmpty(str)) {
                    z2 = true;
                }
            }
            boolean z3 = !TextUtils.isEmpty(str2);
            boolean z4 = z3;
            if (!z2) {
                str3 = zze2;
                if (z3) {
                    z4 = true;
                } else {
                    arrayList.add(str3);
                }
            }
            str3 = zze2;
            if (this.zzh.zza(Uri.parse(zze2))) {
                Uri.Builder buildUpon = Uri.parse(zze2).buildUpon();
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

    public final List<String> zzc(zzezz zzezzVar, List<String> list, zzcbz zzcbzVar) {
        ArrayList arrayList = new ArrayList();
        long mo38787c = this.zzg.mo38787c();
        try {
            String zzb = zzcbzVar.zzb();
            String num = Integer.toString(zzcbzVar.zzc());
            zzfam zzfamVar = this.zzf;
            String str = "";
            String zzf = zzfamVar == null ? "" : zzf(zzfamVar.zza);
            zzfam zzfamVar2 = this.zzf;
            if (zzfamVar2 != null) {
                str = zzf(zzfamVar2.zzb);
            }
            for (String str2 : list) {
                arrayList.add(zzcfc.zza(zze(zze(zze(zze(zze(zze(str2, "@gw_rwd_userid@", Uri.encode(zzf)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(mo38787c)), "@gw_rwd_itm@", Uri.encode(zzb)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.zzb), this.zze, zzezzVar.zzS));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzcgt.zzg("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }
}
