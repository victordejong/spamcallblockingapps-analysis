package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzaxw;
/* renamed from: c.d.b.d.g.a.w4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/w4.class */
public final class C4165w4 {

    /* renamed from: a */
    public long f15902a = -1;

    /* renamed from: b */
    public long f15903b = -1;

    /* renamed from: c */
    public final /* synthetic */ zzaxw f15904c;

    public C4165w4(zzaxw zzaxwVar) {
        this.f15904c = zzaxwVar;
    }

    /* renamed from: a */
    public final Bundle m26186a() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f15902a);
        bundle.putLong("tclose", this.f15903b);
        return bundle;
    }

    /* renamed from: b */
    public final long m26185b() {
        return this.f15903b;
    }

    /* renamed from: c */
    public final void m26184c() {
        Clock clock;
        clock = this.f15904c.f24590a;
        this.f15903b = clock.mo17092a();
    }

    /* renamed from: d */
    public final void m26183d() {
        Clock clock;
        clock = this.f15904c.f24590a;
        this.f15902a = clock.mo17092a();
    }
}
