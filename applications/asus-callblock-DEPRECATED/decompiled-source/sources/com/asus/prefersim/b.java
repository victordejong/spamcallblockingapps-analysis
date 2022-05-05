package com.asus.prefersim;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.ContactsApplication;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/prefersim/b.class */
public final class b extends DialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private ContactDetailFragment f2944b;
    private long c;

    /* renamed from: a  reason: collision with root package name */
    final CharSequence[] f2943a = {ContactsApplication.b().getApplicationContext().getString(2131755919), ContactsApplication.b().getApplicationContext().getString(2131756130), ContactsApplication.b().getApplicationContext().getString(2131756131)};
    private int d = 0;

    static /* synthetic */ int a(b bVar) {
        int i = bVar.d;
        bVar.d = i - 1;
        return i;
    }

    public static void a(FragmentManager fragmentManager, ArrayList<String> arrayList, long j, ContactDetailFragment contactDetailFragment) {
        b bVar = new b();
        bVar.f2944b = contactDetailFragment;
        bVar.c = j;
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("BUNDLELIST", arrayList);
        bVar.setArguments(bundle);
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add(bVar, "prefersimprompt");
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        final ArrayList<String> stringArrayList = getArguments().getStringArrayList("BUNDLELIST");
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.d = c.a(getActivity(), this.c) + 1;
        builder.setTitle(getString(2131756104));
        builder.setSingleChoiceItems(this.f2943a, this.d, new DialogInterface.OnClickListener() { // from class: com.asus.prefersim.b.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.this.d = i;
            }
        });
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.asus.prefersim.b.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.a(b.this);
                if (b.this.d == -1) {
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, b.this.getActivity(), "PreferSIM", "PreferSIM- Dialog_Not set", null, null);
                    }
                    a aVar = new a(4);
                    aVar.f2941a = stringArrayList;
                    try {
                        aVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, b.this.getActivity(), Long.valueOf(b.this.c));
                    } catch (Exception e) {
                        Log.d("PreferSimDialog", "clear Contact Prefer Sim Task error: " + e.toString());
                    }
                } else {
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, b.this.getActivity(), "PreferSIM", "PreferSIM- Dialog_Set Prefer SIM", null, null);
                    }
                    a aVar2 = new a(5);
                    aVar2.f2942b = b.this.f2944b;
                    aVar2.f2941a = stringArrayList;
                    try {
                        aVar2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, b.this.getActivity(), Long.valueOf(b.this.c), Integer.valueOf(b.this.d));
                    } catch (Exception e2) {
                        Log.d("PreferSimDialog", "set Contact Prefer Sim Task error: " + e2.toString());
                    }
                }
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.asus.prefersim.b.3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        return builder.create();
    }
}
