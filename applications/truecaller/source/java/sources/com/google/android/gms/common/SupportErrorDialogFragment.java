package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.FragmentManager;
import n3.r.a.k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/SupportErrorDialogFragment.class */
public class SupportErrorDialogFragment extends k {

    /* renamed from: a */
    public Dialog f5685a;

    /* renamed from: b */
    public DialogInterface.OnCancelListener f5686b;

    /* renamed from: c */
    public Dialog f5687c;

    public void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f5686b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f5685a;
        Dialog dialog2 = dialog;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f5687c == null) {
                this.f5687c = new AlertDialog.Builder(getActivity()).create();
            }
            dialog2 = this.f5687c;
        }
        return dialog2;
    }

    public void show(@RecentlyNonNull FragmentManager fragmentManager, String str) {
        SupportErrorDialogFragment.super.show(fragmentManager, str);
    }
}
