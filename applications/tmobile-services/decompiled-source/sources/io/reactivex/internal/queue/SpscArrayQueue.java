package io.reactivex.internal.queue;

import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Pow2;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/SpscArrayQueue.class */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements SimplePlainQueue<E> {

    /* renamed from: k */
    private static final Integer f19208k = Integer.getInteger("jctools.spsc.max.lookahead.step", (int) CodedOutputStream.DEFAULT_BUFFER_SIZE);
    private static final long serialVersionUID = -1296597691183856449L;

    /* renamed from: h */
    long f19211h;

    /* renamed from: j */
    final int f19213j;

    /* renamed from: f */
    final int f19209f = length() - 1;

    /* renamed from: g */
    final AtomicLong f19210g = new AtomicLong();

    /* renamed from: i */
    final AtomicLong f19212i = new AtomicLong();

    public SpscArrayQueue(int i) {
        super(Pow2.m3413a(i));
        this.f19213j = Math.min(i / 4, f19208k.intValue());
    }

    /* renamed from: a */
    int m3562a(long j) {
        return this.f19209f & ((int) j);
    }

    /* renamed from: b */
    int m3561b(long j, int i) {
        return ((int) j) & i;
    }

    /* renamed from: c */
    E m3560c(int i) {
        return get(i);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* renamed from: d */
    void m3559d(long j) {
        this.f19212i.lazySet(j);
    }

    /* renamed from: f */
    void m3558f(int i, E e) {
        lazySet(i, e);
    }

    /* renamed from: i */
    void m3557i(long j) {
        this.f19210g.lazySet(j);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f19210g.get() == this.f19212i.get();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(E e) {
        if (e != null) {
            int i = this.f19209f;
            long j = this.f19210g.get();
            int b = m3561b(j, i);
            if (j >= this.f19211h) {
                long j2 = this.f19213j + j;
                if (m3560c(m3561b(j2, i)) == null) {
                    this.f19211h = j2;
                } else if (m3560c(b) != null) {
                    return false;
                }
            }
            m3558f(b, e);
            m3557i(j + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public E poll() {
        long j = this.f19212i.get();
        int a = m3562a(j);
        E c = m3560c(a);
        if (c == null) {
            return null;
        }
        m3559d(j + 1);
        m3558f(a, null);
        return c;
    }
}
