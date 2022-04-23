package com.bytedance.sdk.openadsdk.video.d;

import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/d/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10351a = false;

    /* renamed from: b  reason: collision with root package name */
    private static int f10352b = 4;

    private static String a(Object... objArr) {
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

    public static void a() {
        f10351a = true;
        a(3);
    }

    public static void a(int i) {
        f10352b = i;
    }

    public static void a(String str, Object... objArr) {
        if (f10351a && objArr != null && f10352b <= 3) {
            a(objArr);
        }
    }

    public static void b(String str, Object... objArr) {
        if (f10351a && objArr != null && f10352b <= 4) {
            a(objArr);
        }
    }

    public static boolean b() {
        return f10351a;
    }
}
