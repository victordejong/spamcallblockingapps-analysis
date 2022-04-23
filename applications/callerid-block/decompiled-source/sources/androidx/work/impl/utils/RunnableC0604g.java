package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.h;
/* renamed from: androidx.work.impl.utils.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g.class */
public class RunnableC0604g implements Runnable {

    /* renamed from: b */
    private h f3146b;

    /* renamed from: c */
    private String f3147c;

    /* renamed from: d */
    private WorkerParameters.C0544a f3148d;

    public RunnableC0604g(h hVar, String str, WorkerParameters.C0544a aVar) {
        this.f3146b = hVar;
        this.f3147c = str;
        this.f3148d = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3146b.l().g(this.f3147c, this.f3148d);
    }
}
