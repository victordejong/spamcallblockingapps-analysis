package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.C12267ce;
import com.google.android.gms.internal.ads.cgr;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzs.class */
public final class zzs {
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
        if (bundle == null) {
            return;
        }
        String mo17481a = C12267ce.f45605c.mo17481a();
        for (String str : bundle.keySet()) {
            if (mo17481a.equals(str)) {
                this.zzbrm = bundle.getString(str);
            } else if (str.startsWith("csa_")) {
                this.zzbrk.put(str.substring(4), bundle.getString(str));
            }
        }
        this.zzbrk.put("SDKVersion", zzbarVar.zzbrz);
        if (!C12267ce.f45603a.mo17481a().booleanValue()) {
            return;
        }
        try {
            Bundle m17468a = cgr.m17468a(this.context, new JSONArray(C12267ce.f45604b.mo17481a()));
            for (String str2 : m17468a.keySet()) {
                this.zzbrk.put(str2, m17468a.get(str2).toString());
            }
        } catch (JSONException e) {
            zzd.zzc("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
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
