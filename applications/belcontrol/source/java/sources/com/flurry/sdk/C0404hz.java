package com.flurry.sdk;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.hz */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/hz.class */
public class C0404hz {

    /* renamed from: a */
    private static final String f3186a = "hz";

    /* renamed from: a */
    public static Map<String, List<String>> m4763a(String str) {
        String[] split;
        C0478ku.m4596a(3, f3186a, "Parsing referrer map");
        if (str == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("&")) {
            String[] split2 = str2.split("=");
            if (split2.length != 2) {
                C0478ku.m4596a(5, f3186a, "Invalid referrer Element: " + str2 + " in referrer tag " + str);
            } else {
                String decode = URLDecoder.decode(split2[0]);
                String decode2 = URLDecoder.decode(split2[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList());
                }
                ((List) hashMap.get(decode)).add(decode2);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            C0478ku.m4596a(3, f3186a, "entry: " + ((String) entry.getKey()) + "=" + entry.getValue());
        }
        StringBuilder sb = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            sb.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            sb.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            sb.append("Campaign Name is missing.\n");
        }
        if (sb.length() > 0) {
            C0478ku.m4596a(5, f3186a, "Detected missing referrer keys : " + sb.toString());
        }
        return hashMap;
    }
}
