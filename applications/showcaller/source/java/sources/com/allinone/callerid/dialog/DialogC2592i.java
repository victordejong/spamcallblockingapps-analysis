package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.io.File;
/* renamed from: com.allinone.callerid.dialog.i */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/i.class */
public class DialogC2592i extends Dialog {

    /* renamed from: d */
    private View.OnClickListener f9027d;

    /* renamed from: e */
    private Context f9028e;

    /* renamed from: f */
    private String f9029f;

    /* renamed from: g */
    private String f9030g;

    /* renamed from: h */
    private LinearLayout f9031h;

    /* renamed from: com.allinone.callerid.dialog.i$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/i$a.class */
    class RunnableC2593a implements Runnable {
        RunnableC2593a() {
            DialogC2592i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DialogC2592i.this.f9031h != null) {
                DialogC2592i.this.f9031h.setDrawingCacheEnabled(true);
                DialogC2592i.this.f9031h.buildDrawingCache();
                Bitmap drawingCache = DialogC2592i.this.f9031h.getDrawingCache();
                if (drawingCache == null) {
                    if (!C3718c0.f11914a) {
                        return;
                    }
                    C3718c0.m24436a("shareimage", "bitmap==null");
                    return;
                }
                File externalFilesDir = DialogC2592i.this.f9028e.getExternalFilesDir("");
                C3767h1.m24297A0(drawingCache, externalFilesDir + "/", "share.png");
            }
        }
    }

    public DialogC2592i(Context context, int i, View.OnClickListener onClickListener, String str, String str2) {
        super(context, i);
        this.f9027d = onClickListener;
        this.f9028e = context;
        this.f9029f = str;
        this.f9030g = str2;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24281I0(this.f9028e, EZCallApplication.m26146c().f9914h);
        setContentView(R$layout.dialog_share_number);
        if (C3767h1.m24250f0(this.f9028e).booleanValue() && Build.VERSION.SDK_INT >= 17 && getWindow() != null) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        ((ImageView) findViewById(R$id.iv_close)).setOnClickListener(this.f9027d);
        ((FrameLayout) findViewById(R$id.fl_enable)).setOnClickListener(this.f9027d);
        this.f9031h = (LinearLayout) findViewById(R$id.ll_share_image);
        TextView textView = (TextView) findViewById(R$id.tv_spam_nubmer_name);
        TextView textView2 = (TextView) findViewById(R$id.tv_spam_nubmer_number);
        TextView textView3 = (TextView) findViewById(R$id.tv_spam_nubmer_name1);
        TextView textView4 = (TextView) findViewById(R$id.tv_spam_nubmer_number1);
        TextView textView5 = (TextView) findViewById(R$id.tv_spam_number_tip);
        ((TextView) findViewById(R$id.tv_enable)).setTypeface(C3739f1.m24359b());
        textView.setTypeface(C3739f1.m24359b());
        textView2.setTypeface(C3739f1.m24359b());
        textView3.setTypeface(C3739f1.m24359b());
        textView4.setTypeface(C3739f1.m24359b());
        textView5.setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_number_share1)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_number_share2)).setTypeface(C3739f1.m24359b());
        String str = this.f9029f;
        if (str != null && !"".equals(str)) {
            textView.setText(this.f9029f);
            textView.setVisibility(0);
            textView3.setText(this.f9029f);
            textView3.setVisibility(0);
        }
        String str2 = this.f9030g;
        if (str2 != null && !"".equals(str2)) {
            textView2.setText(this.f9030g);
            textView4.setText(this.f9030g);
            textView5.setText(this.f9030g + " " + this.f9028e.getResources().getString(R$string.blocked_to_list));
        }
        new Handler().postDelayed(new RunnableC2593a(), 800L);
    }
}
