package androidx.work.impl.a.a;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.a.b;
import androidx.work.impl.a.b.g;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
import androidx.work.l;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/d.class */
public final class d extends c<b> {
    public d(Context context, a aVar) {
        super(g.a(context, aVar).f6013c);
    }

    @Override // androidx.work.impl.a.a.c
    final boolean a(WorkSpec workSpec) {
        return workSpec.constraints.f5966b == l.CONNECTED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.work.impl.a.a.c
    public final /* bridge */ /* synthetic */ boolean b(b bVar) {
        b bVar2 = bVar;
        return Build.VERSION.SDK_INT >= 26 ? !bVar2.f5993a || !bVar2.f5994b : !bVar2.f5993a;
    }
}
