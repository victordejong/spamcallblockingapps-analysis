package com.bytedance.sdk.openadsdk.preload.p201b.p203b;

import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/b/b.class */
public final class C5281b extends AbstractC5280a {

    /* renamed from: a */
    private List<AbstractC5280a> f18707a;

    public C5281b(AbstractC5280a... abstractC5280aArr) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f18707a = copyOnWriteArrayList;
        if (abstractC5280aArr == null) {
            return;
        }
        copyOnWriteArrayList.addAll(Arrays.asList(abstractC5280aArr));
    }

    /* renamed from: a */
    public final void m32667a(AbstractC5280a abstractC5280a) {
        if (abstractC5280a == null) {
            return;
        }
        this.f18707a.add(abstractC5280a);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
    /* renamed from: a */
    public final <T> void mo32387a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
        for (AbstractC5280a abstractC5280a : this.f18707a) {
            if (abstractC5280a != null) {
                abstractC5280a.mo32387a(abstractC5279b, abstractC5283d);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
    /* renamed from: a */
    public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
        for (AbstractC5280a abstractC5280a : this.f18707a) {
            if (abstractC5280a != null) {
                abstractC5280a.mo32384a(abstractC5279b, abstractC5283d, th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
    /* renamed from: b */
    public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
        for (AbstractC5280a abstractC5280a : this.f18707a) {
            if (abstractC5280a != null) {
                abstractC5280a.mo32383b(abstractC5279b, abstractC5283d);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
    /* renamed from: b */
    public final <T> void mo32386b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
        for (AbstractC5280a abstractC5280a : this.f18707a) {
            if (abstractC5280a != null) {
                abstractC5280a.mo32386b(abstractC5279b, abstractC5283d, th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
    /* renamed from: c */
    public final <T> void mo32385c(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
        for (AbstractC5280a abstractC5280a : this.f18707a) {
            if (abstractC5280a != null) {
                abstractC5280a.mo32385c(abstractC5279b, abstractC5283d);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
    /* renamed from: f */
    public final <T> void mo32666f(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
        for (AbstractC5280a abstractC5280a : this.f18707a) {
            if (abstractC5280a != null) {
                abstractC5280a.mo32666f(abstractC5279b, abstractC5283d, th);
            }
        }
    }
}
