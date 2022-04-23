package com.iab.omid.library.pubnativenet.adsession;

import android.view.View;
import com.iab.omid.library.pubnativenet.a;
import com.iab.omid.library.pubnativenet.d.d;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/b.class */
public abstract class b {
    public static b a(AdSessionConfiguration adSessionConfiguration, c cVar) {
        if (a.a()) {
            d.a(adSessionConfiguration, "AdSessionConfiguration is null");
            d.a(cVar, "AdSessionContext is null");
            return new k(adSessionConfiguration, cVar);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void a();

    public abstract void a(View view);

    public abstract void a(View view, f fVar, String str);

    public abstract void b();

    public abstract void b(View view);

    public abstract void c();
}
