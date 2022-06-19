package com.huawei.hmf.tasks.p083a;
/* renamed from: com.huawei.hmf.tasks.a.b$1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/a/b$1.class */
public final class b$1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b f7227a;

    public b$1(b bVar) {
        this.f7227a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (b.a(this.f7227a)) {
            if (b.b(this.f7227a) != null) {
                b.b(this.f7227a).onCanceled();
            }
        }
    }
}
