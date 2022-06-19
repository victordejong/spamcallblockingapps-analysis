package p193e.p194a.p1164r.p1182x;

import android.content.DialogInterface;
import com.truecaller.wizard.C4861R;
import e.a.r.t.e;
import n3.r.a.l;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1164r.p1182x.u$a;
import p193e.p194a.p372b0.p430q.C8612s;
import p193e.p194a.p372b0.p430q.C8613t;
/* renamed from: e.a.r.x.j */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/j.class */
public final /* synthetic */ class DialogInterface$OnClickListenerC19783j implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ q f54828a;

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        q qVar = this.f54828a;
        l activity = qVar.getActivity();
        if (i == 0) {
            if (((e) qVar).f.mo13825h("android.permission.CAMERA")) {
                C8613t.m28200l(qVar, C8612s.m28221a(qVar.getContext()), 1);
            } else if (C19291g.m13502w0(activity, "android.permission.CAMERA")) {
                C19291g.m13492z1(activity, "android.permission.CAMERA", C4861R.string.PermissionDialog_camera_reson);
            } else {
                C19291g.m13558d1(qVar, "android.permission.CAMERA", 201, true);
            }
        } else if (i == 1) {
            C8613t.m28200l(qVar, C8612s.m28219c(), 2);
        } else if (i != 2) {
        } else {
            u uVar = qVar.o;
            uVar.d = new u$a.c(true);
            AbstractC19788t abstractC19788t = (AbstractC19788t) uVar.f57683a;
            if (abstractC19788t == null) {
                return;
            }
            abstractC19788t.m12834u(null);
        }
    }
}
