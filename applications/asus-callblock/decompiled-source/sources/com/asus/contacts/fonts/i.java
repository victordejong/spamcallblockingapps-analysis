package com.asus.contacts.fonts;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.asus.contacts.fonts.e;
import com.asus.contacts.fonts.j;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/i.class */
public final class i extends b implements e.a, j.a {
    a d;
    e e;
    private View f;
    private ListView g;
    private h h;
    private Button i;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/i$a.class */
    public interface a {
        void a();

        void a(int i);
    }

    public i(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("IconSettingsAdapter_font_description", str);
        setArguments(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.e != null) {
            j jVar = new j(this);
            e eVar = this.e;
            if (eVar != null) {
                jVar.d = eVar;
                jVar.d.a(jVar);
            }
            jVar.f2639b = this.f2639b;
            jVar.c = this.c;
            jVar.show(getActivity().getFragmentManager(), "FontStyleLoadingDialog");
            if (!this.e.b()) {
                e eVar2 = this.e;
                if (eVar2.f2651b != null) {
                    try {
                        eVar2.f2651b.a();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.contacts.fonts.b
    public final void a() {
        super.a();
        String string = getArguments().getString("IconSettingsAdapter_font_description", "###");
        this.f = ((LayoutInflater) this.f2638a.getSystemService("layout_inflater")).inflate(2131427586, (ViewGroup) null);
        this.g = (ListView) this.f.findViewById(2131296869);
        this.h = new h(this.f2638a, string, this.e, this.g);
        this.g.setAdapter((ListAdapter) this.h);
        this.g.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.asus.contacts.fonts.i.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                i.this.h.getItem(i).e = false;
                if (i.this.d != null) {
                    i.this.d.a(i);
                }
                i.this.dismiss();
            }
        });
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void a(String... strArr) {
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void b() {
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void c() {
        if (this.i != null && this.e != null && this.e.a()) {
            e();
        }
    }

    @Override // com.asus.contacts.fonts.j.a
    public final void d() {
        this.i.setEnabled(true);
    }

    @Override // android.app.DialogFragment
    public final void dismiss() {
        if (this.e != null) {
            if (this.h != null) {
                this.e.b(this.h);
            }
            e eVar = this.e;
            List<Font> list = this.h.f2660a;
            if (eVar.f2651b != null) {
                try {
                    eVar.f2651b.a(list);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            this.e.b(this);
        }
        if (this.d != null) {
            this.d.a();
        }
        super.dismiss();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        a();
        AlertDialog create = new AlertDialog.Builder(this.f2638a).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setPositiveButton(2131756113, (DialogInterface.OnClickListener) null).setTitle(2131756114).setCancelable(true).create();
        create.setView(this.f, 0, 0, 0, 0);
        return b.a(create, this.f2639b);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        Activity activity = getActivity();
        if (activity != null && this.h != null) {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(16842829, typedValue, true);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float dimension = typedValue.getDimension(displayMetrics);
            if (dimension > 0.0f) {
                getDialog().getWindow().setLayout(-2, (int) (displayMetrics.heightPixels - (dimension * 2.0f)));
            }
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        AlertDialog alertDialog = (AlertDialog) getDialog();
        if (alertDialog != null) {
            this.i = alertDialog.getButton(-1);
            this.i.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.fonts.i.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.this.e();
                    i.this.i.setEnabled(false);
                }
            });
            if (this.i != null && this.e != null && this.e.a()) {
                e();
            }
        }
    }
}
