package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
/* renamed from: h.i.a.e.d.k.q.m0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/m0.class */
public final class C6898m0 implements AbstractC6934v0 {

    /* renamed from: a */
    public final C6938w0 f16880a;

    public C6898m0(C6938w0 w0Var) {
        this.f16880a = w0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21484a(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final void mo21486a() {
        for (C6805a.AbstractC6816f fVar : this.f16880a.f17002f.values()) {
            fVar.disconnect();
        }
        this.f16880a.f17010n.f16901q = Collections.emptySet();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final void mo21485a(ConnectionResult connectionResult, C6805a<?> aVar, boolean z) {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21481b(T t) {
        this.f16880a.f17010n.f16893i.add(t);
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    public final void connect() {
        this.f16880a.m21505e();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    public final boolean disconnect() {
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: f */
    public final void mo21480f(int i) {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: j */
    public final void mo21479j(Bundle bundle) {
    }
}
