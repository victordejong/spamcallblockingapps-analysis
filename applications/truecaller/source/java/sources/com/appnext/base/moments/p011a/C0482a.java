package com.appnext.base.moments.p011a;

import com.appnext.base.C0472a;
import com.appnext.base.moments.a.b.b;
import com.appnext.base.moments.p011a.p013b.C0486a;
import com.appnext.base.moments.p011a.p013b.C0487c;
/* renamed from: com.appnext.base.moments.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/a/a.class */
public class C0482a {

    /* renamed from: bZ */
    private static volatile C0482a f1671bZ;

    /* renamed from: bW */
    private C0486a f1672bW;

    /* renamed from: bX */
    private b f1673bX;

    /* renamed from: bY */
    private C0487c f1674bY;

    private C0482a() {
        try {
            this.f1672bW = new C0486a();
            this.f1673bX = new b();
            this.f1674bY = new C0487c();
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseFactory$initDB", th);
        }
    }

    /* renamed from: Q */
    public static C0482a m42553Q() {
        if (f1671bZ == null) {
            synchronized (C0482a.class) {
                try {
                    if (f1671bZ == null) {
                        f1671bZ = new C0482a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1671bZ;
    }

    /* renamed from: R */
    public final C0486a m42552R() {
        return this.f1672bW;
    }

    /* renamed from: S */
    public final b m42551S() {
        return this.f1673bX;
    }

    /* renamed from: T */
    public final C0487c m42550T() {
        return this.f1674bY;
    }
}
