package p081h.p203i.p204a.p224e.p235d;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/i.class */
public class C6803i extends DialogFragment {

    /* renamed from: a */
    public Dialog f16699a = null;

    /* renamed from: b */
    public DialogInterface.OnCancelListener f16700b = null;

    /* renamed from: a */
    public static C6803i m21868a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        C6803i iVar = new C6803i();
        C7021t.m21289a(dialog, "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        iVar.f16699a = dialog2;
        if (onCancelListener != null) {
            iVar.f16700b = onCancelListener;
        }
        return iVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f16700b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f16699a == null) {
            setShowsDialog(false);
        }
        return this.f16699a;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
