package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5189b;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5196c;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/b.class */
public final class C5122b implements AbstractC5276w {

    /* renamed from: a */
    private final C5196c f18388a;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/b$a.class */
    static final class C5123a<E> extends AbstractC5274v<Collection<E>> {

        /* renamed from: a */
        private final AbstractC5274v<E> f18389a;

        /* renamed from: b */
        private final AbstractC5224i<? extends Collection<E>> f18390b;

        public C5123a(C5250f c5250f, Type type, AbstractC5274v<E> abstractC5274v, AbstractC5224i<? extends Collection<E>> abstractC5224i) {
            this.f18389a = new C5148m(c5250f, abstractC5274v, type);
            this.f18390b = abstractC5224i;
        }

        /* renamed from: a */
        public final Collection<E> mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            Collection<E> mo32819a = this.f18390b.mo32819a();
            c5244a.mo32801a();
            while (c5244a.mo32788e()) {
                mo32819a.add(this.f18389a.mo32517b(c5244a));
            }
            c5244a.mo32796b();
            return mo32819a;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32518a(C5247c c5247c, Object obj) throws IOException {
            m32980a(c5247c, (Collection) ((Collection) obj));
        }

        /* renamed from: a */
        public final void m32980a(C5247c c5247c, Collection<E> collection) throws IOException {
            if (collection == null) {
                c5247c.mo32745f();
                return;
            }
            c5247c.mo32756b();
            for (E e : collection) {
                this.f18389a.mo32518a(c5247c, e);
            }
            c5247c.mo32752c();
        }
    }

    public C5122b(C5196c c5196c) {
        this.f18388a = c5196c;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
    /* renamed from: a */
    public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
        Type m32805b = c5236a.m32805b();
        Class<? super T> m32808a = c5236a.m32808a();
        if (!Collection.class.isAssignableFrom(m32808a)) {
            return null;
        }
        Type m32879a = C5189b.m32879a(m32805b, (Class<?>) m32808a);
        return new C5123a(c5250f, m32879a, c5250f.m32735a((C5236a) C5236a.m32806a(m32879a)), this.f18388a.m32856a(c5236a));
    }
}
