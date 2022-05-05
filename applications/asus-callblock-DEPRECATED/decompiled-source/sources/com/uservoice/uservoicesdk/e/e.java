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
import com.uservoice.uservoicesdk.f.b;
import com.uservoice.uservoicesdk.f.c;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.ui.a;
import com.uservoice.uservoicesdk.ui.l;
@SuppressLint({"ValidFragment"})
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/e.class */
public final class e extends b {
    private final Suggestion ai;
    private final f aj;
    private final String ak;

    /* renamed from: com.uservoice.uservoicesdk.e.e$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/e$1.class */
    final class AnonymousClass1 implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f4654a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EditText f4655b;

        AnonymousClass1(EditText editText, EditText editText2) {
            this.f4654a = editText;
            this.f4655b = editText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(final DialogInterface dialogInterface, int i) {
            com.uservoice.uservoicesdk.e.a().a(this.f4654a.getText().toString(), this.f4655b.getText().toString());
            c cVar = new c(e.this.getActivity(), this.f4655b.getText().toString(), this.f4654a.getText().toString(), new b() { // from class: com.uservoice.uservoicesdk.e.e.1.1
                @Override // com.uservoice.uservoicesdk.f.b
                public final void a() {
                    e.this.ai.a(new a<Suggestion>(e.this.getActivity()) { // from class: com.uservoice.uservoicesdk.e.e.1.1.1
                        @Override // com.uservoice.uservoicesdk.j.a
                        public final /* synthetic */ void a(Object obj) {
                            Suggestion suggestion = (Suggestion) obj;
                            if (e.this.getActivity() instanceof com.uservoice.uservoicesdk.activity.c) {
                                com.uservoice.uservoicesdk.d.a.a("subscribed", e.this.ak, suggestion);
                            }
                            e.this.aj.d();
                            dialogInterface.dismiss();
                        }
                    });
                }
            });
            cVar.e = true;
            cVar.a();
        }
    }

    public e() {
        this.ai = null;
        this.aj = null;
        this.ak = null;
    }

    public e(Suggestion suggestion, f fVar, String str) {
        this.ai = suggestion;
        this.aj = fVar;
        this.ak = str;
    }

    @Override // android.support.v4.app.h
    public final Dialog a() {
        if (com.uservoice.uservoicesdk.e.a().f4631b == null) {
            a(false);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(d.f.p);
        if (!l.a((Context) getActivity())) {
            builder.setInverseBackgroundForced(true);
        }
        View inflate = getActivity().getLayoutInflater().inflate(d.c.t, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(d.b.H);
        EditText editText2 = (EditText) inflate.findViewById(d.b.N);
        editText.setText(com.uservoice.uservoicesdk.e.a().d());
        editText2.setText(com.uservoice.uservoicesdk.e.a().c());
        builder.setView(inflate);
        builder.setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(17039370, new AnonymousClass1(editText2, editText));
        AlertDialog create = builder.create();
        create.getWindow().setSoftInputMode(5);
        return create;
    }
}
