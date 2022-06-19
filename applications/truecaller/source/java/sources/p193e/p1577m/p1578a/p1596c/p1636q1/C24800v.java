package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* renamed from: e.m.a.c.q1.v */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/v.class */
public final class C24800v {

    /* renamed from: a */
    public final Object f69511a = new Object();

    /* renamed from: b */
    public final PriorityQueue<Integer> f69512b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c */
    public int f69513c = Integer.MIN_VALUE;

    /* renamed from: e.m.a.c.q1.v$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/v$a.class */
    public static class C24801a extends IOException {
    }

    /* renamed from: a */
    public void m4509a(int i) {
        synchronized (this.f69511a) {
            this.f69512b.add(Integer.valueOf(i));
            this.f69513c = Math.max(this.f69513c, i);
        }
    }

    /* renamed from: b */
    public void m4508b(int i) {
        int i2;
        synchronized (this.f69511a) {
            this.f69512b.remove(Integer.valueOf(i));
            if (this.f69512b.isEmpty()) {
                i2 = Integer.MIN_VALUE;
            } else {
                Integer peek = this.f69512b.peek();
                int i3 = C24773d0.f69427a;
                i2 = peek.intValue();
            }
            this.f69513c = i2;
            this.f69511a.notifyAll();
        }
    }
}
