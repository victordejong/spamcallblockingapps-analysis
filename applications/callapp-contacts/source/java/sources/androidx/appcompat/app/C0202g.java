package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
/* renamed from: androidx.appcompat.app.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
public class C0202g extends DialogInterface$OnCancelListenerC1089c {
    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public Dialog mo9884a(Bundle bundle) {
        return new DialogC0200f(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final void mo43629a(Dialog dialog, int i) {
        if (!(dialog instanceof DialogC0200f)) {
            super.mo43629a(dialog, i);
            return;
        }
        DialogC0200f dialogC0200f = (DialogC0200f) dialog;
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            dialog.getWindow().addFlags(24);
        }
        dialogC0200f.m46269a();
    }
}
