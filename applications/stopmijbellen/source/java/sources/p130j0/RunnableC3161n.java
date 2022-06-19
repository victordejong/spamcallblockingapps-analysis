package p130j0;

import android.os.Handler;
import java.util.concurrent.Callable;
import p152l0.AbstractC3426a;
/* renamed from: j0.n */
/* loaded from: classes-dex2jar.jar:j0/n.class */
public class RunnableC3161n<T> implements Runnable {

    /* renamed from: a */
    public Callable<T> f10629a;

    /* renamed from: b */
    public AbstractC3426a<T> f10630b;

    /* renamed from: c */
    public Handler f10631c;

    /* renamed from: j0.n$a */
    /* loaded from: classes-dex2jar.jar:j0/n$a.class */
    public class RunnableC3162a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3426a f10632a;

        /* renamed from: b */
        public final /* synthetic */ Object f10633b;

        public RunnableC3162a(RunnableC3161n runnableC3161n, AbstractC3426a abstractC3426a, Object obj) {
            this.f10632a = abstractC3426a;
            this.f10633b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            this.f10632a.accept(this.f10633b);
        }
    }

    public RunnableC3161n(Handler handler, Callable<T> callable, AbstractC3426a<T> abstractC3426a) {
        this.f10629a = callable;
        this.f10630b = abstractC3426a;
        this.f10631c = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        T t;
        try {
            t = this.f10629a.call();
        } catch (Exception e) {
            t = null;
        }
        this.f10631c.post(new RunnableC3162a(this, this.f10630b, t));
    }
}
