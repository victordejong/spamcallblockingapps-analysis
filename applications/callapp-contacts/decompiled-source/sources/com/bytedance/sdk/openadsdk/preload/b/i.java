package com.bytedance.sdk.openadsdk.preload.b;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/i.class */
final class i implements b {

    /* renamed from: a  reason: collision with root package name */
    protected e f10113a;

    /* renamed from: b  reason: collision with root package name */
    private int f10114b;

    /* renamed from: c  reason: collision with root package name */
    private List<h> f10115c;

    /* renamed from: d  reason: collision with root package name */
    private d f10116d;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/i$a.class */
    static final class a extends Exception {
        a(Throwable th) {
            super(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(List<h> list, int i, e eVar, d dVar) {
        this.f10115c = list;
        this.f10114b = i;
        this.f10113a = eVar;
        this.f10116d = dVar;
    }

    private d c(Class cls) {
        d dVar = this.f10116d;
        while (dVar != null && dVar.getClass() != cls) {
            dVar = dVar.f10099a;
        }
        return dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b
    public final Object a(Class cls) {
        d c2 = c(cls);
        if (c2 != null) {
            return c2.f10100b;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.b.b
    public final Object a(Object obj) throws Exception {
        d dVar = this.f10116d;
        if (dVar != null) {
            dVar.f10101c = obj;
            this.f10116d.f();
        }
        if (this.f10114b >= this.f10115c.size()) {
            return obj;
        }
        h hVar = this.f10115c.get(this.f10114b);
        Class<? extends d> a2 = hVar.a();
        d dVar2 = (d) this.f10113a.a(a2);
        if (dVar2 != null) {
            com.bytedance.sdk.openadsdk.preload.b.b.a b2 = hVar.b();
            i iVar = new i(this.f10115c, this.f10114b + 1, this.f10113a, dVar2);
            dVar2.a(iVar, this.f10116d, obj, b2, hVar.c());
            dVar2.d();
            try {
                Object a_ = dVar2.a_(iVar, obj);
                dVar2.e();
                return a_;
            } catch (a e) {
                dVar2.c(e.getCause());
                throw e;
            } catch (Throwable th) {
                dVar2.b(th);
                throw new a(th);
            }
        } else {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + a2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b
    public final Object b(Class cls) {
        d c2 = c(cls);
        if (c2 != null) {
            return c2.f10101c;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }
}
