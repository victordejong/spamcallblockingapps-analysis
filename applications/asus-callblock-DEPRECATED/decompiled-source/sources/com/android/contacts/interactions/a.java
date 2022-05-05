package com.android.contacts.interactions;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ProgressDialog;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/a.class */
public class a extends DialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private static final String f1450b = a.class.getSimpleName();
    private static String c = "event";

    /* renamed from: a  reason: collision with root package name */
    public ProgressDialog f1451a;
    private AbstractC0041a d;

    /* renamed from: com.android.contacts.interactions.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/a$a.class */
    public interface AbstractC0041a {
        void setProgressDialog(ProgressDialog progressDialog);
    }

    public static DialogFragment a() {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt(c, 0);
        if (aVar.getArguments() == null || aVar.getArguments().getInt(c) != 0) {
            aVar.setArguments(bundle);
        }
        return aVar;
    }

    @Override // android.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        this.d.setProgressDialog(null);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.d = (AbstractC0041a) activity;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog;
        switch (getArguments().getInt(c)) {
            case 0:
                this.f1451a = new ProgressDialog(getActivity());
                this.f1451a.setCancelable(false);
                this.f1451a.setMessage(getString(2131755350));
                this.d.setProgressDialog(this.f1451a);
                dialog = this.f1451a;
                break;
            default:
                dialog = super.onCreateDialog(bundle);
                break;
        }
        return dialog;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.d = null;
    }
}
