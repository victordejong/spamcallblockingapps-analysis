package p1727n3.p1859r.p1860a;

import android.content.DialogInterface;
/* renamed from: n3.r.a.k$c */
/* loaded from: classes-dex2jar.jar:n3/r/a/k$c.class */
public class k$c implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ k f75367a;

    public k$c(k kVar) {
        this.f75367a = kVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (k.access$000(this.f75367a) != null) {
            k kVar = this.f75367a;
            kVar.onDismiss(k.access$000(kVar));
        }
    }
}
