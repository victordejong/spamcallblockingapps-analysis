package com.bytedance.sdk.openadsdk.p167g.p168a;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/d.class */
public abstract class AbstractC4874d<P, R> extends AbstractC4872b<P, R> {

    /* renamed from: a */
    private boolean f17822a = true;

    /* renamed from: b */
    private AbstractC4875a f17823b;

    /* renamed from: c */
    private C4878f f17824c;

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/d$a.class */
    public interface AbstractC4875a {
        /* renamed from: a */
        void mo33664a(Object obj);

        /* renamed from: a */
        void mo33663a(Throwable th);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.d$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/d$b.class */
    public interface AbstractC4876b {
        /* renamed from: a */
        AbstractC4874d mo33575a();
    }

    /* renamed from: e */
    private boolean m33678e() {
        if (!this.f17822a) {
            C4884i.m33658a(new IllegalStateException("Jsb async call already finished: " + mo33677a() + ", hashcode: " + hashCode()));
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4872b
    /* renamed from: a */
    public /* bridge */ /* synthetic */ String mo33677a() {
        return super.mo33677a();
    }

    /* renamed from: a */
    public final void m33683a(R r) {
        if (m33678e()) {
            this.f17823b.mo33664a(r);
            m33679d();
        }
    }

    /* renamed from: a */
    protected abstract void mo33578a(P p, C4878f c4878f) throws Exception;

    /* renamed from: a */
    public void m33682a(P p, C4878f c4878f, AbstractC4875a abstractC4875a) throws Exception {
        this.f17824c = c4878f;
        this.f17823b = abstractC4875a;
        mo33578a(p, c4878f);
    }

    /* renamed from: a */
    protected final void m33681a(Throwable th) {
        if (m33678e()) {
            this.f17823b.mo33663a(th);
            m33679d();
        }
    }

    /* renamed from: c */
    public final void m33680c() {
        m33681a((Throwable) null);
    }

    /* renamed from: d */
    public void m33679d() {
        this.f17822a = false;
        this.f17824c = null;
    }
}
