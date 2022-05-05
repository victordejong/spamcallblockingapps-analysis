package com.asus.contacts.fonts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.asus.contacts.fonts.e;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/j.class */
public final class j extends b implements e.a {
    e d;
    private View e;
    private TextView f;
    private TextView g;
    private TextView h;
    private String i;
    private a j;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/j$a.class */
    public interface a {
        void d();
    }

    public j(i iVar) {
        this.j = iVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.contacts.fonts.b
    public final void a() {
        super.a();
        this.e = ((LayoutInflater) this.f2638a.getSystemService("layout_inflater")).inflate(2131427588, (ViewGroup) null);
        this.e.setKeepScreenOn(true);
        this.f = (TextView) this.e.findViewById(2131297095);
        this.g = (TextView) this.e.findViewById(2131297093);
        this.h = (TextView) this.e.findViewById(2131297094);
        this.i = this.f2638a.getString(2131756116);
        this.f.setText(this.i + "(0%)");
        this.g.setText(BuildConfig.FLAVOR);
        this.h.setText(this.f2638a.getString(2131756115, "0"));
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void a(String... strArr) {
        if (strArr != null) {
            if (!(this.f == null || strArr[0] == null)) {
                this.f.setText(this.i + "(" + strArr[0] + "%)");
            }
            if (!(this.g == null || strArr[1] == null)) {
                this.g.setText(strArr[1]);
            }
            if (this.h != null && strArr[2] != null) {
                this.h.setText(this.f2638a.getString(2131756115, strArr[2]));
            }
        }
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void b() {
        if (this.e != null) {
            this.e.setKeepScreenOn(false);
        }
        dismiss();
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void c() {
    }

    @Override // android.app.DialogFragment
    public final void dismiss() {
        if (this.d != null) {
            this.d.b(this);
        }
        if (this.j != null) {
            this.j.d();
        }
        super.dismiss();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        a();
        AlertDialog create = new AlertDialog.Builder(this.f2638a).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.fonts.j.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setTitle(2131756117).setCancelable(true).create();
        create.setView(this.e, 0, 0, 0, 0);
        return b.a(create, this.f2639b);
    }
}
