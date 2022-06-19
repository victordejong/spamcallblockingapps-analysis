package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
/* renamed from: com.bytedance.sdk.openadsdk.utils.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/j.class */
public class C5466j {
    /* renamed from: a */
    public static String m32145a() {
        return m32142b("any_door_id", null);
    }

    /* renamed from: a */
    public static void m32144a(String str) {
        m32143a("any_door_id", str);
    }

    /* renamed from: a */
    private static void m32143a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (C5094b.m33091b()) {
                C5106a.m33048a(str, str2);
            } else {
                C5490z.m32028a("", C4600n.m34815a()).m32027a(str, str2);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private static String m32142b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return C5094b.m33091b() ? C5106a.m33035b((String) null, str, str2) : C5490z.m32028a("", C4600n.m34815a()).m32021b(str, str2);
        } catch (Throwable th) {
            return str2;
        }
    }
}
