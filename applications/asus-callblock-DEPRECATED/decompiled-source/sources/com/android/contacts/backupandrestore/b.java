package com.android.contacts.backupandrestore;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/contacts/backupandrestore/b.class */
public final class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f619a;

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(2131756071).setPositiveButton(2131755924, new DialogInterface.OnClickListener() { // from class: com.android.contacts.backupandrestore.b.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.this.getActivity().startService(new Intent(b.this.getActivity(), AsusRestoreService.class));
                b.this.f619a = b.this.getActivity().getSharedPreferences(a.f617a, 0);
                b.this.f619a.edit().putString(a.f617a, "0").commit();
            }
        }).setNegativeButton(2131755011, new DialogInterface.OnClickListener() { // from class: com.android.contacts.backupandrestore.b.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.this.f619a = b.this.getActivity().getSharedPreferences(a.f617a, 0);
                b.this.f619a.edit().putString(a.f617a, "0").commit();
            }
        });
        return builder.create();
    }
}
