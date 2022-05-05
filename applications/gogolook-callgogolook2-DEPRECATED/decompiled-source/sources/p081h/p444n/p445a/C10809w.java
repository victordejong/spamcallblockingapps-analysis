package p081h.p444n.p445a;

import android.net.NetworkInfo;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p444n.p445a.C10770e0;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.w */
/* loaded from: classes2-dex2jar.jar:h/n/a/w.class */
public class C10809w extends ThreadPoolExecutor {

    /* renamed from: h.n.a.w$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/w$a.class */
    public static final class C10810a extends FutureTask<RunnableC10758c> implements Comparable<C10810a> {

        /* renamed from: a */
        public final RunnableC10758c f24700a;

        public C10810a(RunnableC10758c cVar) {
            super(cVar, null);
            this.f24700a = cVar;
        }

        /* renamed from: a */
        public int compareTo(C10810a aVar) {
            C10798u.EnumC10805f k = this.f24700a.m10690k();
            C10798u.EnumC10805f k2 = aVar.f24700a.m10690k();
            return k == k2 ? this.f24700a.f24552a - aVar.f24700a.f24552a : k2.ordinal() - k.ordinal();
        }
    }

    public C10809w() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C10770e0.ThreadFactoryC10773c());
    }

    /* renamed from: a */
    public final void m10592a(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public void m10591a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            m10592a(3);
            return;
        }
        int type = networkInfo.getType();
        if (type == 0) {
            int subtype = networkInfo.getSubtype();
            switch (subtype) {
                case 1:
                case 2:
                    m10592a(1);
                    return;
                case 3:
                case 4:
                case 5:
                case 6:
                    break;
                default:
                    switch (subtype) {
                        case 12:
                            break;
                        case 13:
                        case 14:
                        case 15:
                            m10592a(3);
                            return;
                        default:
                            m10592a(3);
                            return;
                    }
            }
            m10592a(2);
        } else if (type == 1 || type == 6 || type == 9) {
            m10592a(4);
        } else {
            m10592a(3);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        C10810a aVar = new C10810a((RunnableC10758c) runnable);
        execute(aVar);
        return aVar;
    }
}
