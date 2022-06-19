package com.appnext.base.moments.operations;

import com.appnext.base.C0472a;
import com.appnext.base.moments.p011a.p012a.C0485c;
import com.appnext.base.p010b.C0481b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appnext.base.moments.operations.b */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/operations/b.class */
public class C0495b {

    /* renamed from: cq */
    private static volatile C0495b f1692cq;

    /* renamed from: cr */
    private List<AbstractC0494a> f1693cr = new ArrayList();

    private C0495b() {
    }

    /* renamed from: a */
    private static AbstractC0494a m42520a(C0485c c0485c) {
        if (c0485c == null) {
            return null;
        }
        try {
            String m42540ad = c0485c.m42540ad();
            Object newInstance = Class.forName("com.appnext.base.moments.operations.imp." + m42540ad).getConstructor(C0485c.class).newInstance(c0485c);
            if (!(newInstance instanceof AbstractC0494a)) {
                return null;
            }
            return (AbstractC0494a) newInstance;
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    /* renamed from: aj */
    public static C0495b m42519aj() {
        if (f1692cq == null) {
            synchronized (C0495b.class) {
                try {
                    if (f1692cq == null) {
                        f1692cq = new C0495b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1692cq;
    }

    /* renamed from: b */
    public final void m42518b(C0485c c0485c) {
        if (c0485c == null) {
            return;
        }
        try {
            AbstractC0494a m42520a = m42520a(c0485c);
            if (m42520a == null) {
                return;
            }
            synchronized (this) {
                this.f1693cr.add(m42520a);
            }
            C0481b m42559ak = C0481b.m42559ak();
            m42559ak.m42557b(c0485c.m42540ad() + "_lastupdate", System.currentTimeMillis());
            throw null;
        } catch (Throwable th) {
            C0472a.m42577a("OperationsManager$startOperation", th);
        }
    }

    /* renamed from: c */
    public final void m42517c(C0485c c0485c) {
        if (c0485c == null) {
            return;
        }
        try {
            m42520a(c0485c);
        } catch (Throwable th) {
            C0472a.m42577a("OperationsManager$cancelOperation", th);
        }
    }
}
