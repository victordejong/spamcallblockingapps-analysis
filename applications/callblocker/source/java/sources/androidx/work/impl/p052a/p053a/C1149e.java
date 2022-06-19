package androidx.work.impl.p052a.p053a;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.EnumC1295m;
import androidx.work.impl.p052a.C1153b;
import androidx.work.impl.p052a.p054b.C1164g;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/e.class */
public class C1149e extends AbstractC1146c<C1153b> {

    /* renamed from: a */
    private static final String f3943a = AbstractC1293l.m17541a("NetworkMeteredCtrlr");

    public C1149e(Context context, AbstractC1271a abstractC1271a) {
        super(C1164g.m17835a(context, abstractC1271a).m17833c());
    }

    /* renamed from: a */
    public boolean mo17857b(C1153b c1153b) {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 26) {
            AbstractC1293l.m17543a().mo17539b(f3943a, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
            z = !c1153b.m17856a();
        } else if (!c1153b.m17856a() || !c1153b.m17854c()) {
            z = true;
        }
        return z;
    }

    @Override // androidx.work.impl.p052a.p053a.AbstractC1146c
    /* renamed from: a */
    boolean mo17859a(C1191p c1191p) {
        return c1191p.f4022j.m17946a() == EnumC1295m.METERED;
    }
}
