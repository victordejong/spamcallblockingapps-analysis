package com.facebook.appevents.p280b.p281a;

import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.b.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/a.class */
public final class C9973a {

    /* renamed from: a */
    public final String f33173a;

    /* renamed from: b */
    public final List<C9977c> f33174b;

    /* renamed from: c */
    public final List<C9976b> f33175c;

    /* renamed from: d */
    public final String f33176d;

    /* renamed from: e */
    private final EnumC9975b f33177e;

    /* renamed from: f */
    private final EnumC9974a f33178f;

    /* renamed from: g */
    private final String f33179g;

    /* renamed from: h */
    private final String f33180h;

    /* renamed from: i */
    private final String f33181i;

    /* renamed from: com.facebook.appevents.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/a$a.class */
    public enum EnumC9974a {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    /* renamed from: com.facebook.appevents.b.a.a$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/a$b.class */
    public enum EnumC9975b {
        MANUAL,
        INFERENCE
    }

    public C9973a(String str, EnumC9975b enumC9975b, EnumC9974a enumC9974a, String str2, List<C9977c> list, List<C9976b> list2, String str3, String str4, String str5) {
        this.f33173a = str;
        this.f33177e = enumC9975b;
        this.f33178f = enumC9974a;
        this.f33179g = str2;
        this.f33174b = list;
        this.f33175c = list2;
        this.f33180h = str3;
        this.f33181i = str4;
        this.f33176d = str5;
    }

    /* renamed from: a */
    private static C9973a m23716a(JSONObject jSONObject) throws JSONException, IllegalArgumentException {
        String string = jSONObject.getString("event_name");
        EnumC9975b valueOf = EnumC9975b.valueOf(jSONObject.getString("method").toUpperCase(Locale.ENGLISH));
        EnumC9974a valueOf2 = EnumC9974a.valueOf(jSONObject.getString(Reporting.Key.EVENT_TYPE).toUpperCase(Locale.ENGLISH));
        String string2 = jSONObject.getString(ImpressionData.APP_VERSION);
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new C9977c(jSONArray.getJSONObject(i)));
        }
        String optString = jSONObject.optString("path_type", "absolute");
        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray != null) {
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                arrayList2.add(new C9976b(optJSONArray.getJSONObject(i2)));
            }
        }
        return new C9973a(string, valueOf, valueOf2, string2, arrayList, arrayList2, jSONObject.optString("component_id"), optString, jSONObject.optString("activity_name"));
    }

    /* renamed from: a */
    public static List<C9973a> m23717a(JSONArray jSONArray) {
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
            arrayList.add(m23716a(jSONArray.getJSONObject(i2)));
        }
        return arrayList;
    }
}
