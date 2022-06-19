package p1727n3.p1807k.p1817f;

import android.os.Handler;
import java.util.concurrent.Callable;
import p1727n3.p1807k.p1820h.AbstractC26552b;
/* renamed from: n3.k.f.o */
/* loaded from: classes-dex2jar.jar:n3/k/f/o.class */
public class RunnableC26534o<T> implements Runnable {

    /* renamed from: a */
    public Callable<T> f74346a;

    /* renamed from: b */
    public AbstractC26552b<T> f74347b;

    /* renamed from: c */
    public Handler f74348c;

    /* renamed from: n3.k.f.o$a */
    /* loaded from: classes-dex2jar.jar:n3/k/f/o$a.class */
    public class RunnableC26535a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC26552b f74349a;

        /* renamed from: b */
        public final /* synthetic */ Object f74350b;

        public RunnableC26535a(RunnableC26534o runnableC26534o, AbstractC26552b abstractC26552b, Object obj) {
            this.f74349a = abstractC26552b;
            this.f74350b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            this.f74349a.accept(this.f74350b);
        }
    }

    public RunnableC26534o(Handler handler, Callable<T> callable, AbstractC26552b<T> abstractC26552b) {
        this.f74346a = callable;
        this.f74347b = abstractC26552b;
        this.f74348c = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        T t;
        try {
            t = this.f74346a.call();
        } catch (Exception e) {
            t = null;
        }
        this.f74348c.post(new RunnableC26535a(this, this.f74347b, t));
    }
}
