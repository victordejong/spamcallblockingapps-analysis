package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/f.class */
public final class f {
    private static final Date e = new Date(0);

    /* renamed from: a  reason: collision with root package name */
    public JSONObject f32610a;

    /* renamed from: b  reason: collision with root package name */
    public Date f32611b;

    /* renamed from: c  reason: collision with root package name */
    public JSONArray f32612c;

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f32613d;
    private JSONObject f;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public JSONObject f32614a;

        /* renamed from: b  reason: collision with root package name */
        Date f32615b;

        /* renamed from: c  reason: collision with root package name */
        private JSONArray f32616c;

        /* renamed from: d  reason: collision with root package name */
        private JSONObject f32617d;

        private a() {
            this.f32614a = new JSONObject();
            this.f32615b = f.e;
            this.f32616c = new JSONArray();
            this.f32617d = new JSONObject();
        }

        public a(f fVar) {
            this.f32614a = fVar.f32610a;
            this.f32615b = fVar.f32611b;
            this.f32616c = fVar.f32612c;
            this.f32617d = fVar.f32613d;
        }

        public final a a(JSONArray jSONArray) {
            try {
                this.f32616c = new JSONArray(jSONArray.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        public final a a(JSONObject jSONObject) {
            try {
                this.f32614a = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        public final f a() throws JSONException {
            return new f(this.f32614a, this.f32615b, this.f32616c, this.f32617d);
        }

        public final a b(JSONObject jSONObject) {
            try {
                this.f32617d = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }
    }

    private f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f32610a = jSONObject;
        this.f32611b = date;
        this.f32612c = jSONArray;
        this.f32613d = jSONObject2;
        this.f = jSONObject3;
    }

    public static a a() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        JSONObject jSONObject2 = optJSONObject;
        if (optJSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return new f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        return this.f.toString().equals(((f) obj).toString());
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    public final String toString() {
        return this.f.toString();
    }
}
