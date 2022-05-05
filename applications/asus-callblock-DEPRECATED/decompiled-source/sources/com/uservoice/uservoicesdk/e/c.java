package com.uservoice.uservoicesdk.e;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.f.b;
import com.uservoice.uservoicesdk.model.a;
import com.uservoice.uservoicesdk.model.i;
import com.uservoice.uservoicesdk.ui.l;
@SuppressLint({"ValidFragment"})
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/c.class */
public final class c extends b {
    private final b ai;
    private EditText aj;

    public c(b bVar) {
        this.ai = bVar;
    }

    static /* synthetic */ void a(c cVar) {
        a.a(e.a().d(), cVar.aj.getText().toString(), new com.uservoice.uservoicesdk.ui.a<a>(cVar.getActivity()) { // from class: com.uservoice.uservoicesdk.e.c.2
            @Override // com.uservoice.uservoicesdk.j.a
            public final /* synthetic */ void a(Object obj) {
                e.a().e = (a) obj;
                c.this.ai.a();
            }
        });
    }

    @Override // android.support.v4.app.h
    public final Dialog a() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(d.f.J);
        if (!l.a((Context) getActivity())) {
            builder.setInverseBackgroundForced(true);
        }
        View inflate = getActivity().getLayoutInflater().inflate(d.c.q, (ViewGroup) null);
        this.aj = (EditText) inflate.findViewById(d.b.O);
        builder.setView(inflate);
        builder.setNegativeButton(d.f.z, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (e.a().d != null) {
                    c.a(c.this);
                } else {
                    i.a(new com.uservoice.uservoicesdk.ui.a<i>(c.this.getActivity()) { // from class: com.uservoice.uservoicesdk.e.c.1.1
                        @Override // com.uservoice.uservoicesdk.j.a
                        public final /* bridge */ /* synthetic */ void a(Object obj) {
                            e.a().d = (i) obj;
                            c.a(c.this);
                        }
                    });
                }
            }
        });
        AlertDialog create = builder.create();
        create.getWindow().setSoftInputMode(5);
        return create;
    }
}
