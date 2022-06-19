package com.facebook.biddingkit.p293d;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.biddingkit.d.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/e.class */
public final class C10126e {

    /* renamed from: a */
    String f33506a;

    /* renamed from: b */
    String f33507b;

    /* renamed from: c */
    final Map<String, Map<String, String>> f33508c = new HashMap();

    /* renamed from: d */
    String f33509d;

    /* renamed from: a */
    private JSONObject m23366a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!this.f33508c.containsKey(str)) {
            return jSONObject;
        }
        for (Map.Entry<String, String> entry : this.f33508c.get(str).entrySet()) {
            if ("cpm_cents".equals(entry.getKey())) {
                jSONObject.put(entry.getKey(), Double.parseDouble(entry.getValue()));
            } else if ("latency_ms".equals(entry.getKey())) {
                jSONObject.put(entry.getKey(), Long.parseLong(entry.getValue()));
            } else {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public final JSONObject m23367a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Map<String, String>> entry : this.f33508c.entrySet()) {
            String key = entry.getKey();
            jSONObject.put(key, m23366a(key));
        }
        return jSONObject;
    }

    /* renamed from: b */
    public final JSONObject m23365b() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f33507b)) {
                jSONObject.put("auction_id", this.f33507b);
            }
            if (!TextUtils.isEmpty(this.f33509d)) {
                jSONObject.put("exception", this.f33509d);
            }
            for (Map.Entry<String, Map<String, String>> entry : this.f33508c.entrySet()) {
                String key = entry.getKey();
                jSONObject.put(key, m23366a(key));
            }
        } catch (JSONException e) {
            C10123b.m23369a("EventLog", "Failed to create json data", e);
        }
        return jSONObject;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.biddingkit.d.e$1] */
    /* renamed from: c */
    public final void m23364c() {
        new AsyncTask<C10126e, Void, Void>() { // from class: com.facebook.biddingkit.d.e.1
            @Override // android.os.AsyncTask
            protected final /* synthetic */ Void doInBackground(C10126e[] c10126eArr) {
                C10128f.m23360a(c10126eArr[0]);
                return null;
            }
        }.execute(this);
    }
}
