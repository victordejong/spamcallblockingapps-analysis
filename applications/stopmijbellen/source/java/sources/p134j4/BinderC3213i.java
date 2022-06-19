package p134j4;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.assetpacks.AssetPackException;
import java.util.List;
import p189o4.AbstractBinderC3865e0;
import p220r4.C4203l;
/* renamed from: j4.i */
/* loaded from: classes-dex2jar.jar:j4/i.class */
public class BinderC3213i extends AbstractBinderC3865e0 {

    /* renamed from: a */
    public final C4203l f10822a;

    /* renamed from: b */
    public final /* synthetic */ C3238p f10823b;

    public BinderC3213i(C3238p c3238p, C4203l c4203l) {
        this.f10823b = c3238p;
        this.f10822a = c4203l;
    }

    @Override // p189o4.AbstractC3867f0
    /* renamed from: d */
    public void mo1753d(Bundle bundle, Bundle bundle2) throws RemoteException {
        this.f10823b.f10913d.m1747c(this.f10822a);
        C3238p.f10908g.m1507e("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // p189o4.AbstractC3867f0
    /* renamed from: e */
    public void mo1752e(List list) {
        this.f10823b.f10913d.m1747c(this.f10822a);
        C3238p.f10908g.m1507e("onGetSessionStates", new Object[0]);
    }

    @Override // p189o4.AbstractC3867f0
    /* renamed from: m */
    public void mo1751m(Bundle bundle, Bundle bundle2) {
        this.f10823b.f10914e.m1747c(this.f10822a);
        C3238p.f10908g.m1507e("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // p189o4.AbstractC3867f0
    public void zzd(Bundle bundle) {
        this.f10823b.f10913d.m1747c(this.f10822a);
        int i = bundle.getInt("error_code");
        C3238p.f10908g.m1509c("onError(%d)", Integer.valueOf(i));
        this.f10822a.m1294a(new AssetPackException(i));
    }
}
