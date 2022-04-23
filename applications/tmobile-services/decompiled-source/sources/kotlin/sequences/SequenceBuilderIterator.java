package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b-\u0010.J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00028��H\u0002¢\u0006\u0004\b\u000e\u0010\rJ \u0010\u0012\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0016ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0019\u001a\u00020\u00102\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028��0\u0017H\u0096@ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0018\u0010'\u001a\u0004\u0018\u00018��8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u001a\u0010+\u001a\u00060)j\u0002`*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006/"}, d2 = {"Lkotlin/sequences/SequenceBuilderIterator;", "T", "Ljava/util/Iterator;", "Lkotlin/coroutines/Continuation;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "Lkotlin/sequences/SequenceScope;", "", "exceptionalState", "()Ljava/lang/Throwable;", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "nextNotReady", "Lkotlin/Result;", "", "result", "resumeWith", "(Ljava/lang/Object;)V", FirebaseAnalytics.Param.VALUE, "yield", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "iterator", "yieldAll", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "nextIterator", "Ljava/util/Iterator;", "nextStep", "Lkotlin/coroutines/Continuation;", "getNextStep", "()Lkotlin/coroutines/Continuation;", "setNextStep", "(Lkotlin/coroutines/Continuation;)V", "nextValue", "Ljava/lang/Object;", "", "Lkotlin/sequences/State;", "state", "I", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequenceBuilderIterator.class */
final class SequenceBuilderIterator<T> extends SequenceScope<T> implements Iterator<T>, Continuation<Unit>, KMappedMarker {

    /* renamed from: f */
    private int f20886f;

    /* renamed from: g */
    private T f20887g;

    /* renamed from: h */
    private Iterator<? extends T> f20888h;
    @Nullable

    /* renamed from: i */
    private Continuation<? super Unit> f20889i;

    /* renamed from: f */
    private final Throwable m1648f() {
        Throwable th;
        int i = this.f20886f;
        if (i == 4) {
            th = new NoSuchElementException();
        } else if (i != 5) {
            th = new IllegalStateException("Unexpected state of the iterator: " + this.f20886f);
        } else {
            th = new IllegalStateException("Iterator has failed.");
        }
        return th;
    }

    /* renamed from: g */
    private final T m1647g() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.sequences.SequenceScope
    @Nullable
    /* renamed from: a */
    public Object mo1645a(T t, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2;
        Object d3;
        this.f20887g = t;
        this.f20886f = 3;
        this.f20889i = continuation;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (d == d2) {
            DebugProbesKt.m1904c(continuation);
        }
        d3 = IntrinsicsKt__IntrinsicsKt.m1920d();
        return d == d3 ? d : Unit.f20447a;
    }

    @Override // kotlin.sequences.SequenceScope
    @Nullable
    /* renamed from: b */
    public Object mo1644b(@NotNull Iterator<? extends T> it, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2;
        Object d3;
        if (!it.hasNext()) {
            return Unit.f20447a;
        }
        this.f20888h = it;
        this.f20886f = 2;
        this.f20889i = continuation;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (d == d2) {
            DebugProbesKt.m1904c(continuation);
        }
        d3 = IntrinsicsKt__IntrinsicsKt.m1920d();
        return d == d3 ? d : Unit.f20447a;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.f20645f;
    }

    /* renamed from: h */
    public final void m1646h(@Nullable Continuation<? super Unit> continuation) {
        this.f20889i = continuation;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i = this.f20886f;
            if (i != 0) {
                if (i == 1) {
                    Iterator<? extends T> it = this.f20888h;
                    Intrinsics.m1832c(it);
                    if (it.hasNext()) {
                        this.f20886f = 2;
                        return true;
                    }
                    this.f20888h = null;
                } else if (i == 2 || i == 3) {
                    return true;
                } else {
                    if (i == 4) {
                        return false;
                    }
                    throw m1648f();
                }
            }
            this.f20886f = 5;
            Continuation<? super Unit> continuation = this.f20889i;
            Intrinsics.m1832c(continuation);
            this.f20889i = null;
            Unit unit = Unit.f20447a;
            Result.Companion companion = Result.f20418g;
            Result.m2481b(unit);
            continuation.resumeWith(unit);
        }
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.f20886f;
        if (i == 0 || i == 1) {
            return m1647g();
        }
        if (i == 2) {
            this.f20886f = 1;
            Iterator<? extends T> it = this.f20888h;
            Intrinsics.m1832c(it);
            return (T) it.next();
        } else if (i == 3) {
            this.f20886f = 0;
            T t = this.f20887g;
            this.f20887g = null;
            return t;
        } else {
            throw m1648f();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        ResultKt.m2472b(obj);
        this.f20886f = 4;
    }
}
