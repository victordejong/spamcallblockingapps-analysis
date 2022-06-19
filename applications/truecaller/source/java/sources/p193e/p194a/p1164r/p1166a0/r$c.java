package p193e.p194a.p1164r.p1166a0;

import android.content.DialogInterface;
import android.widget.ArrayAdapter;
import java.util.Objects;
import p193e.p194a.p372b0.p417k.C8494c;
import s1.z.c.l;
/* renamed from: e.a.r.a0.r$c */
/* loaded from: classes16-dex2jar.jar:e/a/r/a0/r$c.class */
public final class r$c implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ r f54756a;

    /* renamed from: b */
    public final /* synthetic */ ArrayAdapter f54757b;

    public r$c(r rVar, ArrayAdapter arrayAdapter) {
        this.f54756a = rVar;
        this.f54757b = arrayAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        C8494c c8494c = (C8494c) this.f54757b.getItem(i);
        if (c8494c != null) {
            z RA = this.f54756a.RA();
            l.d(c8494c, "it");
            z zVar = RA;
            Objects.requireNonNull(zVar);
            l.e(c8494c, "language");
            zVar.Jj(c8494c.f26267b);
            x xVar = (x) zVar.f57683a;
            if (xVar == null) {
                return;
            }
            xVar.yr();
        }
    }
}
