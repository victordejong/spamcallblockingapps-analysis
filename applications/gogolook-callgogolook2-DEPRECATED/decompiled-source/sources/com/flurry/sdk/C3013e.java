package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.flurry.sdk.e */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/e.class */
public class C3013e {

    /* renamed from: d */
    public static final String f4696d = "e";

    /* renamed from: a */
    public final EnumC2872bg f4697a;

    /* renamed from: b */
    public final Map<String, String> f4698b;

    /* renamed from: c */
    public final C3192h f4699c;

    public C3013e(EnumC2872bg bgVar, Map<String, String> map, C3192h hVar) {
        this.f4697a = bgVar;
        this.f4698b = map;
        this.f4699c = hVar;
    }

    /* renamed from: a */
    public static EnumC2872bg m33300a(String str) {
        EnumC2872bg[] values;
        for (EnumC2872bg bgVar : EnumC2872bg.values()) {
            if (bgVar.toString().equals(str)) {
                C3356jq.m32615a(5, f4696d, "Action Type for name: " + str + " is " + bgVar);
                return bgVar;
            }
        }
        return EnumC2872bg.AC_UNKNOWN;
    }

    /* renamed from: a */
    public final String m33299a(String str, String str2) {
        if (this.f4698b == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f4698b.put(str, str2);
    }

    /* renamed from: b */
    public final String m33298b(String str) {
        if (this.f4698b == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f4698b.get(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("action=");
        sb.append(this.f4697a.toString());
        sb.append(",params=");
        for (Map.Entry<String, String> entry : this.f4698b.entrySet()) {
            sb.append(",key=");
            sb.append(entry.getKey());
            sb.append(",value=");
            sb.append(entry.getValue());
        }
        sb.append(",");
        sb.append(",fTriggeringEvent=");
        sb.append(this.f4699c);
        return sb.toString();
    }
}
