package p1727n3.p1755d.p1756a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: n3.d.a.f */
/* loaded from: classes-dex2jar.jar:n3/d/a/f.class */
public final class C25696f {

    /* renamed from: a */
    public final Intent f71983a;

    public C25696f(Intent intent, Bundle bundle) {
        this.f71983a = intent;
    }

    /* renamed from: a */
    public void m3048a(Context context, Uri uri) {
        this.f71983a.setData(uri);
        Intent intent = this.f71983a;
        Object obj = C26467a.f74235a;
        C26467a.C26468a.m1794b(context, intent, null);
    }
}
