package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0709b;
/* renamed from: androidx.appcompat.app.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j.class */
public class C0118j extends DialogInterface$OnCancelListenerC0709b {
    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0709b
    public Dialog onCreateDialog(Bundle bundle) {
        return new DialogC0116i(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0709b
    public void setupDialog(Dialog dialog, int i) {
        if (!(dialog instanceof DialogC0116i)) {
            super.setupDialog(dialog, i);
            return;
        }
        DialogC0116i dialogC0116i = (DialogC0116i) dialog;
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            dialog.getWindow().addFlags(24);
        }
        dialogC0116i.supportRequestWindowFeature(1);
    }
}
