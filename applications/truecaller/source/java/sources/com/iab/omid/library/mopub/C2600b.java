package com.iab.omid.library.mopub;

import android.content.Context;
import com.iab.omid.library.mopub.b.f;
import com.iab.omid.library.mopub.p125b.C2602b;
import com.iab.omid.library.mopub.p125b.C2606d;
import com.iab.omid.library.mopub.p127d.C2614b;
import com.iab.omid.library.mopub.p127d.C2618e;
/* renamed from: com.iab.omid.library.mopub.b */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/b.class */
public class C2600b {

    /* renamed from: a */
    private boolean f8342a;

    /* renamed from: b */
    private void m36479b(Context context) {
        C2618e.m36398a(context, "Application Context cannot be null");
    }

    /* renamed from: a */
    public String m36483a() {
        return "1.3.4-Mopub";
    }

    /* renamed from: a */
    public void m36482a(Context context) {
        m36479b(context);
        if (!m36480b()) {
            m36481a(true);
            f.a().a(context);
            C2602b.m36471a().m36470a(context);
            C2614b.m36418a(context);
            C2606d.m36455a().m36454a(context);
        }
    }

    /* renamed from: a */
    public void m36481a(boolean z) {
        this.f8342a = z;
    }

    /* renamed from: b */
    public boolean m36480b() {
        return this.f8342a;
    }
}
