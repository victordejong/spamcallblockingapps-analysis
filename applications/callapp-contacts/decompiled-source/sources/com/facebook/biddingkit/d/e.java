package com.facebook.biddingkit.d;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    String f19705a;

    /* renamed from: b  reason: collision with root package name */
    String f19706b;

    /* renamed from: c  reason: collision with root package name */
    final Map<String, Map<String, String>> f19707c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    String f19708d;

    private JSONObject a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!this.f19707c.containsKey(str)) {
            return jSONObject;
        }
        for (Map.Entry<String, String> entry : this.f19707c.get(str).entrySet()) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Map<String, String>> entry : this.f19707c.entrySet()) {
            String key = entry.getKey();
            jSONObject.put(key, a(key));
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f19706b)) {
                jSONObject.put("auction_id", this.f19706b);
            }
            if (!TextUtils.isEmpty(this.f19708d)) {
                jSONObject.put("exception", this.f19708d);
            }
            for (Map.Entry<String, Map<String, String>> entry : this.f19707c.entrySet()) {
                String key = entry.getKey();
                jSONObject.put(key, a(key));
            }
        } catch (JSONException e) {
            b.a("EventLog", "Failed to create json data", e);
        }
        return jSONObject;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.biddingkit.d.e$1] */
    public final void c() {
        new AsyncTask<e, Void, Void>() { // from class: com.facebook.biddingkit.d.e.1
            @Override // android.os.AsyncTask
            protected final /* synthetic */ Void doInBackground(e[] eVarArr) {
                f.a(eVarArr[0]);
                return null;
            }
        }.execute(this);
    }
}
