package androidx.work.impl.p052a.p053a;

import android.content.Context;
import androidx.work.EnumC1295m;
import androidx.work.impl.p052a.C1153b;
import androidx.work.impl.p052a.p054b.C1164g;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/g.class */
public class C1151g extends AbstractC1146c<C1153b> {
    public C1151g(Context context, AbstractC1271a abstractC1271a) {
        super(C1164g.m17835a(context, abstractC1271a).m17833c());
    }

    /* renamed from: a */
    public boolean mo17857b(C1153b c1153b) {
        return !c1153b.m17856a() || c1153b.m17854c();
    }

    @Override // androidx.work.impl.p052a.p053a.AbstractC1146c
    /* renamed from: a */
    boolean mo17859a(C1191p c1191p) {
        return c1191p.f4022j.m17946a() == EnumC1295m.UNMETERED;
    }
}
