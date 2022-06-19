package androidx.work.impl.p085a.p086a;

import android.content.Context;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.p087b.C3024g;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/b.class */
public final class C3005b extends AbstractC3006c<Boolean> {
    public C3005b(Context context, AbstractC3119a abstractC3119a) {
        super(C3024g.m39443a(context, abstractC3119a).f11200b);
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c
    /* renamed from: a */
    final boolean mo39456a(WorkSpec workSpec) {
        return workSpec.constraints.f11133e;
    }

    @Override // androidx.work.impl.p085a.p086a.AbstractC3006c
    /* renamed from: b */
    public final /* synthetic */ boolean mo39455b(Boolean bool) {
        return !bool.booleanValue();
    }
}
