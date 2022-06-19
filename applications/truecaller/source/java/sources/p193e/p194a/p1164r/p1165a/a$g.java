package p193e.p194a.p1164r.p1165a;

import android.content.DialogInterface;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.r.a.a$g */
/* loaded from: classes16-dex2jar.jar:e/a/r/a/a$g.class */
public final class a$g implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f54731a;

    public a$g(a aVar) {
        this.f54731a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            this.f54731a.SA().Ij(this.f54731a);
        } else if (i != 1) {
        } else {
            i SA = this.f54731a.SA();
            a aVar = this.f54731a;
            i iVar = SA;
            Objects.requireNonNull(iVar);
            l.e(aVar, "fragment");
            iVar.Jj(aVar);
        }
    }
}
