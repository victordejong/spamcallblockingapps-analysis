package p292y1;

import androidx.work.WorkerParameters;
import p197p1.C4006j;
/* renamed from: y1.k */
/* loaded from: classes-dex2jar.jar:y1/k.class */
public class RunnableC4965k implements Runnable {

    /* renamed from: a */
    public C4006j f15135a;

    /* renamed from: b */
    public String f15136b;

    /* renamed from: c */
    public WorkerParameters.C0676a f15137c;

    public RunnableC4965k(C4006j c4006j, String str, WorkerParameters.C0676a c0676a) {
        this.f15135a = c4006j;
        this.f15136b = str;
        this.f15137c = c0676a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15135a.f12587f.m1546g(this.f15136b, this.f15137c);
    }
}
