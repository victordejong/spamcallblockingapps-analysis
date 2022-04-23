package kotlin.g;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.f;
import kotlin.c.g;
import kotlin.jvm.internal.a.a;
import kotlin.jvm.internal.p;
import kotlin.o;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u000e\u0010\u001a\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\r\u0010\u001c\u001a\u00028��H\u0002¢\u0006\u0002\u0010\u001bJ\u001e\u0010\u001d\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fH\u0016ø\u0001��¢\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0096@ø\u0001��¢\u0006\u0002\u0010&R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00018��X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlin/sequences/SequenceBuilderIterator;", "T", "Lkotlin/sequences/SequenceScope;", "", "Lkotlin/coroutines/Continuation;", "", "()V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "nextIterator", "nextStep", "getNextStep", "()Lkotlin/coroutines/Continuation;", "setNextStep", "(Lkotlin/coroutines/Continuation;)V", "nextValue", "Ljava/lang/Object;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "Lkotlin/sequences/State;", "exceptionalState", "", "hasNext", "", "next", "()Ljava/lang/Object;", "nextNotReady", "resumeWith", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "yield", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "yieldAll", "iterator", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/g/i.class */
public final class i<T> extends j<T> implements Iterator<T>, d<v>, a {

    /* renamed from: a  reason: collision with root package name */
    public d<? super v> f36697a;

    /* renamed from: b  reason: collision with root package name */
    private int f36698b;

    /* renamed from: c  reason: collision with root package name */
    private T f36699c;

    /* renamed from: d  reason: collision with root package name */
    private Iterator<? extends T> f36700d;

    private final Throwable a() {
        int i = this.f36698b;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f36698b);
    }

    @Override // kotlin.g.j
    public final Object a(T t, d<? super v> frame) {
        this.f36699c = t;
        this.f36698b = 3;
        this.f36697a = frame;
        kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
        if (aVar == kotlin.c.a.a.COROUTINE_SUSPENDED) {
            p.d(frame, "frame");
        }
        return aVar == kotlin.c.a.a.COROUTINE_SUSPENDED ? aVar : v.f38654a;
    }

    @Override // kotlin.c.d
    public final f b() {
        return g.f36650a;
    }

    @Override // kotlin.c.d
    public final void b(Object obj) {
        kotlin.p.a(obj);
        this.f36698b = 4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.f36698b;
            if (i != 0) {
                if (i == 1) {
                    Iterator<? extends T> it2 = this.f36700d;
                    p.a(it2);
                    if (it2.hasNext()) {
                        this.f36698b = 2;
                        return true;
                    }
                    this.f36700d = null;
                } else if (i == 2 || i == 3) {
                    return true;
                } else {
                    if (i == 4) {
                        return false;
                    }
                    throw a();
                }
            }
            this.f36698b = 5;
            d<? super v> dVar = this.f36697a;
            p.a(dVar);
            this.f36697a = null;
            v vVar = v.f38654a;
            o.a aVar = o.f36812a;
            dVar.b(o.d(vVar));
        }
    }

    @Override // java.util.Iterator
    public final T next() {
        do {
            int i = this.f36698b;
            if (i != 0 && i != 1) {
                if (i == 2) {
                    this.f36698b = 1;
                    Iterator<? extends T> it2 = this.f36700d;
                    p.a(it2);
                    return (T) it2.next();
                } else if (i == 3) {
                    this.f36698b = 0;
                    T t = this.f36699c;
                    this.f36699c = null;
                    return t;
                } else {
                    throw a();
                }
            }
        } while (hasNext());
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
