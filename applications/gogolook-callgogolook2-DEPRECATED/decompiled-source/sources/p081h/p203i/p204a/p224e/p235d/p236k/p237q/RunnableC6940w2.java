package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
/* renamed from: h.i.a.e.d.k.q.w2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/w2.class */
public final class RunnableC6940w2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f17017a;

    /* renamed from: b */
    public final /* synthetic */ String f17018b;

    /* renamed from: c */
    public final /* synthetic */ FragmentC6944x2 f17019c;

    public RunnableC6940w2(FragmentC6944x2 x2Var, LifecycleCallback lifecycleCallback, String str) {
        this.f17019c = x2Var;
        this.f17017a = lifecycleCallback;
        this.f17018b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i = this.f17019c.f17025b;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f17017a;
            bundle = this.f17019c.f17026c;
            if (bundle != null) {
                bundle3 = this.f17019c.f17026c;
                bundle2 = bundle3.getBundle(this.f17018b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo21673a(bundle2);
        }
        i2 = this.f17019c.f17025b;
        if (i2 >= 2) {
            this.f17017a.mo21525d();
        }
        i3 = this.f17019c.f17025b;
        if (i3 >= 3) {
            this.f17017a.mo21526c();
        }
        i4 = this.f17019c.f17025b;
        if (i4 >= 4) {
            this.f17017a.mo16034e();
        }
        i5 = this.f17019c.f17025b;
        if (i5 >= 5) {
            this.f17017a.m31969b();
        }
    }
}
