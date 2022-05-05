package com.revenuecat.purchases.utils;

import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKt;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/utils/JSONObjectExtensionsKt.class */
public final class JSONObjectExtensionsKt {
    public static final Date getDate(JSONObject jSONObject, String str) {
        k.f(jSONObject, "$this$getDate");
        k.f(str, "jsonKey");
        Date parse = Iso8601Utils.parse(jSONObject.getString(str));
        k.e(parse, "Iso8601Utils.parse(getString(jsonKey))");
        return parse;
    }

    public static final String getNullableString(JSONObject jSONObject, String str) {
        k.f(jSONObject, "$this$getNullableString");
        k.f(str, "name");
        String str2 = null;
        if (jSONObject.isNull(str)) {
            jSONObject = null;
        }
        if (jSONObject != null) {
            str2 = jSONObject.getString(str);
        }
        return str2;
    }

    public static final Date optDate(JSONObject jSONObject, String str) {
        k.f(jSONObject, "$this$optDate");
        k.f(str, "jsonKey");
        Date date = null;
        if (jSONObject.isNull(str)) {
            jSONObject = null;
        }
        if (jSONObject != null) {
            date = getDate(jSONObject, str);
        }
        return date;
    }

    public static final String optNullableString(JSONObject jSONObject, String str) {
        k.f(jSONObject, "$this$optNullableString");
        k.f(str, "name");
        String str2 = null;
        if (!jSONObject.has(str)) {
            jSONObject = null;
        }
        if (jSONObject != null) {
            str2 = getNullableString(jSONObject, str);
        }
        return str2;
    }

    public static final HashMap<String, Date> parseDates(JSONObject jSONObject, String str) {
        k.f(jSONObject, "$this$parseDates");
        k.f(str, "jsonKey");
        HashMap<String, Date> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            k.e(next, SubscriberAttributeKt.JSON_NAME_KEY);
            k.e(jSONObject2, "expirationObject");
            hashMap.put(next, optDate(jSONObject2, str));
        }
        return hashMap;
    }

    public static final Map<String, Date> parseExpirations(JSONObject jSONObject) {
        k.f(jSONObject, "$this$parseExpirations");
        return parseDates(jSONObject, "expires_date");
    }

    public static final Map<String, Date> parsePurchaseDates(JSONObject jSONObject) {
        k.f(jSONObject, "$this$parsePurchaseDates");
        return parseDates(jSONObject, "purchase_date");
    }
}
