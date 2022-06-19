package p000;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import p000.C1392f3;
/* renamed from: cm0 */
/* loaded from: classes-dex2jar.jar:cm0.class */
public class cm0 {

    /* renamed from: a */
    public Uri f2394a;

    public cm0(String str, Bundle bundle) {
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        String m5290b = cn0.m5290b();
        this.f2394a = fn0.e(m5290b, ui0.q() + "/dialog/" + str, bundle2);
    }

    /* renamed from: a */
    public void m5304a(Activity activity, String str) {
        C1392f3 m1999a = new C1392f3.C1393a().m1999a();
        m1999a.f6503a.setPackage(str);
        m1999a.f6503a.addFlags(1073741824);
        m1999a.m2000a(activity, this.f2394a);
    }
}
