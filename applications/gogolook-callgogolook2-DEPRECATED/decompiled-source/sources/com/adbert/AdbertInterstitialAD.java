package com.adbert;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.p010a.C1361b;
import com.adbert.p009a.p010a.C1367d;
import com.adbert.p009a.p010a.C1369e;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1382b;
import com.adbert.p009a.p012c.EnumC1383c;
import com.adbert.p009a.p012c.EnumC1387g;
import com.adbert.p009a.p014e.C1394a;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertInterstitialAD.class */
public class AdbertInterstitialAD {

    /* renamed from: e */
    public InterstitialAd f205e;

    /* renamed from: f */
    public Context f206f;

    /* renamed from: j */
    public AdbertListener f210j;

    /* renamed from: k */
    public float f211k;

    /* renamed from: l */
    public boolean f212l;

    /* renamed from: g */
    public String f207g = "";

    /* renamed from: h */
    public String f208h = "";

    /* renamed from: i */
    public String f209i = "";

    /* renamed from: m */
    public String f213m = "";

    /* renamed from: n */
    public boolean f214n = false;

    /* renamed from: o */
    public boolean f215o = false;

    /* renamed from: p */
    public String f216p = "";

    /* renamed from: q */
    public boolean f217q = false;

    /* renamed from: a */
    public boolean f201a = false;

    /* renamed from: b */
    public boolean f202b = false;

    /* renamed from: c */
    public boolean f203c = false;

