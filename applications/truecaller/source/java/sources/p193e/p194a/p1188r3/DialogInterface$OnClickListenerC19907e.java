package p193e.p194a.p1188r3;

import android.content.DialogInterface;
import java.util.concurrent.CancellationException;
import s1.a.a.a.v0.f.d;
import s1.w.f;
/* renamed from: e.a.r3.e */
/* loaded from: classes8-dex2jar.jar:e/a/r3/e.class */
public final class DialogInterface$OnClickListenerC19907e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ f f56343a;

    public DialogInterface$OnClickListenerC19907e(f fVar) {
        this.f56343a = fVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        d.R(this.f56343a, (CancellationException) null, 1, (Object) null);
    }
}
