package com.bytedance.sdk.openadsdk.video.p233d;

import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.openadsdk.video.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/d/a.class */
public class C5503a {

    /* renamed from: a */
    private static boolean f19074a = false;

    /* renamed from: b */
    private static int f19075b = 4;

    /* renamed from: a */
    private static String m31970a(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            sb.append(obj == null ? JsonReaderKt.NULL : obj.toString());
            sb.append(StringUtils.SPACE);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m31973a() {
        f19074a = true;
        m31972a(3);
    }

    /* renamed from: a */
    public static void m31972a(int i) {
        f19075b = i;
    }

    /* renamed from: a */
    public static void m31971a(String str, Object... objArr) {
        if (f19074a && objArr != null && f19075b <= 3) {
            m31970a(objArr);
        }
    }

    /* renamed from: b */
    public static void m31968b(String str, Object... objArr) {
        if (f19074a && objArr != null && f19075b <= 4) {
            m31970a(objArr);
        }
    }

    /* renamed from: b */
    public static boolean m31969b() {
        return f19074a;
    }
}
