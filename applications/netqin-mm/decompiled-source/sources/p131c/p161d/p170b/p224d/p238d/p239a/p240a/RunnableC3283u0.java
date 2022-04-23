package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.zzc;
/* renamed from: c.d.b.d.d.a.a.u0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/u0.class */
public final class RunnableC3283u0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f11997a;

    /* renamed from: b */
    public final /* synthetic */ String f11998b;

    /* renamed from: c */
    public final /* synthetic */ zzc f11999c;

    public RunnableC3283u0(zzc zzcVar, LifecycleCallback lifecycleCallback, String str) {
        this.f11999c = zzcVar;
        this.f11997a = lifecycleCallback;
        this.f11998b = str;
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
        i = this.f11999c.f23308a0;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f11997a;
            bundle = this.f11999c.f23309b0;
            if (bundle != null) {
                bundle3 = this.f11999c.f23309b0;
                bundle2 = bundle3.getBundle(this.f11998b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo17473a(bundle2);
        }
        i2 = this.f11999c.f23308a0;
        if (i2 >= 2) {
            this.f11997a.mo17455d();
        }
        i3 = this.f11999c.f23308a0;
        if (i3 >= 3) {
            this.f11997a.mo17456c();
        }
        i4 = this.f11999c.f23308a0;
        if (i4 >= 4) {
            this.f11997a.mo17454e();
        }
        i5 = this.f11999c.f23308a0;
        if (i5 >= 5) {
            this.f11997a.mo17510b();
        }
    }
}
