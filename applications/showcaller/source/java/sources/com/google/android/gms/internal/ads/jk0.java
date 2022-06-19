package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jk0.class */
public final class jk0 {

    /* renamed from: a */
    public final boolean f24905a;

    /* renamed from: b */
    public final int f24906b;

    /* renamed from: c */
    public final int f24907c;

    /* renamed from: d */
    public final int f24908d;

    /* renamed from: e */
    public final String f24909e;

    /* renamed from: f */
    public final int f24910f;

    /* renamed from: g */
    public final int f24911g;

    /* renamed from: h */
    public final int f24912h;

    /* renamed from: i */
    public final int f24913i;

    /* renamed from: j */
    public final boolean f24914j;

    /* renamed from: k */
    public final int f24915k;

    /* renamed from: l */
    public final boolean f24916l;

    /* renamed from: m */
    public final boolean f24917m;

    /* renamed from: n */
    public final boolean f24918n;

    public jk0(String str) {
        String string;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.f24905a = m14105a(jSONObject, "aggressive_media_codec_release", C6679kw.f25459D);
        this.f24906b = m14104b(jSONObject, "byte_buffer_precache_limit", C6679kw.f25718j);
        this.f24907c = m14104b(jSONObject, "exo_cache_buffer_size", C6679kw.f25782r);
        this.f24908d = m14104b(jSONObject, "exo_connect_timeout_millis", C6679kw.f25686f);
        AbstractC6381cw<String> abstractC6381cw = C6679kw.f25678e;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString("exo_player_version");
            } catch (JSONException e2) {
            }
            this.f24909e = string;
            this.f24910f = m14104b(jSONObject, "exo_read_timeout_millis", C6679kw.f25694g);
            this.f24911g = m14104b(jSONObject, "load_check_interval_bytes", C6679kw.f25702h);
            this.f24912h = m14104b(jSONObject, "player_precache_limit", C6679kw.f25710i);
            this.f24913i = m14104b(jSONObject, "socket_receive_buffer_size", C6679kw.f25726k);
            this.f24914j = m14105a(jSONObject, "use_cache_data_source", C6679kw.f25494H2);
            this.f24915k = m14104b(jSONObject, "min_retry_count", C6679kw.f25734l);
            this.f24916l = m14105a(jSONObject, "treat_load_exception_as_non_fatal", C6679kw.f25758o);
            this.f24917m = m14105a(jSONObject, "using_official_simple_exo_player", C6679kw.f25744m1);
            this.f24918n = m14105a(jSONObject, "enable_multiple_video_playback", C6679kw.f25752n1);
        }
        string = (String) C7192yr.m8714c().m14263c(abstractC6381cw);
        this.f24909e = string;
        this.f24910f = m14104b(jSONObject, "exo_read_timeout_millis", C6679kw.f25694g);
        this.f24911g = m14104b(jSONObject, "load_check_interval_bytes", C6679kw.f25702h);
        this.f24912h = m14104b(jSONObject, "player_precache_limit", C6679kw.f25710i);
        this.f24913i = m14104b(jSONObject, "socket_receive_buffer_size", C6679kw.f25726k);
        this.f24914j = m14105a(jSONObject, "use_cache_data_source", C6679kw.f25494H2);
        this.f24915k = m14104b(jSONObject, "min_retry_count", C6679kw.f25734l);
        this.f24916l = m14105a(jSONObject, "treat_load_exception_as_non_fatal", C6679kw.f25758o);
        this.f24917m = m14105a(jSONObject, "using_official_simple_exo_player", C6679kw.f25744m1);
        this.f24918n = m14105a(jSONObject, "enable_multiple_video_playback", C6679kw.f25752n1);
    }

    /* renamed from: a */
    private static final boolean m14105a(JSONObject jSONObject, String str, AbstractC6381cw<Boolean> abstractC6381cw) {
        boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue();
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
    private static final int m14104b(JSONObject jSONObject, String str, AbstractC6381cw<Integer> abstractC6381cw) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) C7192yr.m8714c().m14263c(abstractC6381cw)).intValue();
    }
}
