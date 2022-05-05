package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6809d;
import p081h.p203i.p204a.p224e.p235d.p236k.C6822e;
/* renamed from: h.i.a.e.d.k.q.h1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/h1.class */
public final class C6876h1<O extends C6805a.AbstractC6809d> extends C6941x {

    /* renamed from: c */
    public final C6822e<O> f16854c;

    public C6876h1(C6822e<O> eVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f16854c = eVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21648a(@NonNull T t) {
        this.f16854c.m21836b(t);
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final void mo21644a(C6927t1 t1Var) {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21641b(@NonNull T t) {
        this.f16854c.m21834c(t);
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: e */
    public final Context mo21637e() {
        return this.f16854c.m21833d();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: f */
    public final Looper mo21636f() {
        return this.f16854c.m21831f();
    }
}
