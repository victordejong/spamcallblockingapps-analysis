package com.adbert;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.adbert.p009a.C1359a;
import com.adbert.p009a.C1373b;
import com.adbert.p009a.C1398f;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.C1411k;
import com.adbert.p009a.p010a.C1361b;
import com.adbert.p009a.p010a.C1367d;
import com.adbert.p009a.p010a.C1369e;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1381a;
import com.adbert.p009a.p012c.EnumC1382b;
import com.adbert.p009a.p012c.EnumC1383c;
import com.adbert.p009a.p012c.EnumC1387g;
import com.adbert.p009a.p012c.EnumC1389i;
import com.adbert.p009a.p013d.C1391a;
import com.adbert.p009a.p013d.C1392b;
import com.adbert.p009a.p014e.C1394a;
import com.adbert.p015b.C1412a;
import com.adbert.p015b.C1439e;
import com.adbert.p015b.C1447g;
import com.adbert.p015b.C1448h;
import com.adbert.p015b.C1457j;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.File;
import java.io.Serializable;
import java.net.CookieHandler;
import java.net.CookiePolicy;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertADView.class */
public class AdbertADView extends RelativeLayout {

    /* renamed from: C */
    public C1359a f136C;

    /* renamed from: F */
    public C1373b f139F;

    /* renamed from: G */
    public C1457j f140G;

    /* renamed from: c */
    public AdView f143c;

    /* renamed from: d */
    public C1412a f144d;

    /* renamed from: e */
    public FrameLayout f145e;

    /* renamed from: h */
    public Context f148h;

    /* renamed from: l */
    public boolean f152l;

    /* renamed from: m */
    public boolean f153m;

    /* renamed from: q */
    public boolean f157q;

    /* renamed from: r */
    public boolean f158r;

    /* renamed from: u */
    public C1448h f161u;

    /* renamed from: v */
    public Bitmap f162v;

    /* renamed from: w */
    public FrameLayout f163w;

    /* renamed from: y */
    public AdbertListener f165y;

    /* renamed from: z */
    public boolean f166z;

    /* renamed from: i */
    public String f149i = "";

    /* renamed from: j */
    public String f150j = "";

    /* renamed from: k */
    public String f151k = "";

    /* renamed from: n */
    public boolean f154n = true;

    /* renamed from: o */
    public boolean f155o = true;

    /* renamed from: p */
    public boolean f156p = true;

    /* renamed from: s */
    public int f159s = 0;

    /* renamed from: t */
    public C1377b f160t = new C1377b();

    /* renamed from: x */
    public boolean f164x = false;

    /* renamed from: A */
    public boolean f134A = false;

    /* renamed from: B */
    public boolean f135B = true;

    /* renamed from: D */
    public String f137D = "";

    /* renamed from: E */
    public boolean f138E = false;

    /* renamed from: a */
    public AdSize f141a = AdSize.BANNER;

    /* renamed from: b */
    public AdbertOrientation f142b = AdbertOrientation.NORMAL;

