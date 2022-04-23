package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/g.class */
public class g extends c {

    /* renamed from: c  reason: collision with root package name */
    private Dialog f22810c;

    /* renamed from: d  reason: collision with root package name */
    private DialogInterface.OnCancelListener f22811d;
    private Dialog e;

    public static g a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        g gVar = new g();
        Dialog dialog2 = (Dialog) o.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        gVar.f22810c = dialog2;
        if (onCancelListener != null) {
            gVar.f22811d = onCancelListener;
        }
        return gVar;
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        Dialog dialog = this.f22810c;
        Dialog dialog2 = dialog;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.e == null) {
                this.e = new AlertDialog.Builder(getActivity()).create();
            }
            dialog2 = this.e;
        }
        return dialog2;
    }

    @Override // androidx.fragment.app.c
    public final void a(FragmentManager fragmentManager, String str) {
        super.a(fragmentManager, str);
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f22811d;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
