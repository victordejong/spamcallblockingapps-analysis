package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.C0185f0;
import com.squareup.picasso.Picasso;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.u */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/u.class */
public class C0201u extends ThreadPoolExecutor {

    /* renamed from: com.squareup.picasso.u$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/u$a.class */
    private static final class C0202a extends FutureTask<RunnableC0175c> implements Comparable<C0202a> {

        /* renamed from: f */
        private final RunnableC0175c f395f;

        C0202a(RunnableC0175c cVar) {
            super(cVar, null);
            this.f395f = cVar;
        }

        /* renamed from: d */
        public int compareTo(C0202a aVar) {
            Picasso.EnumC0167f r = this.f395f.m809r();
            Picasso.EnumC0167f r2 = aVar.f395f.m809r();
            return r == r2 ? this.f395f.f326f - aVar.f395f.f326f : r2.ordinal() - r.ordinal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0201u() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C0185f0.ThreadFactoryC0188c());
    }

    /* renamed from: b */
    private void m731b(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public void m732a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            m731b(3);
            return;
        }
        int type = networkInfo.getType();
        if (type == 0) {
            int subtype = networkInfo.getSubtype();
            switch (subtype) {
                case 1:
                case 2:
                    m731b(1);
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
                            m731b(3);
                            return;
                        default:
                            m731b(3);
                            return;
                    }
            }
            m731b(2);
        } else if (type == 1 || type == 6 || type == 9) {
            m731b(4);
        } else {
            m731b(3);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        C0202a aVar = new C0202a((RunnableC0175c) runnable);
        execute(aVar);
        return aVar;
    }
}
