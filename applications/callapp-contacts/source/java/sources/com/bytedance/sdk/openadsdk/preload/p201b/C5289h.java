package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/h.class */
public final class C5289h {

    /* renamed from: a */
    Class<? extends AbstractC5283d> f18722a;

    /* renamed from: b */
    private AbstractC5280a f18723b;

    /* renamed from: c */
    private Object[] f18724c;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.b.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/h$a.class */
    public static final class C5291a {

        /* renamed from: a */
        private Class<? extends AbstractC5283d> f18725a;

        /* renamed from: b */
        private AbstractC5280a f18726b;

        /* renamed from: c */
        private Object[] f18727c;

        private C5291a() {
        }

        /* renamed from: a */
        public static C5291a m32649a() {
            return new C5291a();
        }

        /* renamed from: a */
        public final C5291a m32648a(AbstractC5280a abstractC5280a) {
            this.f18726b = abstractC5280a;
            return this;
        }

        /* renamed from: a */
        public final C5291a m32646a(Class<? extends AbstractC5283d> cls) {
            if (cls != null) {
                this.f18725a = cls;
                return this;
            }
            throw new IllegalArgumentException("interceptor class == null");
        }

        /* renamed from: a */
        public final C5291a m32645a(Object... objArr) {
            if (objArr != null) {
                this.f18727c = objArr;
                return this;
            }
            throw new IllegalArgumentException("args == null");
        }

        /* renamed from: b */
        public final C5289h m32644b() {
            return new C5289h(this);
        }
    }

    private C5289h(C5291a c5291a) {
        this.f18722a = c5291a.f18725a;
        this.f18723b = c5291a.f18726b;
        this.f18724c = c5291a.f18727c;
        if (this.f18722a != null) {
            return;
        }
        throw new IllegalArgumentException("Interceptor class == null");
    }

    /* renamed from: a */
    public final Class<? extends AbstractC5283d> m32652a() {
        return this.f18722a;
    }

    /* renamed from: b */
    public final AbstractC5280a m32651b() {
        return this.f18723b;
    }

    /* renamed from: c */
    public final Object[] m32650c() {
        return this.f18724c;
    }
}
