package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.browser.customtabs.C0164b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$a.class */
class b$a$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f736b;

    /* renamed from: c */
    final /* synthetic */ Bundle f737c;

    /* renamed from: d */
    final /* synthetic */ C0164b.a f738d;

    b$a$a(C0164b.a aVar, int i, Bundle bundle) {
        this.f738d = aVar;
        this.f736b = i;
        this.f737c = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f738d.c.m14389c(this.f736b, this.f737c);
        throw null;
    }
}
