package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0722c;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/h.class */
public class C6098h extends DialogInterface$OnCancelListenerC0722c {

    /* renamed from: u0 */
    private Dialog f19421u0;

    /* renamed from: v0 */
    private DialogInterface.OnCancelListener f19422v0;

    /* renamed from: w0 */
    private Dialog f19423w0;

    /* renamed from: p2 */
    public static C6098h m17184p2(@RecentlyNonNull Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        C6098h c6098h = new C6098h();
        Dialog dialog2 = (Dialog) C6155o.m17017k(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        c6098h.f19421u0 = dialog2;
        if (onCancelListener != null) {
            c6098h.f19422v0 = onCancelListener;
        }
        return c6098h;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c
    /* renamed from: h2 */
    public Dialog mo4901h2(Bundle bundle) {
        Dialog dialog = this.f19421u0;
        Dialog dialog2 = dialog;
        if (dialog == null) {
            m32634m2(false);
            if (this.f19423w0 == null) {
                this.f19423w0 = new AlertDialog.Builder(m32896u()).create();
            }
            dialog2 = this.f19423w0;
        }
        return dialog2;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c
    /* renamed from: o2 */
    public void mo17185o2(@RecentlyNonNull FragmentManager fragmentManager, String str) {
        super.mo17185o2(fragmentManager, str);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0722c, android.content.DialogInterface.OnCancelListener
    public void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f19422v0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
