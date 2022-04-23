package p530d.p541c;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import io.reactivex.BackpressureStrategy;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.internal.operators.observable.ObservableFlatMap;
import io.reactivex.internal.operators.observable.ObservableFlatMapCompletableCompletable;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractCallableC9659h;
import p530d.p541c.p543b0.p548e.p550b.C9689h;
import p530d.p541c.p543b0.p548e.p552d.C9738d;
import p530d.p541c.p543b0.p548e.p552d.C9742g;
import p530d.p541c.p543b0.p548e.p552d.C9743h;
import p530d.p541c.p543b0.p548e.p552d.C9745i;
import p530d.p541c.p543b0.p548e.p552d.C9749l;
import p530d.p541c.p543b0.p548e.p552d.C9750m;
import p530d.p541c.p543b0.p548e.p552d.C9757s;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.o */
/* loaded from: classes2-dex2jar.jar:d/c/o.class */
public abstract class AbstractC9840o<T> implements AbstractC9843q<T> {

    /* renamed from: d.c.o$a */
    /* loaded from: classes2-dex2jar.jar:d/c/o$a.class */
    public static /* synthetic */ class C9841a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37066a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f37066a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f37066a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f37066a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f37066a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static int m1870a() {
        return AbstractC9814e.m1946g();
    }

    /* renamed from: a */
    public static <T> AbstractC9840o<T> m1862a(Iterable<? extends T> iterable) {
        C9650a.m2095a(iterable, "source is null");
        return C9815a.m1934a(new C9745i(iterable));
    }

    /* renamed from: b */
    public static <T> AbstractC9840o<T> m1860b() {
        return C9815a.m1934a(C9742g.f36855a);
    }

    /* renamed from: b */
    public static <T> AbstractC9840o<T> m1856b(T t) {
        C9650a.m2095a((Object) t, "The item is null");
        return C9815a.m1934a((AbstractC9840o) new C9749l(t));
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1863a(BackpressureStrategy backpressureStrategy) {
        C9689h hVar = new C9689h(this);
        int i = C9841a.f37066a[backpressureStrategy.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? hVar.m1957b() : C9815a.m1938a(new FlowableOnBackpressureError(hVar)) : hVar : hVar.m1950d() : hVar.m1952c();
    }

    /* renamed from: a */
    public final <R> AbstractC9840o<R> m1869a(AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar) {
        return m1868a(hVar, false);
    }

    /* renamed from: a */
    public final <R> AbstractC9840o<R> m1868a(AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar, boolean z) {
        return m1867a(hVar, z, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
    }

    /* renamed from: a */
    public final <R> AbstractC9840o<R> m1867a(AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar, boolean z, int i) {
        return m1866a(hVar, z, i, m1870a());
    }

    /* renamed from: a */
    public final <R> AbstractC9840o<R> m1866a(AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar, boolean z, int i, int i2) {
        C9650a.m2095a(hVar, "mapper is null");
        C9650a.m2099a(i, "maxConcurrency");
        C9650a.m2099a(i2, "bufferSize");
        if (!(this instanceof AbstractCallableC9659h)) {
            return C9815a.m1934a(new ObservableFlatMap(this, hVar, z, i, i2));
        }
        Object call = ((AbstractCallableC9659h) this).call();
        return call == null ? m1860b() : ObservableScalarXMap.m233a(call, hVar);
    }

    /* renamed from: a */
    public final AbstractC9840o<T> m1864a(AbstractC9843q<? extends T> qVar) {
        C9650a.m2095a(qVar, "other is null");
        return C9815a.m1934a(new C9757s(this, qVar));
    }

    /* renamed from: a */
    public final AbstractC9850t<Boolean> m1865a(AbstractC9646i<? super T> iVar) {
        C9650a.m2095a(iVar, "predicate is null");
        return C9815a.m1931a(new C9738d(this, iVar));
    }

    /* renamed from: a */
    public final AbstractC9850t<Boolean> m1861a(Object obj) {
        C9650a.m2095a(obj, "element is null");
        return m1865a((AbstractC9646i) Functions.m265a(obj));
    }

    /* renamed from: a */
    public abstract void mo192a(AbstractC9844r<? super T> rVar);

    /* renamed from: b */
    public final AbstractC9637a m1859b(AbstractC9645h<? super T, ? extends AbstractC9809c> hVar) {
        return m1858b(hVar, false);
    }

    /* renamed from: b */
    public final AbstractC9637a m1858b(AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, boolean z) {
        C9650a.m2095a(hVar, "mapper is null");
        return C9815a.m1940a(new ObservableFlatMapCompletableCompletable(this, hVar, z));
    }

    /* renamed from: b */
    public final AbstractC9840o<T> m1857b(AbstractC9646i<? super T> iVar) {
        C9650a.m2095a(iVar, "predicate is null");
        return C9815a.m1934a(new C9743h(this, iVar));
    }

    /* renamed from: c */
    public final <R> AbstractC9840o<R> m1855c(AbstractC9645h<? super T, ? extends R> hVar) {
        C9650a.m2095a(hVar, "mapper is null");
        return C9815a.m1934a(new C9750m(this, hVar));
    }

    @Override // p530d.p541c.AbstractC9843q
    public final void subscribe(AbstractC9844r<? super T> rVar) {
        C9650a.m2095a(rVar, "observer is null");
        try {
            AbstractC9844r<? super T> a = C9815a.m1933a(this, rVar);
            C9650a.m2095a(a, "Plugin returned null Observer");
            mo192a((AbstractC9844r) a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            C9815a.m1923b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
