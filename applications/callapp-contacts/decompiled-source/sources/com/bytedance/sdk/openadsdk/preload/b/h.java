package com.bytedance.sdk.openadsdk.preload.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    Class<? extends d> f10107a;

    /* renamed from: b  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.preload.b.b.a f10108b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f10109c;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Class<? extends d> f10110a;

        /* renamed from: b  reason: collision with root package name */
        private com.bytedance.sdk.openadsdk.preload.b.b.a f10111b;

        /* renamed from: c  reason: collision with root package name */
        private Object[] f10112c;

        private a() {
        }

        public static a a() {
            return new a();
        }

        public final a a(com.bytedance.sdk.openadsdk.preload.b.b.a aVar) {
            this.f10111b = aVar;
            return this;
        }

        public final a a(Class<? extends d> cls) {
            if (cls != null) {
                this.f10110a = cls;
                return this;
            }
            throw new IllegalArgumentException("interceptor class == null");
        }

        public final a a(Object... objArr) {
            if (objArr != null) {
                this.f10112c = objArr;
                return this;
            }
            throw new IllegalArgumentException("args == null");
        }

        public final h b() {
            return new h(this);
        }
    }

    private h(a aVar) {
        this.f10107a = aVar.f10110a;
        this.f10108b = aVar.f10111b;
        this.f10109c = aVar.f10112c;
        if (this.f10107a == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Class<? extends d> a() {
        return this.f10107a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.bytedance.sdk.openadsdk.preload.b.b.a b() {
        return this.f10108b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] c() {
        return this.f10109c;
    }
}
