package com.android.contacts.interactions;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/g.class */
public abstract class g extends DialogFragment {
    static void a(AlertDialog alertDialog, EditText editText) {
        alertDialog.getButton(-1).setEnabled(!TextUtils.isEmpty(editText.getText().toString().trim()));
    }

    protected abstract void a(String str);

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View inflate = LayoutInflater.from(builder.getContext()).inflate(2131427580, (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(2131296900);
        editText.setInputType(8192);
        editText.setImeOptions(6);
        builder.setTitle(2131755475);
        builder.setView(inflate);
        editText.requestFocus();
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.g.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                g.this.a(editText.getText().toString().trim());
            }
        });
        builder.setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
        final AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.interactions.g.2
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                g.a(create, editText);
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.interactions.g.3
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                g.a(create, editText);
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        create.getWindow().setSoftInputMode(5);
        return create;
    }
}
