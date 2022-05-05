package com.apptentive.android.sdk.view;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.app.DialogFragment;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentTransaction;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/view/ApptentiveAlertDialog.class */
public class ApptentiveAlertDialog extends DialogFragment {

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/view/ApptentiveAlertDialog$OnDismissListener.class */
    public interface OnDismissListener {
        void onDismissAlert();
    }

    public static ApptentiveAlertDialog newInstance(Fragment fragment, Bundle bundle, int i) {
        ApptentiveAlertDialog apptentiveAlertDialog = new ApptentiveAlertDialog();
        apptentiveAlertDialog.setArguments(bundle);
        apptentiveAlertDialog.setTargetFragment(fragment, i);
        return apptentiveAlertDialog;
    }

    public static void show(Fragment fragment, Bundle bundle, int i) {
        FragmentTransaction beginTransaction = fragment.getFragmentManager().beginTransaction();
        Fragment findFragmentByTag = fragment.getFragmentManager().findFragmentByTag("apptentiveAlertDialog");
        if (findFragmentByTag != null) {
            beginTransaction.remove(findFragmentByTag);
        }
        beginTransaction.addToBackStack(null);
        newInstance(fragment, bundle, i).show(beginTransaction, "apptentiveAlertDialog");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    @Override // android.support.p001v4.app.DialogFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Dialog onCreateDialog(android.os.Bundle r5) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.view.ApptentiveAlertDialog.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }

    @Override // android.support.p001v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        Fragment targetFragment = getTargetFragment();
        if (targetFragment instanceof OnDismissListener) {
            ((OnDismissListener) targetFragment).onDismissAlert();
        }
    }
}
