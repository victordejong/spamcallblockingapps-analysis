package com.callerid.block.p037e;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.util.C1210r0;
/* renamed from: com.callerid.block.e.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/e/b.class */
public class DialogC0951b extends Dialog {

    /* renamed from: b */
    private View.OnClickListener f4310b;

    /* renamed from: c */
    private Typeface f4311c = C1210r0.m9624b();

    public DialogC0951b(Context context, int i, View.OnClickListener onClickListener) {
        super(context, i);
        this.f4310b = onClickListener;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.dialog_oumeng_xieyi);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_click);
        ((TextView) findViewById(R$id.tv_oumeng_title)).setTypeface(this.f4311c);
        ((TextView) findViewById(R$id.tv_oumeng_content)).setTypeface(this.f4311c);
        ((TextView) findViewById(R$id.tv_click)).setTypeface(this.f4311c);
        frameLayout.setOnClickListener(this.f4310b);
    }
}
