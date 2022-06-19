package com.appnext.core.result;
/* renamed from: com.appnext.core.result.d */
/* loaded from: classes-dex2jar.jar:com/appnext/core/result/d.class */
public final class C0602d {

    /* renamed from: fp */
    private static C0602d f1902fp;

    /* renamed from: fj */
    private AbstractC0601c f1903fj;

    private C0602d() {
    }

    /* renamed from: aX */
    public static C0602d m42267aX() {
        C0602d c0602d;
        synchronized (C0602d.class) {
            try {
                if (f1902fp == null) {
                    f1902fp = new C0602d();
                }
                c0602d = f1902fp;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0602d;
    }

    /* renamed from: a */
    public final void m42268a(AbstractC0601c abstractC0601c) {
        this.f1903fj = abstractC0601c;
    }

    /* renamed from: aY */
    public final AbstractC0601c m42266aY() {
        return this.f1903fj;
    }
}
