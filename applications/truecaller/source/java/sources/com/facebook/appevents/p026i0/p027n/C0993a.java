package com.facebook.appevents.p026i0.p027n;

import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018�� \"2\u00020\u0001:\u0003!\"#BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\n\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0002\u0010\u0011R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\n8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8F¢\u0006\u0006\u001a\u0004\b \u0010\u001e¨\u0006$"}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding;", "", "eventName", "", AnalyticsConstants.METHOD, "Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", "type", "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "appVersion", "path", "", "Lcom/facebook/appevents/codeless/internal/PathComponent;", "parameters", "Lcom/facebook/appevents/codeless/internal/ParameterComponent;", "componentId", "pathType", "activityName", "(Ljava/lang/String;Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getActivityName", "()Ljava/lang/String;", "getAppVersion", "getComponentId", "getEventName", "getMethod", "()Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", "getPathType", "getType", "()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "viewParameters", "getViewParameters", "()Ljava/util/List;", "viewPath", "getViewPath", "ActionType", "Companion", "MappingMethod", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.n.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/a.class */
public final class C0993a {

    /* renamed from: a */
    public final String f2731a;

    /* renamed from: b */
    public final List<C0997c> f2732b;

    /* renamed from: c */
    public final List<C0996b> f2733c;

    /* renamed from: d */
    public final String f2734d;

    @Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;", "", "(Ljava/lang/String;I)V", "CLICK", "SELECTED", "TEXT_CHANGED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.n.a$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/a$a.class */
    public enum EnumC0994a {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    @Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;", "", "(Ljava/lang/String;I)V", "MANUAL", "INFERENCE", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.n.a$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/a$b.class */
    public enum EnumC0995b {
        MANUAL,
        INFERENCE
    }

    public C0993a(String str, EnumC0995b enumC0995b, EnumC0994a enumC0994a, String str2, List<C0997c> list, List<C0996b> list2, String str3, String str4, String str5) {
        l.e(str, "eventName");
        l.e(enumC0995b, AnalyticsConstants.METHOD);
        l.e(enumC0994a, "type");
        l.e(str2, "appVersion");
        l.e(list, "path");
        l.e(list2, "parameters");
        l.e(str3, "componentId");
        l.e(str4, "pathType");
        l.e(str5, "activityName");
        this.f2731a = str;
        this.f2732b = list;
        this.f2733c = list2;
        this.f2734d = str5;
    }

    /* renamed from: a */
    public static final C0993a m41933a(JSONObject jSONObject) throws JSONException, IllegalArgumentException {
        int length;
        l.e(jSONObject, "mapping");
        String string = jSONObject.getString("event_name");
        String string2 = jSONObject.getString(AnalyticsConstants.METHOD);
        l.d(string2, "mapping.getString(\"method\")");
        Locale locale = Locale.ENGLISH;
        l.d(locale, "ENGLISH");
        String upperCase = string2.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        EnumC0995b valueOf = EnumC0995b.valueOf(upperCase);
        String string3 = jSONObject.getString("event_type");
        l.d(string3, "mapping.getString(\"event_type\")");
        l.d(locale, "ENGLISH");
        String upperCase2 = string3.toUpperCase(locale);
        l.d(upperCase2, "(this as java.lang.String).toUpperCase(locale)");
        EnumC0994a valueOf2 = EnumC0994a.valueOf(upperCase2);
        String string4 = jSONObject.getString("app_version");
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        int length2 = jSONArray.length();
        int i = 0;
        if (length2 > 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                int i4 = i3 + 1;
                JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                l.d(jSONObject2, "jsonPath");
                arrayList.add(new C0997c(jSONObject2));
                if (i4 >= length2) {
                    break;
                }
                i2 = i4;
            }
        }
        String optString = jSONObject.optString("path_type", "absolute");
        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray != null && (length = optJSONArray.length()) > 0) {
            while (true) {
                int i5 = i;
                i = i5 + 1;
                JSONObject jSONObject3 = optJSONArray.getJSONObject(i5);
                l.d(jSONObject3, "jsonParameter");
                arrayList2.add(new C0996b(jSONObject3));
                if (i >= length) {
                    break;
                }
            }
        }
        String optString2 = jSONObject.optString("component_id");
        String optString3 = jSONObject.optString("activity_name");
        l.d(string, "eventName");
        l.d(string4, "appVersion");
        l.d(optString2, "componentId");
        l.d(optString, "pathType");
        l.d(optString3, "activityName");
        return new C0993a(string, valueOf, valueOf2, string4, arrayList, arrayList2, optString2, optString, optString3);
    }
}
