package com.allinone.callerid.customview;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3774j;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/SpeakerTiplView.class */
public class SpeakerTiplView extends LinearLayout {

    /* renamed from: d */
    private static WindowManager f8657d;

    /* renamed from: e */
    private Context f8658e;

    /* renamed from: f */
    private WindowManager.LayoutParams f8659f = new WindowManager.LayoutParams();

    public SpeakerTiplView(Context context) {
        super(context);
        this.f8658e = null;
        this.f8658e = context;
        LayoutInflater.from(context).inflate(R$layout.toast_speaker, this);
        f8657d = (WindowManager) context.getSystemService("window");
        m27362a();
    }

    /* renamed from: a */
    private void m27362a() {
        int height = f8657d.getDefaultDisplay().getHeight();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f8659f.type = 2038;
        } else {
            this.f8659f.type = 2010;
        }
        WindowManager.LayoutParams layoutParams = this.f8659f;
        layoutParams.flags = 40;
        layoutParams.gravity = 49;
        layoutParams.y = height - C3774j.m24169a(this.f8658e, 98.0f);
        WindowManager.LayoutParams layoutParams2 = this.f8659f;
        layoutParams2.width = -2;
        layoutParams2.height = -2;
        layoutParams2.format = -2;
        f8657d.addView(this, layoutParams2);
    }
}
