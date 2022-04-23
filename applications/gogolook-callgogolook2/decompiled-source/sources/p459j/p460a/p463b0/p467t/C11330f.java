package p459j.p460a.p463b0.p467t;

import android.content.Context;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.t.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/f.class */
public class C11330f implements AbstractC12391a {

    /* renamed from: a */
    public final int f25421a;

    /* renamed from: b */
    public final AbstractC15118l<Context, String> f25422b;

    /* JADX WARN: Multi-variable type inference failed */
    public C11330f(int i, AbstractC15118l<? super Context, String> lVar) {
        C15149k.m377b(lVar, "getTitleString");
        this.f25421a = i;
        this.f25422b = lVar;
    }

    /* renamed from: a */
    public final AbstractC15118l<Context, String> m9778a() {
        return this.f25422b;
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25421a;
    }
}
