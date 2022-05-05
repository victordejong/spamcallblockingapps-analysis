package com.asus.contacts.b;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.copycontacts.c;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AsusCopySingleContactAyncTask;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/f.class */
public final class f extends DialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private static f f2591b;

    /* renamed from: a  reason: collision with root package name */
    public Object f2592a;
    private AccountWithDataSet c;
    private long d;
    private boolean e;
    private a g;
    private String i;
    private String j;
    private int k;
    private boolean f = false;
    private boolean h = false;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/b/f$a.class */
    public interface a {
        void onClickKeep(AccountWithDataSet accountWithDataSet);

        void onClickNotKeep(AccountWithDataSet accountWithDataSet);
    }

    public static f a(Bundle bundle) {
        if (f2591b == null) {
            f fVar = new f();
            f2591b = fVar;
            fVar.setArguments(bundle);
        } else {
            Bundle arguments = f2591b.getArguments();
            arguments.putBoolean("is_multiple", bundle.getBoolean("is_multiple", false));
            arguments.putBoolean("is_from_contact_detail", bundle.getBoolean("is_from_contact_detail", false));
            arguments.putString(AsusDeleteDuplicateActivity.ACCOUNT_FROM, bundle.getString(AsusDeleteDuplicateActivity.ACCOUNT_FROM, null));
            arguments.putString("accountTo", bundle.getString("accountTo", null));
            arguments.putInt("contactsNumber", bundle.getInt("contactsNumber", 0));
            arguments.putBoolean("is_sim", bundle.getBoolean("is_sim", false));
            arguments.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, bundle.getLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, 0L));
            arguments.putParcelable("selected_account", bundle.getParcelable("selected_account"));
        }
        return f2591b;
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        this.h = arguments.getBoolean("is_multiple", false);
        this.f = arguments.getBoolean("is_from_contact_detail", false);
        if (this.h) {
            this.i = arguments.getString(AsusDeleteDuplicateActivity.ACCOUNT_FROM);
            this.j = arguments.getString("accountTo");
            this.k = arguments.getInt("contactsNumber");
        } else if (this.f) {
            this.c = (AccountWithDataSet) arguments.getParcelable("selected_account");
        } else {
            this.c = (AccountWithDataSet) arguments.getParcelable("selected_account");
            this.d = arguments.getLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID);
            this.e = arguments.getBoolean("is_sim");
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(2131755167);
        builder.setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.b.f.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (f.this.h) {
                    DialogFragment a2 = c.a(f.this.i, f.this.j, f.this.k, true);
                    a2.show(f.this.getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                } else if (f.this.f) {
                    f.this.g = (a) f.this.f2592a;
                    if (f.this.g != null) {
                        f.this.g.onClickKeep(f.this.c);
                    }
                } else {
                    new AsusCopySingleContactAyncTask(f.this.c, (Context) f.this.getActivity(), f.this.d, f.this.e, true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }
        });
        builder.setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.b.f.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (f.this.h) {
                    DialogFragment a2 = c.a(f.this.i, f.this.j, f.this.k, false);
                    a2.show(f.this.getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                } else if (f.this.f) {
                    a aVar = (a) f.this.f2592a;
                    if (aVar != null) {
                        aVar.onClickNotKeep(f.this.c);
                    }
                } else {
                    new AsusCopySingleContactAyncTask(f.this.c, (Context) f.this.getActivity(), f.this.d, f.this.e, false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }
        });
        return builder.create();
    }
}
