package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/ErrorDialogFragment.class */
public class ErrorDialogFragment extends DialogFragment {

    /* renamed from: d */
    private Dialog f19152d;

    /* renamed from: e */
    private DialogInterface.OnCancelListener f19153e;

    /* renamed from: f */
    private Dialog f19154f;

    /* renamed from: a */
    public static ErrorDialogFragment m17500a(@RecentlyNonNull Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog2 = (Dialog) C6155o.m17017k(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        errorDialogFragment.f19152d = dialog2;
        if (onCancelListener != null) {
            errorDialogFragment.f19153e = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f19153e;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f19152d;
        Dialog dialog2 = dialog;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f19154f == null) {
                this.f19154f = new AlertDialog.Builder(getActivity()).create();
            }
            dialog2 = this.f19154f;
        }
        return dialog2;
    }

    @Override // android.app.DialogFragment
    public void show(@RecentlyNonNull FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
