package com.bytedance.sdk.openadsdk.g.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/d.class */
public abstract class d<P, R> extends com.bytedance.sdk.openadsdk.g.a.b<P, R> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9513a = true;

    /* renamed from: b  reason: collision with root package name */
    private a f9514b;

    /* renamed from: c  reason: collision with root package name */
    private f f9515c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/d$a.class */
    public interface a {
        void a(Object obj);

        void a(Throwable th);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/d$b.class */
    public interface b {
        d a();
    }

    private boolean e() {
        if (this.f9513a) {
            return true;
        }
        i.a(new IllegalStateException("Jsb async call already finished: " + a() + ", hashcode: " + hashCode()));
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.g.a.b
    public /* bridge */ /* synthetic */ String a() {
        return super.a();
    }

    public final void a(R r) {
        if (e()) {
            this.f9514b.a(r);
            d();
        }
    }

    protected abstract void a(P p, f fVar) throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(P p, f fVar, a aVar) throws Exception {
        this.f9515c = fVar;
        this.f9514b = aVar;
        a(p, fVar);
    }

    protected final void a(Throwable th) {
        if (e()) {
            this.f9514b.a(th);
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        a((Throwable) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        this.f9513a = false;
        this.f9515c = null;
    }
}
