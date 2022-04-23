package com.bytedance.sdk.openadsdk.preload.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/i.class */
public final class i extends l implements Iterable<l> {

    /* renamed from: a  reason: collision with root package name */
    private final List<l> f10088a = new ArrayList();

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final Number a() {
        if (this.f10088a.size() == 1) {
            return this.f10088a.get(0).a();
        }
        throw new IllegalStateException();
    }

    public final void a(l lVar) {
        l lVar2 = lVar;
        if (lVar == null) {
            lVar2 = n.f10089a;
        }
        this.f10088a.add(lVar2);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final String b() {
        if (this.f10088a.size() == 1) {
            return this.f10088a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final double c() {
        if (this.f10088a.size() == 1) {
            return this.f10088a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final long d() {
        if (this.f10088a.size() == 1) {
            return this.f10088a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final int e() {
        if (this.f10088a.size() == 1) {
            return this.f10088a.get(0).e();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof i) && ((i) obj).f10088a.equals(this.f10088a);
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.l
    public final boolean f() {
        if (this.f10088a.size() == 1) {
            return this.f10088a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public final int hashCode() {
        return this.f10088a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<l> iterator() {
        return this.f10088a.iterator();
    }
}
