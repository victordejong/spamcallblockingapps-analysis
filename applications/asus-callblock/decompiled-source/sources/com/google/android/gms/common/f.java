package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.support.v4.app.h;
import android.support.v4.app.m;
import com.google.android.gms.common.internal.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f.class */
public final class f extends h {
    private Dialog ai = null;
    private DialogInterface.OnCancelListener aj = null;

    public static f a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        f fVar = new f();
        Dialog dialog2 = (Dialog) b.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        fVar.ai = dialog2;
        if (onCancelListener != null) {
            fVar.aj = onCancelListener;
        }
        return fVar;
    }

    @Override // android.support.v4.app.h
    public final Dialog a() {
        if (this.ai == null) {
            this.d = false;
        }
        return this.ai;
    }

    @Override // android.support.v4.app.h
    public final void a(m mVar, String str) {
        super.a(mVar, str);
    }

    @Override // android.support.v4.app.h, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        if (this.aj != null) {
            this.aj.onCancel(dialogInterface);
        }
    }
}
