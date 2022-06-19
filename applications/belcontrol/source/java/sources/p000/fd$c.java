package p000;

import android.app.Dialog;
import android.content.DialogInterface;
/* renamed from: fd$c */
/* loaded from: classes-dex2jar.jar:fd$c.class */
public class fd$c implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ fd f6610a;

    public fd$c(fd fdVar) {
        this.f6610a = fdVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        fd fdVar = this.f6610a;
        Dialog dialog = fdVar.mDialog;
        if (dialog != null) {
            fdVar.onDismiss(dialog);
        }
    }
}
