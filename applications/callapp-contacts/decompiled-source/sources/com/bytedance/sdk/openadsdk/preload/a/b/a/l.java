package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.j;
import com.bytedance.sdk.openadsdk.preload.a.k;
import com.bytedance.sdk.openadsdk.preload.a.r;
import com.bytedance.sdk.openadsdk.preload.a.s;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/l.class */
public final class l<T> extends v<T> {

    /* renamed from: a  reason: collision with root package name */
    final f f9950a;

    /* renamed from: b  reason: collision with root package name */
    private final s<T> f9951b;

    /* renamed from: c  reason: collision with root package name */
    private final k<T> f9952c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.preload.a.c.a<T> f9953d;
    private final w e;
    private final l<T>.a f = new a();
    private v<T> g;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/l$a.class */
    final class a implements j, r {
        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/l$b.class */
    public static final class b implements w {

        /* renamed from: a  reason: collision with root package name */
        private final com.bytedance.sdk.openadsdk.preload.a.c.a<?> f9955a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f9956b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?> f9957c;

        /* renamed from: d  reason: collision with root package name */
        private final s<?> f9958d;
        private final k<?> e;

        b(Object obj, com.bytedance.sdk.openadsdk.preload.a.c.a<?> aVar, boolean z, Class<?> cls) {
            k<?> kVar = null;
            s<?> sVar = obj instanceof s ? (s) obj : null;
            this.f9958d = sVar;
            kVar = obj instanceof k ? (k) obj : kVar;
            this.e = kVar;
            com.bytedance.sdk.openadsdk.preload.a.b.a.a((sVar == null && kVar == null) ? false : true);
            this.f9955a = aVar;
            this.f9956b = z;
            this.f9957c = cls;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
            com.bytedance.sdk.openadsdk.preload.a.c.a<?> aVar2 = this.f9955a;
            if (aVar2 != null ? aVar2.equals(aVar) || (this.f9956b && this.f9955a.b() == aVar.a()) : this.f9957c.isAssignableFrom(aVar.a())) {
                return new l(this.f9958d, this.e, fVar, aVar, this);
            }
            return null;
        }
    }

    public l(s<T> sVar, k<T> kVar, f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar, w wVar) {
        this.f9951b = sVar;
        this.f9952c = kVar;
        this.f9950a = fVar;
        this.f9953d = aVar;
        this.e = wVar;
    }

    public static w a(com.bytedance.sdk.openadsdk.preload.a.c.a<?> aVar, Object obj) {
        return new b(obj, aVar, aVar.b() == aVar.a(), null);
    }

    private v<T> b() {
        v<T> vVar = this.g;
        if (vVar != null) {
            return vVar;
        }
        v<T> a2 = this.f9950a.a(this.e, this.f9953d);
        this.g = a2;
        return a2;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final void a(c cVar, T t) throws IOException {
        s<T> sVar = this.f9951b;
        if (sVar == null) {
            b().a(cVar, t);
        } else if (t == null) {
            cVar.f();
        } else {
            com.bytedance.sdk.openadsdk.preload.a.b.l.a(sVar.a(t, this.f9953d.b(), this.f), cVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final T b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        if (this.f9952c == null) {
            return b().b(aVar);
        }
        com.bytedance.sdk.openadsdk.preload.a.l a2 = com.bytedance.sdk.openadsdk.preload.a.b.l.a(aVar);
        if (a2.j()) {
            return null;
        }
        return this.f9952c.a(a2, this.f9953d.b(), this.f);
    }
}
