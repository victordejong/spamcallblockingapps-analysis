package com.bytedance.sdk.openadsdk.preload.geckox.p222h;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.h.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/h/b.class */
public class C5381b {

    /* renamed from: a */
    private static boolean f18878a = false;

    /* renamed from: b */
    private static AbstractC5382c f18879b = new C5380a();

    /* renamed from: a */
    public static void m32431a() {
        f18878a = true;
    }

    /* renamed from: a */
    public static void m32430a(String str, String str2, Throwable th) {
        AbstractC5382c abstractC5382c;
        if (!f18878a || (abstractC5382c = f18879b) == null) {
            return;
        }
        abstractC5382c.mo32427a(str, str2, th);
    }

    /* renamed from: a */
    public static void m32429a(String str, Object... objArr) {
        AbstractC5382c abstractC5382c;
        if (!f18878a || (abstractC5382c = f18879b) == null) {
            return;
        }
        abstractC5382c.mo32426a(str, objArr);
    }

    /* renamed from: b */
    public static void m32428b(String str, String str2, Throwable th) {
        AbstractC5382c abstractC5382c;
        if (!f18878a || (abstractC5382c = f18879b) == null) {
            return;
        }
        abstractC5382c.mo32425b(str, str2, th);
    }
}
