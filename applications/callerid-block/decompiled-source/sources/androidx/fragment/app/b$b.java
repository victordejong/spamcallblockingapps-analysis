package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$b.class */
class b$b implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    final /* synthetic */ b f1868b;

    b$b(b bVar) {
        this.f1868b = bVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        b bVar = this.f1868b;
        Dialog dialog = bVar.g0;
        if (dialog != null) {
            bVar.onCancel(dialog);
        }
    }
}
