package androidx.work.impl.p085a.p086a;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC3145k;
import androidx.work.EnumC3147l;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.C3013b;
import androidx.work.impl.p085a.p087b.C3024g;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.a.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/f.class */
public final class C3010f extends AbstractC3006c<C3013b> {

    /* renamed from: c */
    private static final String f11173c = AbstractC3145k.m39275a("NetworkNotRoamingCtrlr");

    public C3010f(Context context, AbstractC3119a abstractC3119a) {
        super(C3024g.m39443a(context, abstractC3119a).f11201c);
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c
    /* renamed from: a */
    final boolean mo39456a(WorkSpec workSpec) {
        return workSpec.constraints.f11130b == EnumC3147l.NOT_ROAMING;
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c
    /* renamed from: b */
    public final /* synthetic */ boolean mo39455b(C3013b c3013b) {
        C3013b c3013b2 = c3013b;
        if (Build.VERSION.SDK_INT >= 24) {
            return !c3013b2.f11174a || !c3013b2.f11177d;
        }
        AbstractC3145k.m39277a();
        return !c3013b2.f11174a;
    }
}
