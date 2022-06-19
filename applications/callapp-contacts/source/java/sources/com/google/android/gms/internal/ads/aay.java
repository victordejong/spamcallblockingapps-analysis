package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aay.class */
public final class aay {

    /* renamed from: a */
    public final boolean f39734a;

    /* renamed from: b */
    public final int f39735b;

    /* renamed from: c */
    public final int f39736c;

    /* renamed from: d */
    public final int f39737d;

    /* renamed from: e */
    public final int f39738e;

    /* renamed from: f */
    public final int f39739f;

    /* renamed from: g */
    public final int f39740g;

    /* renamed from: h */
    public final int f39741h;

    /* renamed from: i */
    public final boolean f39742i;

    /* renamed from: j */
    public final int f39743j;

    /* renamed from: k */
    public final boolean f39744k;

    /* renamed from: l */
    private final String f39745l;

    public aay(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.f39734a = m18942a(jSONObject, "aggressive_media_codec_release", C12187aq.f42611A);
        this.f39735b = m18940b(jSONObject, "byte_buffer_precache_limit", C12187aq.f42955g);
        this.f39736c = m18940b(jSONObject, "exo_cache_buffer_size", C12187aq.f42990p);
        this.f39737d = m18940b(jSONObject, "exo_connect_timeout_millis", C12187aq.f42743c);
        this.f39745l = m18939c(jSONObject, "exo_player_version", C12187aq.f42690b);
        this.f39738e = m18940b(jSONObject, "exo_read_timeout_millis", C12187aq.f42796d);
        this.f39739f = m18940b(jSONObject, "load_check_interval_bytes", C12187aq.f42849e);
        this.f39740g = m18940b(jSONObject, "player_precache_limit", C12187aq.f42902f);
        this.f39741h = m18940b(jSONObject, "socket_receive_buffer_size", C12187aq.f42982h);
        this.f39742i = m18942a(jSONObject, "use_cache_data_source", C12187aq.f42783cn);
        this.f39743j = m18940b(jSONObject, "min_retry_count", C12187aq.f42984j);
        this.f39744k = m18942a(jSONObject, "treat_load_exception_as_non_fatal", C12187aq.f42987m);
    }

    /* renamed from: a */
    private static boolean m18942a(JSONObject jSONObject, String str, AbstractC12172af<Boolean> abstractC12172af) {
        return m18941a(jSONObject, str, ((Boolean) ekb.m14831e().m18571a(abstractC12172af)).booleanValue());
    }

    /* renamed from: a */
    private static boolean m18941a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException e) {
            }
        }
        return z;
    }

    /* renamed from: b */
    private static int m18940b(JSONObject jSONObject, String str, AbstractC12172af<Integer> abstractC12172af) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) ekb.m14831e().m18571a(abstractC12172af)).intValue();
    }

    /* renamed from: c */
    private static String m18939c(JSONObject jSONObject, String str, AbstractC12172af<String> abstractC12172af) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException e) {
            }
        }
        return (String) ekb.m14831e().m18571a(abstractC12172af);
    }
}
