package com.hiya.stingray.p000ui.userfeedback;

import android.content.DialogInterface;
/* renamed from: com.hiya.stingray.ui.userfeedback.WrongNameDialog$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/WrongNameDialog$a.class */
class WrongNameDialog$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ AbstractC0070d f148f;

    /* renamed from: g */
    final /* synthetic */ WrongNameDialog f149g;

    WrongNameDialog$a(WrongNameDialog wrongNameDialog, AbstractC0070d dVar) {
        this.f149g = wrongNameDialog;
        this.f148f = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f148f.m1094R(WrongNameDialog.t1(this.f149g), WrongNameDialog.u1(this.f149g), this.f149g.wrongNameTv.getText().toString(), true);
    }
}
