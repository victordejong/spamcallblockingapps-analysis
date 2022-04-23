package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.widget.FrameLayout;
import androidx.appcompat.app.g;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/b.class */
public class b extends g {

    /* renamed from: c  reason: collision with root package name */
    private boolean f30335c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/b$a.class */
    public final class a extends BottomSheetBehavior.a {
        private a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
        public final void a(int i) {
            if (i == 5) {
                b.this.d();
            }
        }
    }

    private void a(BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.f30335c = z;
        if (bottomSheetBehavior.h == 5) {
            d();
            return;
        }
        if (getDialog() instanceof com.google.android.material.bottomsheet.a) {
            ((com.google.android.material.bottomsheet.a) getDialog()).c();
        }
        bottomSheetBehavior.a((BottomSheetBehavior.a) new a());
        bottomSheetBehavior.c(5);
    }

    private boolean a(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof com.google.android.material.bottomsheet.a)) {
            return false;
        }
        com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
        BottomSheetBehavior<FrameLayout> b2 = aVar.b();
        if (!b2.g || !aVar.f30327a) {
            return false;
        }
        a(b2, z);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f30335c) {
            super.b();
        } else {
            super.a();
        }
    }

    @Override // androidx.appcompat.app.g, androidx.fragment.app.c
    public Dialog a(Bundle bundle) {
        return new com.google.android.material.bottomsheet.a(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.c
    public final void a() {
        if (!a(false)) {
            super.a();
        }
    }

    @Override // androidx.fragment.app.c
    public final void b() {
        if (!a(true)) {
            super.b();
        }
    }
}
