package com.adbert;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.p013d.C1392b;
import com.adbert.p015b.C1448h;
import com.google.android.gms.ads.AdSize;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertLoopADView.class */
public class AdbertLoopADView extends RelativeLayout {

    /* renamed from: d */
    public Context f267d;

    /* renamed from: e */
    public AdbertADView f268e;

    /* renamed from: f */
    public ExpandVideoPosition f269f;

    /* renamed from: g */
    public AdbertOrientation f270g;

    /* renamed from: h */
    public boolean f271h;

    /* renamed from: j */
    public AdSize f273j;

    /* renamed from: m */
    public AdbertListener f276m;

    /* renamed from: q */
    public boolean f280q;

    /* renamed from: i */
    public int f272i = 0;

    /* renamed from: k */
    public String f274k = "";

    /* renamed from: l */
    public String f275l = "";

    /* renamed from: n */
    public Handler f277n = new Handler();

    /* renamed from: o */
    public int f278o = 0;

    /* renamed from: p */
    public boolean f279p = false;

    /* renamed from: r */
    public String f281r = "";

    /* renamed from: s */
    public int f282s = 30000;

    /* renamed from: t */
    public int f283t = 30000;

    /* renamed from: a */
    public Runnable f264a = null;

    /* renamed from: b */
    public boolean f265b = true;

    /* renamed from: c */
    public boolean f266c = false;

    public AdbertLoopADView(Context context) {
        super(context);
        this.f267d = context;
        if (!isInEditMode()) {
            m37353a();
        }
    }

    public AdbertLoopADView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f267d = context;
        if (!isInEditMode()) {
            m37353a();
        }
    }

    public AdbertLoopADView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f267d = context;
        if (!isInEditMode()) {
            m37353a();
        }
    }

    /* renamed from: a */
    private void m37353a() {
        this.f268e = new AdbertADView(this.f267d);
        addView(this.f268e);
        C1402g.f653a = true;
    }

    /* renamed from: a */
    private void m37350a(boolean z) {
        C1448h hVar = (C1448h) this.f268e.findViewWithTag("adbert_video");
        if (hVar != null && Build.VERSION.SDK_INT >= 11) {
            if (z) {
                hVar.setAlpha(1.0f);
            } else {
                hVar.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: b */
    private void m37349b() {
        ExpandVideoPosition expandVideoPosition = this.f269f;
        if (expandVideoPosition != null) {
            this.f268e.setExpandVideo(expandVideoPosition);
        }
        AdbertOrientation adbertOrientation = this.f270g;
        if (adbertOrientation != null) {
            this.f268e.setMode(adbertOrientation);
        }
        this.f268e.setFullScreen(this.f271h);
        int i = this.f272i;
        if (i > 0) {
            this.f268e.setBannerSize(i);
        }
        AdSize adSize = this.f273j;
        if (adSize != null) {
            this.f268e.setBannerSize(adSize);
        }
        this.f268e.setNonMediationAPPID(this.f274k, this.f275l);
        this.f268e.setListener(new C1392b() { // from class: com.adbert.AdbertLoopADView.1
            /* renamed from: a */
            private void m37339a(int i2) {
                final Handler handler = new Handler();
                handler.postDelayed(new Runnable() { // from class: com.adbert.AdbertLoopADView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AdbertLoopADView.this.f280q) {
                            handler.removeCallbacks(this);
                        } else {
                            AdbertLoopADView.this.m37345d();
                        }
                    }
                }, i2);
            }

            @Override // com.adbert.p009a.p013d.C1392b
            /* renamed from: a */
            public void mo37176a() {
                m37339a(0);
            }

            @Override // com.adbert.AdbertListener
            public void onFailedReceive(String str) {
                if (AdbertLoopADView.this.f276m != null) {
                    AdbertLoopADView.this.f276m.onFailedReceive(str);
                }
                m37339a(AdbertLoopADView.this.f283t);
            }

            @Override // com.adbert.AdbertListener
            public void onReceive(String str) {
                if (AdbertLoopADView.this.f276m != null) {
                    AdbertLoopADView.this.f276m.onReceive(str);
                }
            }
        });
        this.f268e.setPageInfo(this.f281r);
    }

    /* renamed from: c */
    private void m37347c() {
        m37349b();
        this.f268e.start();
        m37343e();
        if (this.f265b) {
            this.f277n.postDelayed(this.f264a, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m37345d() {
        this.f278o = 0;
        this.f268e.destroy();
        removeView(this.f268e);
        this.f268e = new AdbertADView(this.f267d);
        addView(this.f268e);
        m37347c();
    }

    /* renamed from: e */
    private void m37343e() {
        Runnable runnable = this.f264a;
        if (runnable != null) {
            this.f277n.removeCallbacks(runnable);
        }
        this.f264a = new Runnable() { // from class: com.adbert.AdbertLoopADView.2
            @Override // java.lang.Runnable
            public void run() {
                AdbertLoopADView.this.f278o += 1000;
                if (AdbertLoopADView.this.f280q) {
                    AdbertLoopADView.this.f277n.postDelayed(this, 1000L);
                    return;
                }
                if (AdbertLoopADView.this.f278o >= AdbertLoopADView.this.f282s) {
                    AdbertLoopADView adbertLoopADView = AdbertLoopADView.this;
                    if (!adbertLoopADView.f266c) {
                        adbertLoopADView.f278o = 0;
                        AdbertLoopADView.this.m37345d();
                        AdbertLoopADView.this.f277n.removeCallbacks(this);
                        return;
                    }
                }
                AdbertLoopADView.this.f277n.postDelayed(this, 1000L);
            }
        };
    }

    public void destroy() {
        this.f280q = true;
        this.f277n.removeCallbacks(this.f264a);
        this.f268e.destroy();
    }

    public String getVersion() {
        return this.f268e.getVersion();
    }

    public void hideCI() {
        this.f268e.hideCI();
    }

    public void hideView() {
        this.f265b = false;
        pause();
        m37350a(false);
        setVisibility(8);
    }

    public void pause() {
        this.f277n.removeCallbacks(this.f264a);
        this.f268e.pause();
    }

    public void resume() {
        if (this.f265b) {
            m37343e();
            this.f277n.postDelayed(this.f264a, 1000L);
            this.f268e.resume();
        }
    }

    public void setAPPID(String str, String str2) {
        this.f274k = str;
        this.f275l = str2;
    }

    public void setBannerSize(int i) {
        this.f272i = i;
    }

    public void setBannerSize(AdSize adSize) {
        this.f273j = adSize;
    }

    public void setExpandVideo(ExpandVideoPosition expandVideoPosition) {
        this.f269f = expandVideoPosition;
    }

    public void setFullScreen(boolean z) {
        this.f271h = z;
    }

    public void setListener(AdbertListener adbertListener) {
        this.f276m = adbertListener;
    }

    public void setMode(AdbertOrientation adbertOrientation) {
        this.f270g = adbertOrientation;
    }

    public void setPageInfo(String str) {
        this.f281r = str;
    }

    public void setTestMode() {
        this.f268e.setTestMode();
    }

    public void showView() {
        this.f265b = true;
        setVisibility(0);
        m37350a(true);
        resume();
    }

    public void start() {
        if (!this.f279p) {
            this.f279p = true;
            m37347c();
        }
    }
}
