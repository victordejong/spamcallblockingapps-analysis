package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import android.os.ConditionVariable;
/* renamed from: e.m.a.c.p1.h0.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/u.class */
public class C24732u extends Thread {

    /* renamed from: a */
    public final /* synthetic */ ConditionVariable f69307a;

    /* renamed from: b */
    public final /* synthetic */ C24733v f69308b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24732u(C24733v c24733v, String str, ConditionVariable conditionVariable) {
        super(str);
        this.f69308b = c24733v;
        this.f69307a = conditionVariable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        synchronized (this.f69308b) {
            this.f69307a.open();
            C24733v.m4700l(this.f69308b);
            this.f69308b.f69311b.mo4715c();
        }
    }
}
