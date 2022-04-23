package com.android.contacts.ipcall;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/a.class */
public final class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private EditText f1491a;

    /* renamed from: b  reason: collision with root package name */
    private Dialog f1492b;
    private TextWatcher c = new TextWatcher() { // from class: com.android.contacts.ipcall.a.3
        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            a.b(a.this);
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };
    private DialogInterface.OnShowListener d = new DialogInterface.OnShowListener() { // from class: com.android.contacts.ipcall.a.4
        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            a.b(a.this);
        }
    };

    /* renamed from: com.android.contacts.ipcall.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/a$a.class */
    public interface AbstractC0042a {
        void a(String str);
    }

    public static a a() {
        return new a();
    }

    static /* synthetic */ void b(a aVar) {
        if (aVar.f1491a != null && aVar.f1492b != null) {
            if (TextUtils.isEmpty(aVar.f1491a.getText().toString())) {
                ((AlertDialog) aVar.f1492b).getButton(-1).setEnabled(false);
            } else {
                ((AlertDialog) aVar.f1492b).getButton(-1).setEnabled(true);
            }
        }
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!(activity instanceof AbstractC0042a)) {
            throw new ClassCastException(activity.toString() + " must implement AddIpCodeListener");
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        String str = null;
        if (bundle != null) {
            str = bundle.getString("input_ip_code");
        }
        if (this.f1491a == null) {
            this.f1491a = new EditText(getActivity());
            this.f1491a.setInputType(2);
            this.f1491a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
            if (str != null) {
                this.f1491a.setText(str);
            }
            this.f1491a.addTextChangedListener(this.c);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(2131755712);
        builder.setView(this.f1491a);
        builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.ipcall.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (a.this.f1491a != null) {
                    ((AbstractC0042a) a.this.getActivity()).a(a.this.f1491a.getText().toString());
                }
                dialogInterface.cancel();
            }
        });
        builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.ipcall.a.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        this.f1492b = builder.create();
        this.f1492b.setOnShowListener(this.d);
        return this.f1492b;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null && this.f1491a != null) {
            bundle.putString("input_ip_code", this.f1491a.getText().toString());
        }
    }
}
