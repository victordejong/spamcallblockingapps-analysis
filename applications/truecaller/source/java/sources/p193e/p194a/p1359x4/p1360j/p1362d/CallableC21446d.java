package p193e.p194a.p1359x4.p1360j.p1362d;

import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
/* renamed from: e.a.x4.j.d.d */
/* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/d.class */
public class CallableC21446d implements Callable<s> {

    /* renamed from: a */
    public final /* synthetic */ C21440c f59933a;

    public CallableC21446d(C21440c c21440c) {
        this.f59933a = c21440c;
    }

    @Override // java.util.concurrent.Callable
    public s call() throws Exception {
        AbstractC26154f acquire = this.f59933a.f59926c.acquire();
        this.f59933a.f59924a.beginTransaction();
        try {
            acquire.m2673A();
            this.f59933a.f59924a.setTransactionSuccessful();
            return s.a;
        } finally {
            this.f59933a.f59924a.endTransaction();
            this.f59933a.f59926c.release(acquire);
        }
    }
}
