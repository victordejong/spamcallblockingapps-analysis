package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.ce;
import com.google.android.gms.internal.ads.cgr;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzs.class */
final class zzs {
    private final Context context;
    private final String zzbrj;
    private final Map<String, String> zzbrk = new TreeMap();
    private String zzbrl;
    private String zzbrm;

    public zzs(Context context, String str) {
        this.context = context.getApplicationContext();
        this.zzbrj = str;
    }

    public final String getQuery() {
        return this.zzbrl;
    }

    public final void zza(zzvq zzvqVar, zzbar zzbarVar) {
        this.zzbrl = zzvqVar.zzcif.zzbrl;
        Bundle bundle = zzvqVar.zzcih != null ? zzvqVar.zzcih.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle != null) {
            String a2 = ce.f25670c.a();
            for (String str : bundle.keySet()) {
                if (a2.equals(str)) {
                    this.zzbrm = bundle.getString(str);
                } else if (str.startsWith("csa_")) {
                    this.zzbrk.put(str.substring(4), bundle.getString(str));
                }
            }
            this.zzbrk.put("SDKVersion", zzbarVar.zzbrz);
            if (ce.f25668a.a().booleanValue()) {
                try {
                    Bundle a3 = cgr.a(this.context, new JSONArray(ce.f25669b.a()));
                    for (String str2 : a3.keySet()) {
                        this.zzbrk.put(str2, a3.get(str2).toString());
                    }
                } catch (JSONException e) {
                    zzd.zzc("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
                }
            }
        }
    }

    public final String zzlu() {
        return this.zzbrm;
    }

    public final String zzlv() {
        return this.zzbrj;
    }

    public final Map<String, String> zzlw() {
        return this.zzbrk;
    }
}
