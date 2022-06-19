package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/d.class */
public abstract class AbstractC5283d<IN, OUT> {

    /* renamed from: d */
    private static AtomicLong f18708d = new AtomicLong();

    /* renamed from: a */
    AbstractC5283d f18709a;

    /* renamed from: b */
    IN f18710b;

    /* renamed from: c */
    OUT f18711c;

    /* renamed from: e */
    private AbstractC5280a f18712e;

    /* renamed from: f */
    private AbstractC5279b f18713f;

    /* renamed from: g */
    private long f18714g;

    /* renamed from: a */
    private void m32663a() {
        AbstractC5283d abstractC5283d = this.f18709a;
        if (abstractC5283d != null) {
            this.f18714g = abstractC5283d.f18714g;
            return;
        }
        long andIncrement = f18708d.getAndIncrement();
        this.f18714g = andIncrement;
        if (andIncrement < 0) {
            throw new RuntimeException("Pipeline ID use up!");
        }
    }

    /* renamed from: a */
    public final void m32662a(AbstractC5279b abstractC5279b, AbstractC5283d abstractC5283d, IN in, AbstractC5280a abstractC5280a, Object[] objArr) {
        this.f18713f = new C5299m(abstractC5279b);
        this.f18709a = abstractC5283d;
        this.f18710b = in;
        this.f18712e = abstractC5280a;
        m32663a();
        mo32475a(objArr);
    }

    /* renamed from: a */
    public void mo32475a(Object... objArr) {
    }

    /* renamed from: a_ */
    public abstract Object mo32469a_(AbstractC5279b<OUT> abstractC5279b, IN in) throws Throwable;

    /* renamed from: b */
    public final void m32661b(Throwable th) {
        AbstractC5280a abstractC5280a = this.f18712e;
        if (abstractC5280a == null) {
            return;
        }
        abstractC5280a.m32673c(this.f18713f, this, th);
    }

    /* renamed from: c */
    public long m32660c() {
        return this.f18714g;
    }

    /* renamed from: c */
    public final void m32659c(Throwable th) {
        AbstractC5280a abstractC5280a = this.f18712e;
        if (abstractC5280a == null) {
            return;
        }
        abstractC5280a.m32669e(this.f18713f, this, th);
    }

    /* renamed from: d */
    public final void m32658d() {
        AbstractC5280a abstractC5280a = this.f18712e;
        if (abstractC5280a == null) {
            return;
        }
        abstractC5280a.m32672d(this.f18713f, this);
    }

    /* renamed from: d */
    public final void m32657d(Throwable th) {
        AbstractC5280a abstractC5280a = this.f18712e;
        if (abstractC5280a == null) {
            return;
        }
        abstractC5280a.m32671d(this.f18713f, this, th);
    }

    /* renamed from: e */
    public final void m32656e() {
        AbstractC5280a abstractC5280a = this.f18712e;
        if (abstractC5280a == null) {
            return;
        }
        abstractC5280a.m32668f(this.f18713f, this);
    }

    /* renamed from: f */
    public final void m32655f() {
        AbstractC5280a abstractC5280a = this.f18712e;
        if (abstractC5280a == null) {
            return;
        }
        abstractC5280a.m32670e(this.f18713f, this);
    }
}
