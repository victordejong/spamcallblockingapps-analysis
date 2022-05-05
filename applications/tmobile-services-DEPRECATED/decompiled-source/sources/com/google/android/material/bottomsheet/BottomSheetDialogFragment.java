package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetDialogFragment.class */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {

    /* renamed from: f */
    private boolean f10273f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback.class */
    public class BottomSheetDismissCallback extends BottomSheetBehavior.BottomSheetCallback {
        private BottomSheetDismissCallback() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        /* renamed from: a */
        public void mo10363a(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        /* renamed from: b */
        public void mo10362b(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialogFragment.this.m10366H0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public void m10366H0() {
        if (this.f10273f) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    /* renamed from: I0 */
    private void m10365I0(@NonNull BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.f10273f = z;
        if (bottomSheetBehavior.m10422X() == 5) {
            m10366H0();
            return;
        }
        if (getDialog() instanceof BottomSheetDialog) {
            ((BottomSheetDialog) getDialog()).m10370h();
        }
        bottomSheetBehavior.m10433M(new BottomSheetDismissCallback());
        bottomSheetBehavior.m10403o0(5);
    }

    /* renamed from: J0 */
    private boolean m10364J0(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof BottomSheetDialog)) {
            return false;
        }
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        BottomSheetBehavior<FrameLayout> f = bottomSheetDialog.m10372f();
        if (!f.m10419a0() || !bottomSheetDialog.m10371g()) {
            return false;
        }
        m10365I0(f, z);
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (!m10364J0(false)) {
            super.dismiss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (!m10364J0(true)) {
            super.dismissAllowingStateLoss();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }
}
