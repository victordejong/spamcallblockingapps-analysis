package com.bytedance.sdk.openadsdk.preload.b;

import com.bytedance.sdk.openadsdk.preload.b.b.a;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/d.class */
public abstract class d<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private static AtomicLong f10098d = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    d f10099a;

    /* renamed from: b  reason: collision with root package name */
    IN f10100b;

    /* renamed from: c  reason: collision with root package name */
    OUT f10101c;
    private a e;
    private b f;
    private long g;

    private void a() {
        d dVar = this.f10099a;
        if (dVar != null) {
            this.g = dVar.g;
            return;
        }
        long andIncrement = f10098d.getAndIncrement();
        this.g = andIncrement;
        if (andIncrement < 0) {
            throw new RuntimeException("Pipeline ID use up!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar, d dVar, IN in, a aVar, Object[] objArr) {
        this.f = new m(bVar);
        this.f10099a = dVar;
        this.f10100b = in;
        this.e = aVar;
        a();
        a(objArr);
    }

    public void a(Object... objArr) {
    }

    public abstract Object a_(b<OUT> bVar, IN in) throws Throwable;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Throwable th) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.c(this.f, this, th);
        }
    }

    public long c() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Throwable th) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.e(this.f, this, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        a aVar = this.e;
        if (aVar != null) {
            aVar.d(this.f, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(Throwable th) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.d(this.f, this, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        a aVar = this.e;
        if (aVar != null) {
            aVar.f(this.f, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        a aVar = this.e;
        if (aVar != null) {
            aVar.e(this.f, this);
        }
    }
}
