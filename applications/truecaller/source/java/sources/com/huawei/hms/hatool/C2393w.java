package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.huawei.hms.hatool.w */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/w.class */
public class C2393w {
    /* renamed from: a */
    public static Map<String, List<q>> m37501a(Context context, String str) {
        if (context == null) {
            return null;
        }
        Map<String, ?> m37698a = C2362g0.m37698a(context, str);
        m37495b(m37698a);
        return m37498a(m37698a);
    }

    /* renamed from: a */
    public static Map<String, List<q>> m37500a(Context context, String str, String str2) {
        Map<String, List<q>> map;
        Map<String, List<q>> map2;
        if ("alltype".equals(str2) || TextUtils.isEmpty(str)) {
            C2398y.m37473c("hmsSdk", "read all event records");
            Map<String, List<q>> m37501a = m37501a(context, "stat_v2_1");
            Map<String, List<q>> m37501a2 = m37501a(context, "cached_v2_1");
            map2 = m37501a;
            map = m37501a2;
        } else {
            String m37513a = AbstractC2390u0.m37513a(str, str2);
            Map<String, List<q>> m37496b = m37496b(context, "stat_v2_1", m37513a);
            map = m37496b(context, "cached_v2_1", m37513a);
            map2 = m37496b;
        }
        return m37497a(map2, map);
    }

    /* renamed from: a */
    public static Map<String, List<q>> m37498a(Map<String, ?> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue() instanceof String) {
                m37499a(key, (String) entry.getValue(), hashMap);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, List<q>> m37497a(Map<String, List<q>> map, Map<String, List<q>> map2) {
        if (map.size() == 0 && map2.size() == 0) {
            return new HashMap();
        }
        if (map.size() == 0) {
            return map2;
        }
        if (map2.size() == 0) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        hashMap.putAll(map2);
        return hashMap;
    }

    /* renamed from: a */
    public static void m37499a(String str, String str2, Map<String, List<q>> map) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str2);
            if (jSONArray.length() == 0) {
                return;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                q qVar = new q();
                try {
                    qVar.a(jSONArray.getJSONObject(i));
                    arrayList.add(qVar);
                } catch (JSONException e) {
                    C2398y.m37470e("hmsSdk", "JSON Exception happened when create data for report - readDataToRecord");
                }
            }
            map.put(str, arrayList);
        } catch (JSONException e2) {
            C2398y.m37470e("hmsSdk", "When events turn to JSONArray,JSON Exception has happened");
        }
    }

    /* renamed from: b */
    public static Map<String, List<q>> m37496b(Context context, String str, String str2) {
        String m37696a = C2362g0.m37696a(context, str, str2, "");
        HashMap hashMap = new HashMap();
        m37499a(str2, m37696a, hashMap);
        return hashMap;
    }

    /* renamed from: b */
    public static void m37495b(Map<String, ?> map) {
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        Set<String> m37511a = AbstractC2390u0.m37511a(AbstractC2349b.m37793b());
        while (it.hasNext()) {
            if (!m37511a.contains(it.next().getKey())) {
                it.remove();
            }
        }
    }
}
