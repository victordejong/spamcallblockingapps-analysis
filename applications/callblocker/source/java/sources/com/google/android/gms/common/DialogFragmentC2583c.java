package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.common.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c.class */
public class DialogFragmentC2583c extends DialogFragment {

    /* renamed from: a */
    private Dialog f7239a = null;

    /* renamed from: b */
    private DialogInterface.OnCancelListener f7240b = null;

    /* renamed from: a */
    public static DialogFragmentC2583c m14204a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        DialogFragmentC2583c dialogFragmentC2583c = new DialogFragmentC2583c();
        Dialog dialog2 = (Dialog) C2662s.m13980a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        dialogFragmentC2583c.f7239a = dialog2;
        if (onCancelListener != null) {
            dialogFragmentC2583c.f7240b = onCancelListener;
        }
        return dialogFragmentC2583c;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f7240b != null) {
            this.f7240b.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f7239a == null) {
            setShowsDialog(false);
        }
        return this.f7239a;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
