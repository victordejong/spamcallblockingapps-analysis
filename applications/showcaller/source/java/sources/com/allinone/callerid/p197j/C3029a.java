package com.allinone.callerid.p197j;

import com.allinone.callerid.util.C3866v;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Map;
/* renamed from: com.allinone.callerid.j.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/j/a.class */
public class C3029a {
    /* renamed from: a */
    public static String m26207a(String str, Map<String, String> map) {
        return OkHttpUtils.get().url(str).params(map).build().execute().body().string();
    }

    /* renamed from: b */
    public static String m26206b(String str, Map<String, String> map) {
        String string = OkHttpUtils.post().url(str).params(map).build().execute().body().string();
        if (!"".equals(string)) {
            try {
                return C3866v.m23913b(string);
            } catch (Throwable th) {
                th.printStackTrace();
                return "";
            }
        }
        return "";
    }
}
