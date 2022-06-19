package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.zzd;
/* renamed from: e.m.a.f.e.a.a.b1 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/b1.class */
public final class RunnableC24910b1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f69817a;

    /* renamed from: b */
    public final /* synthetic */ String f69818b;

    /* renamed from: c */
    public final /* synthetic */ zzd f69819c;

    public RunnableC24910b1(zzd zzdVar, LifecycleCallback lifecycleCallback, String str) {
        this.f69819c = zzdVar;
        this.f69817a = lifecycleCallback;
        this.f69818b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd zzdVar = this.f69819c;
        if (zzdVar.f5912b > 0) {
            LifecycleCallback lifecycleCallback = this.f69817a;
            Bundle bundle = zzdVar.f5913c;
            lifecycleCallback.mo38934e(bundle != null ? bundle.getBundle(this.f69818b) : null);
        }
        if (this.f69819c.f5912b >= 2) {
            this.f69817a.mo38932i();
        }
        if (this.f69819c.f5912b >= 3) {
            this.f69817a.mo39012g();
        }
        if (this.f69819c.f5912b >= 4) {
            this.f69817a.mo38931j();
        }
        if (this.f69819c.f5912b >= 5) {
            this.f69817a.mo38950f();
        }
    }
}
