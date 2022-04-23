package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p032y.p033b.AbstractC2171c;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.model.l */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/l.class */
public class C2038l {
    @NonNull

    /* renamed from: a */
    public final C2047s f2237a;
    @NonNull

    /* renamed from: b */
    public final AbstractC2053x f2238b;
    @NonNull

    /* renamed from: c */
    public final String f2239c;

    /* renamed from: d */
    public final int f2240d;
    @Nullable

    /* renamed from: e */
    public final AbstractC2171c f2241e;
    @NonNull

    /* renamed from: f */
    public final List<AbstractC2040n> f2242f;

    public C2038l(@NonNull C2047s sVar, @NonNull AbstractC2053x xVar, @NonNull String str, int i, @Nullable AbstractC2171c cVar, @NonNull List<AbstractC2040n> list) {
        this.f2237a = sVar;
        this.f2238b = xVar;
        this.f2239c = str;
        this.f2240d = i;
        this.f2241e = cVar;
        this.f2242f = list;
    }

    @NonNull
    /* renamed from: a */
    public List<AbstractC2040n> m35860a() {
        return this.f2242f;
    }

    @NonNull
    /* renamed from: b */
    public JSONObject m35859b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("user", this.f2238b.m35781e());
        jSONObject.put("publisher", this.f2237a.m35819c());
        jSONObject.put("sdkVersion", this.f2239c);
        jSONObject.put("profileId", this.f2240d);
        JSONArray jSONArray = new JSONArray();
        for (AbstractC2040n nVar : this.f2242f) {
            jSONArray.put(nVar.m35847f());
        }
        if (jSONArray.length() > 0) {
            jSONObject.put("slots", jSONArray);
        }
        AbstractC2171c cVar = this.f2241e;
        if (cVar != null) {
            jSONObject.put("gdprConsent", cVar.m35532c());
        }
        return jSONObject;
    }

    @NonNull
    public String toString() {
        return "CdbRequest{publisher=" + this.f2237a + ", user=" + this.f2238b + ", sdkVersion='" + this.f2239c + "', profileId=" + this.f2240d + ", gdprConsent=" + this.f2241e + ", slots=" + this.f2242f + '}';
    }
}