    /* renamed from: d */
    public BroadcastReceiver f204d = new BroadcastReceiver() { // from class: com.adbert.AdbertInterstitialAD.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("action");
            if (stringExtra != null && AdbertInterstitialAD.this.f210j != null && stringExtra.equals(MraidParser.MRAID_COMMAND_CLOSE)) {
                AdbertInterstitialAD.this.f210j.onAdClosed();
                LocalBroadcastManager.getInstance(context).unregisterReceiver(AdbertInterstitialAD.this.f204d);
            }
        }
    };

    /* renamed from: r */
    public String f218r = "";

    public AdbertInterstitialAD(Context context) {
        C1402g.m37125f(EnumC1383c.Version.toString());
        this.f206f = context;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.f211k = displayMetrics.widthPixels;
        } catch (Exception e) {
            C1402g.m37141a(e);
            try {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                Point point = new Point();
                if (Build.VERSION.SDK_INT >= 13) {
                    defaultDisplay.getSize(point);
                }
                this.f211k = point.x;
            } catch (Exception e2) {
                C1402g.m37141a(e2);
            }
        }
        this.f212l = C1402g.m37136b(context);
        C1402g.m37148a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m37398a() {
        C1369e eVar = new C1369e(this.f206f);
        return eVar.m37235a(this.f207g, this.f208h, this.f209i, EnumC1383c.INSERT_AD.toString(), this.f212l, this.f216p) + (eVar.m37243a() + (this.f217q ? "&testMode=1" : ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37397a(int i, String str) {
        if (C1402g.m37151a() && (i != 200 || str.isEmpty())) {
            m37390b();
        } else if (i != 200) {
            m37393a(EnumC1387g.ERROR_SERVICE.m37184a());
        } else if (str.isEmpty()) {
            m37393a(EnumC1387g.ERROR_JSON_EMPTY_INTERS.m37184a());
        } else {
            m37385c(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37393a(String str) {
        C1402g.m37126e(str);
        this.f210j.onFailedReceive(str);
    }

    /* renamed from: a */
    private void m37392a(boolean z, String str, final String str2) {
        if (z) {
            C1361b.AbstractC1363a aVar = new C1361b.AbstractC1363a() { // from class: com.adbert.AdbertInterstitialAD.5
                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                public void onConnectionFail(C1367d dVar) {
                    AdbertInterstitialAD.this.m37393a(EnumC1387g.ERROR_DOWNLOAD_FILE.m37184a());
                }

                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                public void onConnectionSuccess(C1367d dVar) {
                    AdbertInterstitialAD.this.setReady();
                }
            };
            C1361b a = C1361b.m37272a();
            a.m37271a(this.f206f).m37262a(aVar).m37265a(0).m37255b(str, C1402g.m37135b(this.f206f, str));
            return;
        }
        C1361b.AbstractC1363a aVar2 = new C1361b.AbstractC1363a() { // from class: com.adbert.AdbertInterstitialAD.6

            /* renamed from: a */
            public int f226a = 0;

            /* renamed from: b */
            public int f227b = 0;

            /* renamed from: a */
            private void m37382a() {
                if (this.f226a != 2) {
                    return;
                }
                if (this.f227b == 2) {
                    AdbertInterstitialAD.this.setReady();
                } else {
                    AdbertInterstitialAD.this.m37393a(EnumC1387g.ERROR_DOWNLOAD_FILE.m37184a());
                }
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionFail(C1367d dVar) {
                this.f226a++;
                m37382a();
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionSuccess(C1367d dVar) {
                if (!AdbertInterstitialAD.this.f203c) {
                    try {
                        if (dVar.m37266a() == 1) {
                            if (C1402g.m37142a(dVar.m37249e(), str2, dVar.m37248f(), C1402g.m37135b(AdbertInterstitialAD.this.f206f, dVar.m37248f()))) {
                                this.f227b++;
                            }
                            dVar.m37247g();
                        } else {
                            this.f227b++;
                        }
                        this.f226a++;
                        m37382a();
                    } catch (Exception e) {
                        C1402g.m37141a(e);
                    }
                }
            }
        };
        C1361b a2 = C1361b.m37272a();
        a2.m37271a(this.f206f).m37262a(aVar2).m37265a(0).m37255b(str, C1402g.m37135b(this.f206f, str));
        a2.m37271a(this.f206f).m37262a(aVar2).m37265a(1).m37252c(str2);
    }

    /* renamed from: a */
    private boolean m37391a(String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i] == null || strArr[i].isEmpty() || strArr[i].endsWith("/")) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private void m37390b() {
        this.f205e = new InterstitialAd(this.f206f);
        this.f205e.setAdUnitId(EnumC1383c.intersID.m37192a());
        this.f205e.loadAd(new AdRequest.Builder().build());
        this.f205e.setAdListener(new AdListener() { // from class: com.adbert.AdbertInterstitialAD.3
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                if (AdbertInterstitialAD.this.f210j != null) {
                    AdbertInterstitialAD.this.f210j.onAdClosed();
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                AdbertInterstitialAD.this.m37393a(EnumC1387g.ERROR_JSON_EMPTY_INTERS.m37184a());
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                AdbertInterstitialAD.this.setReady();
            }
        });
    }

    /* renamed from: b */
    private void m37387b(String str) {
        C1402g.m37125f(str);
        this.f210j.onReceive(str);
    }

    /* renamed from: c */
    private void m37385c(String str) {
        this.f213m = str;
        try {
            C1377b a = new C1394a(this.f206f).m37168a(str, this.f212l);
            this.f218r = a.f409d;
            if (a.f406a == EnumC1382b.cpm_web) {
                setReady();
            } else if (a.f406a == EnumC1382b.cpm_banner) {
                String str2 = a.f413h;
                if (!m37391a(str2)) {
                    m37393a(EnumC1387g.ERROR_RESOURCE_FORMAT.m37184a());
                } else if (C1402g.m37140a(str2)) {
                    setReady();
                } else {
                    m37383d(a.f413h);
                }
            } else if (a.f406a == EnumC1382b.cpm_video) {
                if (C1402g.m37137b()) {
                    m37393a(EnumC1387g.VIDEO_NOT_SUPPORT.m37184a());
                } else if (m37391a(a.f411f, a.f412g)) {
                    m37392a(a.f399A, a.f411f, a.f412g);
                } else {
                    m37393a(EnumC1387g.ERROR_RESOURCE_FORMAT.m37184a());
                }
            }
        } catch (Exception e) {
            C1402g.m37141a(e);
            m37393a(EnumC1387g.ERROR_JSON_PARSE.m37184a() + e.getMessage());
        }
    }

    /* renamed from: d */
    private void m37383d(final String str) {
        C1361b.m37272a().m37271a(this.f206f).m37262a(new C1361b.AbstractC1363a() { // from class: com.adbert.AdbertInterstitialAD.4
            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionFail(C1367d dVar) {
                AdbertInterstitialAD.this.m37393a(EnumC1387g.ERROR_BITMAP_NULL.m37184a());
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionSuccess(C1367d dVar) {
                AdbertInterstitialAD adbertInterstitialAD = AdbertInterstitialAD.this;
                if (!adbertInterstitialAD.f203c) {
                    try {
                        if (C1402g.m37142a(dVar.m37249e(), str, dVar.m37248f(), C1402g.m37135b(adbertInterstitialAD.f206f, dVar.m37248f()))) {
                            AdbertInterstitialAD.this.setReady();
                        } else {
                            AdbertInterstitialAD.this.m37393a(EnumC1387g.ERROR_BITMAP_NULL.m37184a());
                        }
                        dVar.m37247g();
                    } catch (Exception e) {
                        C1402g.m37141a(e);
                        AdbertInterstitialAD.this.m37393a(EnumC1387g.ERROR_BITMAP_NULL.m37184a());
                    }
                }
            }
        }).m37252c(str);
    }

    public void destroy() {
        this.f203c = true;
        LocalBroadcastManager.getInstance(this.f206f).unregisterReceiver(this.f204d);
    }

    public String getVersion() {
        return "3.2.1n";
    }

    public void hideCI() {
        this.f201a = true;
    }

    public void loadAd() {
        if (!C1402g.m37132c(this.f206f)) {
            m37393a(EnumC1387g.ERROR_CONNECTION.m37184a());
        } else if (this.f207g.isEmpty() || this.f208h.isEmpty()) {
            m37393a(EnumC1387g.ERROR_ID_NULL.m37184a());
        } else {
            C1402g.m37125f(EnumC1387g.START.m37184a());
            C1402g.m37146a(this.f206f, new C1402g.AbstractC1405a() { // from class: com.adbert.AdbertInterstitialAD.2
                @Override // com.adbert.p009a.C1402g.AbstractC1405a
                public void onResult(String str) {
                    AdbertInterstitialAD.this.f209i = str;
                    C1361b.m37272a().m37269a(AdbertInterstitialAD.this.f206f, EnumC1383c.ADURL.m37191a(AdbertInterstitialAD.this.f209i), AdbertInterstitialAD.this.m37398a(), new C1361b.AbstractC1365c() { // from class: com.adbert.AdbertInterstitialAD.2.1
                        @Override // com.adbert.p009a.p010a.C1361b.AbstractC1365c
                        public void onEnd(int i, String str2) {
                            AdbertInterstitialAD.this.m37397a(i, str2);
                        }
                    });
                }
            });
        }
    }

    public void setAPPID(String str, String str2) {
        this.f207g = str.trim();
        this.f208h = str2.trim();
    }

    public void setListener(AdbertListener adbertListener) {
        this.f210j = adbertListener;
    }

    public void setMediationAPPID(String str) {
        this.f202b = true;
        if (str.contains("|")) {
            this.f207g = str.substring(0, str.indexOf("|"));
            this.f208h = str.substring(str.indexOf("|") + 1);
        }
    }

    public void setPageInfo(String str) {
        this.f216p = str;
    }

    public void setReady() {
        this.f214n = true;
        m37387b(EnumC1387g.READY.m37184a());
    }

    public void setTestMode() {
        this.f217q = true;
    }

    public void show() {
        if (!this.f214n) {
            m37393a(EnumC1387g.NOT_READY.m37184a());
        } else if (!this.f203c) {
            InterstitialAd interstitialAd = this.f205e;
            if (interstitialAd == null) {
                Intent intent = new Intent(this.f206f.getApplicationContext(), AdbertInterstitialActivity.class);
                Bundle bundle = new Bundle();
                bundle.putString("jsonStr", this.f213m);
                bundle.putBoolean("hideCI", this.f201a);
                intent.putExtras(bundle);
                LocalBroadcastManager instance = LocalBroadcastManager.getInstance(this.f206f);
                BroadcastReceiver broadcastReceiver = this.f204d;
                instance.registerReceiver(broadcastReceiver, new IntentFilter(CatWalkWebPayload.CATWALK_AD_KEY + this.f218r));
                try {
                    intent.setFlags(268435456);
                    this.f206f.startActivity(intent);
                } catch (Exception e) {
                    C1402g.m37141a(e);
                }
            } else if (interstitialAd.isLoaded()) {
                this.f205e.show();
            }
        }
    }
}
