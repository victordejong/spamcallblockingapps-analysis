package com.facebook.biddingkit.p293d;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.biddingkit.d.j */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/j.class */
public final class C10139j {

    /* renamed from: a */
    int f33529a;

    /* renamed from: b */
    int f33530b;

    /* renamed from: c */
    String f33531c;

    public C10139j(String str) {
        this.f33529a = 15000;
        this.f33530b = 60000;
        this.f33531c = "https://www.facebook.com/audiencenetwork/bidding_kit_logging";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("logging");
            if (optJSONObject == null) {
                return;
            }
            if (optJSONObject.has("cycle_separation_ms")) {
                this.f33529a = optJSONObject.getInt("cycle_separation_ms");
            }
            if (optJSONObject.has("network_wait_on_failure_ms")) {
                this.f33530b = optJSONObject.getInt("network_wait_on_failure_ms");
            }
            if (!optJSONObject.has("dispatcher_url")) {
                return;
            }
            this.f33531c = optJSONObject.getString("dispatcher_url");
        } catch (JSONException e) {
            C10123b.m23369a("LoggingConfig", "Failed to parse configuration.", e);
        }
    }
}
