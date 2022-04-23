package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g.class */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static final String f19571b = "com.facebook.appevents.g";

    /* renamed from: a  reason: collision with root package name */
    public h f19572a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f19573a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f19574b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ int[] f19575c = {1, 2};

        private a(String str, int i) {
        }
    }

    private g(Context context, String str, AccessToken accessToken) {
        this.f19572a = new h(context, str, accessToken);
    }

    public static int a() {
        return h.a();
    }

    public static g a(Context context) {
        return new g(context, null, null);
    }

    public static void a(Application application, String str) {
        h.a(application, str);
    }

    public static void a(Context context, String str) {
        h.a(context, str);
    }

    public static g b(Context context, String str) {
        return new g(context, str, null);
    }

    public static String b(Context context) {
        return h.a(context);
    }

    public static void b() {
        h.c();
    }

    public static String c() {
        return b.b();
    }

    public final void a(String str, double d2, Bundle bundle) {
        this.f19572a.a(str, d2, bundle);
    }

    public final void a(String str, Bundle bundle) {
        this.f19572a.a(str, bundle);
    }
}
