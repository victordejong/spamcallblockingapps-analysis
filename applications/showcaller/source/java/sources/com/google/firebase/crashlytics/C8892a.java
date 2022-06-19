package com.google.firebase.crashlytics;

import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.firebase.analytics.p292a.AbstractC8834a;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p294e.AbstractC8904b;
import java.util.Locale;
/* renamed from: com.google.firebase.crashlytics.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/a.class */
class C8892a implements AbstractC8834a.AbstractC8836b {

    /* renamed from: a */
    private AbstractC8904b f38864a;

    /* renamed from: b */
    private AbstractC8904b f38865b;

    /* renamed from: b */
    private static void m2410b(AbstractC8904b abstractC8904b, String str, Bundle bundle) {
        if (abstractC8904b == null) {
            return;
        }
        abstractC8904b.mo2376I0(str, bundle);
    }

    /* renamed from: c */
    private void m2409c(String str, Bundle bundle) {
        m2410b("clx".equals(bundle.getString("_o")) ? this.f38864a : this.f38865b, str, bundle);
    }

    @Override // com.google.firebase.analytics.p292a.AbstractC8834a.AbstractC8836b
    /* renamed from: a */
    public void mo2411a(int i, Bundle bundle) {
        String string;
        C8898b.m2397f().m2394i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i), bundle));
        if (bundle == null || (string = bundle.getString(ShortCut.NAME)) == null) {
            return;
        }
        Bundle bundle2 = bundle.getBundle("params");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        m2409c(string, bundle3);
    }

    /* renamed from: d */
    public void m2408d(AbstractC8904b abstractC8904b) {
        this.f38865b = abstractC8904b;
    }

    /* renamed from: e */
    public void m2407e(AbstractC8904b abstractC8904b) {
        this.f38864a = abstractC8904b;
    }
}
