package com.adbert;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.adbert.p009a.C1398f;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1381a;
import com.adbert.p009a.p012c.EnumC1384d;
import com.adbert.p009a.p012c.EnumC1389i;
import com.adbert.p009a.p013d.C1391a;
import com.adbert.p015b.C1412a;
import com.adbert.p015b.C1426d;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertActivity.class */
public class AdbertActivity extends Activity {

    /* renamed from: f */
    public boolean f189f;

    /* renamed from: g */
    public float f190g;

    /* renamed from: h */
    public float f191h;

    /* renamed from: i */
    public Object[] f192i;

    /* renamed from: j */
    public C1377b f193j;

    /* renamed from: k */
    public C1412a f194k;

    /* renamed from: l */
    public WebView f195l;

    /* renamed from: m */
    public C1426d f196m;

    /* renamed from: c */
    public int f186c = 50;

    /* renamed from: d */
    public int f187d = -1;

    /* renamed from: e */
    public boolean f188e = false;

    /* renamed from: a */
    public boolean f184a = true;

    /* renamed from: b */
    public C1391a f185b = new C1391a() { // from class: com.adbert.AdbertActivity.1
        @Override // com.adbert.p009a.p013d.C1391a
        public void callReturnEvent() {
            if (!AdbertActivity.this.f193j.f419n) {
                AdbertActivity.this.f193j.f419n = true;
                C1398f.m37159a(AdbertActivity.this.getApplicationContext(), AdbertActivity.this.f193j, new Runnable() { // from class: com.adbert.AdbertActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdbertActivity.this.f193j.f419n = false;
                    }
                });
            }
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void closeAdView() {
            AdbertActivity.this.m37403f();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void closeVideo() {
            AdbertActivity.this.m37403f();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void closeWeb() {
            if (AdbertActivity.this.f187d == EnumC1381a.act_web.m37196a()) {
                finish();
                return;
            }
            AdbertActivity.this.f196m.removeView(AdbertActivity.this.f194k);
            AdbertActivity.this.f194k = null;
            AdbertActivity.this.m37405e();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void endingCardAction(int i) {
            AdbertActivity.this.m37418a(i);
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void finish() {
            AdbertActivity.this.finish();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void setLogo(ViewGroup viewGroup, boolean z) {
            if (!AdbertActivity.this.f193j.f431z) {
                C1402g.m37147a(AdbertActivity.this.getApplicationContext(), (int) ((AdbertActivity.this.f189f ? AdbertActivity.this.f190g : AdbertActivity.this.f191h) * 0.04d), viewGroup, z);
            }
        }
    };

    /* renamed from: a */
    private void m37419a() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        getWindow().setFormat(-2);
        if (getIntent().hasExtra("fullScreen")) {
            this.f184a = getIntent().getExtras().getBoolean("fullScreen");
        }
        this.f190g = displayMetrics.widthPixels;
        this.f191h = displayMetrics.heightPixels;
        this.f193j = (C1377b) getIntent().getSerializableExtra("videoInfo");
        this.f192i = (Object[]) getIntent().getExtras().get("datas");
        this.f188e = ((Boolean) this.f192i[1]).booleanValue();
        this.f187d = ((Integer) this.f192i[3]).intValue();
        this.f189f = C1402g.m37136b(this);
        this.f186c = C1402g.m37144a(this, this.f189f, this.f186c);
        if (this.f184a || (!this.f189f && this.f187d == EnumC1381a.act_video2.m37196a())) {
            this.f184a = true;
            getWindow().setFlags(1024, 1024);
        }
        if (getIntent().getExtras().getInt("adbertOrientation") == AdbertOrientation.NORMAL.getValue()) {
            this.f188e = !this.f189f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37418a(int i) {
        EnumC1389i b = EnumC1389i.init.m37180b(i);
        C1377b bVar = this.f193j;
        if (!bVar.f419n) {
            bVar.f419n = true;
            C1398f.m37159a(this, bVar, new Runnable() { // from class: com.adbert.AdbertActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    AdbertActivity.this.f193j.f419n = false;
                }
            });
        }
        C1398f.m37158a(this, this.f193j, b.toString());
        m37412a("click", new Bundle());
        C1409j.m37112a(this).m37107a(this.f193j, i, new C1409j.AbstractC1410a() { // from class: com.adbert.AdbertActivity.3
            @Override // com.adbert.p009a.C1409j.AbstractC1410a
            public void open(String str) {
                AdbertActivity.this.m37413a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37413a(String str) {
        m37407d();
        this.f194k = new C1412a(this, this.f193j, this.f185b).m37095a(str, true, this.f186c, new boolean[0]);
        if (this.f187d == EnumC1381a.act_web.m37196a()) {
            setContentView(this.f194k);
            return;
        }
        C1426d dVar = this.f196m;
        if (dVar == null || dVar.getVisibility() != 0) {
            this.f195l = this.f194k.getWebView();
        } else {
            this.f196m.addView(this.f194k);
        }
    }

    /* renamed from: a */
    private void m37412a(String str, Bundle bundle) {
        Intent intent = new Intent(CatWalkWebPayload.CATWALK_AD_KEY + this.f193j.f409d);
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(this);
        bundle.putString("action", str);
        intent.putExtras(bundle);
        instance.sendBroadcast(intent);
    }

    /* renamed from: b */
    private boolean m37411b() {
        boolean z = true;
        if (this.f188e != (!this.f189f)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private void m37409c() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        if (!getIntent().hasExtra("hideCI")) {
            relativeLayout.setBackgroundColor(EnumC1384d.videoBg.m37188a());
        } else {
            relativeLayout.setBackgroundColor(EnumC1384d.cpmBgLight.m37188a());
        }
        setContentView(relativeLayout);
        boolean z = getIntent().getExtras().getBoolean("top");
        int i = getIntent().getExtras().getInt("seekTo");
        this.f196m = new C1426d(this, this.f193j, this.f186c, this.f185b);
        this.f196m.m37080a(i, z, this.f184a);
        relativeLayout.addView(this.f196m);
    }

    /* renamed from: d */
    private void m37407d() {
        C1426d dVar = this.f196m;
        if (dVar != null) {
            dVar.m37074b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m37405e() {
        C1426d dVar = this.f196m;
        if (dVar != null) {
            dVar.m37071c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m37403f() {
        if (this.f187d == EnumC1381a.act_video2.m37196a()) {
            Bundle bundle = new Bundle();
            bundle.putInt("type", this.f187d);
            bundle.putInt("seekTo", this.f196m.getSeekTo());
            bundle.putBoolean("returned", this.f193j.f419n);
            m37412a(MraidParser.MRAID_COMMAND_CLOSE, bundle);
        }
        finish();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 4) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (this.f187d == EnumC1381a.act_web.m37196a()) {
            WebView webView = this.f195l;
            if (webView == null || !webView.canGoBack()) {
                m37403f();
                return false;
            }
            this.f195l.goBack();
            return false;
        }
        C1412a aVar = this.f194k;
        if (aVar == null || aVar.getVisibility() != 0) {
            m37403f();
            return false;
        }
        C1426d dVar = this.f196m;
        if (dVar != null) {
            dVar.removeView(this.f194k);
        }
        this.f194k = null;
        m37405e();
        return false;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            if (!this.f188e) {
                m37403f();
            } else {
                finish();
            }
            this.f188e = true;
            this.f189f = false;
            return;
        }
        if (this.f188e) {
            m37403f();
        } else {
            finish();
        }
        this.f188e = false;
        this.f189f = true;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        m37419a();
        if (!m37411b()) {
            m37412a("next", new Bundle());
        } else if (this.f187d == EnumC1381a.act_web.m37196a()) {
            m37413a(getIntent().getExtras().getString("url"));
        } else if (this.f187d == EnumC1381a.act_video2.m37196a()) {
            m37409c();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C1426d dVar = this.f196m;
        if (dVar != null) {
            dVar.m37069d();
        }
        WebView webView = this.f195l;
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        m37407d();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        m37405e();
    }
}
