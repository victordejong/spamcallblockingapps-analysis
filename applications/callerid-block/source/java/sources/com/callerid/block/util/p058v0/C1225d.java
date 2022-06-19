package com.callerid.block.util.p058v0;

import android.content.Context;
import com.google.android.gms.ads.C1354d;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.ads.C1500s;
import com.google.android.gms.ads.nativead.AbstractC1487a;
import com.google.android.gms.ads.nativead.C1491b;
/* renamed from: com.callerid.block.util.v0.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/v0/d.class */
public class C1225d {

    /* renamed from: a */
    private static C1225d f5083a = new C1225d();

    /* renamed from: com.callerid.block.util.v0.d$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/v0/d$c.class */
    public interface AbstractC1226c {
        /* renamed from: a */
        void m9529a(AbstractC1487a abstractC1487a);

        /* renamed from: b */
        void m9528b();
    }

    private C1225d() {
    }

    /* renamed from: a */
    public static C1225d m9531a() {
        return f5083a;
    }

    /* renamed from: b */
    public void m9530b(Context context, String str, AbstractC1226c abstractC1226c) {
        if (context == null || str == null) {
            return;
        }
        C1354d.C1355a c1355a = new C1354d.C1355a(context, str);
        c1355a.m9036c(new a(this, abstractC1226c));
        C1500s.C1501a c1501a = new C1500s.C1501a();
        c1501a.m8563b(true);
        C1500s m8564a = c1501a.m8564a();
        C1491b.C1492a c1492a = new C1491b.C1492a();
        c1492a.m8591g(m8564a);
        c1355a.m9032g(c1492a.m8597a());
        c1355a.m9034e(new b(this, abstractC1226c));
        c1355a.m9038a().m9040a(new C1357e.C1358a().m9028c());
    }
}
