package com.applovin.impl.mediation.debugger.p041a.p043b;

import android.content.Context;
import com.applovin.impl.sdk.utils.C1492g;
/* renamed from: com.applovin.impl.mediation.debugger.a.b.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/b/d.class */
public class C1127d {

    /* renamed from: a */
    private final String f4084a;

    /* renamed from: b */
    private final String f4085b;

    /* renamed from: c */
    private final boolean f4086c;

    public C1127d(String str, String str2, Context context) {
        this.f4084a = str.replace("android.permission.", "");
        this.f4085b = str2;
        this.f4086c = C1492g.m5074a(str, context);
    }

    /* renamed from: a */
    public String m6349a() {
        return this.f4084a;
    }

    /* renamed from: b */
    public String m6348b() {
        return this.f4085b;
    }

    /* renamed from: c */
    public boolean m6347c() {
        return this.f4086c;
    }
}
