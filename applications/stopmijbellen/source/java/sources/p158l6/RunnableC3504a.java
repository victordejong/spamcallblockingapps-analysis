package p158l6;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;
import p104g6.C2905a;
import p148k7.C3343h;
import p180n6.C3729e;
import p191o6.C3894b;
import p191o6.C3903e;
/* renamed from: l6.a */
/* loaded from: classes2-dex2jar.jar:l6/a.class */
public final /* synthetic */ class RunnableC3504a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f11621a;

    /* renamed from: b */
    public final /* synthetic */ Object f11622b;

    /* renamed from: c */
    public final /* synthetic */ Object f11623c;

    public /* synthetic */ RunnableC3504a(Object obj, Object obj2, int i) {
        this.f11621a = i;
        this.f11623c = obj;
        this.f11622b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11621a) {
            case 0:
                C3505b c3505b = (C3505b) this.f11623c;
                C3903e m2222b = c3505b.m2222b((C3729e) this.f11622b);
                if (m2222b == null) {
                    return;
                }
                c3505b.f11627a.add(m2222b);
                return;
            case 1:
                C3509f c3509f = (C3509f) this.f11623c;
                C3729e c3729e = (C3729e) this.f11622b;
                C2905a c2905a = C3509f.f11647f;
                C3894b m2220b = c3509f.m2220b(c3729e);
                if (m2220b == null) {
                    return;
                }
                c3509f.f11650b.add(m2220b);
                return;
            default:
                Runnable runnable = (Runnable) this.f11623c;
                Semaphore semaphore = (Semaphore) this.f11622b;
                ExecutorService executorService = C3343h.f11330f;
                runnable.run();
                semaphore.release();
                return;
        }
    }
}
