package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.C5289h;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/l.class */
public abstract class AbstractC5296l<IN, OUT> extends AbstractC5283d<IN, OUT> {

    /* renamed from: d */
    private Map<String, C5297a> f18734d;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.b.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/l$a.class */
    public static final class C5297a {

        /* renamed from: a */
        List<C5289h> f18735a = new ArrayList();

        /* renamed from: a */
        public final C5297a m32636a(C5289h c5289h) {
            this.f18735a.add(c5289h);
            return this;
        }

        /* renamed from: a */
        public final C5297a m32635a(List<C5289h> list) {
            this.f18735a.addAll(list);
            return this;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.b.l$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/l$b.class */
    public static final class C5298b {

        /* renamed from: a */
        private Map<String, C5297a> f18736a = new HashMap();

        /* renamed from: b */
        private AbstractC5280a f18737b;

        /* renamed from: a */
        public final C5289h m32634a(Class<? extends AbstractC5296l> cls) {
            return C5289h.C5291a.m32649a().m32646a(cls).m32645a(this.f18736a).m32648a(this.f18737b).m32644b();
        }

        /* renamed from: a */
        public final C5297a m32633a(String str) {
            if (!this.f18736a.containsKey(str)) {
                C5297a c5297a = new C5297a();
                this.f18736a.put(str, c5297a);
                return c5297a;
            }
            throw new IllegalArgumentException("duplicated branch name");
        }
    }

    /* renamed from: a */
    public Map<String, C5297a> m32638a() {
        return this.f18734d;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public final void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        if (objArr == null || objArr.length != 1 || objArr[0] == null) {
            throw new IllegalStateException("args error");
        }
        try {
            this.f18734d = (Map) objArr[0];
        } catch (ClassCastException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public boolean m32637a(List<C5289h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).f18722a == C5286f.class;
    }
}
