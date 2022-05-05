package com.asus.contacts.fonts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/l.class */
public final class l extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private DialogInterface.OnClickListener f2666a = new DialogInterface.OnClickListener() { // from class: com.asus.contacts.fonts.l.1
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            a.a(l.this.getActivity());
        }
    };

    public static l a() {
        return new l();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(2131756066);
        builder.setMessage(2131756065);
        builder.setPositiveButton(17039370, this.f2666a);
        builder.setCancelable(false);
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (getActivity() != null) {
            a.a(getActivity());
        }
    }
}
