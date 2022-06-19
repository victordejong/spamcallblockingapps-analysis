package com.huawei.hmf.tasks.p083a;

import com.huawei.hmf.tasks.Task;
/* renamed from: com.huawei.hmf.tasks.a.f$1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/f$1.class */
public final class f$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f7230a;

    /* renamed from: b */
    public final /* synthetic */ f f7231b;

    public f$1(f fVar, Task task) {
        this.f7231b = fVar;
        this.f7230a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (f.a(this.f7231b)) {
            if (f.b(this.f7231b) != null) {
                f.b(this.f7231b).onFailure(this.f7230a.getException());
            }
        }
    }
}
