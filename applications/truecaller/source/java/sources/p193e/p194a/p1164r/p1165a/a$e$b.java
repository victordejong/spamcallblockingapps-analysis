package p193e.p194a.p1164r.p1165a;

import android.content.DialogInterface;
import s1.w.d;
import s1.z.c.y;
/* renamed from: e.a.r.a.a$e$b */
/* loaded from: classes16-dex2jar.jar:e/a/r/a/a$e$b.class */
public final class a$e$b implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ d f54728a;

    /* renamed from: b */
    public final /* synthetic */ y f54729b;

    public a$e$b(d dVar, y yVar) {
        this.f54728a = dVar;
        this.f54729b = yVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f54728a.c(Boolean.valueOf(this.f54729b.a));
    }
}
