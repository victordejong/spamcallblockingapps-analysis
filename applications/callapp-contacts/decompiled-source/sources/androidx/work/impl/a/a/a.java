package androidx.work.impl.a.a;

import android.content.Context;
import androidx.work.impl.a.b.g;
import androidx.work.impl.model.WorkSpec;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/a.class */
public final class a extends c<Boolean> {
    public a(Context context, androidx.work.impl.utils.b.a aVar) {
        super(g.a(context, aVar).f6011a);
    }

    @Override // androidx.work.impl.a.a.c
    final boolean a(WorkSpec workSpec) {
        return workSpec.constraints.f5967c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.work.impl.a.a.c
    public final /* synthetic */ boolean b(Boolean bool) {
        return !bool.booleanValue();
    }
}
