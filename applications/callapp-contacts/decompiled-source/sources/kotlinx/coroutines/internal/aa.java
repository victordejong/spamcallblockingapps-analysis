package kotlinx.coroutines.internal;

import com.mopub.common.AdType;
import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.ao;
import kotlinx.coroutines.internal.ab;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010��\n\u0002\u0018\u0002\b\u0017\u0018��*\u0012\b��\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028��0\u00022\u000602j\u0002`3B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��H\u0001¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\n\u0010\tJ.\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028��2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018��\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0005J\u0011\u0010\u0011\u001a\u0004\u0018\u00018��H\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u0019H\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\u001e\u001a\u0004\u0018\u00018��2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u0004\u0018\u00018��¢\u0006\u0004\b \u0010\u0012J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010¢\u0006\u0004\b$\u0010#J\u001f\u0010&\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0019H\u0002¢\u0006\u0004\b&\u0010'R \u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018��\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0013\u0010*\u001a\u00020\f8F@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010+R$\u00100\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00198F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u0010#¨\u00061"}, d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "T", "<init>", "()V", "node", "", "addImpl", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "addLast", "Lkotlin/Function1;", "", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", AdType.CLEAR, "firstImpl", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "", "realloc", "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "", "index", "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "predicate", "removeFirstIf", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", "i", "siftDownFrom", "(I)V", "siftUpFrom", "j", "swap", "(II)V", "a", "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "isEmpty", "()Z", "value", "getSize", "()I", "setSize", "size", "kotlinx-coroutines-core", "", "Lkotlinx/coroutines/internal/SynchronizedObject;"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/aa.class */
public class aa<T extends ab & Comparable<? super T>> {
    public volatile /* synthetic */ int _size = 0;

    /* renamed from: b  reason: collision with root package name */
    public T[] f38798b;

    private final void a(int i, int i2) {
        T[] tArr = this.f38798b;
        p.a(tArr);
        T t = tArr[i2];
        p.a(t);
        T t2 = tArr[i];
        p.a(t2);
        tArr[i] = t;
        tArr[i2] = t2;
        t.a(i);
        t2.a(i2);
    }

    private final void c(int i) {
        while (true) {
            int i2 = (i * 2) + 1;
            if (i2 < this._size) {
                T[] tArr = this.f38798b;
                p.a(tArr);
                int i3 = i2 + 1;
                i = i2;
                if (i3 < this._size) {
                    T t = tArr[i3];
                    p.a(t);
                    Comparable comparable = (Comparable) t;
                    T t2 = tArr[i2];
                    p.a(t2);
                    i = i2;
                    if (comparable.compareTo(t2) < 0) {
                        i = i3;
                    }
                }
                T t3 = tArr[i];
                p.a(t3);
                Comparable comparable2 = (Comparable) t3;
                T t4 = tArr[i];
                p.a(t4);
                if (comparable2.compareTo(t4) > 0) {
                    a(i, i);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final T a(int i) {
        boolean z = false;
        if (ao.a()) {
            if (!(this._size > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f38798b;
        p.a(tArr);
        this._size--;
        if (i < this._size) {
            a(i, this._size);
            int i2 = (i - 1) / 2;
            if (i > 0) {
                T t = tArr[i];
                p.a(t);
                Comparable comparable = (Comparable) t;
                T t2 = tArr[i2];
                p.a(t2);
                if (comparable.compareTo(t2) < 0) {
                    a(i, i2);
                    b(i2);
                }
            }
            c(i);
        }
        T t3 = tArr[this._size];
        p.a(t3);
        if (ao.a()) {
            if (t3.b() == this) {
                z = true;
            }
            if (!z) {
                throw new AssertionError();
            }
        }
        t3.a(null);
        t3.a(-1);
        tArr[this._size] = null;
        return t3;
    }

    public final boolean a() {
        return this._size == 0;
    }

    public final boolean a(T t) {
        boolean z;
        synchronized (this) {
            z = true;
            boolean z2 = false;
            if (t.b() == null) {
                z = false;
            } else {
                int c2 = t.c();
                if (ao.a()) {
                    if (c2 >= 0) {
                        z2 = true;
                    }
                    if (!z2) {
                        throw new AssertionError();
                    }
                }
                a(c2);
            }
        }
        return z;
    }

    public final T b() {
        T d2;
        synchronized (this) {
            d2 = d();
        }
        return d2;
    }

    public final void b(int i) {
        while (i > 0) {
            T[] tArr = this.f38798b;
            p.a(tArr);
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            p.a(t);
            Comparable comparable = (Comparable) t;
            T t2 = tArr[i];
            p.a(t2);
            if (comparable.compareTo(t2) > 0) {
                a(i, i2);
                i = i2;
            } else {
                return;
            }
        }
    }

    public final T c() {
        T a2;
        synchronized (this) {
            a2 = this._size > 0 ? a(0) : null;
        }
        return a2;
    }

    public final T d() {
        T[] tArr = this.f38798b;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }
}
