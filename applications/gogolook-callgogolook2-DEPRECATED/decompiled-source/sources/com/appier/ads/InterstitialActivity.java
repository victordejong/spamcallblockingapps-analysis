package com.appier.ads;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import p081h.p115c.p116a.C5737g;
import p081h.p115c.p116a.p117i.BinderC5756g;
/* loaded from: classes-dex2jar.jar:com/appier/ads/InterstitialActivity.class */
public class InterstitialActivity extends Activity {

    /* renamed from: a */
    public C5737g.AbstractC5739b f1600a;

    /* renamed from: b */
    public C5737g f1601b;

    /* renamed from: com.appier.ads.InterstitialActivity$a */
    /* loaded from: classes-dex2jar.jar:com/appier/ads/InterstitialActivity$a.class */
    public class View$OnClickListenerC1780a implements View.OnClickListener {
        public View$OnClickListenerC1780a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InterstitialActivity.this.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R$layout.activity_interstitial);
        this.f1601b = (C5737g) ((BinderC5756g) getIntent().getBundleExtra("INTERSTITIAL_INTENT_EXTRA_BUNDLE").getBinder("INTERSTITIAL_BUNDLE_BINDER")).m24553a();
        this.f1600a = this.f1601b.m24619d();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.interstitial_container);
        this.f1601b.m24569c();
        relativeLayout.addView(this.f1601b);
        ImageButton imageButton = (ImageButton) findViewById(R$id.imgBtnDismiss);
        imageButton.bringToFront();
        imageButton.setOnClickListener(new View$OnClickListenerC1780a());
        C5737g.AbstractC5739b bVar = this.f1600a;
        if (bVar != null) {
            bVar.mo24618a();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        C5737g.AbstractC5739b bVar = this.f1600a;
        if (bVar != null) {
            bVar.onDismiss();
        }
        C5737g gVar = this.f1601b;
        if (gVar != null) {
            gVar.destroy();
        }
        super.onDestroy();
    }
}
