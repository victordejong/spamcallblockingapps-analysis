package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6809d;
import p081h.p203i.p204a.p224e.p235d.p236k.C6822e;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.k.q.s2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/s2.class */
public final class C6924s2<O extends C6805a.AbstractC6809d> extends C6822e<O> {

    /* renamed from: j */
    public final C6805a.AbstractC6816f f16955j;

    /* renamed from: k */
    public final C6900m2 f16956k;

    /* renamed from: l */
    public final C6983e f16957l;

    /* renamed from: m */
    public final C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f16958m;

    public C6924s2(@NonNull Context context, C6805a<O> aVar, Looper looper, @NonNull C6805a.AbstractC6816f fVar, @NonNull C6900m2 m2Var, C6983e eVar, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar2) {
        super(context, aVar, looper);
        this.f16955j = fVar;
        this.f16956k = m2Var;
        this.f16957l = eVar;
        this.f16958m = aVar2;
        this.f16714i.m21761a(this);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.C6822e
    /* renamed from: a */
    public final C6805a.AbstractC6816f mo21569a(Looper looper, C6858e.C6859a<O> aVar) {
        this.f16956k.m21652a(aVar);
        return this.f16955j;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.C6822e
    /* renamed from: a */
    public final BinderC6911p1 mo21570a(Context context, Handler handler) {
        return new BinderC6911p1(context, handler, this.f16957l, this.f16958m);
    }

    /* renamed from: h */
    public final C6805a.AbstractC6816f m21568h() {
        return this.f16955j;
    }
}
