package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.qq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qq.class */
public final class C1911qq {

    /* renamed from: a */
    public final boolean f8235a;

    /* renamed from: b */
    public final int f8236b;

    /* renamed from: c */
    public final int f8237c;

    /* renamed from: d */
    public final int f8238d;

    /* renamed from: e */
    public final int f8239e;

    /* renamed from: f */
    public final int f8240f;

    /* renamed from: g */
    public final int f8241g;

    /* renamed from: h */
    public final int f8242h;

    /* renamed from: i */
    public final boolean f8243i;

    /* renamed from: j */
    public final int f8244j;

    /* renamed from: k */
    public final boolean f8245k;

    public C1911qq(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.f8235a = m6074a(jSONObject, "aggressive_media_codec_release", C1842m3.f7209A);
        this.f8236b = m6073b(jSONObject, "byte_buffer_precache_limit", C1842m3.f7412g);
        this.f8237c = m6073b(jSONObject, "exo_cache_buffer_size", C1842m3.f7475p);
        this.f8238d = m6073b(jSONObject, "exo_connect_timeout_millis", C1842m3.f7384c);
        AbstractC1714e3<String> abstractC1714e3 = C1842m3.f7377b;
        if (jSONObject != null) {
            try {
                jSONObject.getString("exo_player_version");
            } catch (JSONException e2) {
            }
            this.f8239e = m6073b(jSONObject, "exo_read_timeout_millis", C1842m3.f7391d);
            this.f8240f = m6073b(jSONObject, "load_check_interval_bytes", C1842m3.f7398e);
            this.f8241g = m6073b(jSONObject, "player_precache_limit", C1842m3.f7405f);
            this.f8242h = m6073b(jSONObject, "socket_receive_buffer_size", C1842m3.f7419h);
            this.f8243i = m6074a(jSONObject, "use_cache_data_source", C1842m3.f7422h2);
            this.f8244j = m6073b(jSONObject, "min_retry_count", C1842m3.f7433j);
            this.f8245k = m6074a(jSONObject, "treat_load_exception_as_non_fatal", C1842m3.f7454m);
        }
        String str2 = (String) C1674c.m7906c().m6878b(abstractC1714e3);
        this.f8239e = m6073b(jSONObject, "exo_read_timeout_millis", C1842m3.f7391d);
        this.f8240f = m6073b(jSONObject, "load_check_interval_bytes", C1842m3.f7398e);
        this.f8241g = m6073b(jSONObject, "player_precache_limit", C1842m3.f7405f);
        this.f8242h = m6073b(jSONObject, "socket_receive_buffer_size", C1842m3.f7419h);
        this.f8243i = m6074a(jSONObject, "use_cache_data_source", C1842m3.f7422h2);
        this.f8244j = m6073b(jSONObject, "min_retry_count", C1842m3.f7433j);
        this.f8245k = m6074a(jSONObject, "treat_load_exception_as_non_fatal", C1842m3.f7454m);
    }

    /* renamed from: a */
    private static final boolean m6074a(JSONObject jSONObject, String str, AbstractC1714e3<Boolean> abstractC1714e3) {
        boolean booleanValue = ((Boolean) C1674c.m7906c().m6878b(abstractC1714e3)).booleanValue();
        boolean z = booleanValue;
        if (jSONObject != null) {
            try {
                z = jSONObject.getBoolean(str);
            } catch (JSONException e) {
                z = booleanValue;
            }
        }
        return z;
    }

    /* renamed from: b */
    private static final int m6073b(JSONObject jSONObject, String str, AbstractC1714e3<Integer> abstractC1714e3) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) C1674c.m7906c().m6878b(abstractC1714e3)).intValue();
    }
}
