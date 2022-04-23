package com.android.contacts.f;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/f/a.class */
public final class a extends DialogFragment implements AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    public EnumC0038a f1267a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f1268b;
    private AlertDialog c;
    private View d;
    private int e;
    private EditText f;
    private CheckBox g;
    private Spinner h;
    private int i;

    /* renamed from: com.android.contacts.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/f/a$a.class */
    public enum EnumC0038a {
        DoNotTag,
        HARASSING,
        FRAUD,
        SALES_ADVERTISEMENT,
        DELIVERY_SERVICE,
        HOUSE_PROPERTY,
        MANUAL_TAG
    }

    public static a a(Bundle bundle) {
        a aVar = new a();
        aVar.setArguments(bundle);
        return aVar;
    }

    static /* synthetic */ void e(a aVar) {
        Button button = aVar.c.getButton(-1);
        if (aVar.e == 0) {
            aVar.e = 1;
            button.setText(aVar.getActivity().getResources().getString(2131755239));
            button.invalidate();
        } else if (aVar.e == 1) {
            aVar.e = 0;
            button.setText(aVar.getActivity().getResources().getString(17039370));
            button.invalidate();
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        this.e = 0;
        this.f1267a = EnumC0038a.DoNotTag;
        String string = getArguments().getString(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER);
        int i = getArguments().getInt(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_TIMES);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.d = getActivity().getLayoutInflater().inflate(2131427437, (ViewGroup) null);
        builder.setTitle(getActivity().getResources().getString(2131755242) + " " + string).setView(this.d).setPositiveButton(getActivity().getResources().getString(17039370), (DialogInterface.OnClickListener) null).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null);
        this.c = builder.create();
        this.c.setCanceledOnTouchOutside(false);
        this.c.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.contacts.f.a.1
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                a.this.c.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.f.a.1.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (a.this.e == 1) {
                            a.this.f1268b.setVisibility(0);
                            a.this.h.setEnabled(false);
                            a.e(a.this);
                            return;
                        }
                        ((BlockAndTagNumberActivity) a.this.getActivity()).doPositiveTagNumber(a.this.g.isChecked(), a.this.f1267a, a.this.f.getText().toString());
                        a.this.c.dismiss();
                    }
                });
                a.this.c.getButton(-2).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.f.a.1.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        a.this.c.dismiss();
                        ((BlockAndTagNumberActivity) a.this.getActivity()).doNegativeTagNumber();
                    }
                });
            }
        });
        this.c.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.android.contacts.f.a.2
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                if (i2 != 4) {
                    return false;
                }
                a.this.c.dismiss();
                a.this.getActivity().finish();
                return false;
            }
        });
        this.f = (EditText) this.d.findViewById(2131296424);
        this.g = (CheckBox) this.d.findViewById(2131296423);
        this.g.setChecked(true);
        this.h = (Spinner) this.d.findViewById(2131296425);
        String[] strArr = {getResources().getString(2131755244), getResources().getString(2131755245), getResources().getString(2131755246), getResources().getString(2131755247), getResources().getString(2131755248), getResources().getString(2131755249), getResources().getString(2131755250)};
        if (BuildConfig.FLAVOR.equals("crank")) {
            strArr[1] = i > 0 ? strArr[1] + "(" + i + ")" : strArr[1];
            this.i = 1;
        } else if (BuildConfig.FLAVOR.equals("fraud")) {
            strArr[2] = i > 0 ? strArr[2] + "(" + i + ")" : strArr[2];
            this.i = 2;
        } else if (BuildConfig.FLAVOR.equals("promote sales")) {
            strArr[3] = i > 0 ? strArr[3] + "(" + i + ")" : strArr[3];
            this.i = 3;
        } else if (BuildConfig.FLAVOR.equals("express")) {
            strArr[4] = i > 0 ? strArr[4] + "(" + i + ")" : strArr[4];
            this.i = 4;
        } else if (BuildConfig.FLAVOR.equals("house agent")) {
            strArr[5] = i > 0 ? strArr[5] + "(" + i + ")" : strArr[5];
            this.i = 5;
        } else {
            this.i = 0;
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.d.getContext(), Resources.getSystem().getIdentifier("simple_spinner_item", "layout", "android"), strArr);
        arrayAdapter.setDropDownViewResource(Resources.getSystem().getIdentifier("simple_spinner_dropdown_item", "layout", "android"));
        this.h.setAdapter((SpinnerAdapter) arrayAdapter);
        this.h.setOnItemSelectedListener(this);
        this.h.setSelection(this.i);
        this.f1268b = (LinearLayout) this.d.findViewById(2131296770);
        return this.c;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == 0) {
            this.f1267a = EnumC0038a.DoNotTag;
        } else if (i == 1) {
            this.f1267a = EnumC0038a.HARASSING;
        } else if (i == 2) {
            this.f1267a = EnumC0038a.FRAUD;
        } else if (i == 3) {
            this.f1267a = EnumC0038a.SALES_ADVERTISEMENT;
        } else if (i == 4) {
            this.f1267a = EnumC0038a.DELIVERY_SERVICE;
        } else if (i == 5) {
            this.f1267a = EnumC0038a.HOUSE_PROPERTY;
        } else if (i == 6) {
            this.f1267a = EnumC0038a.MANUAL_TAG;
        }
        if (i == 6) {
            this.f1268b.setVisibility(0);
        } else {
            this.f1268b.setVisibility(8);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
