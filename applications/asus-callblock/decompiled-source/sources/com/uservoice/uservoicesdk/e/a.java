package com.uservoice.uservoicesdk.e;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.f.b;
import com.uservoice.uservoicesdk.f.c;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.model.f;
import com.uservoice.uservoicesdk.ui.e;
import com.uservoice.uservoicesdk.ui.l;
@SuppressLint({"ValidFragment"})
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/a.class */
public final class a extends b {
    private final Suggestion ai;
    private final f aj;

    /* renamed from: com.uservoice.uservoicesdk.e.a$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/a$1.class */
    final class AnonymousClass1 implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f4632a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EditText f4633b;
        final /* synthetic */ EditText c;
        final /* synthetic */ Activity d;

        AnonymousClass1(EditText editText, EditText editText2, EditText editText3, Activity activity) {
            this.f4632a = editText;
            this.f4633b = editText2;
            this.c = editText3;
            this.d = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            final String obj = this.f4632a.getText().toString();
            if (obj.trim().length() > 0) {
                c.a(a.this.getActivity(), this.f4633b.getText().toString(), this.c.getText().toString(), new b() { // from class: com.uservoice.uservoicesdk.e.a.1.1
                    @Override // com.uservoice.uservoicesdk.f.b
                    public final void a() {
                        f.a(a.this.ai, obj, new com.uservoice.uservoicesdk.ui.a<f>(a.this.getActivity()) { // from class: com.uservoice.uservoicesdk.e.a.1.1.1
                            @Override // com.uservoice.uservoicesdk.j.a
                            public final /* synthetic */ void a(Object obj2) {
                                f fVar = (f) obj2;
                                Toast.makeText(AnonymousClass1.this.d, d.f.E, 0).show();
                                f fVar2 = a.this.aj;
                                try {
                                    fVar2.aj.a((e<f>) fVar);
                                    fVar2.ai.m++;
                                    fVar2.al++;
                                    fVar2.a(fVar2.ak, fVar2.ai);
                                } catch (Exception e) {
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    public a(Suggestion suggestion, f fVar) {
        this.ai = suggestion;
        this.aj = fVar;
    }

    @Override // android.support.v4.app.h
    public final Dialog a() {
        if (com.uservoice.uservoicesdk.e.a().f4631b == null) {
            a(false);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (!l.a((Context) getActivity())) {
            builder.setInverseBackgroundForced(true);
        }
        builder.setTitle(d.f.K);
        View inflate = getActivity().getLayoutInflater().inflate(d.c.j, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(d.b.B);
        View findViewById = inflate.findViewById(d.b.H);
        View findViewById2 = inflate.findViewById(d.b.N);
        EditText editText2 = (EditText) findViewById.findViewById(d.b.ak);
        EditText editText3 = (EditText) findViewById2.findViewById(d.b.ak);
        editText2.setText(com.uservoice.uservoicesdk.e.a().d());
        ((TextView) findViewById.findViewById(d.b.I)).setText(d.f.V);
        editText3.setText(com.uservoice.uservoicesdk.e.a().c());
        ((TextView) findViewById2.findViewById(d.b.I)).setText(d.f.W);
        builder.setView(inflate);
        builder.setNegativeButton(d.f.z, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(d.f.L, new AnonymousClass1(editText, editText2, editText3, getActivity()));
        AlertDialog create = builder.create();
        create.getWindow().setSoftInputMode(5);
        return create;
    }
}
