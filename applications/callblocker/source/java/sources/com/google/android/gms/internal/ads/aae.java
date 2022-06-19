package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aae.class */
public final class aae {

    /* renamed from: a */
    public final boolean f7611a;

    /* renamed from: b */
    public final int f7612b;

    /* renamed from: c */
    public final int f7613c;

    /* renamed from: d */
    public final int f7614d;

    /* renamed from: e */
    public final int f7615e;

    /* renamed from: f */
    public final int f7616f;

    /* renamed from: g */
    public final int f7617g;

    /* renamed from: h */
    public final int f7618h;

    /* renamed from: i */
    public final boolean f7619i;

    /* renamed from: j */
    public final int f7620j;

    /* renamed from: k */
    private final String f7621k;

    public aae(String str) {
        JSONObject jSONObject;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        } else {
            jSONObject = null;
        }
        this.f7611a = m13744a(jSONObject, "aggressive_media_codec_release", edi.f16613y);
        this.f7612b = m13742b(jSONObject, "byte_buffer_precache_limit", edi.f16596h);
        this.f7613c = m13742b(jSONObject, "exo_cache_buffer_size", edi.f16602n);
        this.f7614d = m13742b(jSONObject, "exo_connect_timeout_millis", edi.f16500d);
        this.f7621k = m13741c(jSONObject, "exo_player_version", edi.f16447c);
        this.f7615e = m13742b(jSONObject, "exo_read_timeout_millis", edi.f16553e);
        this.f7616f = m13742b(jSONObject, "load_check_interval_bytes", edi.f16594f);
        this.f7617g = m13742b(jSONObject, "player_precache_limit", edi.f16595g);
        this.f7618h = m13742b(jSONObject, "socket_receive_buffer_size", edi.f16597i);
        this.f7619i = m13744a(jSONObject, "use_cache_data_source", edi.f16408bN);
        this.f7620j = m13742b(jSONObject, "min_retry_count", edi.f16599k);
    }

    /* renamed from: a */
    private static boolean m13744a(JSONObject jSONObject, String str, ect<Boolean> ectVar) {
        return m13743a(jSONObject, str, ((Boolean) dyx.m8158e().m7876a(ectVar)).booleanValue());
    }

    /* renamed from: a */
    private static boolean m13743a(JSONObject jSONObject, String str, boolean z) {
        boolean z2 = z;
        if (jSONObject != null) {
            try {
                z2 = jSONObject.getBoolean(str);
            } catch (JSONException e) {
                z2 = z;
            }
        }
        return z2;
    }

    /* renamed from: b */
    private static int m13742b(JSONObject jSONObject, String str, ect<Integer> ectVar) {
        int i;
        if (jSONObject != null) {
            try {
                i = jSONObject.getInt(str);
            } catch (JSONException e) {
            }
            return i;
        }
        i = ((Integer) dyx.m8158e().m7876a(ectVar)).intValue();
        return i;
    }

    /* renamed from: c */
    private static String m13741c(JSONObject jSONObject, String str, ect<String> ectVar) {
        String string;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString(str);
            } catch (JSONException e) {
            }
            return string;
        }
        string = (String) dyx.m8158e().m7876a(ectVar);
        return string;
    }
}
