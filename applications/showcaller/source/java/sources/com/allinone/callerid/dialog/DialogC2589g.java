package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.dialog.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/g.class */
public class DialogC2589g extends Dialog implements View.OnClickListener {

    /* renamed from: d */
    private Context f9013d;

    /* renamed from: com.allinone.callerid.dialog.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/g$a.class */
    public class RunnableC2590a implements Runnable {
        RunnableC2590a() {
            DialogC2589g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(DialogC2589g.this.f9013d, OverlayGuideActivity.class);
            intent.addFlags(268435456);
            DialogC2589g.this.f9013d.startActivity(intent);
        }
    }

    public DialogC2589g(Context context, int i) {
        super(context, i);
        this.f9013d = context;
    }

    /* renamed from: b */
    private void m27055b() {
        try {
            new Handler().postDelayed(new RunnableC2590a(), 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.flayout_cancel /* 2131296816 */:
                dismiss();
                return;
            case R$id.flayout_enable /* 2131296817 */:
                try {
                    m27055b();
                    Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.f9013d.getApplicationContext().getPackageName()));
                    intent.setFlags(268435456);
                    this.f9013d.startActivity(intent);
                    C3810q.m24071b().m24070c("over_per_first_show_click");
                    dismiss();
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.lib_close /* 2131297134 */:
                dismiss();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.dialog_over_per_guide);
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) findViewById(R$id.tv_title)).setTypeface(m24359b, 1);
        ((TextView) findViewById(R$id.tv_content)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_enable)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_cancel)).setTypeface(m24359b);
        ImageView imageView = (ImageView) findViewById(R$id.lib_close);
        ((FrameLayout) findViewById(R$id.flayout_enable)).setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.flayout_cancel)).setOnClickListener(this);
        imageView.setOnClickListener(this);
    }
}
