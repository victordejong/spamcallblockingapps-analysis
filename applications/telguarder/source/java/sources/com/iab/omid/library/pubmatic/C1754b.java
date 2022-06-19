package com.iab.omid.library.pubmatic;

import android.content.Context;
import com.iab.omid.library.pubmatic.p012b.C1756b;
import com.iab.omid.library.pubmatic.p012b.C1759d;
import com.iab.omid.library.pubmatic.p012b.C1762f;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1774e;
/* renamed from: com.iab.omid.library.pubmatic.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b.class */
public class C1754b {

    /* renamed from: a */
    private boolean f229a;

    /* renamed from: b */
    private void m1307b(Context context) {
        C1774e.m1222a(context, "Application Context cannot be null");
    }

    /* renamed from: a */
    public String m1311a() {
        return "1.3.12-Pubmatic";
    }

    /* renamed from: a */
    public void m1310a(Context context) {
        m1307b(context);
        if (!m1308b()) {
            m1309a(true);
            C1762f.m1268a().m1266a(context);
            C1756b.m1299a().m1298a(context);
            C1770b.m1242a(context);
            C1759d.m1288a().m1287a(context);
        }
    }

    /* renamed from: a */
    void m1309a(boolean z) {
        this.f229a = z;
    }

    /* renamed from: b */
    public boolean m1308b() {
        return this.f229a;
    }
}
