package androidx.browser.customtabs;

import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.C0164b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/b$a$e.class */
class b$a$e implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f747b;

    /* renamed from: c */
    final /* synthetic */ Uri f748c;

    /* renamed from: d */
    final /* synthetic */ boolean f749d;

    /* renamed from: e */
    final /* synthetic */ Bundle f750e;

    /* renamed from: f */
    final /* synthetic */ C0164b.a f751f;

    b$a$e(C0164b.a aVar, int i, Uri uri, boolean z, Bundle bundle) {
        this.f751f = aVar;
        this.f747b = i;
        this.f748c = uri;
        this.f749d = z;
        this.f750e = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f751f.c.m14387e(this.f747b, this.f748c, this.f749d, this.f750e);
        throw null;
    }
}
