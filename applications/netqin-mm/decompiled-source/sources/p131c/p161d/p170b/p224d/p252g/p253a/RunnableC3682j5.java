package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzayu;
/* renamed from: c.d.b.d.g.a.j5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j5.class */
public final class RunnableC3682j5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f13584a;

    /* renamed from: b */
    public final /* synthetic */ zzayu f13585b;

    public RunnableC3682j5(zzayu zzayuVar, Context context) {
        this.f13585b = zzayuVar;
        this.f13584a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f13585b.f24669d;
        synchronized (obj) {
            this.f13585b.f24670e = zzayu.m16103c(this.f13584a);
            obj2 = this.f13585b.f24669d;
            obj2.notifyAll();
        }
    }
}
