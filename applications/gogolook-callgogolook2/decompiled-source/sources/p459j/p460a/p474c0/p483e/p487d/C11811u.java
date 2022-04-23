package p459j.p460a.p474c0.p483e.p487d;

import p459j.p460a.p474c0.p483e.p485b.C11742g;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.d.u */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/u.class */
public final class C11811u implements AbstractC12391a {

    /* renamed from: a */
    public final int f26486a;

    /* renamed from: b */
    public final C11742g f26487b;

    public C11811u(int i, C11742g gVar) {
        C15149k.m377b(gVar, "urlScanHistory");
        this.f26486a = i;
        this.f26487b = gVar;
    }

    public /* synthetic */ C11811u(int i, C11742g gVar, int i2, C15145g gVar2) {
        this((i2 & 1) != 0 ? 2 : i, gVar);
    }

    /* renamed from: a */
    public final C11742g m8256a() {
        return this.f26487b;
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f26486a;
    }
}
