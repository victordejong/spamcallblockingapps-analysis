package com.iab.omid.library.applovin.p060b;

import android.annotation.SuppressLint;
import android.content.Context;
/* renamed from: com.iab.omid.library.applovin.b.d */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/d.class */
public class C1935d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static C1935d f7173a = new C1935d();

    /* renamed from: b */
    private Context f7174b;

    private C1935d() {
    }

    /* renamed from: a */
    public static C1935d m4152a() {
        return f7173a;
    }

    /* renamed from: a */
    public void m4151a(Context context) {
        this.f7174b = context != null ? context.getApplicationContext() : null;
    }

    /* renamed from: b */
    public Context m4150b() {
        return this.f7174b;
    }
}
