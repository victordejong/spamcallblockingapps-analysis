package com.bytedance.sdk.openadsdk.preload.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/m.class */
final class m<IN> implements b<IN> {

    /* renamed from: a  reason: collision with root package name */
    private b<IN> f10123a;

    public m(b<IN> bVar) {
        this.f10123a = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b
    public final <I> I a(Class<? extends d<I, ?>> cls) {
        return (I) this.f10123a.a((Class<? extends d<Object, ?>>) cls);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b
    public final Object a(IN in) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b
    public final <O> O b(Class<? extends d<?, O>> cls) {
        return (O) this.f10123a.b(cls);
    }
}
