package p459j.p460a.p463b0.p467t;

import android.content.Context;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.t.q */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/q.class */
public class C11393q implements AbstractC12391a {

    /* renamed from: a */
    public final int f25497a;

    /* renamed from: b */
    public final AbstractC15118l<Context, String> f25498b;

    /* renamed from: c */
    public final boolean f25499c;

    /* renamed from: d */
    public final AbstractC15118l<Context, C14989s> f25500d;

    /* JADX WARN: Multi-variable type inference failed */
    public C11393q(int i, AbstractC15118l<? super Context, String> lVar, boolean z, AbstractC15118l<? super Context, C14989s> lVar2) {
        C15149k.m377b(lVar, "getTitleString");
        C15149k.m377b(lVar2, "viewOnClick");
        this.f25497a = i;
        this.f25498b = lVar;
        this.f25499c = z;
        this.f25500d = lVar2;
    }

    public /* synthetic */ C11393q(int i, AbstractC15118l lVar, boolean z, AbstractC15118l lVar2, int i2, C15145g gVar) {
        this(i, lVar, (i2 & 4) != 0 ? false : z, lVar2);
    }

    /* renamed from: a */
    public final AbstractC15118l<Context, String> m9702a() {
        return this.f25498b;
    }

    /* renamed from: b */
    public final AbstractC15118l<Context, C14989s> m9701b() {
        return this.f25500d;
    }

    /* renamed from: c */
    public boolean m9700c() {
        return this.f25499c;
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25497a;
    }
}
