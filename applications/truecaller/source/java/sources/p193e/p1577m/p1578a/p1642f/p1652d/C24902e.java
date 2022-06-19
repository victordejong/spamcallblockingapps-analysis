package p193e.p1577m.p1578a.p1642f.p1652d;

import android.os.Bundle;
import com.google.android.gms.cloudmessaging.zzq;
/* renamed from: e.m.a.f.d.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/d/e.class */
public final class C24902e extends AbstractC24903f<Void> {
    public C24902e(int i, Bundle bundle) {
        super(i, 2, bundle);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f
    /* renamed from: a */
    public final void mo4294a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            m4295d(null);
        } else {
            m4296c(new zzq("Invalid response to one way request", null));
        }
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f
    /* renamed from: b */
    public final boolean mo4293b() {
        return true;
    }
}
