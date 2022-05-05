package com.android.contacts.g;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/g/a.class */
public final class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private int f1308a;

    /* renamed from: com.android.contacts.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/g/a$a.class */
    public interface AbstractC0039a {
    }

    public a() {
    }

    private a(int i) {
        this.f1308a = i;
    }

    public static a a(int i) {
        return new a(i);
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!(activity instanceof AbstractC0039a)) {
            throw new ClassCastException(activity.toString() + " must implement HintOkClickListener");
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            this.f1308a = bundle.getInt("resource_id");
        }
        if (this.f1308a == 0) {
            Log.d("AsusHintDialogFragment", "Hint dialog message resource ID is 0 !");
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(this.f1308a);
        builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.g.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            bundle.putInt("resource_id", this.f1308a);
        }
    }
}
