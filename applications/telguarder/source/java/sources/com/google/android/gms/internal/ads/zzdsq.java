package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsq.class */
public final class zzdsq {
    private final Context context;
    private final Clock zzbqg;
    private final String zzbrp;
    private final String zzcjn;
    private final String zzdug;
    private final zzei zzfrl;
    private final zzdnk zzfyy;
    private final zzcuw zzgat;

    public zzdsq(zzcuw zzcuwVar, zzazn zzaznVar, String str, String str2, Context context, zzdnk zzdnkVar, Clock clock, zzei zzeiVar) {
        this.zzgat = zzcuwVar;
        this.zzbrp = zzaznVar.zzbrp;
        this.zzdug = str;
        this.zzcjn = str2;
        this.context = context;
        this.zzfyy = zzdnkVar;
        this.zzbqg = clock;
        this.zzfrl = zzeiVar;
    }

    public static List<String> zza(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            StringBuilder sb = new StringBuilder(23);
            sb.append(2);
            sb.append(".");
            sb.append(i2);
            arrayList.add(zzc(str, "@gw_mpe@", sb.toString()));
        }
        return arrayList;
    }

    private static String zzc(String str, String str2, String str3) {
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    private static String zzhb(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (zzaze.isEnabled()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    public final List<String> zza(zzdmw zzdmwVar, List<String> list, zzauk zzaukVar) {
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = this.zzbqg.currentTimeMillis();
        try {
            String type = zzaukVar.getType();
            String num = Integer.toString(zzaukVar.getAmount());
            zzdnk zzdnkVar = this.zzfyy;
            String str = "";
            String zzhb = zzdnkVar == null ? "" : zzhb(zzdnkVar.zzdzh);
            zzdnk zzdnkVar2 = this.zzfyy;
            if (zzdnkVar2 != null) {
                str = zzhb(zzdnkVar2.zzdzi);
            }
            for (String str2 : list) {
                arrayList.add(zzaxu.zzc(zzc(zzc(zzc(zzc(zzc(zzc(str2, "@gw_rwd_userid@", Uri.encode(zzhb)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(currentTimeMillis)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.zzbrp), this.context, zzdmwVar.zzdwz));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzd.zzc("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }

    public final List<String> zza(zzdnl zzdnlVar, zzdmw zzdmwVar, List<String> list) {
        return zza(zzdnlVar, zzdmwVar, false, "", "", list);
    }

    public final List<String> zza(zzdnl zzdnlVar, zzdmw zzdmwVar, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO;
        for (String str5 : list) {
            String zzc = zzc(zzc(zzc(str5, "@gw_adlocid@", zzdnlVar.zzhkr.zzfwy.zzhkx), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.zzbrp);
            String str6 = zzc;
            if (zzdmwVar != null) {
                str6 = zzaxu.zzc(zzc(zzc(zzc(zzc, "@gw_qdata@", zzdmwVar.zzdmv), "@gw_adnetid@", zzdmwVar.f119id), "@gw_allocid@", zzdmwVar.zzdlu), this.context, zzdmwVar.zzdwz);
            }
            String zzc2 = zzc(zzc(zzc(str6, "@gw_adnetstatus@", this.zzgat.zzasc()), "@gw_seqnum@", this.zzdug), "@gw_sessid@", this.zzcjn);
            boolean z2 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsq)).booleanValue() && !TextUtils.isEmpty(str);
            boolean isEmpty = true ^ TextUtils.isEmpty(str2);
            if (!z2) {
                str3 = zzc2;
                if (!isEmpty) {
                    arrayList.add(str3);
                }
            }
            str3 = zzc2;
            if (this.zzfrl.zzb(Uri.parse(zzc2))) {
                Uri.Builder buildUpon = Uri.parse(zzc2).buildUpon();
                Uri.Builder builder = buildUpon;
                if (z2) {
                    builder = buildUpon.appendQueryParameter("ms", str);
                }
                Uri.Builder builder2 = builder;
                if (isEmpty) {
                    builder2 = builder.appendQueryParameter("attok", str2);
                }
                str3 = builder2.build().toString();
            }
            arrayList.add(str3);
        }
        return arrayList;
    }
}
