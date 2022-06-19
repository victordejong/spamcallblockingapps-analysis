package p237t;

import p179n5.AbstractC3718c;
/* renamed from: t.c */
/* loaded from: classes-dex2jar.jar:t/c.class */
public class C4343c {

    /* renamed from: a */
    public Object f13538a;

    /* renamed from: b */
    public Object f13539b;

    /* renamed from: c */
    public Object f13540c;

    /* renamed from: d */
    public Object f13541d;

    public /* synthetic */ C4343c() {
        this.f13538a = new C4346e(256);
        this.f13539b = new C4346e(256);
        this.f13540c = new C4346e(256);
        this.f13541d = new C4351h[32];
    }

    public /* synthetic */ C4343c(Throwable th, AbstractC3718c abstractC3718c) {
        this.f13538a = th.getLocalizedMessage();
        this.f13539b = th.getClass().getName();
        this.f13540c = abstractC3718c.mo1847b(th.getStackTrace());
        Throwable cause = th.getCause();
        this.f13541d = cause != null ? new C4343c(cause, abstractC3718c) : null;
    }
}
