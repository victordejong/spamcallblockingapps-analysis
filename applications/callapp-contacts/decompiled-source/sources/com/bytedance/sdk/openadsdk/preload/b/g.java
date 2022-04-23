package com.bytedance.sdk.openadsdk.preload.b;

import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.preload.b.a.a;
import com.bytedance.sdk.openadsdk.preload.b.i;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/g.class */
public class g<T> extends d<List<T>, T> {

    /* renamed from: d  reason: collision with root package name */
    private Executor f10102d;

    /* renamed from: a */
    public final Object a_(final b<T> bVar, List<T> list) throws Throwable {
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        final CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        for (final T t : list) {
            this.f10102d.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.b.g.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            copyOnWriteArrayList.add(bVar.a((b) t));
                        } finally {
                            countDownLatch.countDown();
                        }
                    } catch (i.a e) {
                        th = e.getCause();
                    } finally {
                    }
                }
            });
        }
        countDownLatch.await();
        if (copyOnWriteArrayList2.isEmpty()) {
            return copyOnWriteArrayList;
        }
        throw new a(copyOnWriteArrayList2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public void a(Object... objArr) {
        super.a(objArr);
        if (objArr == null) {
            this.f10102d = e.a();
        } else if (objArr.length != 1) {
            throw new IllegalArgumentException("ParallelInterceptor only need one param");
        } else if (objArr[0] instanceof Executor) {
            this.f10102d = (Executor) objArr[0];
        } else {
            throw new IllegalArgumentException("ParallelInterceptor args must be instance of Executor");
        }
    }
}
