package com.google.android.gms.internal.ads;

import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mh.class */
public final class mh {

    /* renamed from: a  reason: collision with root package name */
    public final List<mi> f28197a;

    /* renamed from: b  reason: collision with root package name */
    private final long f28198b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f28199c;

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f28200d;
    private final List<String> e;
    private final List<String> f;
    private final List<String> g;
    private final boolean h;
    private final String i;
    private final long j;
    private final String k;
    private final int l;
    private final int m;
    private final long n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private int s;
    private int t;
    private boolean u;

    public mh(JSONObject jSONObject) throws JSONException {
        if (zzd.isLoggable(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzd.zzed(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                mi miVar = new mi(jSONArray.getJSONObject(i2));
                boolean z = true;
                if ("banner".equalsIgnoreCase(miVar.f28203c)) {
                    this.u = true;
                }
                arrayList.add(miVar);
                i = i;
                if (i < 0) {
                    Iterator<String> it2 = miVar.f28201a.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (it2.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    i = i;
                    if (z) {
                        i = i2;
                    }
                }
            } catch (JSONException e) {
                i = i;
            }
        }
        this.s = i;
        this.t = jSONArray.length();
        this.f28197a = Collections.unmodifiableList(arrayList);
        this.i = jSONObject.optString("qdata");
        this.m = jSONObject.optInt("fs_model_type", -1);
        long j = -1;
        this.n = jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            this.f28198b = optJSONObject.optLong("ad_network_timeout_millis", -1L);
            zzr.zzln();
            this.f28199c = mk.a(optJSONObject, "click_urls");
            zzr.zzln();
            this.f28200d = mk.a(optJSONObject, "imp_urls");
            zzr.zzln();
            this.e = mk.a(optJSONObject, "downloaded_imp_urls");
            zzr.zzln();
            this.f = mk.a(optJSONObject, "nofill_urls");
            zzr.zzln();
            this.g = mk.a(optJSONObject, "remote_ping_urls");
            this.h = optJSONObject.optBoolean("render_in_browser", false);
            long optLong = optJSONObject.optLong("refresh", -1L);
            this.j = optLong > 0 ? 1000 * optLong : j;
            zzavy zza = zzavy.zza(optJSONObject.optJSONArray(Constants.REWARDS));
            if (zza == null) {
                this.k = null;
                this.l = 0;
            } else {
                this.k = zza.type;
                this.l = zza.zzean;
            }
            this.o = optJSONObject.optBoolean("use_displayed_impression", false);
            this.p = optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            this.q = optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            this.r = optJSONObject.optBoolean("allow_custom_click_gesture", false);
            return;
        }
        this.f28198b = -1L;
        this.f28199c = null;
        this.f28200d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.j = -1L;
        this.k = null;
        this.l = 0;
        this.o = false;
        this.h = false;
        this.p = false;
        this.q = false;
        this.r = false;
    }
}
