package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.zzb;
/* renamed from: e.m.a.f.e.a.a.a1 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/a1.class */
public final class RunnableC24907a1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f69812a;

    /* renamed from: b */
    public final /* synthetic */ String f69813b;

    /* renamed from: c */
    public final /* synthetic */ zzb f69814c;

    public RunnableC24907a1(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f69814c = zzbVar;
        this.f69812a = lifecycleCallback;
        this.f69813b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb zzbVar = this.f69814c;
        if (zzbVar.f5908b > 0) {
            LifecycleCallback lifecycleCallback = this.f69812a;
            Bundle bundle = zzbVar.f5909c;
            lifecycleCallback.mo38934e(bundle != null ? bundle.getBundle(this.f69813b) : null);
        }
        if (this.f69814c.f5908b >= 2) {
            this.f69812a.mo38932i();
        }
        if (this.f69814c.f5908b >= 3) {
            this.f69812a.mo39012g();
        }
        if (this.f69814c.f5908b >= 4) {
            this.f69812a.mo38931j();
        }
        if (this.f69814c.f5908b >= 5) {
            this.f69812a.mo38950f();
        }
    }
}
