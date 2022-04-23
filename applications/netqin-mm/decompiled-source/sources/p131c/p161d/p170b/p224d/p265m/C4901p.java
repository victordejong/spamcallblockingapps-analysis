package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.Task;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: c.d.b.d.m.p */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/p.class */
public final class C4901p<TResult> {

    /* renamed from: a */
    public final Object f17535a = new Object();

    /* renamed from: b */
    public Queue<AbstractC4902q<TResult>> f17536b;

    /* renamed from: c */
    public boolean f17537c;

    /* renamed from: a */
    public final void m24857a(AbstractC4902q<TResult> qVar) {
        synchronized (this.f17535a) {
            if (this.f17536b == null) {
                this.f17536b = new ArrayDeque();
            }
            this.f17536b.add(qVar);
        }
    }

    /* renamed from: a */
    public final void m24856a(Task<TResult> task) {
        AbstractC4902q<TResult> poll;
        synchronized (this.f17535a) {
            try {
                if (this.f17536b != null && !this.f17537c) {
                    this.f17537c = true;
                    while (true) {
                        synchronized (this.f17535a) {
                            poll = this.f17536b.poll();
                            if (poll == null) {
                                this.f17537c = false;
                                return;
                            }
                        }
                        poll.mo24855a(task);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
