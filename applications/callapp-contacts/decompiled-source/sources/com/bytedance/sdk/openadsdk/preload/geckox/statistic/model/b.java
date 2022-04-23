package com.bytedance.sdk.openadsdk.preload.geckox.statistic.model;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public String f10248a;

    /* renamed from: b  reason: collision with root package name */
    public String f10249b;

    /* renamed from: c  reason: collision with root package name */
    public String f10250c;

    /* renamed from: d  reason: collision with root package name */
    public String f10251d;
    public String e;
    public String f;
    public int g;

    public static String a(Map<String, String> map) {
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
