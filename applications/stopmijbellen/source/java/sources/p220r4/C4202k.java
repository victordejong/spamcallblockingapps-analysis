package p220r4;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: r4.k */
/* loaded from: classes-dex2jar.jar:r4/k.class */
public final class C4202k {

    /* renamed from: a */
    public final Object f13193a = new Object();

    /* renamed from: b */
    public Queue f13194b;

    /* renamed from: c */
    public boolean f13195c;

    /* renamed from: a */
    public final void m1296a(AbstractC4201j abstractC4201j) {
        synchronized (this.f13193a) {
            if (this.f13194b == null) {
                this.f13194b = new ArrayDeque();
            }
            this.f13194b.add(abstractC4201j);
        }
    }

    /* renamed from: b */
    public final void m1295b(C4206o c4206o) {
        AbstractC4201j abstractC4201j;
        synchronized (this.f13193a) {
            if (this.f13194b != null && !this.f13195c) {
                this.f13195c = true;
                while (true) {
                    synchronized (this.f13193a) {
                        abstractC4201j = (AbstractC4201j) this.f13194b.poll();
                        if (abstractC4201j == null) {
                            this.f13195c = false;
                            return;
                        }
                    }
                    abstractC4201j.mo1297a(c4206o);
                }
            }
        }
    }
}
