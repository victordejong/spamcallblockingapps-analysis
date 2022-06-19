package com.facebook.p094a;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.C1803a;
/* renamed from: com.facebook.a.g */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g.class */
public class C1904g {

    /* renamed from: a */
    private static final String f5749a = C1904g.class.getCanonicalName();

    /* renamed from: b */
    private C1915h f5750b;

    /* renamed from: com.facebook.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/g$a.class */
    public enum EnumC1905a {
        AUTO,
        EXPLICIT_ONLY
    }

    private C1904g(Context context, String str, C1803a c1803a) {
        this.f5750b = new C1915h(context, str, c1803a);
    }

    /* renamed from: a */
    public static EnumC1905a m15935a() {
        return C1915h.m15884a();
    }

    /* renamed from: a */
    public static C1904g m15933a(Context context) {
        return new C1904g(context, null, null);
    }

    /* renamed from: a */
    public static void m15934a(Application application, String str) {
        C1915h.m15883a(application, str);
    }

    /* renamed from: a */
    public static void m15932a(Context context, String str) {
        C1915h.m15881a(context, str);
    }

    /* renamed from: b */
    public static String m15929b(Context context) {
        return C1915h.m15882a(context);
    }

    /* renamed from: c */
    public static void m15928c() {
        C1915h.m15868c();
    }

    /* renamed from: d */
    public static String m15927d() {
        return C1815b.m16205b();
    }

    /* renamed from: a */
    public void m15931a(String str, Bundle bundle) {
        this.f5750b.m15877a(str, bundle);
    }

    /* renamed from: b */
    public void m15930b() {
        this.f5750b.m15870b();
    }
}
