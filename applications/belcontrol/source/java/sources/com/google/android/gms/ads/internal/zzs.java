package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzdfd;
import com.google.android.gms.internal.ads.zzvl;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzs.class */
public final class zzs {
    private final Context context;
    private final String zzbqz;
    private final Map<String, String> zzbra = new TreeMap();
    private String zzbrb;
    private String zzbrc;

    public zzs(Context context, String str) {
        this.context = context.getApplicationContext();
        this.zzbqz = str;
    }

    public final String getQuery() {
        return this.zzbrb;
    }

    public final void zza(zzvl zzvlVar, zzazn zzaznVar) {
        this.zzbrb = zzvlVar.zzchs.zzbrb;
        Bundle bundle = zzvlVar.zzchu;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String str = zzadb.zzdcq.get();
        for (String str2 : bundle2.keySet()) {
            if (str.equals(str2)) {
                this.zzbrc = bundle2.getString(str2);
            } else if (str2.startsWith("csa_")) {
                this.zzbra.put(str2.substring(4), bundle2.getString(str2));
            }
        }
        this.zzbra.put("SDKVersion", zzaznVar.zzbrp);
        if (!zzadb.zzdco.get().booleanValue()) {
            return;
        }
        try {
            Bundle zza = zzdfd.zza(this.context, new JSONArray(zzadb.zzdcp.get()));
            for (String str3 : zza.keySet()) {
                this.zzbra.put(str3, zza.get(str3).toString());
            }
        } catch (JSONException e) {
            zzazk.zzc("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
        }
    }

    public final String zzlq() {
        return this.zzbrc;
    }

    public final String zzlr() {
        return this.zzbqz;
    }

    public final Map<String, String> zzls() {
        return this.zzbra;
    }
}
