package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import com.mopub.common.AdType;
import java.lang.Comparable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p632u.C15011h;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010��\n\u0002\u0018\u0002\b\u0017\u0018��*\u0012\b��\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028��0\u00022\u000602j\u0002`3B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��H\u0001¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\n\u0010\tJ.\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028��2\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018��\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0005J\u0011\u0010\u0011\u001a\u0004\u0018\u00018��H\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u0019H\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\u001e\u001a\u0004\u0018\u00018��2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\f0\u000bH\u0086\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u0004\u0018\u00018��¢\u0006\u0004\b \u0010\u0012J\u0018\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0019H\u0082\u0010¢\u0006\u0004\b$\u0010#J\u001f\u0010&\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0019H\u0002¢\u0006\u0004\b&\u0010'R \u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018��\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0013\u0010*\u001a\u00020\f8F@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010+R$\u00100\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00198F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u0010#¨\u00061"}, m815d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", ExifInterface.GPS_DIRECTION_TRUE, "<init>", "()V", "node", "", "addImpl", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "addLast", "Lkotlin/Function1;", "", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", AdType.CLEAR, "firstImpl", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "", "realloc", "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "remove", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "", "index", "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "predicate", "removeFirstIf", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", WebvttCueParser.TAG_ITALIC, "siftDownFrom", "(I)V", "siftUpFrom", "j", "swap", "(II)V", "a", "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "isEmpty", "()Z", C13032a.f29462d, "getSize", "()I", "setSize", "size", "kotlinx-coroutines-core", "", "Lkotlinx/coroutines/internal/SynchronizedObject;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ThreadSafeHeap.class */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {
    public volatile int _size = 0;

    /* renamed from: a */
    public T[] f32927a;

    private final T[] realloc() {
        T[] tArr;
        T[] tArr2 = this.f32927a;
        if (tArr2 == null) {
            tArr = (T[]) new ThreadSafeHeapNode[4];
            this.f32927a = tArr;
        } else {
            tArr = tArr2;
            if (getSize() >= tArr2.length) {
                Object[] copyOf = Arrays.copyOf(tArr2, getSize() * 2);
                C15149k.m383a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
                tArr = (T[]) ((ThreadSafeHeapNode[]) copyOf);
                this.f32927a = tArr;
            }
        }
        return tArr;
    }

    private final void setSize(int i) {
        this._size = i;
    }

    private final void siftDownFrom(int i) {
        while (true) {
            int i2 = (i * 2) + 1;
            if (i2 < getSize()) {
                T[] tArr = this.f32927a;
                if (tArr != null) {
                    int i3 = i2 + 1;
                    i = i2;
                    if (i3 < getSize()) {
                        T t = tArr[i3];
                        if (t != null) {
                            Comparable comparable = (Comparable) t;
                            T t2 = tArr[i2];
                            if (t2 != null) {
                                i = i2;
                                if (comparable.compareTo(t2) < 0) {
                                    i = i3;
                                }
                            } else {
                                C15149k.m378b();
                                throw null;
                            }
                        } else {
                            C15149k.m378b();
                            throw null;
                        }
                    }
                    T t3 = tArr[i];
                    if (t3 != null) {
                        Comparable comparable2 = (Comparable) t3;
                        T t4 = tArr[i];
                        if (t4 == null) {
                            C15149k.m378b();
                            throw null;
                        } else if (comparable2.compareTo(t4) > 0) {
                            swap(i, i);
                        } else {
                            return;
                        }
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                return;
            }
        }
    }

    private final void siftUpFrom(int i) {
        while (i > 0) {
            T[] tArr = this.f32927a;
            if (tArr != null) {
                int i2 = (i - 1) / 2;
                T t = tArr[i2];
                if (t != null) {
                    Comparable comparable = (Comparable) t;
                    T t2 = tArr[i];
                    if (t2 == null) {
                        C15149k.m378b();
                        throw null;
                    } else if (comparable.compareTo(t2) > 0) {
                        swap(i, i2);
                        i = i2;
                    } else {
                        return;
                    }
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    private final void swap(int i, int i2) {
        T[] tArr = this.f32927a;
        if (tArr != null) {
            T t = tArr[i2];
            if (t != null) {
                T t2 = tArr[i];
                if (t2 != null) {
                    tArr[i] = t;
                    tArr[i2] = t2;
                    t.setIndex(i);
                    t2.setIndex(i2);
                    return;
                }
                C15149k.m378b();
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }

    public final void addImpl(T t) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(t.getHeap() == null)) {
                throw new AssertionError();
            }
        }
        t.setHeap(this);
        T[] realloc = realloc();
        int size = getSize();
        setSize(size + 1);
        realloc[size] = t;
        t.setIndex(size);
        siftUpFrom(size);
    }

    public final void addLast(T t) {
        synchronized (this) {
            addImpl(t);
            C14989s sVar = C14989s.f33022a;
        }
    }

    public final boolean addLastIf(T t, AbstractC15118l<? super T, Boolean> lVar) {
        boolean z;
        synchronized (this) {
            try {
                if (lVar.invoke(firstImpl()).booleanValue()) {
                    addImpl(t);
                    z = true;
                } else {
                    z = false;
                }
                C15148j.m389b(1);
            } catch (Throwable th) {
                C15148j.m389b(1);
                C15148j.m390a(1);
                throw th;
            }
        }
        C15148j.m390a(1);
        return z;
    }

    public final void clear() {
        synchronized (this) {
            T[] tArr = this.f32927a;
            if (tArr != null) {
                C15011h.m602a(tArr, null, 0, 0, 6, null);
            }
            this._size = 0;
            C14989s sVar = C14989s.f33022a;
        }
    }

    public final T firstImpl() {
        T[] tArr = this.f32927a;
        return tArr != null ? tArr[0] : null;
    }

    public final int getSize() {
        return this._size;
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    public final T peek() {
        T firstImpl;
        synchronized (this) {
            firstImpl = firstImpl();
        }
        return firstImpl;
    }

    public final boolean remove(T t) {
        boolean z;
        synchronized (this) {
            z = true;
            boolean z2 = false;
            if (t.getHeap() == null) {
                z = false;
            } else {
                int index = t.getIndex();
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (index >= 0) {
                        z2 = true;
                    }
                    if (!z2) {
                        throw new AssertionError();
                    }
                }
                removeAtImpl(index);
            }
        }
        return z;
    }

    public final T removeAtImpl(int i) {
        boolean z = false;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(getSize() > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f32927a;
        if (tArr != null) {
            setSize(getSize() - 1);
            if (i < getSize()) {
                swap(i, getSize());
                int i2 = (i - 1) / 2;
                if (i > 0) {
                    T t = tArr[i];
                    if (t != null) {
                        Comparable comparable = (Comparable) t;
                        T t2 = tArr[i2];
                        if (t2 == null) {
                            C15149k.m378b();
                            throw null;
                        } else if (comparable.compareTo(t2) < 0) {
                            swap(i, i2);
                            siftUpFrom(i2);
                        }
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
                siftDownFrom(i);
            }
            T t3 = tArr[getSize()];
            if (t3 != null) {
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (t3.getHeap() == this) {
                        z = true;
                    }
                    if (!z) {
                        throw new AssertionError();
                    }
                }
                t3.setHeap(null);
                t3.setIndex(-1);
                tArr[getSize()] = null;
                return t3;
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }

    public final T removeFirstIf(AbstractC15118l<? super T, Boolean> lVar) {
        synchronized (this) {
            try {
                T firstImpl = firstImpl();
                T t = null;
                if (firstImpl != null) {
                    if (lVar.invoke(firstImpl).booleanValue()) {
                        t = removeAtImpl(0);
                    }
                    C15148j.m389b(1);
                    C15148j.m390a(1);
                    return t;
                }
                C15148j.m389b(2);
                C15148j.m390a(2);
                return null;
            } catch (Throwable th) {
                C15148j.m389b(1);
                C15148j.m390a(1);
                throw th;
            }
        }
    }

    public final T removeFirstOrNull() {
        T removeAtImpl;
        synchronized (this) {
            removeAtImpl = getSize() > 0 ? removeAtImpl(0) : null;
        }
        return removeAtImpl;
    }
}
