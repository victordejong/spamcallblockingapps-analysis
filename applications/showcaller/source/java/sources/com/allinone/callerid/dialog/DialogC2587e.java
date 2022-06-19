package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3784b;
/* renamed from: com.allinone.callerid.dialog.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/e.class */
public class DialogC2587e extends Dialog implements View.OnClickListener {

    /* renamed from: d */
    private Context f9011d;

    public DialogC2587e(Context context, int i) {
        super(context, i);
        this.f9011d = context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131296817) {
            if (id != 2131297134) {
                return;
            }
            dismiss();
            return;
        }
        C3784b.f12036a = true;
        C3810q.m24071b().m24070c("dialog_notifi_per_quest_click");
        C3784b.m24143c(this.f9011d);
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.dialog_notifi_per_request);
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) findViewById(R$id.tv_title)).setTypeface(m24359b, 1);
        ((TextView) findViewById(R$id.tv_content)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_enable)).setTypeface(m24359b);
        ImageView imageView = (ImageView) findViewById(R$id.lib_close);
        ((FrameLayout) findViewById(R$id.flayout_enable)).setOnClickListener(this);
        imageView.setOnClickListener(this);
        C3810q.m24071b().m24070c("dialog_notifi_per_quest_show");
    }
}
