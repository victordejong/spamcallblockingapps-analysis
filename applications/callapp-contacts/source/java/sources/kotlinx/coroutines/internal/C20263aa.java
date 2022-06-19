package kotlinx.coroutines.internal;

import com.mopub.common.AdType;
import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.coroutines.C20159ao;
import kotlinx.coroutines.internal.AbstractC20264ab;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010��\n\u0002\u0018\u0002\b\u0017\u0018��*\u0012\b��\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028��0\u00022\u000602j\u0002`3B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��H\u0001¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\n\u0010\tJ.\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028��2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018��\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0005J\u0011\u0010\u0011\u001a\u0004\u0018\u00018��H\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u0019H\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\u001e\u001a\u0004\u0018\u00018��2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u0004\u0018\u00018��¢\u0006\u0004\b \u0010\u0012J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010¢\u0006\u0004\b$\u0010#J\u001f\u0010&\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0019H\u0002¢\u0006\u0004\b&\u0010'R \u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018��\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0013\u0010*\u001a\u00020\f8F@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010+R$\u00100\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00198F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u0010#¨\u00061"}, m4298d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "T", "<init>", "()V", "node", "", "addImpl", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "addLast", "Lkotlin/Function1;", "", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", AdType.CLEAR, "firstImpl", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "", "realloc", "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "", "index", "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "predicate", "removeFirstIf", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", "i", "siftDownFrom", "(I)V", "siftUpFrom", "j", "swap", "(II)V", "a", "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "isEmpty", "()Z", "value", "getSize", "()I", "setSize", "size", "kotlinx-coroutines-core", "", "Lkotlinx/coroutines/internal/SynchronizedObject;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.aa */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/aa.class */
public class C20263aa<T extends AbstractC20264ab & Comparable<? super T>> {
    public volatile /* synthetic */ int _size = 0;

    /* renamed from: b */
    public T[] f66719b;

    /* renamed from: a */
    private final void m890a(int i, int i2) {
        T[] tArr = this.f66719b;
        C18524p.m3851a(tArr);
        T t = tArr[i2];
        C18524p.m3851a(t);
        T t2 = tArr[i];
        C18524p.m3851a(t2);
        tArr[i] = t;
        tArr[i2] = t2;
        t.mo883a(i);
        t2.mo883a(i2);
    }

    /* renamed from: c */
    private final void m885c(int i) {
        while (true) {
            int i2 = i;
            int i3 = (i2 * 2) + 1;
            if (i3 >= this._size) {
                return;
            }
            T[] tArr = this.f66719b;
            C18524p.m3851a(tArr);
            int i4 = i3 + 1;
            i = i3;
            if (i4 < this._size) {
                T t = tArr[i4];
                C18524p.m3851a(t);
                Comparable comparable = (Comparable) t;
                T t2 = tArr[i3];
                C18524p.m3851a(t2);
                i = i3;
                if (comparable.compareTo(t2) < 0) {
                    i = i4;
                }
            }
            T t3 = tArr[i2];
            C18524p.m3851a(t3);
            Comparable comparable2 = (Comparable) t3;
            T t4 = tArr[i];
            C18524p.m3851a(t4);
            if (comparable2.compareTo(t4) <= 0) {
                return;
            }
            m890a(i2, i);
        }
    }

    /* renamed from: a */
    public final T m891a(int i) {
        if (C20159ao.m1083a()) {
            if (!(this._size > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f66719b;
        C18524p.m3851a(tArr);
        this._size--;
        if (i < this._size) {
            m890a(i, this._size);
            int i2 = (i - 1) / 2;
            if (i > 0) {
                T t = tArr[i];
                C18524p.m3851a(t);
                Comparable comparable = (Comparable) t;
                T t2 = tArr[i2];
                C18524p.m3851a(t2);
                if (comparable.compareTo(t2) < 0) {
                    m890a(i, i2);
                    m887b(i2);
                }
            }
            m885c(i);
        }
        T t3 = tArr[this._size];
        C18524p.m3851a(t3);
        if (C20159ao.m1083a()) {
            boolean z = false;
            if (t3.mo881b() == this) {
                z = true;
            }
            if (!z) {
                throw new AssertionError();
            }
        }
        t3.mo882a(null);
        t3.mo883a(-1);
        tArr[this._size] = null;
        return t3;
    }

    /* renamed from: a */
    public final boolean m892a() {
        return this._size == 0;
    }

    /* renamed from: a */
    public final boolean m889a(T t) {
        boolean z;
        synchronized (this) {
            z = true;
            boolean z2 = false;
            if (t.mo881b() == null) {
                z = false;
            } else {
                int mo880c = t.mo880c();
                if (C20159ao.m1083a()) {
                    if (mo880c >= 0) {
                        z2 = true;
                    }
                    if (!z2) {
                        throw new AssertionError();
                    }
                }
                m891a(mo880c);
            }
        }
        return z;
    }

    /* renamed from: b */
    public final T m888b() {
        T m884d;
        synchronized (this) {
            m884d = m884d();
        }
        return m884d;
    }

    /* renamed from: b */
    public final void m887b(int i) {
        while (i > 0) {
            T[] tArr = this.f66719b;
            C18524p.m3851a(tArr);
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            C18524p.m3851a(t);
            Comparable comparable = (Comparable) t;
            T t2 = tArr[i];
            C18524p.m3851a(t2);
            if (comparable.compareTo(t2) <= 0) {
                return;
            }
            m890a(i, i2);
            i = i2;
        }
    }

    /* renamed from: c */
    public final T m886c() {
        T m891a;
        synchronized (this) {
            m891a = this._size > 0 ? m891a(0) : null;
        }
        return m891a;
    }

    /* renamed from: d */
    public final T m884d() {
        T[] tArr = this.f66719b;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }
}
