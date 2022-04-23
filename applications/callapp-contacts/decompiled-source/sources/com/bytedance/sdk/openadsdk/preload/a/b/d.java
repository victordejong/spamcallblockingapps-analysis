package com.bytedance.sdk.openadsdk.preload.a.b;

import com.bytedance.sdk.openadsdk.preload.a.a.e;
import com.bytedance.sdk.openadsdk.preload.a.b;
import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/d.class */
public final class d implements w, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final d f10021a = new d();
    private boolean e;

    /* renamed from: b  reason: collision with root package name */
    private double f10022b = -1.0d;

    /* renamed from: c  reason: collision with root package name */
    private int f10023c = 136;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10024d = true;
    private List<b> f = Collections.emptyList();
    private List<b> g = Collections.emptyList();

    private boolean a(com.bytedance.sdk.openadsdk.preload.a.a.d dVar) {
        return dVar == null || dVar.a() <= this.f10022b;
    }

    private boolean a(com.bytedance.sdk.openadsdk.preload.a.a.d dVar, e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(e eVar) {
        return eVar == null || eVar.a() > this.f10022b;
    }

    private boolean a(Class<?> cls) {
        if (this.f10022b == -1.0d || a((com.bytedance.sdk.openadsdk.preload.a.a.d) cls.getAnnotation(com.bytedance.sdk.openadsdk.preload.a.a.d.class), (e) cls.getAnnotation(e.class))) {
            return (!this.f10024d && c(cls)) || b(cls);
        }
        return true;
    }

    private boolean b(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            return cls.isAnonymousClass() || cls.isLocalClass();
        }
        return false;
    }

    private boolean b(Class<?> cls, boolean z) {
        for (b bVar : z ? this.f : this.g) {
            if (bVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.w
    public final <T> v<T> a(final f fVar, final a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        boolean a3 = a(a2);
        final boolean z = a3 || b(a2, true);
        final boolean z2 = a3 || b(a2, false);
        if (z || z2) {
            return new v<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.d.1
                private v<T> f;

                private v<T> b() {
                    v<T> vVar = this.f;
                    if (vVar != 0) {
                        return vVar;
                    }
                    v<T> a4 = fVar.a(d.this, aVar);
                    this.f = a4;
                    return a4;
                }

                @Override // com.bytedance.sdk.openadsdk.preload.a.v
                public void a(c cVar, T t) throws IOException {
                    if (z) {
                        cVar.f();
                    } else {
                        b().a(cVar, t);
                    }
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.v
                public T b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar2) throws IOException {
                    if (!z2) {
                        return b().b(aVar2);
                    }
                    aVar2.n();
                    return null;
                }
            };
        }
        return null;
    }

    public final boolean a(Class<?> cls, boolean z) {
        return a(cls) || b(cls, z);
    }

    public final boolean a(Field field, boolean z) {
        if ((this.f10023c & field.getModifiers()) != 0) {
            return true;
        }
        if (!(this.f10022b == -1.0d || a((com.bytedance.sdk.openadsdk.preload.a.a.d) field.getAnnotation(com.bytedance.sdk.openadsdk.preload.a.a.d.class), (e) field.getAnnotation(e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.e) {
            com.bytedance.sdk.openadsdk.preload.a.a.a aVar = (com.bytedance.sdk.openadsdk.preload.a.a.a) field.getAnnotation(com.bytedance.sdk.openadsdk.preload.a.a.a.class);
            if (aVar == null) {
                return true;
            }
            if (z) {
                if (!aVar.a()) {
                    return true;
                }
            } else if (!aVar.b()) {
                return true;
            }
        }
        if ((!this.f10024d && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<b> list = z ? this.f : this.g;
        if (list.isEmpty()) {
            return false;
        }
        com.bytedance.sdk.openadsdk.preload.a.c cVar = new com.bytedance.sdk.openadsdk.preload.a.c(field);
        for (b bVar : list) {
            if (bVar.a(cVar)) {
                return true;
            }
        }
        return false;
    }
}
