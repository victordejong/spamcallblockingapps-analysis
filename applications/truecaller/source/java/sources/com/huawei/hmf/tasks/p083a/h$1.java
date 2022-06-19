package com.huawei.hmf.tasks.p083a;

import com.huawei.hmf.tasks.Task;
/* renamed from: com.huawei.hmf.tasks.a.h$1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/h$1.class */
public final class h$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f7234a;

    /* renamed from: b */
    public final /* synthetic */ h f7235b;

    public h$1(h hVar, Task task) {
        this.f7235b = hVar;
        this.f7234a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (h.a(this.f7235b)) {
            if (h.b(this.f7235b) != null) {
                h.b(this.f7235b).onSuccess(this.f7234a.getResult());
            }
        }
    }
}
