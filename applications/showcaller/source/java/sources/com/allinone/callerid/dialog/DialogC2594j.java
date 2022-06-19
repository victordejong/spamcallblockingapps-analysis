package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.dialog.j */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/j.class */
public class DialogC2594j extends Dialog {

    /* renamed from: d */
    private final Context f9033d;

    /* renamed from: e */
    private View.OnClickListener f9034e;

    public DialogC2594j(Context context, int i, View.OnClickListener onClickListener) {
        super(context, i);
        this.f9034e = onClickListener;
        this.f9033d = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.thanks_dialog);
        if (C3767h1.m24250f0(this.f9033d).booleanValue() && Build.VERSION.SDK_INT >= 17 && getWindow() != null) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        ((TextView) findViewById(R$id.tv_thanks_tip1)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_thanks_tip2)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_thanks_tip3)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_thanks_tip4)).setTypeface(C3739f1.m24359b());
        TextView textView = (TextView) findViewById(R$id.tv_thanks_number);
        TextView textView2 = (TextView) findViewById(R$id.tv_reported_counts);
        textView.setTypeface(C3739f1.m24359b());
        textView2.setTypeface(C3739f1.m24359b());
        textView.setText(C3767h1.m24272P());
        textView2.setText(C3711a1.m24531i0() + "");
        ((ImageView) findViewById(R$id.lb_thanks_close)).setOnClickListener(this.f9034e);
    }
}
