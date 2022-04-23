package com.android.contacts.ezmode;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.calllog.e;
import com.android.contacts.calllog.h;
import com.android.contacts.calllog.p;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/a.class */
public class a extends e {
    private static final String E = a.class.getSimpleName();
    private final Context F;

    public a(Context context, e.a aVar, p pVar, e.c cVar) {
        super(context, aVar, pVar, cVar);
        this.F = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.calllog.e, com.android.a.b.b
    public final View a(Context context, ViewGroup viewGroup) {
        Log.d(E, "newStandAloneView");
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427549, viewGroup, false);
        super.a(inflate, viewGroup);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.calllog.e, com.android.a.b.b
    public final View b(Context context, ViewGroup viewGroup) {
        Log.d(E, "newGroupView");
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427549, viewGroup, false);
        super.a(inflate, viewGroup);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.calllog.e
    public final void b(View view, Cursor cursor, int i) {
        Log.d(E, "bindView");
        super.b(view, cursor, i);
        h hVar = (h) view.getTag();
        hVar.f706b.setVisibility(0);
        hVar.g.setVisibility(8);
        hVar.c.setVisibility(8);
        if (hVar.j != null) {
            hVar.j.setVisibility(8);
        }
        if (hVar.k != null) {
            hVar.k.setVisibility(8);
        }
        switch (cursor.getInt(4)) {
            case 1:
                hVar.l.setText(this.F.getResources().getString(2131756257));
                hVar.l.setTextColor(this.F.getResources().getColor(2131034362));
                break;
            case 2:
                hVar.l.setText(this.F.getResources().getString(2131756259));
                hVar.l.setTextColor(this.F.getResources().getColor(2131034364));
                break;
            case 3:
                hVar.l.setText(this.F.getResources().getString(2131756258));
                hVar.l.setTextColor(this.F.getResources().getColor(2131034363));
                break;
            case 4:
                hVar.l.setText(this.F.getResources().getString(2131756261));
                hVar.l.setTextColor(this.F.getResources().getColor(2131034364));
                break;
            default:
                hVar.l.setText(BuildConfig.FLAVOR);
                break;
        }
        if (i >= 10) {
            hVar.d.f512a.setMaxWidth(this.F.getResources().getDimensionPixelSize(2131100112));
        } else if (i > 0) {
            hVar.d.f512a.setMaxWidth(this.F.getResources().getDimensionPixelSize(2131100111));
        } else {
            hVar.d.f512a.setMaxWidth(this.F.getResources().getDimensionPixelSize(2131100110));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.calllog.e, com.android.a.b.b
    public final View c(Context context, ViewGroup viewGroup) {
        Log.d(E, "newChildView");
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427549, viewGroup, false);
        super.a(inflate, viewGroup);
        return inflate;
    }
}
