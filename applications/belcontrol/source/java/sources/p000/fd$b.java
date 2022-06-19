package p000;

import android.app.Dialog;
import android.content.DialogInterface;
/* renamed from: fd$b */
/* loaded from: classes-dex2jar.jar:fd$b.class */
public class fd$b implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ fd f6609a;

    public fd$b(fd fdVar) {
        this.f6609a = fdVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        fd fdVar = this.f6609a;
        Dialog dialog = fdVar.mDialog;
        if (dialog != null) {
            fdVar.onCancel(dialog);
        }
    }
}
