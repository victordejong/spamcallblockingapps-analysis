package androidx.work.impl.a.a;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.a.b;
import androidx.work.impl.a.b.g;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
import androidx.work.l;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/f.class */
public final class f extends c<b> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f5992c = k.a("NetworkNotRoamingCtrlr");

    public f(Context context, a aVar) {
        super(g.a(context, aVar).f6013c);
    }

    @Override // androidx.work.impl.a.a.c
    final boolean a(WorkSpec workSpec) {
        return workSpec.constraints.f5966b == l.NOT_ROAMING;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.work.impl.a.a.c
    public final /* synthetic */ boolean b(b bVar) {
        b bVar2 = bVar;
        if (Build.VERSION.SDK_INT >= 24) {
            return !bVar2.f5993a || !bVar2.f5996d;
        }
        k.a();
        return !bVar2.f5993a;
    }
}
