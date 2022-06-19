package com.applovin.impl.mediation.debugger.p045ui.p046a;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
/* renamed from: com.applovin.impl.mediation.debugger.ui.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a/d.class */
public class DialogC1146d extends Dialog {

    /* renamed from: a */
    private ViewGroup f4141a;

    /* renamed from: b */
    private AppLovinSdkUtils.Size f4142b;

    /* renamed from: c */
    private Activity f4143c;

    /* renamed from: d */
    private RelativeLayout f4144d;

    public DialogC1146d(ViewGroup viewGroup, AppLovinSdkUtils.Size size, Activity activity) {
        super(activity, 16973840);
        this.f4141a = viewGroup;
        this.f4142b = size;
        this.f4143c = activity;
        requestWindowFeature(1);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f4144d.removeView(this.f4141a);
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this.f4143c, this.f4142b.getWidth()), AppLovinSdkUtils.dpToPx(this.f4143c, this.f4142b.getHeight()));
        layoutParams.addRule(13);
        this.f4141a.setLayoutParams(layoutParams);
        int dpToPx = AppLovinSdkUtils.dpToPx(this.f4143c, 60);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dpToPx, dpToPx);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        ImageButton imageButton = new ImageButton(this.f4143c);
        imageButton.setLayoutParams(layoutParams2);
        imageButton.setImageDrawable(this.f4143c.getResources().getDrawable(C1583R.C1585drawable.applovin_ic_x_mark));
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageButton.setColorFilter(-1);
        imageButton.setBackground(null);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogC1146d.this.dismiss();
            }
        });
        RelativeLayout relativeLayout = new RelativeLayout(this.f4143c);
        this.f4144d = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f4144d.setBackgroundColor(Integer.MIN_VALUE);
        this.f4144d.addView(imageButton);
        this.f4144d.addView(this.f4141a);
        this.f4144d.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogC1146d.this.dismiss();
            }
        });
        setContentView(this.f4144d);
    }
}
