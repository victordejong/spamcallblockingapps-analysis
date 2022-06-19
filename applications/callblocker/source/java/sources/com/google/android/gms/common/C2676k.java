package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0662c;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.common.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/k.class */
public class C2676k extends DialogInterface$OnCancelListenerC0662c {

    /* renamed from: ae */
    private Dialog f7438ae = null;

    /* renamed from: af */
    private DialogInterface.OnCancelListener f7439af = null;

    /* renamed from: a */
    public static C2676k m13907a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        C2676k c2676k = new C2676k();
        Dialog dialog2 = (Dialog) C2662s.m13980a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        c2676k.f7438ae = dialog2;
        if (onCancelListener != null) {
            c2676k.f7439af = onCancelListener;
        }
        return c2676k;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c
    /* renamed from: a */
    public void mo13906a(AbstractC0670i abstractC0670i, String str) {
        super.mo13906a(abstractC0670i, str);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c
    /* renamed from: c */
    public Dialog mo3162c(Bundle bundle) {
        if (this.f7438ae == null) {
            m19893a(false);
        }
        return this.f7438ae;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f7439af != null) {
            this.f7439af.onCancel(dialogInterface);
        }
    }
}
