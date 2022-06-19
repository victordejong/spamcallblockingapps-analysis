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
/* renamed from: com.google.android.gms.internal.ads.mh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mh.class */
public final class C12741mh {

    /* renamed from: a */
    public final List<C12742mi> f49514a;

    /* renamed from: b */
    private final long f49515b;

    /* renamed from: c */
    private final List<String> f49516c;

    /* renamed from: d */
    private final List<String> f49517d;

    /* renamed from: e */
    private final List<String> f49518e;

    /* renamed from: f */
    private final List<String> f49519f;

    /* renamed from: g */
    private final List<String> f49520g;

    /* renamed from: h */
    private final boolean f49521h;

    /* renamed from: i */
    private final String f49522i;

    /* renamed from: j */
    private final long f49523j;

    /* renamed from: k */
    private final String f49524k;

    /* renamed from: l */
    private final int f49525l;

    /* renamed from: m */
    private final int f49526m;

    /* renamed from: n */
    private final long f49527n;

    /* renamed from: o */
    private final boolean f49528o;

    /* renamed from: p */
    private final boolean f49529p;

    /* renamed from: q */
    private final boolean f49530q;

    /* renamed from: r */
    private final boolean f49531r;

    /* renamed from: s */
    private int f49532s;

    /* renamed from: t */
    private int f49533t;

    /* renamed from: u */
    private boolean f49534u;

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    public C12741mh(JSONObject jSONObject) throws JSONException {
        int i;
        int i2;
        if (zzd.isLoggable(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzd.zzed(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i4;
            if (i3 >= jSONArray.length()) {
                break;
            }
            try {
                C12742mi c12742mi = new C12742mi(jSONArray.getJSONObject(i3));
                boolean z = true;
                if ("banner".equalsIgnoreCase(c12742mi.f49537c)) {
                    this.f49534u = true;
                }
                arrayList.add(c12742mi);
                i2 = i;
                if (i < 0) {
                    Iterator<String> it2 = c12742mi.f49535a.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z = false;
                            break;
                        } else if (it2.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                            break;
                        }
                    }
                    i2 = i;
                    if (z) {
                        i2 = i3;
                    }
                }
            } catch (JSONException e) {
                i2 = i;
            }
            i3++;
            i4 = i2;
        }
        this.f49532s = i;
        this.f49533t = jSONArray.length();
        this.f49514a = Collections.unmodifiableList(arrayList);
        this.f49522i = jSONObject.optString("qdata");
        this.f49526m = jSONObject.optInt("fs_model_type", -1);
        char c = 65535;
        this.f49527n = jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject == null) {
            this.f49515b = -1L;
            this.f49516c = null;
            this.f49517d = null;
            this.f49518e = null;
            this.f49519f = null;
            this.f49520g = null;
            this.f49523j = -1L;
            this.f49524k = null;
            this.f49525l = 0;
            this.f49528o = false;
            this.f49521h = false;
            this.f49529p = false;
            this.f49530q = false;
            this.f49531r = false;
            return;
        }
        this.f49515b = optJSONObject.optLong("ad_network_timeout_millis", -1L);
        zzr.zzln();
        this.f49516c = C12744mk.m14489a(optJSONObject, "click_urls");
        zzr.zzln();
        this.f49517d = C12744mk.m14489a(optJSONObject, "imp_urls");
        zzr.zzln();
        this.f49518e = C12744mk.m14489a(optJSONObject, "downloaded_imp_urls");
        zzr.zzln();
        this.f49519f = C12744mk.m14489a(optJSONObject, "nofill_urls");
        zzr.zzln();
        this.f49520g = C12744mk.m14489a(optJSONObject, "remote_ping_urls");
        this.f49521h = optJSONObject.optBoolean("render_in_browser", false);
        long optLong = optJSONObject.optLong("refresh", -1L);
        this.f49523j = optLong > 0 ? 1000 * optLong : c;
        zzavy zza = zzavy.zza(optJSONObject.optJSONArray(Constants.REWARDS));
        if (zza == null) {
            this.f49524k = null;
            this.f49525l = 0;
        } else {
            this.f49524k = zza.type;
            this.f49525l = zza.zzean;
        }
        this.f49528o = optJSONObject.optBoolean("use_displayed_impression", false);
        this.f49529p = optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
        this.f49530q = optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
        this.f49531r = optJSONObject.optBoolean("allow_custom_click_gesture", false);
    }
}
