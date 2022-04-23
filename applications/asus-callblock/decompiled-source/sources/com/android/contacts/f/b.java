package com.android.contacts.f;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.asus.contacts.interactions.EndCallCustomTagActivity;
import com.asus.contacts.interactions.EndCallTagActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/f/b.class */
public final class b extends DialogFragment implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private AlertDialog f1277a;

    /* renamed from: b  reason: collision with root package name */
    private View f1278b;
    private CheckBox c;
    private boolean d;
    private boolean e;
    private boolean f;
    private int g;

    private b(boolean z, boolean z2, int i) {
        this.e = false;
        this.f = false;
        this.g = 0;
        this.e = z;
        this.f = z2;
        this.g = i;
    }

    public static b a(boolean z, boolean z2, int i) {
        return new b(z, z2, i);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ((BlockAndTagNumberActivity) getActivity()).setIsMoveHistory(compoundButton.isChecked());
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        this.d = false;
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (this.e) {
            this.f1278b = getActivity().getLayoutInflater().inflate(2131427603, (ViewGroup) null);
            builder.setTitle(getActivity().getResources().getString(2131755253)).setView(this.f1278b).setMessage(getActivity().getResources().getString(2131755252)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.b.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (!b.this.f) {
                        ((BlockAndTagNumberActivity) b.this.getActivity()).doPositiveBlockNumber();
                    } else if (b.this.g == 2) {
                        ((EndCallTagActivity) b.this.getActivity()).a();
                    } else {
                        ((EndCallCustomTagActivity) b.this.getActivity()).a();
                    }
                }
            }).setNegativeButton(getActivity().getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.b.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (!b.this.f) {
                        ((BlockAndTagNumberActivity) b.this.getActivity()).doNegativeBlockNumber();
                    } else if (b.this.g == 2) {
                        ((EndCallTagActivity) b.this.getActivity()).b();
                    } else {
                        ((EndCallCustomTagActivity) b.this.getActivity()).b();
                    }
                }
            });
        } else {
            builder.setTitle(getActivity().getResources().getString(2131755253)).setMessage(getActivity().getResources().getString(2131755252)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.b.4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (!b.this.f) {
                        ((BlockAndTagNumberActivity) b.this.getActivity()).doPositiveBlockNumber();
                    } else if (b.this.g == 2) {
                        ((EndCallTagActivity) b.this.getActivity()).a();
                    } else {
                        ((EndCallCustomTagActivity) b.this.getActivity()).a();
                    }
                }
            }).setNegativeButton(getActivity().getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.b.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    if (!b.this.f) {
                        ((BlockAndTagNumberActivity) b.this.getActivity()).doNegativeBlockNumber();
                    } else if (b.this.g == 2) {
                        ((EndCallTagActivity) b.this.getActivity()).b();
                    } else {
                        ((EndCallCustomTagActivity) b.this.getActivity()).b();
                    }
                }
            });
        }
        this.f1277a = builder.create();
        this.f1277a.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.android.contacts.f.b.5
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return true;
                }
                b.this.f1277a.dismiss();
                b.this.getActivity().finish();
                return true;
            }
        });
        if (this.f1278b != null) {
            this.c = (CheckBox) this.f1278b.findViewById(2131297088);
            if (this.c != null) {
                this.c.setChecked(false);
                this.c.setOnCheckedChangeListener(this);
            }
        }
        return this.f1277a;
    }
}
