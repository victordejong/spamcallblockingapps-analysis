package com.android.contacts.calllog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/a.class */
public final class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private boolean f656a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f657b = false;

    public static a a(boolean z, boolean z2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isSendMode", z);
        bundle.putBoolean("hasCallLog", z2);
        aVar.setArguments(bundle);
        return aVar;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f656a = getArguments().getBoolean("isSendMode");
        this.f657b = getArguments().getBoolean("hasCallLog");
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog create;
        if (!this.f656a) {
            String string = getResources().getString(2131755185);
            String string2 = getResources().getString(2131755186);
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(getResources().getString(2131755184));
            builder.setItems(new String[]{string, string2}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.a.4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    switch (i) {
                        case 0:
                            b.a(false).show(a.this.getFragmentManager(), "BackupCallLogEnterFilenameDialog2");
                            return;
                        case 1:
                            b.a(true).show(a.this.getFragmentManager(), "BackupCallLogEnterFilenameDialog4");
                            return;
                        default:
                            return;
                    }
                }
            });
            create = builder.create();
        } else if (this.f657b && PhoneCapabilityTester.isRestoreFileExist()) {
            String string3 = getResources().getString(2131756094);
            String string4 = getResources().getString(2131755186);
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getActivity());
            builder2.setTitle(getResources().getString(2131756093));
            builder2.setItems(new String[]{string3, string4}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.a.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    switch (i) {
                        case 0:
                            c.a().show(a.this.getFragmentManager(), "BackupCallLogSentOutDialog");
                            return;
                        case 1:
                            b.a(true).show(a.this.getFragmentManager(), "BackupCallLogEnterFilenameDialog4");
                            return;
                        default:
                            return;
                    }
                }
            });
            create = builder2.create();
        } else if (this.f657b) {
            String string5 = getResources().getString(2131755186);
            AlertDialog.Builder builder3 = new AlertDialog.Builder(getActivity());
            builder3.setTitle(getResources().getString(2131756093));
            builder3.setItems(new String[]{string5}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.a.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    switch (i) {
                        case 0:
                            b.a(true).show(a.this.getFragmentManager(), "BackupCallLogEnterFilenameDialog4");
                            return;
                        default:
                            return;
                    }
                }
            });
            create = builder3.create();
        } else {
            String string6 = getResources().getString(2131756094);
            AlertDialog.Builder builder4 = new AlertDialog.Builder(getActivity());
            builder4.setTitle(getResources().getString(2131756093));
            builder4.setItems(new String[]{string6}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.a.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    switch (i) {
                        case 0:
                            c.a().show(a.this.getFragmentManager(), "BackupCallLogSentOutDialog");
                            return;
                        default:
                            return;
                    }
                }
            });
            create = builder4.create();
        }
        return create;
    }
}
