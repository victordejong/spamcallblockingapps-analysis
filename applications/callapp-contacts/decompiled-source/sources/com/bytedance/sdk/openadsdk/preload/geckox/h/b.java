package com.bytedance.sdk.openadsdk.preload.geckox.h;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/h/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10215a = false;

    /* renamed from: b  reason: collision with root package name */
    private static c f10216b = new a();

    public static void a() {
        f10215a = true;
    }

    public static void a(String str, String str2, Throwable th) {
        c cVar;
        if (f10215a && (cVar = f10216b) != null) {
            cVar.a(str, str2, th);
        }
    }

    public static void a(String str, Object... objArr) {
        c cVar;
        if (f10215a && (cVar = f10216b) != null) {
            cVar.a(str, objArr);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        c cVar;
        if (f10215a && (cVar = f10216b) != null) {
            cVar.b(str, str2, th);
        }
    }
}
