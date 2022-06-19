package p193e.p1577m.p1578a.p1642f.p1652d;

import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
/* renamed from: e.m.a.f.d.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/d/g.class */
public final class C24904g extends AbstractC24903f<Bundle> {
    public C24904g(int i, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f
    /* renamed from: a */
    public final void mo4294a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(RemoteMessageConst.DATA);
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        m4295d(bundle3);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f
    /* renamed from: b */
    public final boolean mo4293b() {
        return false;
    }
}
