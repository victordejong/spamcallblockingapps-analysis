package androidx.work.impl.p015m.p016e;

import android.content.Context;
import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.p015m.C1298b;
import androidx.work.impl.p015m.p017f.C1320g;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.e.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/e/d.class */
public class C1305d extends AbstractC1303c<C1298b> {
    public C1305d(Context context, AbstractC1399a abstractC1399a) {
        super(C1320g.m30309c(context, abstractC1399a).m30308d());
    }

    @Override // androidx.work.impl.p015m.p016e.AbstractC1303c
    /* renamed from: b */
    boolean mo30330b(C1344p c1344p) {
        return c1344p.f5587l.m30581b() == NetworkType.CONNECTED;
    }

    /* renamed from: i */
    public boolean mo30329c(C1298b c1298b) {
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = true;
            if (c1298b.m30351a()) {
                z = !c1298b.m30348d();
            }
            return z;
        }
        return !c1298b.m30351a();
    }
}
