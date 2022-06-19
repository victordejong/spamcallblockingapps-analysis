package androidx.work.impl.p052a.p053a;

import android.content.Context;
import android.os.Build;
import androidx.work.EnumC1295m;
import androidx.work.impl.p052a.C1153b;
import androidx.work.impl.p052a.p054b.C1164g;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/d.class */
public class C1148d extends AbstractC1146c<C1153b> {
    public C1148d(Context context, AbstractC1271a abstractC1271a) {
        super(C1164g.m17835a(context, abstractC1271a).m17833c());
    }

    /* renamed from: a */
    public boolean mo17857b(C1153b c1153b) {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 26) {
            z = !c1153b.m17856a();
        } else if (!c1153b.m17856a() || !c1153b.m17855b()) {
            z = true;
        }
        return z;
    }

    @Override // androidx.work.impl.p052a.p053a.AbstractC1146c
    /* renamed from: a */
    boolean mo17859a(C1191p c1191p) {
        return c1191p.f4022j.m17946a() == EnumC1295m.CONNECTED;
    }
}
