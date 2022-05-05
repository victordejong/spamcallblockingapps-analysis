package com.android.contacts.copycontacts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/b.class */
public class b extends DialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private static b f784b;

    /* renamed from: a  reason: collision with root package name */
    private static final String f783a = b.class.getSimpleName();
    private static String c = "event";

    public static DialogFragment a(int i) {
        if (f784b == null) {
            f784b = new b();
        }
        Bundle bundle = new Bundle();
        bundle.putInt(c, i);
        f784b.setArguments(bundle);
        return f784b;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        getActivity().finish();
        super.onCancel(dialogInterface);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog show;
        switch (getArguments().getInt(c)) {
            case 0:
                show = new AlertDialog.Builder(getActivity()).setCancelable(false).setTitle(getResources().getString(2131755076)).setMessage(getResources().getString(2131755077)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.copycontacts.b.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.cancel();
                        dialogInterface.dismiss();
                    }
                }).show();
                break;
            case 1:
                show = new AlertDialog.Builder(getActivity()).setCancelable(false).setTitle(getResources().getString(2131755075)).setMessage(getResources().getString(2131755092)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.copycontacts.b.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.cancel();
                        dialogInterface.dismiss();
                        b.this.getActivity().finish();
                    }
                }).show();
                break;
            case 2:
                show = new AlertDialog.Builder(getActivity()).setCancelable(false).setTitle(getResources().getString(2131755075)).setMessage(getResources().getString(2131755091)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.copycontacts.b.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.cancel();
                        dialogInterface.dismiss();
                        b.this.getActivity().finish();
                    }
                }).show();
                break;
            default:
                show = super.onCreateDialog(bundle);
                break;
        }
        return show;
    }
}
