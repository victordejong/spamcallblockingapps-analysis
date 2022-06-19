package p124i4;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;
import p201p6.C4018c;
import p220r4.C4203l;
/* renamed from: i4.p */
/* loaded from: classes-dex2jar.jar:i4/p.class */
public final class BinderC3114p extends BinderC3113o {
    public BinderC3114p(C3116r c3116r, C4203l c4203l) {
        super(c3116r, new C4018c("OnCompleteUpdateCallback"), c4203l);
    }

    @Override // p124i4.BinderC3113o, p189o4.AbstractC3857a0
    public final void zzb(Bundle bundle) throws RemoteException {
        this.f10541c.f10546a.m1747c(this.f10540b);
        this.f10539a.m1507e("onCompleteUpdate", new Object[0]);
        if (bundle.getInt("error.code", -2) != 0) {
            this.f10540b.m1294a(new InstallException(bundle.getInt("error.code", -2)));
        } else {
            this.f10540b.m1293b(null);
        }
    }
}
