package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.internal.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/f.class */
public class C2517f {

    /* renamed from: f */
    private static final Date f10800f = new Date(0);

    /* renamed from: a */
    private JSONObject f10801a;

    /* renamed from: b */
    private JSONObject f10802b;

    /* renamed from: c */
    private Date f10803c;

    /* renamed from: d */
    private JSONArray f10804d;

    /* renamed from: e */
    private JSONObject f10805e;

    /* renamed from: com.google.firebase.remoteconfig.internal.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/f$b.class */
    public static class C2519b {

        /* renamed from: a */
        private JSONObject f10806a;

        /* renamed from: b */
        private Date f10807b;

        /* renamed from: c */
        private JSONArray f10808c;

        /* renamed from: d */
        private JSONObject f10809d;

        private C2519b() {
            this.f10806a = new JSONObject();
            this.f10807b = C2517f.f10800f;
            this.f10808c = new JSONArray();
            this.f10809d = new JSONObject();
        }

        /* renamed from: a */
        public C2517f m3253a() {
            return new C2517f(this.f10806a, this.f10807b, this.f10808c, this.f10809d);
        }

        /* renamed from: b */
        public C2519b m3252b(JSONObject jSONObject) {
            try {
                this.f10806a = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: c */
        public C2519b m3251c(JSONArray jSONArray) {
            try {
                this.f10808c = new JSONArray(jSONArray.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: d */
        public C2519b m3250d(Date date) {
            this.f10807b = date;
            return this;
        }

        /* renamed from: e */
        public C2519b m3249e(JSONObject jSONObject) {
            try {
                this.f10809d = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }
    }

    private C2517f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f10802b = jSONObject;
        this.f10803c = date;
        this.f10804d = jSONArray;
        this.f10805e = jSONObject2;
        this.f10801a = jSONObject3;
    }

    /* renamed from: b */
    static C2517f m3259b(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        JSONObject jSONObject2 = optJSONObject;
        if (optJSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return new C2517f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2);
    }

    /* renamed from: g */
    public static C2519b m3254g() {
        return new C2519b();
    }

    /* renamed from: c */
    public JSONArray m3258c() {
        return this.f10804d;
    }

    /* renamed from: d */
    public JSONObject m3257d() {
        return this.f10802b;
    }

    /* renamed from: e */
    public Date m3256e() {
        return this.f10803c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2517f)) {
            return false;
        }
        return this.f10801a.toString().equals(((C2517f) obj).toString());
    }

    /* renamed from: f */
    public JSONObject m3255f() {
        return this.f10805e;
    }

    public int hashCode() {
        return this.f10801a.hashCode();
    }

    public String toString() {
        return this.f10801a.toString();
    }
}
