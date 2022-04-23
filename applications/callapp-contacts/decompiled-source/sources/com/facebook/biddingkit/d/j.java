package com.facebook.biddingkit.d;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    int f19725a;

    /* renamed from: b  reason: collision with root package name */
    int f19726b;

    /* renamed from: c  reason: collision with root package name */
    String f19727c;

    public j(String str) {
        this.f19725a = 15000;
        this.f19726b = 60000;
        this.f19727c = "https://www.facebook.com/audiencenetwork/bidding_kit_logging";
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject optJSONObject = new JSONObject(str).optJSONObject("logging");
                if (optJSONObject != null) {
                    if (optJSONObject.has("cycle_separation_ms")) {
                        this.f19725a = optJSONObject.getInt("cycle_separation_ms");
                    }
                    if (optJSONObject.has("network_wait_on_failure_ms")) {
                        this.f19726b = optJSONObject.getInt("network_wait_on_failure_ms");
                    }
                    if (optJSONObject.has("dispatcher_url")) {
                        this.f19727c = optJSONObject.getString("dispatcher_url");
                    }
                }
            } catch (JSONException e) {
                b.a("LoggingConfig", "Failed to parse configuration.", e);
            }
        }
    }
}
