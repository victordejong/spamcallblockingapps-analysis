package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aay.class */
public final class aay {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f23027a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23028b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23029c;

    /* renamed from: d  reason: collision with root package name */
    public final int f23030d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final boolean i;
    public final int j;
    public final boolean k;
    private final String l;

    public aay(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.f23027a = a(jSONObject, "aggressive_media_codec_release", aq.A);
        this.f23028b = b(jSONObject, "byte_buffer_precache_limit", aq.g);
        this.f23029c = b(jSONObject, "exo_cache_buffer_size", aq.p);
        this.f23030d = b(jSONObject, "exo_connect_timeout_millis", aq.f23742c);
        this.l = c(jSONObject, "exo_player_version", aq.f23741b);
        this.e = b(jSONObject, "exo_read_timeout_millis", aq.f23743d);
        this.f = b(jSONObject, "load_check_interval_bytes", aq.e);
        this.g = b(jSONObject, "player_precache_limit", aq.f);
        this.h = b(jSONObject, "socket_receive_buffer_size", aq.h);
        this.i = a(jSONObject, "use_cache_data_source", aq.cn);
        this.j = b(jSONObject, "min_retry_count", aq.j);
        this.k = a(jSONObject, "treat_load_exception_as_non_fatal", aq.m);
    }

    private static boolean a(JSONObject jSONObject, String str, af<Boolean> afVar) {
        return a(jSONObject, str, ((Boolean) ekb.e().a(afVar)).booleanValue());
    }

    private static boolean a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException e) {
            }
        }
        return z;
    }

    private static int b(JSONObject jSONObject, String str, af<Integer> afVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) ekb.e().a(afVar)).intValue();
    }

    private static String c(JSONObject jSONObject, String str, af<String> afVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException e) {
            }
        }
        return (String) ekb.e().a(afVar);
    }
}
