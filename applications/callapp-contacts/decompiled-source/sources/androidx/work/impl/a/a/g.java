package androidx.work.impl.a.a;

import android.content.Context;
import androidx.work.impl.a.b;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
import androidx.work.l;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/g.class */
public final class g extends c<b> {
    public g(Context context, a aVar) {
        super(androidx.work.impl.a.b.g.a(context, aVar).f6013c);
    }

    @Override // androidx.work.impl.a.a.c
    final boolean a(WorkSpec workSpec) {
        return workSpec.constraints.f5966b == l.UNMETERED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.work.impl.a.a.c
    public final /* bridge */ /* synthetic */ boolean b(b bVar) {
        b bVar2 = bVar;
        return !bVar2.f5993a || bVar2.f5995c;
    }
}
