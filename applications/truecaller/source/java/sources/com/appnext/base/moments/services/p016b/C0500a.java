package com.appnext.base.moments.services.p016b;

import android.content.Context;
import com.appnext.base.C0472a;
import com.appnext.base.moments.p011a.p012a.C0485c;
import com.appnext.base.moments.services.p015a.AbstractC0498a;
import com.appnext.base.moments.services.p015a.C0499b;
import java.util.List;
/* renamed from: com.appnext.base.moments.services.b.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/services/b/a.class */
public class C0500a {

    /* renamed from: cs */
    private static volatile C0500a f1695cs;

    /* renamed from: ct */
    private AbstractC0498a f1696ct;

    public C0500a(Context context) {
        try {
            this.f1696ct = new C0499b(context);
        } catch (Throwable th) {
            C0472a.m42577a("ServiceOperationsManager$ServiceOperationsManager", th);
        }
    }

    /* renamed from: b */
    public static C0500a m42506b(Context context) {
        if (f1695cs == null) {
            synchronized (C0500a.class) {
                try {
                    if (f1695cs == null) {
                        f1695cs = new C0500a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1695cs;
    }

    /* renamed from: a */
    public final void m42508a(C0485c c0485c, boolean z) {
        this.f1696ct.m42515a(c0485c, z);
    }

    /* renamed from: a */
    public final void m42507a(List<C0485c> list) {
        this.f1696ct.m42514a(list);
    }

    /* renamed from: c */
    public final void m42505c(C0485c c0485c) {
        this.f1696ct.m42513c(c0485c);
    }
}
