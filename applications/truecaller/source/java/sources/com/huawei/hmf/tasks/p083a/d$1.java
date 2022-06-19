package com.huawei.hmf.tasks.p083a;

import com.huawei.hmf.tasks.Task;
/* renamed from: com.huawei.hmf.tasks.a.d$1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/d$1.class */
public final class d$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f7228a;

    /* renamed from: b */
    public final /* synthetic */ d f7229b;

    public d$1(d dVar, Task task) {
        this.f7229b = dVar;
        this.f7228a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (d.a(this.f7229b)) {
            if (d.b(this.f7229b) != null) {
                d.b(this.f7229b).onComplete(this.f7228a);
            }
        }
    }
}
