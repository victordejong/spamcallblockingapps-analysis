package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.c;
import com.bytedance.sdk.openadsdk.preload.a.b.i;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/b.class */
public final class b implements w {

    /* renamed from: a  reason: collision with root package name */
    private final c f9914a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/b$a.class */
    static final class a<E> extends v<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final v<E> f9915a;

        /* renamed from: b  reason: collision with root package name */
        private final i<? extends Collection<E>> f9916b;

        public a(f fVar, Type type, v<E> vVar, i<? extends Collection<E>> iVar) {
            this.f9915a = new m(fVar, vVar, type);
            this.f9916b = iVar;
        }

        /* renamed from: a */
        public final Collection<E> b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bytedance.sdk.openadsdk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> collection = (Collection) this.f9916b.a();
            aVar.a();
            while (aVar.e()) {
                collection.add(this.f9915a.b(aVar));
            }
            aVar.b();
            return collection;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public final /* bridge */ /* synthetic */ void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Object obj) throws IOException {
            a(cVar, (Collection) ((Collection) obj));
        }

        public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                cVar.f();
                return;
            }
            cVar.b();
            for (E e : collection) {
                this.f9915a.a(cVar, e);
            }
            cVar.c();
        }
    }

    public b(c cVar) {
        this.f9914a = cVar;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.w
    public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
        Type b2 = aVar.b();
        Class<? super T> a2 = aVar.a();
        if (!Collection.class.isAssignableFrom(a2)) {
            return null;
        }
        Type a3 = com.bytedance.sdk.openadsdk.preload.a.b.b.a(b2, (Class<?>) a2);
        return new a(fVar, a3, fVar.a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.a(a3)), this.f9914a.a(aVar));
    }
}
