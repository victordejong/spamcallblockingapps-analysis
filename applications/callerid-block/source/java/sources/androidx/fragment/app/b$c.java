package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$c.class */
class b$c implements DialogInterface.OnDismissListener {

    /* renamed from: b */
    final /* synthetic */ b f1869b;

    b$c(b bVar) {
        this.f1869b = bVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        b bVar = this.f1869b;
        Dialog dialog = bVar.g0;
        if (dialog != null) {
            bVar.onDismiss(dialog);
        }
    }
}
