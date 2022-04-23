package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdv.class */
public final class zzbdv {

    /* renamed from: a */
    public final boolean f24844a;

    /* renamed from: b */
    public final int f24845b;

    /* renamed from: c */
    public final int f24846c;

    /* renamed from: d */
    public final int f24847d;

    /* renamed from: e */
    public final int f24848e;

    /* renamed from: f */
    public final int f24849f;

    /* renamed from: g */
    public final int f24850g;

    /* renamed from: h */
    public final int f24851h;

    /* renamed from: i */
    public final boolean f24852i;

    /* renamed from: j */
    public final int f24853j;

    public zzbdv(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.f24844a = m15753a(jSONObject, "aggressive_media_codec_release", zzabb.f23919z);
        this.f24845b = m15751b(jSONObject, "byte_buffer_precache_limit", zzabb.f23820h);
        this.f24846c = m15751b(jSONObject, "exo_cache_buffer_size", zzabb.f23862o);
        this.f24847d = m15751b(jSONObject, "exo_connect_timeout_millis", zzabb.f23796d);
        m15750c(jSONObject, "exo_player_version", zzabb.f23790c);
        this.f24848e = m15751b(jSONObject, "exo_read_timeout_millis", zzabb.f23802e);
        this.f24849f = m15751b(jSONObject, "load_check_interval_bytes", zzabb.f23808f);
        this.f24850g = m15751b(jSONObject, "player_precache_limit", zzabb.f23814g);
        this.f24851h = m15751b(jSONObject, "socket_receive_buffer_size", zzabb.f23826i);
        this.f24852i = m15753a(jSONObject, "use_cache_data_source", zzabb.f23750U1);
        this.f24853j = m15751b(jSONObject, "min_retry_count", zzabb.f23838k);
    }

    /* renamed from: a */
    public static boolean m15753a(JSONObject jSONObject, String str, zzaaq<Boolean> zzaaqVar) {
        return m15752a(jSONObject, str, ((Boolean) zzwm.m11166e().m16921a(zzaaqVar)).booleanValue());
    }

    /* renamed from: a */
    public static boolean m15752a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException e) {
            }
        }
        return z;
    }

    /* renamed from: b */
    public static int m15751b(JSONObject jSONObject, String str, zzaaq<Integer> zzaaqVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) zzwm.m11166e().m16921a(zzaaqVar)).intValue();
    }

    /* renamed from: c */
    public static String m15750c(JSONObject jSONObject, String str, zzaaq<String> zzaaqVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException e) {
            }
        }
        return (String) zzwm.m11166e().m16921a(zzaaqVar);
    }
}
