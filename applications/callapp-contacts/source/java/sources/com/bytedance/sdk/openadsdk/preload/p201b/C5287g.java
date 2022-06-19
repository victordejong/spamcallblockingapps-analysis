package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.preload.p201b.C5292i;
import com.bytedance.sdk.openadsdk.preload.p201b.p202a.C5278a;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/g.class */
public class C5287g<T> extends AbstractC5283d<List<T>, T> {

    /* renamed from: d */
    private Executor f18715d;

    /* renamed from: a */
    public final Object mo32469a_(final AbstractC5279b<T> abstractC5279b, List<T> list) throws Throwable {
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        final CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        for (final T t : list) {
            this.f18715d.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.b.g.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            copyOnWriteArrayList.add(abstractC5279b.mo32631a((AbstractC5279b) t));
                        } finally {
                            countDownLatch.countDown();
                        }
                    } catch (C5292i.C5293a e) {
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
        throw new C5278a(copyOnWriteArrayList2);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a */
    public void mo32475a(Object... objArr) {
        super.mo32475a(objArr);
        if (objArr == null) {
            this.f18715d = C5052e.m33163a();
        } else if (objArr.length != 1) {
            throw new IllegalArgumentException("ParallelInterceptor only need one param");
        } else {
            if (!(objArr[0] instanceof Executor)) {
                throw new IllegalArgumentException("ParallelInterceptor args must be instance of Executor");
            }
            this.f18715d = (Executor) objArr[0];
        }
    }
}
