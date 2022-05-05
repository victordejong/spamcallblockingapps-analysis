package com.uservoice.uservoicesdk.activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.f.a;
import com.uservoice.uservoicesdk.ui.b;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/c.class */
public abstract class c extends b {
    b n;

    protected abstract b g();

    protected abstract int h();

    @Override // android.support.v4.app.i, android.app.Activity
    public void onBackPressed() {
        if (this.n.a()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(d.f.B);
            builder.setMessage(h());
            builder.setPositiveButton(d.f.U, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.activity.c.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    c.this.finish();
                }
            });
            builder.setNegativeButton(d.f.I, (DialogInterface.OnClickListener) null);
            builder.show();
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.uservoice.uservoicesdk.activity.a, android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j().setDivider(null);
        this.n = g();
        a(this.n);
        j().setOnHierarchyChangeListener(this.n);
        j().setOnItemClickListener(this.n);
        j().setDescendantFocusability(262144);
        new a(this, new Runnable() { // from class: com.uservoice.uservoicesdk.activity.c.1
            @Override // java.lang.Runnable
            public final void run() {
                c.this.n.notifyDataSetChanged();
            }
        }).a();
        if (Build.VERSION.SDK_INT < 19) {
            getWindow().setSoftInputMode(36);
        }
    }
}
