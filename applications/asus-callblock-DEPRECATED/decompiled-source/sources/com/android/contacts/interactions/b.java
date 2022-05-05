package com.android.contacts.interactions;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/b.class */
public class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1452a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final String f1453b = ":settings:fragment_args_key";
    private final String c = ":settings:fragment_args_key_highlight_times";
    private final String d = "permission_settings";
    private final int e = 3;
    private a f;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/b$a.class */
    public interface a {
        Intent getPreviousIntent();

        void setNeedToRestart(boolean z);
    }

    public static void a(FragmentManager fragmentManager) {
        try {
            new b().show(fragmentManager, f1452a);
        } catch (Exception e) {
            Log.i(f1452a, e.toString());
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f = (a) context;
        } catch (ClassCastException e) {
            Log.d(f1452a, "e:" + e.toString());
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(getString(2131755874));
        builder.setPositiveButton(2131755873, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.b.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + b.this.getActivity().getPackageName()));
                intent.putExtra(":settings:fragment_args_key", "permission_settings");
                intent.putExtra(":settings:fragment_args_key_highlight_times", 3);
                b.this.startActivity(intent);
                if (b.this.f != null) {
                    b.this.f.setNeedToRestart(true);
                } else {
                    b.this.getActivity().finish();
                }
                b.this.dismiss();
            }
        });
        builder.setNegativeButton(2131755345, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.b.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (b.this.f != null) {
                    NecessaryPermissionDenyActivity.startPermissionActivity(b.this.getActivity(), b.this.f.getPreviousIntent());
                } else {
                    NecessaryPermissionDenyActivity.startPermissionActivity(b.this.getActivity());
                }
                b.this.dismiss();
            }
        });
        setCancelable(false);
        return builder.show();
    }
}
