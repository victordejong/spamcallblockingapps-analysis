package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.C1249i;
/* renamed from: androidx.work.impl.utils.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g.class */
public class RunnableC1279g implements Runnable {

    /* renamed from: a */
    private C1249i f4295a;

    /* renamed from: b */
    private String f4296b;

    /* renamed from: c */
    private WorkerParameters.C1124a f4297c;

    public RunnableC1279g(C1249i c1249i, String str, WorkerParameters.C1124a c1124a) {
        this.f4295a = c1249i;
        this.f4296b = str;
        this.f4297c = c1124a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4295a.m17648f().m17713a(this.f4296b, this.f4297c);
    }
}
