package io.reactivex.internal.queue;

import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Pow2;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/SpscLinkedArrayQueue.class */
public final class SpscLinkedArrayQueue<T> implements SimplePlainQueue<T> {

    /* renamed from: n */
    static final int f19214n = Integer.getInteger("jctools.spsc.max.lookahead.step", (int) CodedOutputStream.DEFAULT_BUFFER_SIZE).intValue();

    /* renamed from: o */
    private static final Object f19215o = new Object();

    /* renamed from: g */
    int f19217g;

    /* renamed from: h */
    long f19218h;

    /* renamed from: i */
    final int f19219i;

    /* renamed from: j */
    AtomicReferenceArray<Object> f19220j;

    /* renamed from: k */
    final int f19221k;

    /* renamed from: l */
    AtomicReferenceArray<Object> f19222l;

    /* renamed from: f */
    final AtomicLong f19216f = new AtomicLong();

    /* renamed from: m */
    final AtomicLong f19223m = new AtomicLong();

    public SpscLinkedArrayQueue(int i) {
        int a = Pow2.m3413a(Math.max(8, i));
        int i2 = a - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(a + 1);
        this.f19220j = atomicReferenceArray;
        this.f19219i = i2;
        m3556a(a);
        this.f19222l = atomicReferenceArray;
        this.f19221k = i2;
        this.f19218h = i2 - 1;
        m3539u(0L);
    }

    /* renamed from: a */
    private void m3556a(int i) {
        this.f19217g = Math.min(i / 4, f19214n);
    }

    /* renamed from: b */
    private static int m3555b(int i) {
        return i;
    }

    /* renamed from: c */
    private static int m3554c(long j, int i) {
        int i2 = ((int) j) & i;
        m3555b(i2);
        return i2;
    }

    /* renamed from: d */
    private long m3553d() {
        return this.f19223m.get();
    }

    /* renamed from: f */
    private long m3552f() {
        return this.f19216f.get();
    }

    /* renamed from: i */
    private long m3551i() {
        return this.f19223m.get();
    }

    /* renamed from: j */
    private static <E> Object m3550j(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: k */
    private AtomicReferenceArray<Object> m3549k(AtomicReferenceArray<Object> atomicReferenceArray, int i) {
        m3555b(i);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) m3550j(atomicReferenceArray, i);
        m3541s(atomicReferenceArray, i, null);
        return atomicReferenceArray2;
    }

    /* renamed from: l */
    private long m3548l() {
        return this.f19216f.get();
    }

    /* renamed from: m */
    private T m3547m(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f19222l = atomicReferenceArray;
        return (T) m3550j(atomicReferenceArray, m3554c(j, i));
    }

    /* renamed from: n */
    private T m3546n(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f19222l = atomicReferenceArray;
        int c = m3554c(j, i);
        T t = (T) m3550j(atomicReferenceArray, c);
        if (t != null) {
            m3541s(atomicReferenceArray, c, null);
            m3542r(j + 1);
        }
        return t;
    }

    /* renamed from: p */
    private void m3544p(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i, T t, long j2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f19220j = atomicReferenceArray2;
        this.f19218h = (j2 + j) - 1;
        m3541s(atomicReferenceArray2, i, t);
        m3540t(atomicReferenceArray, atomicReferenceArray2);
        m3541s(atomicReferenceArray, i, f19215o);
        m3539u(j + 1);
    }

    /* renamed from: r */
    private void m3542r(long j) {
        this.f19223m.lazySet(j);
    }

    /* renamed from: s */
    private static void m3541s(AtomicReferenceArray<Object> atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    /* renamed from: t */
    private void m3540t(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        int length = atomicReferenceArray.length() - 1;
        m3555b(length);
        m3541s(atomicReferenceArray, length, atomicReferenceArray2);
    }

    /* renamed from: u */
    private void m3539u(long j) {
        this.f19216f.lazySet(j);
    }

    /* renamed from: v */
    private boolean m3538v(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j, int i) {
        m3541s(atomicReferenceArray, i, t);
        m3539u(j + 1);
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return m3548l() == m3551i();
    }

    /* renamed from: o */
    public boolean m3545o(T t, T t2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f19220j;
        long l = m3548l();
        int i = this.f19219i;
        long j = 2 + l;
        if (m3550j(atomicReferenceArray, m3554c(j, i)) == null) {
            int c = m3554c(l, i);
            m3541s(atomicReferenceArray, c + 1, t2);
            m3541s(atomicReferenceArray, c, t);
            m3539u(j);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f19220j = atomicReferenceArray2;
        int c2 = m3554c(l, i);
        m3541s(atomicReferenceArray2, c2 + 1, t2);
        m3541s(atomicReferenceArray2, c2, t);
        m3540t(atomicReferenceArray, atomicReferenceArray2);
        m3541s(atomicReferenceArray, c2, f19215o);
        m3539u(j);
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t) {
        if (t != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.f19220j;
            long f = m3552f();
            int i = this.f19219i;
            int c = m3554c(f, i);
            if (f < this.f19218h) {
                return m3538v(atomicReferenceArray, t, f, c);
            }
            long j = this.f19217g + f;
            if (m3550j(atomicReferenceArray, m3554c(j, i)) == null) {
                this.f19218h = j - 1;
                return m3538v(atomicReferenceArray, t, f, c);
            } else if (m3550j(atomicReferenceArray, m3554c(1 + f, i)) == null) {
                return m3538v(atomicReferenceArray, t, f, c);
            } else {
                m3544p(atomicReferenceArray, f, c, t, i);
                return true;
            }
        } else {
            throw new NullPointerException("Null is not a valid element");
        }
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f19222l;
        long d = m3553d();
        int i = this.f19221k;
        T t = (T) m3550j(atomicReferenceArray, m3554c(d, i));
        return t == f19215o ? m3547m(m3549k(atomicReferenceArray, i + 1), d, i) : t;
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f19222l;
        long d = m3553d();
        int i = this.f19221k;
        int c = m3554c(d, i);
        T t = (T) m3550j(atomicReferenceArray, c);
        boolean z = t == f19215o;
        if (t != null && !z) {
            m3541s(atomicReferenceArray, c, null);
            m3542r(d + 1);
            return t;
        } else if (z) {
            return m3546n(m3549k(atomicReferenceArray, i + 1), d, i);
        } else {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m3543q() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.m3551i()
            r6 = r0
        L_0x0005:
            r0 = r5
            long r0 = r0.m3548l()
            r8 = r0
            r0 = r5
            long r0 = r0.m3551i()
            r10 = r0
            r0 = r6
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001d
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            int r0 = (int) r0
            return r0
        L_0x001d:
            r0 = r10
            r6 = r0
            goto L_0x0005
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.queue.SpscLinkedArrayQueue.m3543q():int");
    }
}
