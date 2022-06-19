package com.huawei.hms.framework.network.grs.p087g;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.framework.network.grs.g.i */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/i.class */
public class C2327i {
    /* renamed from: a */
    public static String m37882a(String str, String str2) {
        String str3 = str;
        if (!str.equals(str2)) {
            str3 = m37881b(str, str2);
        }
        return str3;
    }

    /* renamed from: b */
    private static String m37881b(String str, String str2) {
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(str)) {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("services");
            for (int i = 0; i < jSONArray.length(); i++) {
                hashSet.add(jSONArray.getString(i));
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            JSONArray jSONArray2 = new JSONObject(str2).getJSONArray("services");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                hashSet.add(jSONArray2.getString(i2));
            }
        }
        if (hashSet.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray3 = new JSONArray();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            jSONArray3.put((String) it.next());
        }
        jSONObject.put("services", jSONArray3);
        return jSONObject.toString();
    }
}
