package com.bytedance.sdk.openadsdk.preload.b.b;

import com.bytedance.sdk.openadsdk.preload.b.d;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/b/b.class */
public final class b extends a {

    /* renamed from: a  reason: collision with root package name */
    private List<a> f10097a;

    public b(a... aVarArr) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f10097a = copyOnWriteArrayList;
        if (aVarArr != null) {
            copyOnWriteArrayList.addAll(Arrays.asList(aVarArr));
        }
    }

    public final void a(a aVar) {
        if (aVar != null) {
            this.f10097a.add(aVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
    public final <T> void a(com.bytedance.sdk.openadsdk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f10097a) {
            if (aVar != null) {
                aVar.a(bVar, dVar);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
    public final <T> void a(com.bytedance.sdk.openadsdk.preload.b.b<T> bVar, d dVar, Throwable th) {
        for (a aVar : this.f10097a) {
            if (aVar != null) {
                aVar.a(bVar, dVar, th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
    public final <T> void b(com.bytedance.sdk.openadsdk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f10097a) {
            if (aVar != null) {
                aVar.b(bVar, dVar);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
    public final <T> void b(com.bytedance.sdk.openadsdk.preload.b.b<T> bVar, d dVar, Throwable th) {
        for (a aVar : this.f10097a) {
            if (aVar != null) {
                aVar.b(bVar, dVar, th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
    public final <T> void c(com.bytedance.sdk.openadsdk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f10097a) {
            if (aVar != null) {
                aVar.c(bVar, dVar);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
    public final <T> void f(com.bytedance.sdk.openadsdk.preload.b.b<T> bVar, d dVar, Throwable th) {
        for (a aVar : this.f10097a) {
            if (aVar != null) {
                aVar.f(bVar, dVar, th);
            }
        }
    }
}
