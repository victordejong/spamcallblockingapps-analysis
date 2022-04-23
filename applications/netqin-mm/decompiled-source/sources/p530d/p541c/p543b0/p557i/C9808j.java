package p530d.p541c.p543b0.p557i;

import io.reactivex.internal.queue.SpscArrayQueue;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p542a0.AbstractC9642e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.b0.i.j */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/j.class */
public final class C9808j {
    /* renamed from: a */
    public static <T> AbstractC9661j<T> m1986a(int i) {
        return i < 0 ? new C9772a(-i) : new SpscArrayQueue(i);
    }

    /* renamed from: a */
    public static <T> void m1983a(AbstractC10433c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, AbstractC9642e eVar) {
        long j;
        long j2;
        if (queue.isEmpty()) {
            cVar.onComplete();
        } else if (!m1985a(atomicLong.get(), cVar, queue, atomicLong, eVar)) {
            do {
                j = atomicLong.get();
                if ((j & Long.MIN_VALUE) == 0) {
                    j2 = j | Long.MIN_VALUE;
                } else {
                    return;
                }
            } while (!atomicLong.compareAndSet(j, j2));
            if (j != 0) {
                m1985a(j2, cVar, queue, atomicLong, eVar);
            }
        }
    }

    /* renamed from: a */
    public static void m1982a(AbstractC10434d dVar, int i) {
        dVar.request(i < 0 ? Long.MAX_VALUE : i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean m1985a(long r6, p611j.p612a.AbstractC10433c<? super T> r8, java.util.Queue<T> r9, java.util.concurrent.atomic.AtomicLong r10, p530d.p541c.p542a0.AbstractC9642e r11) {
        /*
            r0 = r6
            r1 = -9223372036854775808
            long r0 = r0 & r1
            r12 = r0
        L_0x0007:
            r0 = r12
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003e
            r0 = r11
            boolean r0 = m1984a(r0)
            if (r0 == 0) goto L_0x0018
            r0 = 1
            return r0
        L_0x0018:
            r0 = r9
            java.lang.Object r0 = r0.poll()
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x002d
            r0 = r8
            r0.onComplete()
            r0 = 1
            return r0
        L_0x002d:
            r0 = r8
            r1 = r14
            r0.onNext(r1)
            r0 = r12
            r1 = 1
            long r0 = r0 + r1
            r12 = r0
            goto L_0x0007
        L_0x003e:
            r0 = r11
            boolean r0 = m1984a(r0)
            if (r0 == 0) goto L_0x0048
            r0 = 1
            return r0
        L_0x0048:
            r0 = r9
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0059
            r0 = r8
            r0.onComplete()
            r0 = 1
            return r0
        L_0x0059:
            r0 = r10
            long r0 = r0.get()
            r15 = r0
            r0 = r15
            r6 = r0
            r0 = r15
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0007
            r0 = r10
            r1 = r12
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            long r1 = r1 & r2
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r12 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r1 = r12
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0086
            r0 = 0
            return r0
        L_0x0086:
            r0 = r12
            r6 = r0
            r0 = r12
            r1 = -9223372036854775808
            long r0 = r0 & r1
            r12 = r0
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p541c.p543b0.p557i.C9808j.m1985a(long, j.a.c, java.util.Queue, java.util.concurrent.atomic.AtomicLong, d.c.a0.e):boolean");
    }

    /* renamed from: a */
    public static boolean m1984a(AbstractC9642e eVar) {
        try {
            return eVar.getAsBoolean();
        } catch (Throwable th) {
            C9863a.m1822b(th);
            return true;
        }
    }

    /* renamed from: b */
    public static <T> boolean m1981b(long j, AbstractC10433c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, AbstractC9642e eVar) {
        long j2;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, C9800b.m2013a(Long.MAX_VALUE & j2, j) | (j2 & Long.MIN_VALUE)));
        if (j2 != Long.MIN_VALUE) {
            return false;
        }
        m1985a(j | Long.MIN_VALUE, cVar, queue, atomicLong, eVar);
        return true;
    }
}
