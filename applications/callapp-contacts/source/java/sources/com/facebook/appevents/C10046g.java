package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
/* renamed from: com.facebook.appevents.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g.class */
public class C10046g {

    /* renamed from: b */
    private static final String f33337b = "com.facebook.appevents.g";

    /* renamed from: a */
    public C10063h f33338a;

    /* renamed from: com.facebook.appevents.g$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g$a.class */
    public static final class EnumC10047a extends Enum<EnumC10047a> {

        /* renamed from: a */
        public static final int f33339a = 1;

        /* renamed from: b */
        public static final int f33340b = 2;

        /* renamed from: c */
        private static final /* synthetic */ int[] f33341c = {1, 2};

        private EnumC10047a(String str, int i) {
            super(str, i);
        }
    }

    private C10046g(Context context, String str, AccessToken accessToken) {
        this.f33338a = new C10063h(context, str, accessToken);
    }

    /* renamed from: a */
    public static int m23539a() {
        return C10063h.m23490a();
    }

    /* renamed from: a */
    public static C10046g m23537a(Context context) {
        return new C10046g(context, null, null);
    }

    /* renamed from: a */
    public static void m23538a(Application application, String str) {
        C10063h.m23489a(application, str);
    }

    /* renamed from: a */
    public static void m23536a(Context context, String str) {
        C10063h.m23487a(context, str);
    }

    /* renamed from: b */
    public static C10046g m23531b(Context context, String str) {
        return new C10046g(context, str, null);
    }

    /* renamed from: b */
    public static String m23532b(Context context) {
        return C10063h.m23488a(context);
    }

    /* renamed from: b */
    public static void m23533b() {
        C10063h.m23477c();
    }

    /* renamed from: c */
    public static String m23530c() {
        return C9967b.m23723b();
    }

    /* renamed from: a */
    public final void m23535a(String str, double d, Bundle bundle) {
        this.f33338a.m23484a(str, d, bundle);
    }

    /* renamed from: a */
    public final void m23534a(String str, Bundle bundle) {
        this.f33338a.m23483a(str, bundle);
    }
}
