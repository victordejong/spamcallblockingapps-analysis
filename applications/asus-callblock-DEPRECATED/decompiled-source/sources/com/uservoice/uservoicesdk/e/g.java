package com.uservoice.uservoicesdk.e;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.uservoice.uservoicesdk.activity.ContactActivity;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.ui.l;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/g.class */
public final class g extends b {
    @Override // android.support.v4.app.h
    public final Dialog a() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (!l.a((Context) getActivity())) {
            builder.setInverseBackgroundForced(true);
        }
        builder.setMessage(getString(d.f.s));
        builder.setNegativeButton(d.f.I, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.g.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        builder.setPositiveButton(d.f.U, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.e.g.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                g.this.getActivity().startActivity(new Intent(g.this.getActivity(), ContactActivity.class));
                dialogInterface.cancel();
            }
        });
        return builder.create();
    }
}
