package androidx.work.impl.a.a;

import android.content.Context;
import androidx.work.impl.a.b.g;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/b.class */
public final class b extends c<Boolean> {
    public b(Context context, a aVar) {
        super(g.a(context, aVar).f6012b);
    }

    @Override // androidx.work.impl.a.a.c
    final boolean a(WorkSpec workSpec) {
        return workSpec.constraints.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.work.impl.a.a.c
    public final /* synthetic */ boolean b(Boolean bool) {
        return !bool.booleanValue();
    }
}
