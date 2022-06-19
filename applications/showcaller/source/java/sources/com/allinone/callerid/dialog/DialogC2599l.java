package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.dialog.l */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/l.class */
public class DialogC2599l extends Dialog {

    /* renamed from: d */
    private View.OnClickListener f9054d;

    /* renamed from: e */
    private Context f9055e;

    public DialogC2599l(Context context, int i, View.OnClickListener onClickListener) {
        super(context, i);
        this.f9054d = onClickListener;
        this.f9055e = context;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        C3711a1.m24494r1(false);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24281I0(this.f9055e, EZCallApplication.m26146c().f9914h);
        setContentView(R$layout.dialog_unknown_number);
        if (C3767h1.m24250f0(this.f9055e).booleanValue() && Build.VERSION.SDK_INT >= 17 && getWindow() != null) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        ((ImageView) findViewById(R$id.closeIcon)).setOnClickListener(this.f9054d);
        ((FrameLayout) findViewById(R$id.fl_ingore)).setOnClickListener(this.f9054d);
        ((FrameLayout) findViewById(R$id.fl_enable)).setOnClickListener(this.f9054d);
        ((TextView) findViewById(R$id.tv_enable)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_ingore)).setTypeface(C3739f1.m24359b());
    }
}
