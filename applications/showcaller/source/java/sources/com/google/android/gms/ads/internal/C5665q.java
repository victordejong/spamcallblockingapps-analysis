package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.internal.ads.C6865px;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.ta2;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.google.android.gms.ads.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/q.class */
public final class C5665q {

    /* renamed from: a */
    private final Context f18390a;

    /* renamed from: b */
    private final String f18391b;

    /* renamed from: c */
    private final Map<String, String> f18392c = new TreeMap();

    /* renamed from: d */
    private String f18393d;

    /* renamed from: e */
    private String f18394e;

    /* renamed from: f */
    private final String f18395f;

    public C5665q(Context context, String str) {
        String str2;
        this.f18390a = context.getApplicationContext();
        this.f18391b = str;
        String packageName = context.getPackageName();
        try {
            String str3 = C6198c.m16885a(context).m16888f(context.getPackageName(), 0).versionName;
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 1 + String.valueOf(str3).length());
            sb.append(packageName);
            sb.append("-");
            sb.append(str3);
            str2 = sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            ei0.m15466d("Unable to get package version name for reporting", e);
            str2 = String.valueOf(packageName).concat("-missing");
        }
        this.f18395f = str2;
    }

    /* renamed from: a */
    public final String m18183a() {
        return this.f18394e;
    }

    /* renamed from: b */
    public final String m18182b() {
        return this.f18393d;
    }

    /* renamed from: c */
    public final String m18181c() {
        return this.f18391b;
    }

    /* renamed from: d */
    public final String m18180d() {
        return this.f18395f;
    }

    /* renamed from: e */
    public final Map<String, String> m18179e() {
        return this.f18392c;
    }

    /* renamed from: f */
    public final void m18178f(zzbdg zzbdgVar, zzcgz zzcgzVar) {
        this.f18393d = zzbdgVar.f33668m.f33711d;
        Bundle bundle = zzbdgVar.f33671p;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String m12799e = C6865px.f28206c.m12799e();
        for (String str : bundle2.keySet()) {
            if (m12799e.equals(str)) {
                this.f18394e = bundle2.getString(str);
            } else if (str.startsWith("csa_")) {
                this.f18392c.put(str.substring(4), bundle2.getString(str));
            }
        }
        this.f18392c.put("SDKVersion", zzcgzVar.f33854d);
        if (!C6865px.f28204a.m12799e().booleanValue()) {
            return;
        }
        try {
            Bundle m10754a = ta2.m10754a(this.f18390a, new JSONArray(C6865px.f28205b.m12799e()));
            for (String str2 : m10754a.keySet()) {
                this.f18392c.put(str2, m10754a.get(str2).toString());
            }
        } catch (JSONException e) {
            ei0.m15466d("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
        }
    }
}
