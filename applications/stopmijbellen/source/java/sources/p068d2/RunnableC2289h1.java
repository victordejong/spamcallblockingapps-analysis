package p068d2;

import android.content.Context;
/* renamed from: d2.h1 */
/* loaded from: classes-dex2jar.jar:d2/h1.class */
public class RunnableC2289h1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f8206a;

    /* renamed from: b */
    public final /* synthetic */ boolean f8207b;

    /* renamed from: c */
    public final /* synthetic */ C2410t0 f8208c;

    /* renamed from: d */
    public final /* synthetic */ C2230f1 f8209d;

    public RunnableC2289h1(C2230f1 c2230f1, Context context, boolean z, C2410t0 c2410t0) {
        this.f8209d = c2230f1;
        this.f8206a = context;
        this.f8207b = z;
        this.f8208c = c2410t0;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2441x3 c2441x3 = new C2441x3(this.f8206a.getApplicationContext(), this.f8209d.f8086a.m3573g(), this.f8207b);
        c2441x3.m3547m(true, this.f8208c);
        this.f8209d.f8107v.put(Integer.valueOf(c2441x3.f8664u), c2441x3);
    }
}
