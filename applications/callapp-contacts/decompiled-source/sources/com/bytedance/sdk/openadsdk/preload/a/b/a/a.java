package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.b;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/a.class */
public final class a<E> extends v<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final w f9910a = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.a.1
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
            Type b2 = aVar.b();
            if (!(b2 instanceof GenericArrayType) && (!(b2 instanceof Class) || !((Class) b2).isArray())) {
                return null;
            }
            Type g = b.g(b2);
            return new a(fVar, fVar.a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.a(g)), b.e(g));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final Class<E> f9911b;

    /* renamed from: c  reason: collision with root package name */
    private final v<E> f9912c;

    public a(f fVar, v<E> vVar, Class<E> cls) {
        this.f9912c = new m(fVar, vVar, cls);
        this.f9911b = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final void a(c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.f();
            return;
        }
        cVar.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f9912c.a(cVar, Array.get(obj, i));
        }
        cVar.c();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final Object b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        if (aVar.f() == com.bytedance.sdk.openadsdk.preload.a.d.b.NULL) {
            aVar.j();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.e()) {
            arrayList.add(this.f9912c.b(aVar));
        }
        aVar.b();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f9911b, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
