package com.android.contacts.e;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/e/b.class */
public final class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    public Object f1083a;

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f1084b;
    private View c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private CheckBox k;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/e/b$a.class */
    public interface a {
        void onClickCTACheckerNegativeButton();

        void onClickCTACheckerPositiveButton(boolean z);
    }

    public static b a(Bundle bundle) {
        b bVar = new b();
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        int i = getArguments().getInt("CTA_DIALOG_TYPE");
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.c = getActivity().getLayoutInflater().inflate(2131427492, (ViewGroup) null);
        this.d = (TextView) this.c.findViewById(2131296625);
        this.e = (TextView) this.c.findViewById(2131296622);
        this.f = (TextView) this.c.findViewById(2131296618);
        this.g = (TextView) this.c.findViewById(2131296619);
        this.h = (TextView) this.c.findViewById(2131296620);
        this.i = (TextView) this.c.findViewById(2131296621);
        this.k = (CheckBox) this.c.findViewById(2131296623);
        this.k.setChecked(false);
        this.j = (TextView) this.c.findViewById(2131296624);
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.e.b.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.this.k.setChecked(!b.this.k.isChecked());
            }
        });
        switch (i) {
            case 1:
                String string = getActivity().getResources().getString(2131755486);
                this.d.setText(2131755485);
                this.e.setVisibility(8);
                boolean hasSystemFeature = (getActivity() == null || getActivity().getPackageManager() == null) ? false : getActivity().getPackageManager().hasSystemFeature("android.hardware.nfc");
                this.f.setText(2131755479);
                if (hasSystemFeature) {
                    this.f.setVisibility(0);
                } else {
                    this.f.setVisibility(8);
                }
                this.g.setText(2131755480);
                this.g.setVisibility(0);
                this.h.setText(2131755481);
                this.h.setVisibility(0);
                this.i.setText(2131755482);
                this.i.setVisibility(0);
                builder.setTitle(string).setView(this.c).setPositiveButton(getActivity().getResources().getString(2131755477), (DialogInterface.OnClickListener) null).setNegativeButton(getActivity().getResources().getString(2131755484), (DialogInterface.OnClickListener) null);
                break;
        }
        this.f1084b = builder.create();
        this.f1084b.setCanceledOnTouchOutside(false);
        this.f1084b.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.e.b.2
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                b.this.f1084b.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.e.b.2.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        a aVar = (a) b.this.f1083a;
                        if (aVar != null) {
                            aVar.onClickCTACheckerPositiveButton(b.this.k.isChecked());
                        }
                        b.this.f1084b.dismiss();
                    }
                });
                b.this.f1084b.getButton(-2).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.e.b.2.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        a aVar = (a) b.this.f1083a;
                        if (aVar != null) {
                            aVar.onClickCTACheckerNegativeButton();
                        }
                        b.this.f1084b.dismiss();
                    }
                });
            }
        });
        this.f1084b.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.android.contacts.e.b.3
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                if (i2 != 4) {
                    return false;
                }
                b.this.f1084b.dismiss();
                b.this.getActivity().finish();
                return false;
            }
        });
        return this.f1084b;
    }
}
