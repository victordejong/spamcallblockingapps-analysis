package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.internal.f */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/f.class */
public final class C15918f {

    /* renamed from: e */
    private static final Date f56509e = new Date(0);

    /* renamed from: a */
    public JSONObject f56510a;

    /* renamed from: b */
    public Date f56511b;

    /* renamed from: c */
    public JSONArray f56512c;

    /* renamed from: d */
    public JSONObject f56513d;

    /* renamed from: f */
    private JSONObject f56514f;

    /* renamed from: com.google.firebase.remoteconfig.internal.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/f$a.class */
    public static final class C15920a {

        /* renamed from: a */
        public JSONObject f56515a;

        /* renamed from: b */
        Date f56516b;

        /* renamed from: c */
        private JSONArray f56517c;

        /* renamed from: d */
        private JSONObject f56518d;

        private C15920a() {
            this.f56515a = new JSONObject();
            this.f56516b = C15918f.f56509e;
            this.f56517c = new JSONArray();
            this.f56518d = new JSONObject();
        }

        public C15920a(C15918f c15918f) {
            this.f56515a = c15918f.f56510a;
            this.f56516b = c15918f.f56511b;
            this.f56517c = c15918f.f56512c;
            this.f56518d = c15918f.f56513d;
        }

        /* renamed from: a */
        public final C15920a m8065a(JSONArray jSONArray) {
            try {
                this.f56517c = new JSONArray(jSONArray.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: a */
        public final C15920a m8064a(JSONObject jSONObject) {
            try {
                this.f56515a = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: a */
        public final C15918f m8066a() throws JSONException {
            return new C15918f(this.f56515a, this.f56516b, this.f56517c, this.f56518d);
        }

        /* renamed from: b */
        public final C15920a m8063b(JSONObject jSONObject) {
            try {
                this.f56518d = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }
    }

    private C15918f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f56510a = jSONObject;
        this.f56511b = date;
        this.f56512c = jSONArray;
        this.f56513d = jSONObject2;
        this.f56514f = jSONObject3;
    }

    /* renamed from: a */
    public static C15920a m8069a() {
        return new C15920a();
    }

    /* renamed from: a */
    public static C15918f m8068a(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        JSONObject jSONObject2 = optJSONObject;
        if (optJSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return new C15918f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C15918f) {
            return this.f56514f.toString().equals(((C15918f) obj).toString());
        }
        return false;
    }

    public final int hashCode() {
        return this.f56514f.hashCode();
    }

    public final String toString() {
        return this.f56514f.toString();
    }
}
