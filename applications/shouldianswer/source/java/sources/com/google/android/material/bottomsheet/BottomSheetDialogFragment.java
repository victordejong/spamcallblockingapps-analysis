package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import androidx.appcompat.app.C0118j;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetDialogFragment.class */
public class BottomSheetDialogFragment extends C0118j {
    @Override // androidx.appcompat.app.C0118j, androidx.fragment.app.DialogInterface$OnCancelListenerC0709b
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }
}
