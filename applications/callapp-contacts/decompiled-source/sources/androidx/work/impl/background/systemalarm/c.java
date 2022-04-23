package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.impl.a.d;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/c.class */
final class c {
    private static final String e = k.a("ConstraintsCmdHandler");

    /* renamed from: a  reason: collision with root package name */
    final Context f6044a;

    /* renamed from: b  reason: collision with root package name */
    final int f6045b;

    /* renamed from: c  reason: collision with root package name */
    final e f6046c;

    /* renamed from: d  reason: collision with root package name */
    final d f6047d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, int i, e eVar) {
        this.f6044a = context;
        this.f6045b = i;
        this.f6046c = eVar;
        this.f6047d = new d(context, eVar.f6054c, null);
    }
}
