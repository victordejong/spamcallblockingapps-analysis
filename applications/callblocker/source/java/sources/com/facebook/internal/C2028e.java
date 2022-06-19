package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.p014a.C0392b;
import com.facebook.C2095j;
/* renamed from: com.facebook.internal.e */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/e.class */
public class C2028e {

    /* renamed from: a */
    private Uri f5988a;

    public C2028e(String str, Bundle bundle) {
        this.f5988a = C2079x.m15468a(C2077v.m15498a(), C2095j.m15359i() + "/dialog/" + str, bundle == null ? new Bundle() : bundle);
    }

    /* renamed from: a */
    public void m15642a(Activity activity, String str) {
        C0392b m21065a = new C0392b.C0393a().m21065a();
        m21065a.f1606a.setPackage(str);
        m21065a.f1606a.addFlags(1073741824);
        m21065a.m21066a(activity, this.f5988a);
    }
}
