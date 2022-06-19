package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.C1289j;
/* renamed from: androidx.work.impl.utils.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/h.class */
public class RunnableC1385h implements Runnable {

    /* renamed from: d */
    private C1289j f5682d;

    /* renamed from: e */
    private String f5683e;

    /* renamed from: f */
    private WorkerParameters.C1229a f5684f;

    public RunnableC1385h(C1289j c1289j, String str, WorkerParameters.C1229a c1229a) {
        this.f5682d = c1289j;
        this.f5683e = str;
        this.f5684f = c1229a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5682d.m30390m().m30441k(this.f5683e, this.f5684f);
    }
}
