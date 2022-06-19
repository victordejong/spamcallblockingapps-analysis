package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/i.class */
final class C5292i implements AbstractC5279b {

    /* renamed from: a */
    protected AbstractC5284e f18728a;

    /* renamed from: b */
    private int f18729b;

    /* renamed from: c */
    private List<C5289h> f18730c;

    /* renamed from: d */
    private AbstractC5283d f18731d;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.b.i$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/i$a.class */
    static final class C5293a extends Exception {
        C5293a(Throwable th) {
            super(th);
        }
    }

    public C5292i(List<C5289h> list, int i, AbstractC5284e abstractC5284e, AbstractC5283d abstractC5283d) {
        this.f18730c = list;
        this.f18729b = i;
        this.f18728a = abstractC5284e;
        this.f18731d = abstractC5283d;
    }

    /* renamed from: c */
    private AbstractC5283d m32641c(Class cls) {
        AbstractC5283d abstractC5283d;
        AbstractC5283d abstractC5283d2 = this.f18731d;
        while (true) {
            abstractC5283d = abstractC5283d2;
            if (abstractC5283d == null || abstractC5283d.getClass() == cls) {
                break;
            }
            abstractC5283d2 = abstractC5283d.f18709a;
        }
        return abstractC5283d;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b
    /* renamed from: a */
    public final Object mo32632a(Class cls) {
        AbstractC5283d m32641c = m32641c(cls);
        if (m32641c != null) {
            return m32641c.f18710b;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b
    /* renamed from: a */
    public final Object mo32631a(Object obj) throws Exception {
        AbstractC5283d abstractC5283d = this.f18731d;
        if (abstractC5283d != null) {
            abstractC5283d.f18711c = obj;
            this.f18731d.m32655f();
        }
        if (this.f18729b >= this.f18730c.size()) {
            return obj;
        }
        C5289h c5289h = this.f18730c.get(this.f18729b);
        Class<? extends AbstractC5283d> m32652a = c5289h.m32652a();
        AbstractC5283d abstractC5283d2 = (AbstractC5283d) this.f18728a.mo32654a(m32652a);
        if (abstractC5283d2 == null) {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + m32652a);
        }
        AbstractC5280a m32651b = c5289h.m32651b();
        C5292i c5292i = new C5292i(this.f18730c, this.f18729b + 1, this.f18728a, abstractC5283d2);
        abstractC5283d2.m32662a(c5292i, this.f18731d, obj, m32651b, c5289h.m32650c());
        abstractC5283d2.m32658d();
        try {
            Object mo32469a_ = abstractC5283d2.mo32469a_(c5292i, obj);
            abstractC5283d2.m32656e();
            return mo32469a_;
        } catch (C5293a e) {
            abstractC5283d2.m32659c(e.getCause());
            throw e;
        } catch (Throwable th) {
            abstractC5283d2.m32661b(th);
            throw new C5293a(th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b
    /* renamed from: b */
    public final Object mo32630b(Class cls) {
        AbstractC5283d m32641c = m32641c(cls);
        if (m32641c != null) {
            return m32641c.f18711c;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }
}
