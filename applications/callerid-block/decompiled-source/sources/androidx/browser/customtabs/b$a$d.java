package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.browser.customtabs.C0164b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$d.class */
class b$a$d implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f744b;

    /* renamed from: c */
    final /* synthetic */ Bundle f745c;

    /* renamed from: d */
    final /* synthetic */ C0164b.a f746d;

    b$a$d(C0164b.a aVar, String str, Bundle bundle) {
        this.f746d = aVar;
        this.f744b = str;
        this.f745c = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f746d.c.m14388d(this.f744b, this.f745c);
        throw null;
    }
}
