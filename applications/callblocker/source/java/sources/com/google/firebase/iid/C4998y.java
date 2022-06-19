package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.iid.y */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/y.class */
final class C4998y {

    /* renamed from: b */
    private static final long f21193b = TimeUnit.DAYS.toMillis(7);

    /* renamed from: a */
    final String f21194a;

    /* renamed from: c */
    private final String f21195c;

    /* renamed from: d */
    private final long f21196d;

    private C4998y(String str, String str2, long j) {
        this.f21194a = str;
        this.f21195c = str2;
        this.f21196d = j;
    }

    /* renamed from: a */
    public static C4998y m1893a(String str) {
        C4998y c4998y;
        if (TextUtils.isEmpty(str)) {
            c4998y = null;
        } else if (str.startsWith("{")) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                c4998y = new C4998y(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Failed to parse token: ").append(valueOf).toString());
                c4998y = null;
            }
        } else {
            c4998y = new C4998y(str, null, 0L);
        }
        return c4998y;
    }

    /* renamed from: a */
    public static String m1892a(String str, String str2, long j) {
        String str3;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put("timestamp", j);
            str3 = jSONObject.toString();
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 24).append("Failed to encode token: ").append(valueOf).toString());
            str3 = null;
        }
        return str3;
    }

    /* renamed from: b */
    public final boolean m1891b(String str) {
        return System.currentTimeMillis() > this.f21196d + f21193b || !str.equals(this.f21195c);
    }
}