    /* renamed from: f */
    public BroadcastReceiver f146f = new BroadcastReceiver() { // from class: com.adbert.AdbertADView.12
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("action");
            if (stringExtra == null) {
                return;
            }
            if (stringExtra.equals(MraidParser.MRAID_COMMAND_CLOSE)) {
                int intExtra = intent.getIntExtra("type", 0);
                int intExtra2 = intent.getIntExtra("seekTo", 0);
                AdbertADView.this.f160t.f419n = intent.getBooleanExtra("returned", false);
                AdbertADView.this.f153m = false;
                if (intExtra == EnumC1381a.act_video2.m37196a()) {
                    AdbertADView.this.f159s = intExtra2;
                    AdbertADView.this.f160t.f403E = 1;
                    AdbertADView.this.m37430i();
                }
            } else if (stringExtra.equals("next")) {
                AdbertADView.this.f153m = false;
                if (AdbertADView.this.f165y instanceof C1392b) {
                    ((C1392b) AdbertADView.this.f165y).mo37176a();
                }
            } else if (stringExtra.equals("updateSeekTo")) {
                AdbertADView.this.f159s = intent.getIntExtra("seekTo", 0);
            }
        }
    };

    /* renamed from: g */
    public C1391a f147g = new C1391a() { // from class: com.adbert.AdbertADView.14
        @Override // com.adbert.p009a.p013d.C1391a
        public void endingCardAction(int i) {
            AdbertADView.this.m37454b(i);
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void onPageFinished() {
        }
    };

    public AdbertADView(Context context) {
        super(context);
        this.f148h = context;
        if (!isInEditMode()) {
            m37467a();
        }
    }

    public AdbertADView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f148h = context;
        if (!isInEditMode()) {
            m37467a();
        }
    }

    public AdbertADView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f148h = context;
        if (!isInEditMode()) {
            m37467a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object[], java.io.Serializable] */
    /* renamed from: a */
    private Intent m37464a(int i, Object... objArr) {
        Intent intent = new Intent(this.f148h.getApplicationContext(), AdbertActivity.class);
        Bundle bundle = new Bundle();
        intent.putExtra("datas", (Serializable) new Object[]{this.f149i, Boolean.valueOf(this.f136C.m37281h()), this.f148h.getPackageName(), Integer.valueOf(i)});
        if (i == EnumC1381a.act_web.m37196a()) {
            intent.putExtra("url", (String) objArr[0]);
        } else if (i == EnumC1381a.act_video2.m37196a()) {
            intent.putExtra("top", (Boolean) objArr[0]);
            intent.putExtra("seekTo", (Integer) objArr[1]);
            intent.putExtra("fullScreen", (Boolean) objArr[2]);
            if (objArr.length > 3) {
                ((Integer) objArr[3]).intValue();
            }
            intent.putExtra("adbertOrientation", (Integer) objArr[3]);
            boolean z = this.f158r;
            if (z) {
                intent.putExtra("hideCI", z);
            }
        }
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(this.f148h);
        BroadcastReceiver broadcastReceiver = this.f146f;
        instance.registerReceiver(broadcastReceiver, new IntentFilter(CatWalkWebPayload.CATWALK_AD_KEY + this.f160t.f409d));
        bundle.putSerializable("videoInfo", this.f160t);
        intent.putExtras(bundle);
        return intent;
    }

    /* renamed from: a */
    private String m37458a(C1369e eVar) {
        if (!this.f135B && !C1402g.f653a) {
            this.f156p = false;
        }
        return eVar.m37234a(this.f150j, this.f151k, this.f149i, EnumC1383c.COMMON_AD.toString(), this.f136C.m37282g(), this.f156p, this.f137D) + eVar.m37243a();
    }

    /* renamed from: a */
    private void m37467a() {
        C1402g.m37127d(EnumC1383c.Version.toString());
        m37422o();
        this.f136C = new C1359a(this.f148h);
        C1359a aVar = this.f136C;
        aVar.m37289a(!aVar.m37282g());
        m37455b();
    }

    /* renamed from: a */
    private void m37466a(int i) {
        FrameLayout frameLayout;
        if ((i == 1 || (i == 2 && this.f160t.f406a == EnumC1382b.video)) && (frameLayout = this.f163w) != null) {
            frameLayout.setVisibility(0);
            m37443d();
        }
        if (i == 1) {
            if (this.f161u == null) {
                this.f161u = new C1448h(this.f148h, this.f136C.m37284e(), this.f136C.m37283f());
                this.f161u.setTag("adbert_video");
                this.f161u.setListener(new C1448h.AbstractC1453a() { // from class: com.adbert.AdbertADView.9
                    @Override // com.adbert.p015b.C1448h.AbstractC1453a
                    public void OnCompletion() {
                        if (AdbertADView.this.f165y instanceof C1392b) {
                            ((C1392b) AdbertADView.this.f165y).mo37176a();
                        }
                    }

                    @Override // com.adbert.p015b.C1448h.AbstractC1453a
                    public void OnError() {
                        AdbertADView.this.m37449b(EnumC1387g.ERROR_DOWNLOAD_FILE.m37184a());
                        File file = new File(C1402g.m37135b(AdbertADView.this.f148h, AdbertADView.this.f160t.f412g));
                        if (file.exists()) {
                            file.delete();
                        }
                    }

                    @Override // com.adbert.p015b.C1448h.AbstractC1453a
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        AdbertADView.this.f161u.m37046c();
                        if (AdbertADView.this.f159s > 0) {
                            AdbertADView.this.f161u.pause();
                            AdbertADView.this.f161u.seekTo(AdbertADView.this.f159s);
                            mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.adbert.AdbertADView.9.1
                                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                                public void onSeekComplete(MediaPlayer mediaPlayer2) {
                                    AdbertADView.this.f161u.start();
                                }
                            });
                            return;
                        }
                        AdbertADView.this.f161u.start();
                    }

                    @Override // com.adbert.p015b.C1448h.AbstractC1453a
                    public void onSeekChange() {
                        FrameLayout frameLayout2;
                        if (AdbertADView.this.f161u.isPlaying()) {
                            if (AdbertADView.this.f161u.getVisibility() != 0) {
                                AdbertADView.this.f161u.setVisibility(0);
                            }
                            if (AdbertADView.this.f161u.getCurrentPosition() > 0 && (frameLayout2 = AdbertADView.this.f145e) != null && frameLayout2.getVisibility() == 0) {
                                AdbertADView.this.f145e.setVisibility(8);
                            }
                        }
                    }
                });
            }
            C1448h hVar = this.f161u;
            if (!(hVar == null || hVar.getParent() == null)) {
                m37424m();
            }
            String str = this.f160t.f412g;
            String str2 = str;
            if (str.contains("http")) {
                str2 = str;
                if (new File(C1402g.m37135b(this.f148h, str)).exists()) {
                    str2 = C1402g.m37135b(this.f148h, str);
                }
            }
            this.f161u.setUrl(str2);
            this.f163w.addView(this.f161u);
            this.f161u.setVisibility(0);
            this.f145e = new FrameLayout(this.f148h);
            this.f163w.addView(this.f145e, new FrameLayout.LayoutParams(-1, -1));
            this.f145e.setBackgroundColor(-16777216);
            if (this.f158r) {
                this.f161u.setZOrderOnTop(true);
            }
        } else if (i == 2) {
            m37423n();
        }
    }

    /* renamed from: a */
    private void m37465a(int i, SharedPreferences sharedPreferences, String str) {
        if (new File(str).exists()) {
            String[] list = new File(str).list();
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.length; i2++) {
                String string = sharedPreferences.getString(str + list[i2] + "_useTime", "");
                if (!string.isEmpty()) {
                    if (m37440d(string)) {
                        new File(str + list[i2]).delete();
                    } else {
                        hashMap.put(string, str + list[i2]);
                        arrayList.add(string);
                    }
                }
            }
            if (arrayList.size() > 0 && arrayList.size() > i) {
                Collections.sort(arrayList, new Comparator<String>() { // from class: com.adbert.AdbertADView.13
                    public int compare(String str2, String str3) {
                        Date h = C1402g.m37123h(str2);
                        Date h2 = C1402g.m37123h(str3);
                        if (h.getTime() < h2.getTime()) {
                            return -1;
                        }
                        return h.getTime() == h2.getTime() ? 0 : 1;
                    }
                });
                for (int i3 = 0; i3 < arrayList.size() - i; i3++) {
                    new File((String) hashMap.get(arrayList.get(i3))).delete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37457a(String str) {
        AdbertListener adbertListener;
        if (!this.f164x && (adbertListener = this.f165y) != null) {
            adbertListener.onReceive(str);
            this.f164x = true;
            C1402g.m37127d(str);
        }
    }

    /* renamed from: a */
    private void m37456a(String str, String str2) {
        C1361b.AbstractC1363a aVar = new C1361b.AbstractC1363a() { // from class: com.adbert.AdbertADView.6

            /* renamed from: a */
            public int f177a = 0;

            /* renamed from: b */
            public int f178b = 0;

            /* renamed from: a */
            private void m37420a() {
                if (this.f177a != 2) {
                    return;
                }
                if (this.f178b == 2) {
                    AdbertADView.this.m37457a(EnumC1387g.OK_DOWNLOAD.m37184a());
                    AdbertADView.this.m37430i();
                    return;
                }
                AdbertADView.this.m37449b(EnumC1387g.ERROR_DOWNLOAD_FILE.m37184a());
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionFail(C1367d dVar) {
                if (!AdbertADView.this.f166z) {
                    this.f177a++;
                    m37420a();
                }
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionSuccess(C1367d dVar) {
                if (!AdbertADView.this.f166z) {
                    this.f177a++;
                    this.f178b++;
                    m37420a();
                }
            }
        };
        C1361b a = C1361b.m37272a();
        String b = C1402g.m37135b(this.f148h, str);
        String b2 = C1402g.m37135b(this.f148h, str2);
        a.m37271a(this.f148h).m37262a(aVar).m37255b(str, b);
        a.m37271a(this.f148h).m37262a(aVar).m37255b(str2, b2);
    }

    /* renamed from: b */
    private void m37455b() {
        CookieSyncManager.createInstance(this.f148h);
        CookieManager.getInstance().setAcceptCookie(true);
        CookieHandler.setDefault(new C1411k(null, CookiePolicy.ACCEPT_ALL));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37454b(int i) {
        EnumC1389i b = EnumC1389i.init.m37180b(i);
        C1377b bVar = this.f160t;
        if (!bVar.f419n) {
            bVar.f419n = true;
            C1398f.m37159a(this.f148h, bVar, new Runnable() { // from class: com.adbert.AdbertADView.10
                @Override // java.lang.Runnable
                public void run() {
                    AdbertADView.this.f160t.f419n = false;
                }
            });
        }
        C1398f.m37158a(this.f148h, this.f160t, b.toString());
        C1409j.m37112a(this.f148h).m37107a(this.f160t, i, new C1409j.AbstractC1410a() { // from class: com.adbert.AdbertADView.11
            @Override // com.adbert.p009a.C1409j.AbstractC1410a
            public void open(String str) {
                AdbertADView.this.m37444c(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m37449b(String str) {
        AdbertListener adbertListener;
        if (C1402g.m37151a()) {
            try {
                m37448c();
                setAdmob();
            } catch (Exception e) {
                C1402g.m37141a(e);
                this.f165y.onFailedReceive(str);
                this.f164x = true;
                C1402g.m37130c(str);
            }
        } else if (!this.f164x && (adbertListener = this.f165y) != null) {
            adbertListener.onFailedReceive(str);
            this.f164x = true;
            C1402g.m37130c(str);
        }
    }

    /* renamed from: c */
    private void m37448c() {
        int i;
        C1448h hVar = this.f161u;
        if (hVar != null) {
            hVar.pause();
            this.f161u.stopPlayback();
            this.f161u = null;
        }
        Bitmap bitmap = this.f162v;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f162v.recycle();
            this.f162v = null;
        }
        C1457j jVar = this.f140G;
        if (jVar != null) {
            jVar.destroy();
            this.f140G = null;
        }
        AdView adView = this.f143c;
        if (adView != null) {
            adView.destroy();
            this.f143c = null;
        }
        C1377b bVar = this.f160t;
        if (bVar != null && bVar.f406a == EnumC1382b.video && (i = this.f159s) > 0) {
            C1398f.m37160a(this.f148h, bVar, i);
        }
        if (this.f163w != null) {
            this.f163w = null;
        }
        if (this.f160t != null) {
            this.f160t = null;
        }
        LocalBroadcastManager.getInstance(this.f148h).unregisterReceiver(this.f146f);
        removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m37444c(String str) {
        if (!this.f166z) {
            Intent a = m37464a(EnumC1381a.act_web.m37196a(), str);
            try {
                a.setFlags(268435456);
                this.f148h.startActivity(a);
            } catch (Exception e) {
                C1402g.m37141a(e);
            }
        }
    }

    /* renamed from: d */
    private void m37443d() {
        if (this.f148h != null && this.f140G != null && !this.f160t.f401C.isEmpty()) {
            this.f140G.loadUrl(this.f160t.f401C);
        }
    }

    /* renamed from: d */
    private boolean m37440d(String str) {
        return C1402g.m37123h(str).getTime() < C1402g.m37123h(C1402g.m37129d()).getTime();
    }

    /* renamed from: e */
    private void m37439e() {
        this.f140G = new C1457j(getContext());
        addView(this.f140G);
        setGravity(17);
        this.f163w = new FrameLayout(this.f148h);
        addView(this.f163w);
        setObjSize(this.f163w);
        this.f163w.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.AdbertADView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdbertADView.this.f160t.f406a == EnumC1382b.video && AdbertADView.this.f161u != null && AdbertADView.this.f161u.isPlaying()) {
                    AdbertADView.this.m37423n();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m37436f() {
        if (C1402g.m37132c(this.f148h)) {
            this.f159s = 0;
            this.f162v = null;
            C1369e eVar = new C1369e(this.f148h);
            String str = this.f138E ? "&testMode=1" : "";
            C1361b.m37272a().m37269a(this.f148h, EnumC1383c.ADURL.m37191a(this.f149i), m37458a(eVar) + str, new C1361b.AbstractC1365c() { // from class: com.adbert.AdbertADView.3
                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1365c
                public void onEnd(int i, String str2) {
                    String trim = str2.trim();
                    if (i != 200) {
                        AdbertADView.this.m37449b(EnumC1387g.ERROR_SERVICE.m37184a());
                    } else if (i == 200 && trim.isEmpty()) {
                        AdbertADView.this.m37449b(EnumC1387g.ERROR_JSON_EMPTY.m37184a());
                    } else if (i == 200 && !trim.isEmpty()) {
                        AdbertADView.this.f156p = false;
                        C1402g.f653a = false;
                        AdbertADView.this.setDatas(trim);
                    }
                }
            });
            return;
        }
        m37449b(EnumC1387g.ERROR_CONNECTION.m37184a());
    }

    /* renamed from: g */
    private void m37434g() {
        if (this.f155o) {
            C1398f.m37161a(this.f148h, this.f160t);
            this.f155o = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006b, code lost:
        if (com.adbert.p009a.C1402g.m37138a(r0.f410e) != false) goto L_0x0048;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007b, code lost:
        if (r5.f160t.f406a == com.adbert.p009a.p012c.EnumC1382b.banner_web) goto L_0x0048;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m37432h() {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adbert.AdbertADView.m37432h():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m37430i() {
        C1377b bVar = this.f160t;
        if (bVar != null) {
            EnumC1382b bVar2 = bVar.f406a;
            m37457a(EnumC1387g.OK_DOWNLOAD.m37184a());
            if (bVar2 == EnumC1382b.banner_web) {
                this.f144d = new C1412a(this.f148h, this.f160t, this.f147g).m37095a(this.f160t.f427v, true, 0, true);
                addView(this.f144d);
                this.f144d.getLayoutParams().width = this.f136C.m37284e();
                this.f144d.getLayoutParams().height = this.f136C.m37283f();
                this.f144d.setVisibility(0);
            } else if (bVar2 == EnumC1382b.banner) {
                m37443d();
                if (C1402g.m37140a(this.f160t.f410e)) {
                    C1439e eVar = new C1439e(this.f148h, this.f147g, this.f160t.f406a);
                    addView(eVar);
                    setObjSize(eVar);
                    C1377b bVar3 = this.f160t;
                    eVar.m37055a(bVar3.f410e, bVar3);
                    eVar.setVisibility(0);
                } else {
                    ImageView imageView = new ImageView(this.f148h);
                    addView(imageView);
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    setObjSize(imageView);
                    imageView.setVisibility(0);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.AdbertADView.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (AdbertADView.this.f160t.f406a == EnumC1382b.banner) {
                                for (int i = 0; i < 5; i++) {
                                    if (AdbertADView.this.f160t.f414i[i]) {
                                        AdbertADView.this.m37454b(i);
                                        return;
                                    }
                                }
                            }
                        }
                    });
                    imageView.setImageBitmap(this.f162v);
                }
            } else if (bVar2 == EnumC1382b.video) {
                m37466a(this.f160t.f403E);
            }
            if (!this.f160t.f431z) {
                m37428j();
            }
            m37434g();
            if (this.f160t.m37200a(this.f148h)) {
                this.f139F = new C1373b(this.f160t.f404F);
                this.f139F.m37214a();
            }
        }
    }

    /* renamed from: j */
    private void m37428j() {
        C1447g gVar = (C1447g) findViewWithTag("adbert_log");
        C1447g gVar2 = gVar;
        if (gVar == null) {
            gVar2 = new C1447g(this.f148h, (int) (this.f136C.m37284e() * 0.04d));
            addView(gVar2);
            gVar2.setTag("adbert_log");
        }
        ((RelativeLayout.LayoutParams) gVar2.getLayoutParams()).addRule(12);
    }

    /* renamed from: k */
    private void m37426k() {
        C1361b.m37272a().m37271a(this.f148h).m37262a(new C1361b.AbstractC1363a() { // from class: com.adbert.AdbertADView.8
            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionFail(C1367d dVar) {
                if (!AdbertADView.this.f166z) {
                    AdbertADView.this.m37449b(EnumC1387g.ERROR_BITMAP_NULL.m37184a());
                }
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionSuccess(C1367d dVar) {
                if (!AdbertADView.this.f166z) {
                    try {
                        boolean a = C1402g.m37142a(dVar.m37249e(), AdbertADView.this.f160t.f410e, dVar.m37248f(), C1402g.m37135b(AdbertADView.this.f148h, dVar.m37248f()));
                        AdbertADView.this.f162v = dVar.m37249e();
                        if (a) {
                            AdbertADView.this.m37457a(EnumC1387g.OK_DOWNLOAD.m37184a());
                            AdbertADView.this.m37430i();
                        } else {
                            AdbertADView.this.m37449b(EnumC1387g.ERROR_BITMAP_NULL.m37184a());
                        }
                    } catch (Exception e) {
                        C1402g.m37141a(e);
                        AdbertADView.this.m37449b(EnumC1387g.ERROR_BITMAP_NULL.m37184a());
                    }
                }
            }
        }).m37252c(this.f160t.f410e);
    }

    /* renamed from: l */
    private boolean m37425l() {
        if (!this.f160t.f417l) {
            return false;
        }
        if (!this.f157q) {
            this.f157q = true;
            return true;
        }
        Context context = this.f148h;
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        String string = sharedPreferences.getString("lastRunCPV", "");
        String format = new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(Calendar.getInstance().getTime());
        if (!string.isEmpty() && Integer.parseInt(string) >= Integer.parseInt(format)) {
            return false;
        }
        sharedPreferences.edit().putString("lastRunCPV", format).commit();
        this.f157q = true;
        return true;
    }

    /* renamed from: m */
    private void m37424m() {
        C1448h hVar = this.f161u;
        if (hVar != null) {
            hVar.pause();
            this.f161u.stopPlayback();
        }
        FrameLayout frameLayout = this.f163w;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        ((C1447g) findViewWithTag("adbert_log")).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m37423n() {
        if (!this.f166z) {
            int a = EnumC1381a.act_video2.m37196a();
            Intent a2 = !this.f160t.f418m ? m37464a(a, Boolean.valueOf(this.f152l), 0, Boolean.valueOf(this.f154n), Integer.valueOf(this.f142b.getValue())) : m37464a(a, Boolean.valueOf(this.f152l), Integer.valueOf(this.f161u.getCurrentPosition() - 500), Boolean.valueOf(this.f154n), Integer.valueOf(this.f142b.getValue()));
            this.f160t.f418m = true;
            m37424m();
            this.f163w.setVisibility(8);
            try {
                a2.setFlags(268435456);
                this.f148h.startActivity(a2);
            } catch (Exception e) {
                C1402g.m37141a(e);
            }
        }
    }

    /* renamed from: o */
    private void m37422o() {
        Context context = this.f148h;
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        String str = this.f148h.getCacheDir().getAbsolutePath() + "/ADBERT";
        m37465a(20, sharedPreferences, str + "/others/");
        m37465a(10, sharedPreferences, str + "/video/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public boolean m37421p() {
        return this.f136C.m37281h() != this.f136C.m37282g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDatas(String str) {
        this.f160t = new C1377b();
        try {
            this.f160t = new C1394a(this.f148h).m37168a(str, this.f136C.m37282g());
            this.f160t.f400B = this.f149i;
            if (this.f160t.f406a == null) {
                m37449b(EnumC1387g.ERROR_TYPE_NULL.m37184a());
            } else if (this.f160t.f406a == EnumC1382b.video && C1402g.m37137b()) {
                C1398f.m37153c(this.f148h, this.f160t, new Runnable() { // from class: com.adbert.AdbertADView.5
                    @Override // java.lang.Runnable
                    public void run() {
                        AdbertADView.this.m37449b(EnumC1387g.VIDEO_NOT_SUPPORT.m37184a());
                    }
                });
            } else if (m37421p()) {
                m37432h();
            }
        } catch (Exception e) {
            C1402g.m37141a(e);
            if (e.getMessage() != null) {
                m37449b(EnumC1387g.ERROR_JSON_PARSE.m37184a() + e.getMessage());
                return;
            }
            m37449b(EnumC1387g.ERROR_JSON_PARSE.m37184a());
            e.printStackTrace();
        }
    }

    private void setObjSize(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        view.getLayoutParams().width = this.f136C.m37284e();
        view.getLayoutParams().height = this.f136C.m37283f();
        view.setVisibility(8);
    }

    public void destroy() {
        C1377b bVar;
        this.f166z = true;
        C1373b bVar2 = this.f139F;
        if (!(bVar2 == null || (bVar = this.f160t) == null)) {
            C1398f.m37157a(this.f148h, bVar2.m37211a(bVar.f400B), this.f160t);
            this.f139F.m37209b();
            this.f139F = null;
        }
        m37448c();
        if (this.f148h != null) {
            this.f148h = null;
        }
    }

    public String getVersion() {
        return "3.2.1n";
    }

    public void hideCI() {
        this.f158r = true;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        C1359a aVar = this.f136C;
        if (aVar != null) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(aVar.m37286c(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f136C.m37285d(), 1073741824));
        }
    }

    public void pause() {
        C1448h hVar;
        this.f153m = true;
        if (m37421p()) {
            C1377b bVar = this.f160t;
            if (!(bVar == null || bVar.f406a != EnumC1382b.video || (hVar = this.f161u) == null)) {
                this.f159s = hVar.getCurrentPosition();
                this.f161u.pause();
            }
            AdView adView = this.f143c;
            if (adView != null) {
                adView.pause();
            }
        }
        C1373b bVar2 = this.f139F;
        if (bVar2 != null) {
            bVar2.m37209b();
        }
    }

    public void resume() {
        C1377b bVar;
        C1448h hVar;
        if (this.f153m) {
            this.f153m = false;
            if (m37421p() && (bVar = this.f160t) != null && bVar.f406a == EnumC1382b.video && (hVar = this.f161u) != null && hVar.getVisibility() == 0) {
                this.f160t.f403E = 1;
                m37430i();
            }
            AdView adView = this.f143c;
            if (adView != null) {
                adView.resume();
            }
        }
        C1373b bVar2 = this.f139F;
        if (bVar2 != null) {
            bVar2.m37214a();
        }
    }

    @Deprecated
    public void setAPPID(String str, String str2) {
        setMediationAPPID(str + "|" + str2);
    }

    public void setAdmob() {
        Context context;
        if (!this.f166z && (context = this.f148h) != null) {
            this.f143c = new AdView(context);
            this.f143c.setAdUnitId(EnumC1383c.bannerID.m37192a());
            this.f143c.setAdSize(this.f141a);
            this.f136C.m37287b(this.f141a.getWidthInPixels(this.f148h));
            addView(this.f143c);
            this.f143c.getLayoutParams().width = this.f136C.m37286c();
            this.f143c.getLayoutParams().height = this.f136C.m37285d();
            ((RelativeLayout.LayoutParams) this.f143c.getLayoutParams()).addRule(14);
            AdRequest build = new AdRequest.Builder().build();
            this.f143c.setAdListener(new AdListener() { // from class: com.adbert.AdbertADView.4
                @Override // com.google.android.gms.ads.AdListener
                public void onAdFailedToLoad(int i) {
                    AdbertADView.this.f143c.destroy();
                    AdbertADView.this.f143c = null;
                    String a = EnumC1387g.ERROR_JSON_EMPTY.m37184a();
                    AdbertADView.this.f165y.onFailedReceive(a);
                    AdbertADView.this.f164x = true;
                    C1402g.m37130c(a);
                }

                @Override // com.google.android.gms.ads.AdListener
                public void onAdLoaded() {
                    AdbertADView.this.m37457a(EnumC1387g.OK_DOWNLOAD.m37184a());
                }
            });
            this.f143c.loadAd(build);
        }
    }

    public void setBannerSize(int i) {
        this.f136C.m37287b(i);
    }

    public void setBannerSize(AdSize adSize) {
        this.f141a = adSize;
        int widthInPixels = adSize.getWidthInPixels(this.f148h);
        int heightInPixels = adSize.getHeightInPixels(this.f148h);
        this.f136C.m37287b(widthInPixels);
        if (adSize != AdSize.BANNER && widthInPixels / heightInPixels > 6.4d) {
            this.f136C.m37290a(heightInPixels);
        }
    }

    public void setExpandVideo(ExpandVideoPosition expandVideoPosition) {
        if (expandVideoPosition == ExpandVideoPosition.TOP) {
            this.f152l = true;
        } else {
            this.f152l = false;
        }
    }

    public void setFullScreen(boolean z) {
        this.f154n = z;
    }

    public void setListener(AdbertListener adbertListener) {
        this.f165y = adbertListener;
    }

    public void setMediationAPPID(String str) {
        if (str.contains("|")) {
            this.f150j = str.substring(0, str.indexOf("|")).trim();
            this.f151k = str.substring(str.indexOf("|") + 1).trim();
            this.f135B = true;
        }
    }

    public void setMode(AdbertOrientation adbertOrientation) {
        this.f142b = adbertOrientation;
        if (adbertOrientation == AdbertOrientation.LAND) {
            this.f136C.m37289a(true);
        } else if (adbertOrientation == AdbertOrientation.PORT) {
            this.f136C.m37289a(false);
        } else if (adbertOrientation == AdbertOrientation.NORMAL) {
            C1359a aVar = this.f136C;
            aVar.m37289a(!aVar.m37282g());
        }
    }

    public void setNonMediationAPPID(String str, String str2) {
        this.f150j = str.trim();
        this.f151k = str2.trim();
        this.f135B = false;
    }

    public void setPageInfo(String str) {
        this.f137D = str;
    }

    public void setTestMode() {
        this.f138E = true;
    }

    public void start() {
        if (m37421p() && !this.f134A && !this.f150j.isEmpty() && !this.f151k.isEmpty()) {
            this.f134A = true;
            m37439e();
            C1402g.m37146a(this.f148h, new C1402g.AbstractC1405a() { // from class: com.adbert.AdbertADView.1
                @Override // com.adbert.p009a.C1402g.AbstractC1405a
                public void onResult(String str) {
                    AdbertADView.this.f149i = str;
                    if (AdbertADView.this.m37421p()) {
                        C1402g.m37127d(EnumC1387g.START.m37184a());
                        AdbertADView.this.m37436f();
                        return;
                    }
                    AdbertADView.this.m37449b(EnumC1387g.ERROR_MODE.m37184a());
                    AdbertADView.this.setVisibility(8);
                }
            });
        } else if (this.f150j.isEmpty() || this.f151k.isEmpty()) {
            m37449b(EnumC1387g.ERROR_ID_NULL.m37184a());
        }
    }
}
