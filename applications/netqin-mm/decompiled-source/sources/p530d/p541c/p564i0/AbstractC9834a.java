package p530d.p541c.p564i0;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9803e;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.i0.a */
/* loaded from: classes2-dex2jar.jar:d/c/i0/a.class */
public abstract class AbstractC9834a<T> implements AbstractC9829h<T>, AbstractC9861b {

    /* renamed from: a */
    public final AtomicReference<AbstractC10434d> f37063a = new AtomicReference<>();

    /* renamed from: a */
    public final void m1879a() {
        dispose();
    }

    /* renamed from: b */
    public void m1878b() {
        this.f37063a.get().request(Long.MAX_VALUE);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final void dispose() {
        SubscriptionHelper.cancel(this.f37063a);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final boolean isDisposed() {
        return this.f37063a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public final void onSubscribe(AbstractC10434d dVar) {
        if (C9803e.m2002a(this.f37063a, dVar, getClass())) {
            m1878b();
        }
    }
}
