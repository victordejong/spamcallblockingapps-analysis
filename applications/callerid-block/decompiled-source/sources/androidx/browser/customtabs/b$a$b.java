package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.browser.customtabs.C0164b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$b.class */
class b$a$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f739b;

    /* renamed from: c */
    final /* synthetic */ Bundle f740c;

    /* renamed from: d */
    final /* synthetic */ C0164b.a f741d;

    b$a$b(C0164b.a aVar, String str, Bundle bundle) {
        this.f741d = aVar;
        this.f739b = str;
        this.f740c = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f741d.c.m14391a(this.f739b, this.f740c);
        throw null;
    }
}
