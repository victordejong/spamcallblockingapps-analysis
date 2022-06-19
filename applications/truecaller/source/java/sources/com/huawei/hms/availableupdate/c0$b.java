package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/c0$b.class */
public class c0$b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AlertDialog.Builder f7301a;

    /* renamed from: b */
    public final /* synthetic */ Activity f7302b;

    /* renamed from: c */
    public final /* synthetic */ c0 f7303c;

    public c0$b(c0 c0Var, AlertDialog.Builder builder, Activity activity) {
        this.f7303c = c0Var;
        this.f7301a = builder;
        this.f7302b = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        c0 c0Var = this.f7303c;
        c0.a(c0Var, new C2258i0(this.f7301a, this.f7302b, c0.b(c0Var)).m38148a());
        if (c0.a(this.f7303c) == null) {
            this.f7303c.m38131a();
            return;
        }
        c0 c0Var2 = this.f7303c;
        c0Var2.m38130a(c0.a(c0Var2));
        c0.a(true);
    }
}
