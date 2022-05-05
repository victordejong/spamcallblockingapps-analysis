package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
/* renamed from: h.i.a.e.d.k.q.z2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/z2.class */
public final class RunnableC6952z2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f17039a;

    /* renamed from: b */
    public final /* synthetic */ String f17040b;

    /* renamed from: c */
    public final /* synthetic */ C6948y2 f17041c;

    public RunnableC6952z2(C6948y2 y2Var, LifecycleCallback lifecycleCallback, String str) {
        this.f17041c = y2Var;
        this.f17039a = lifecycleCallback;
        this.f17040b = str;
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
        i = this.f17041c.f17035b;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f17039a;
            bundle = this.f17041c.f17036c;
            if (bundle != null) {
                bundle3 = this.f17041c.f17036c;
                bundle2 = bundle3.getBundle(this.f17040b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo21673a(bundle2);
        }
        i2 = this.f17041c.f17035b;
        if (i2 >= 2) {
            this.f17039a.mo21525d();
        }
        i3 = this.f17041c.f17035b;
        if (i3 >= 3) {
            this.f17039a.mo21526c();
        }
        i4 = this.f17041c.f17035b;
        if (i4 >= 4) {
            this.f17039a.mo16034e();
        }
        i5 = this.f17041c.f17035b;
        if (i5 >= 5) {
            this.f17039a.m31969b();
        }
    }
}
