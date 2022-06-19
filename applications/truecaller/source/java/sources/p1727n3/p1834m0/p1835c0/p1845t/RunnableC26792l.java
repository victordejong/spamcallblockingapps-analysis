package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.WorkerParameters;
import p1727n3.p1834m0.p1835c0.C26702l;
/* renamed from: n3.m0.c0.t.l */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/l.class */
public class RunnableC26792l implements Runnable {

    /* renamed from: a */
    public C26702l f74973a;

    /* renamed from: b */
    public String f74974b;

    /* renamed from: c */
    public WorkerParameters.C0420a f74975c;

    public RunnableC26792l(C26702l c26702l, String str, WorkerParameters.C0420a c0420a) {
        this.f74973a = c26702l;
        this.f74974b = str;
        this.f74975c = c0420a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f74973a.f74728f.m1442g(this.f74974b, this.f74975c);
    }
}
