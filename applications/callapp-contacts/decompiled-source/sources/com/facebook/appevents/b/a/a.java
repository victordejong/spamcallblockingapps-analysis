package com.facebook.appevents.b.a;

import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f19442a;

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f19443b;

    /* renamed from: c  reason: collision with root package name */
    public final List<com.facebook.appevents.b.a.b> f19444c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19445d;
    private final b e;
    private final EnumC0385a f;
    private final String g;
    private final String h;
    private final String i;

    /* renamed from: com.facebook.appevents.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/a$a.class */
    public enum EnumC0385a {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/a$b.class */
    public enum b {
        MANUAL,
        INFERENCE
    }

    public a(String str, b bVar, EnumC0385a aVar, String str2, List<c> list, List<com.facebook.appevents.b.a.b> list2, String str3, String str4, String str5) {
        this.f19442a = str;
        this.e = bVar;
        this.f = aVar;
        this.g = str2;
        this.f19443b = list;
        this.f19444c = list2;
        this.h = str3;
        this.i = str4;
        this.f19445d = str5;
    }

    private static a a(JSONObject jSONObject) throws JSONException, IllegalArgumentException {
        String string = jSONObject.getString("event_name");
        b valueOf = b.valueOf(jSONObject.getString("method").toUpperCase(Locale.ENGLISH));
        EnumC0385a valueOf2 = EnumC0385a.valueOf(jSONObject.getString(Reporting.Key.EVENT_TYPE).toUpperCase(Locale.ENGLISH));
        String string2 = jSONObject.getString(ImpressionData.APP_VERSION);
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new c(jSONArray.getJSONObject(i)));
        }
        String optString = jSONObject.optString("path_type", "absolute");
        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray != null) {
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                arrayList2.add(new com.facebook.appevents.b.a.b(optJSONArray.getJSONObject(i2)));
            }
        }
        return new a(string, valueOf, valueOf2, string2, arrayList, arrayList2, jSONObject.optString("component_id"), optString, jSONObject.optString("activity_name"));
    }

    public static List<a> a(JSONArray jSONArray) {
        int i;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            try {
                i = jSONArray.length();
            } catch (IllegalArgumentException | JSONException e) {
            }
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(a(jSONArray.getJSONObject(i2)));
        }
        return arrayList;
    }
}
