package androidx.work.impl.p085a.p086a;

import android.content.Context;
import androidx.work.EnumC3147l;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.C3013b;
import androidx.work.impl.p085a.p087b.C3024g;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/g.class */
public final class C3011g extends AbstractC3006c<C3013b> {
    public C3011g(Context context, AbstractC3119a abstractC3119a) {
        super(C3024g.m39443a(context, abstractC3119a).f11201c);
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c
    /* renamed from: a */
    final boolean mo39456a(WorkSpec workSpec) {
        return workSpec.constraints.f11130b == EnumC3147l.UNMETERED;
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo39455b(C3013b c3013b) {
        C3013b c3013b2 = c3013b;
        return !c3013b2.f11174a || c3013b2.f11176c;
    }
}
