package p000;

import java.util.Collections;
import java.util.PriorityQueue;
/* renamed from: bu */
/* loaded from: classes-dex2jar.jar:bu.class */
public final class C0258bu {

    /* renamed from: a */
    public final Object f2005a = new Object();

    /* renamed from: b */
    public final PriorityQueue<Integer> f2006b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c */
    public int f2007c = Integer.MIN_VALUE;

    /* renamed from: a */
    public void m5589a(int i) {
        synchronized (this.f2005a) {
            this.f2006b.add(Integer.valueOf(i));
            this.f2007c = Math.max(this.f2007c, i);
        }
    }

    /* renamed from: b */
    public void m5588b(int i) {
        int i2;
        synchronized (this.f2005a) {
            this.f2006b.remove(Integer.valueOf(i));
            if (this.f2006b.isEmpty()) {
                i2 = Integer.MIN_VALUE;
            } else {
                Integer peek = this.f2006b.peek();
                nu.g(peek);
                i2 = peek.intValue();
            }
            this.f2007c = i2;
            this.f2005a.notifyAll();
        }
    }
}
