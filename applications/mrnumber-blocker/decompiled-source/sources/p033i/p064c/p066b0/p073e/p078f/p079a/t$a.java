package p033i.p064c.p066b0.p073e.p078f.p079a;

import i.c.b0.c.a;
import i.c.b0.e.k.j;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import p033i.p064c.p066b0.p070b.AbstractC0458g;
import p033i.p064c.p066b0.p070b.AbstractC0462i;
/* renamed from: i.c.b0.e.f.a.t$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/a/t$a.class */
final class t$a implements Runnable {

    /* renamed from: f */
    private final AtomicBoolean f1076f;

    /* renamed from: g */
    final a f1077g;

    /* renamed from: h */
    final AbstractC0458g f1078h;

    /* renamed from: i */
    final /* synthetic */ t f1079i;

    t$a(t tVar, AtomicBoolean atomicBoolean, a aVar, AbstractC0458g gVar) {
        this.f1079i = tVar;
        this.f1076f = atomicBoolean;
        this.f1077g = aVar;
        this.f1078h = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1076f.compareAndSet(false, true)) {
            this.f1077g.d();
            AbstractC0462i iVar = this.f1079i.j;
            if (iVar == null) {
                AbstractC0458g gVar = this.f1078h;
                t tVar = this.f1079i;
                gVar.onError(new TimeoutException(j.f(tVar.g, tVar.h)));
                return;
            }
            iVar.m86a(new a(this));
        }
    }
}
