package com.bytedance.sdk.openadsdk.preload.geckox.statistic.model;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b.class */
public class C5415b {

    /* renamed from: a */
    public String f18944a;

    /* renamed from: b */
    public String f18945b;

    /* renamed from: c */
    public String f18946c;

    /* renamed from: d */
    public String f18947d;

    /* renamed from: e */
    public String f18948e;

    /* renamed from: f */
    public String f18949f;

    /* renamed from: g */
    public int f18950g;

    /* renamed from: a */
    public static String m32373a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        String str = map.get("x-tt-logid");
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = map.get("X-Tt-Logid");
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String str3 = map.get("X-TT-LOGID");
        return !TextUtils.isEmpty(str3) ? str3 : "";
    }
}
