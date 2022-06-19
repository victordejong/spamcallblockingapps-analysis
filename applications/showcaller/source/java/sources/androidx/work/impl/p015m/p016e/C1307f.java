package androidx.work.impl.p015m.p016e;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1404j;
import androidx.work.NetworkType;
import androidx.work.impl.p015m.C1298b;
import androidx.work.impl.p015m.p017f.C1320g;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.e.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/e/f.class */
public class C1307f extends AbstractC1303c<C1298b> {

    /* renamed from: e */
    private static final String f5519e = AbstractC1404j.m30159f("NetworkNotRoamingCtrlr");

    public C1307f(Context context, AbstractC1399a abstractC1399a) {
        super(C1320g.m30309c(context, abstractC1399a).m30308d());
    }

    @Override // androidx.work.impl.p015m.p016e.AbstractC1303c
    /* renamed from: b */
    boolean mo30330b(C1344p c1344p) {
        return c1344p.f5587l.m30581b() == NetworkType.NOT_ROAMING;
    }

    /* renamed from: i */
    public boolean mo30329c(C1298b c1298b) {
        if (Build.VERSION.SDK_INT < 24) {
            AbstractC1404j.m30161c().mo30158a(f5519e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
            return !c1298b.m30351a();
        }
        boolean z = true;
        if (c1298b.m30351a()) {
            z = !c1298b.m30349c();
        }
        return z;
    }
}
