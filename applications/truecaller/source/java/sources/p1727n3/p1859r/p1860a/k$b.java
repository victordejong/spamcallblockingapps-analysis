package p1727n3.p1859r.p1860a;

import android.content.DialogInterface;
/* renamed from: n3.r.a.k$b */
/* loaded from: classes-dex2jar.jar:n3/r/a/k$b.class */
public class k$b implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ k f75366a;

    public k$b(k kVar) {
        this.f75366a = kVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (k.access$000(this.f75366a) != null) {
            k kVar = this.f75366a;
            kVar.onCancel(k.access$000(kVar));
        }
    }
}
