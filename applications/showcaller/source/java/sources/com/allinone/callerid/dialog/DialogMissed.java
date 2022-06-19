package com.allinone.callerid.dialog;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.p202gg.C3749a;
import com.allinone.callerid.util.p202gg.C3760d;
import com.google.android.gms.ads.nativead.NativeAdView;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/DialogMissed.class */
public class DialogMissed extends BaseThemeActivity {

    /* renamed from: u */
    private final String f8997u = "DialogMissed";

    /* renamed from: v */
    private FrameLayout f8998v;

    /* renamed from: com.allinone.callerid.dialog.DialogMissed$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/DialogMissed$a.class */
    class View$OnClickListenerC2579a implements View.OnClickListener {
        View$OnClickListenerC2579a() {
            DialogMissed.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogMissed.this.finish();
        }
    }

    /* renamed from: W */
    private void m27058W() {
        if (C3749a.m24343a().f11963b == null) {
            finish();
            return;
        }
        try {
            C3711a1.m24629I1(System.currentTimeMillis());
            NativeAdView nativeAdView = (NativeAdView) LayoutInflater.from(this).inflate(R$layout.aad_missedcall, (ViewGroup) null);
            C3760d.m24325a(C3749a.m24343a().f11963b, nativeAdView);
            this.f8998v.removeAllViews();
            this.f8998v.addView(nativeAdView);
            this.f8998v.setVisibility(0);
            C3749a.m24343a().f11963b = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.dialog_ad_missed);
            ((TextView) findViewById(R$id.tipsTitle)).setTypeface(C3739f1.m24359b());
            this.f8998v = (FrameLayout) findViewById(R$id.fl_junk_admob);
            ((ImageView) findViewById(R$id.closeIcon)).setOnClickListener(new View$OnClickListenerC2579a());
            m27058W();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m27058W();
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
