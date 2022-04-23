package com.android.contacts.simcardmanage;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/c.class */
public final class c extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private static c f2154a;

    /* renamed from: b  reason: collision with root package name */
    private static String f2155b = "MaxProgress";
    private static String c = "tag";
    private ProgressDialog d;
    private a e;
    private final int f = 1;
    private final int g = 2;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/c$a.class */
    public interface a {
        void a(ProgressDialog progressDialog);

        void a(Boolean bool);
    }

    public static DialogFragment a(int i, int i2) {
        if (f2154a == null) {
            f2154a = new c();
            Bundle bundle = new Bundle();
            bundle.putInt(c, i);
            bundle.putInt(f2155b, i2);
            f2154a.setArguments(bundle);
        } else {
            Bundle arguments = f2154a.getArguments();
            arguments.putInt(c, i);
            arguments.putInt(f2155b, i2);
        }
        return f2154a;
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        this.e = (a) activity;
        super.onAttach(activity);
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        int i = getArguments().getInt(f2155b);
        int i2 = getArguments().getInt(c);
        this.d = new ProgressDialog(getActivity());
        if (i2 == 1) {
            this.d.setTitle(getResources().getString(2131755624));
            this.d.setMessage(getResources().getString(2131755619));
        } else if (i2 == 2) {
            this.d.setTitle(getResources().getString(2131755696));
            this.d.setMessage(getResources().getString(2131755693));
        }
        this.d.setProgressStyle(1);
        this.d.setMax(i);
        this.d.setProgress(0);
        this.d.setCancelable(false);
        this.d.setButton(getActivity().getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.simcardmanage.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                c.this.e.a((Boolean) true);
                c.this.d.cancel();
                ProgressDialog progressDialog = new ProgressDialog(c.this.getActivity());
                progressDialog.setCancelable(false);
                progressDialog.setMessage(c.this.getString(2131755350));
                c.this.e.a(progressDialog);
                progressDialog.show();
            }
        });
        this.e.a(this.d);
        return this.d;
    }
}
