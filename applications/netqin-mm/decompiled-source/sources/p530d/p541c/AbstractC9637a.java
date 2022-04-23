package p530d.p541c;

import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.EmptyCompletableObserver;
import io.reactivex.internal.operators.completable.CompletableConcatArray;
import java.util.concurrent.Callable;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9654c;
import p530d.p541c.p543b0.p548e.p549a.C9666a;
import p530d.p541c.p543b0.p548e.p549a.C9667b;
import p530d.p541c.p543b0.p548e.p549a.C9668c;
import p530d.p541c.p543b0.p548e.p549a.C9669d;
import p530d.p541c.p543b0.p548e.p549a.C9670e;
import p530d.p541c.p543b0.p548e.p549a.C9672f;
import p530d.p541c.p543b0.p548e.p549a.C9674g;
import p530d.p541c.p543b0.p548e.p551c.C9722i;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.a */
/* loaded from: classes2-dex2jar.jar:d/c/a.class */
public abstract class AbstractC9637a implements AbstractC9809c {
    /* renamed from: a */
    public static AbstractC9637a m2111a(Callable<?> callable) {
        C9650a.m2095a(callable, "callable is null");
        return C9815a.m1940a(new C9668c(callable));
    }

    /* renamed from: a */
    public static AbstractC9637a m2110a(AbstractC9809c... cVarArr) {
        C9650a.m2095a(cVarArr, "sources is null");
        return cVarArr.length == 0 ? m2103e() : cVarArr.length == 1 ? m2105c(cVarArr[0]) : C9815a.m1940a(new CompletableConcatArray(cVarArr));
    }

    /* renamed from: a */
    public static NullPointerException m2112a(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    /* renamed from: b */
    public static AbstractC9637a m2108b(AbstractC9638a aVar) {
        C9650a.m2095a(aVar, "run is null");
        return C9815a.m1940a(new C9667b(aVar));
    }

    /* renamed from: c */
    public static AbstractC9637a m2105c(AbstractC9809c cVar) {
        C9650a.m2095a(cVar, "source is null");
        return cVar instanceof AbstractC9637a ? C9815a.m1940a((AbstractC9637a) cVar) : C9815a.m1940a(new C9669d(cVar));
    }

    /* renamed from: e */
    public static AbstractC9637a m2103e() {
        return C9815a.m1940a(C9666a.f36730a);
    }

    /* renamed from: a */
    public final AbstractC9637a m2118a(AbstractC9638a aVar) {
        AbstractC9644g<? super AbstractC9861b> b = Functions.m263b();
        AbstractC9644g<? super Throwable> b2 = Functions.m263b();
        AbstractC9638a aVar2 = Functions.f38321c;
        return m2116a(b, b2, aVar, aVar2, aVar2, aVar2);
    }

    /* renamed from: a */
    public final AbstractC9637a m2117a(AbstractC9644g<? super Throwable> gVar) {
        AbstractC9644g<? super AbstractC9861b> b = Functions.m263b();
        AbstractC9638a aVar = Functions.f38321c;
        return m2116a(b, gVar, aVar, aVar, aVar, aVar);
    }

    /* renamed from: a */
    public final AbstractC9637a m2116a(AbstractC9644g<? super AbstractC9861b> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9638a aVar2, AbstractC9638a aVar3, AbstractC9638a aVar4) {
        C9650a.m2095a(gVar, "onSubscribe is null");
        C9650a.m2095a(gVar2, "onError is null");
        C9650a.m2095a(aVar, "onComplete is null");
        C9650a.m2095a(aVar2, "onTerminate is null");
        C9650a.m2095a(aVar3, "onAfterTerminate is null");
        C9650a.m2095a(aVar4, "onDispose is null");
        return C9815a.m1940a(new C9672f(this, gVar, gVar2, aVar, aVar2, aVar3, aVar4));
    }

    /* renamed from: a */
    public final AbstractC9637a m2115a(AbstractC9645h<? super Throwable, ? extends AbstractC9809c> hVar) {
        C9650a.m2095a(hVar, "errorMapper is null");
        return C9815a.m1940a(new C9674g(this, hVar));
    }

    /* renamed from: a */
    public final AbstractC9637a m2114a(AbstractC9646i<? super Throwable> iVar) {
        C9650a.m2095a(iVar, "predicate is null");
        return C9815a.m1940a(new C9670e(this, iVar));
    }

    /* renamed from: a */
    public final AbstractC9637a m2113a(AbstractC9809c cVar) {
        return m2107b(cVar);
    }

    @Override // p530d.p541c.AbstractC9809c
    /* renamed from: a */
    public final void mo1980a(AbstractC9647b bVar) {
        C9650a.m2095a(bVar, "s is null");
        try {
            mo204b(C9815a.m1939a(this, bVar));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            C9815a.m1923b(th);
            throw m2112a(th);
        }
    }

    /* renamed from: b */
    public final AbstractC9637a m2109b() {
        return m2114a(Functions.m267a());
    }

    /* renamed from: b */
    public final AbstractC9637a m2107b(AbstractC9809c cVar) {
        C9650a.m2095a(cVar, "other is null");
        return m2110a(this, cVar);
    }

    /* renamed from: b */
    public abstract void mo204b(AbstractC9647b bVar);

    /* renamed from: c */
    public final AbstractC9861b m2106c() {
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        mo1980a(emptyCompletableObserver);
        return emptyCompletableObserver;
    }

    /* renamed from: d */
    public final <T> AbstractC9833i<T> m2104d() {
        return this instanceof AbstractC9654c ? ((AbstractC9654c) this).m2093b() : C9815a.m1936a(new C9722i(this));
    }
}
