package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.widget.FrameLayout;
import androidx.appcompat.app.C0202g;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: com.google.android.material.bottomsheet.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/b.class */
public class C14460b extends C0202g {

    /* renamed from: c */
    private boolean f52711c;

    /* renamed from: com.google.android.material.bottomsheet.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/b$a.class */
    public final class C14462a extends BottomSheetBehavior.AbstractC14453a {
        private C14462a() {
            C14460b.this = r4;
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.AbstractC14453a
        /* renamed from: a */
        public final void mo11076a(int i) {
            if (i == 5) {
                C14460b.this.m11077d();
            }
        }
    }

    /* renamed from: a */
    private void m11081a(BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.f52711c = z;
        if (bottomSheetBehavior.f52669h == 5) {
            m11077d();
            return;
        }
        if (getDialog() instanceof DialogC14455a) {
            ((DialogC14455a) getDialog()).m11084c();
        }
        bottomSheetBehavior.m11124a((BottomSheetBehavior.AbstractC14453a) new C14462a());
        bottomSheetBehavior.m11112c(5);
    }

    /* renamed from: a */
    private boolean m11079a(boolean z) {
        Dialog dialog = getDialog();
        if (dialog instanceof DialogC14455a) {
            DialogC14455a dialogC14455a = (DialogC14455a) dialog;
            BottomSheetBehavior<FrameLayout> m11085b = dialogC14455a.m11085b();
            if (!m11085b.f52668g || !dialogC14455a.f52700a) {
                return false;
            }
            m11081a(m11085b, z);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public void m11077d() {
        if (this.f52711c) {
            super.mo11078b();
        } else {
            super.mo11082a();
        }
    }

    @Override // androidx.appcompat.app.C0202g, androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public Dialog mo9884a(Bundle bundle) {
        return new DialogC14455a(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final void mo11082a() {
        if (!m11079a(false)) {
            super.mo11082a();
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: b */
    public final void mo11078b() {
        if (!m11079a(true)) {
            super.mo11078b();
        }
    }
}
