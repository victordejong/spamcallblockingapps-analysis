package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/g.class */
public class C11959g extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: c */
    private Dialog f39449c;

    /* renamed from: d */
    private DialogInterface.OnCancelListener f39450d;

    /* renamed from: e */
    private Dialog f39451e;

    /* renamed from: a */
    public static C11959g m19243a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        C11959g c11959g = new C11959g();
        Dialog dialog2 = (Dialog) C12045o.m19161a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        c11959g.f39449c = dialog2;
        if (onCancelListener != null) {
            c11959g.f39450d = onCancelListener;
        }
        return c11959g;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        Dialog dialog = this.f39449c;
        Dialog dialog2 = dialog;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f39451e == null) {
                this.f39451e = new AlertDialog.Builder(getActivity()).create();
            }
            dialog2 = this.f39451e;
        }
        return dialog2;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final void mo19242a(FragmentManager fragmentManager, String str) {
        super.mo19242a(fragmentManager, str);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f39450d;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
