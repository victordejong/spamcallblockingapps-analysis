package com.apptentive.android.sdk.view;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.util.Util;
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
            beginTransaction.mo18331q(findFragmentByTag);
        }
        beginTransaction.m18341g(null);
        newInstance(fragment, bundle, i).show(beginTransaction, "apptentiveAlertDialog");
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        View view = null;
        try {
            View inflate = getActivity().getLayoutInflater().inflate(C0726R.layout.apptentive_dialog_alert, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(C0726R.C0729id.text_title);
            String string = arguments.getString("title");
            if (!TextUtils.isEmpty(string)) {
                textView.setVisibility(0);
                textView.setText(string);
            }
            ((TextView) inflate.findViewById(C0726R.C0729id.text_message)).setText(arguments.getString("message"));
            Button button = (Button) inflate.findViewById(C0726R.C0729id.button_positive);
            String string2 = arguments.getString("positive");
            if (TextUtils.isEmpty(string2)) {
                button.setVisibility(8);
            } else {
                button.setText(string2);
                button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.view.ApptentiveAlertDialog.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ApptentiveAlertDialog.this.dismiss();
                        ApptentiveAlertDialog.this.getTargetFragment().onActivityResult(ApptentiveAlertDialog.this.getTargetRequestCode(), -1, ApptentiveAlertDialog.this.getActivity().getIntent());
                    }
                }));
            }
            Button button2 = (Button) inflate.findViewById(C0726R.C0729id.button_negative);
            String string3 = arguments.getString("negative");
            if (TextUtils.isEmpty(string3)) {
                button2.setVisibility(8);
                view = inflate;
            } else {
                button2.setText(string3);
                button2.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.view.ApptentiveAlertDialog.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ApptentiveAlertDialog.this.dismiss();
                        ApptentiveAlertDialog.this.getTargetFragment().onActivityResult(ApptentiveAlertDialog.this.getTargetRequestCode(), 0, ApptentiveAlertDialog.this.getActivity().getIntent());
                    }
                }));
                view = inflate;
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Error:", new Object[0]);
            ErrorMetrics.logException(e);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (view != null) {
            builder.mo9811n(view);
        }
        return builder.mo9823a();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        Fragment targetFragment = getTargetFragment();
        if (targetFragment instanceof OnDismissListener) {
            ((OnDismissListener) targetFragment).onDismissAlert();
        }
    }
}
