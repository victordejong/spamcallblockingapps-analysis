package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.dialog.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/b.class */
public class DialogC2581b extends Dialog {

    /* renamed from: d */
    private View.OnClickListener f9002d;

    /* renamed from: e */
    private Context f9003e;

    public DialogC2581b(Context context, int i, View.OnClickListener onClickListener) {
        super(context, i);
        this.f9003e = context;
        this.f9002d = onClickListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24281I0(this.f9003e, EZCallApplication.m26146c().f9914h);
        setContentView(R$layout.dialog_comment_noselect);
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) findViewById(2131297760)).setTypeface(m24359b);
        ((TextView) findViewById(2131296497)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_cancel)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_ok)).setTypeface(m24359b);
        ((FrameLayout) findViewById(R$id.fl_cancel)).setOnClickListener(this.f9002d);
        ((FrameLayout) findViewById(R$id.fl_ok)).setOnClickListener(this.f9002d);
    }
}
