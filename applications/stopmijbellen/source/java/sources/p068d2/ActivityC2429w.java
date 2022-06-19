package p068d2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.adcolony.sdk.AdColonyAdViewActivity;
import com.adcolony.sdk.AdColonyInterstitialActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* renamed from: d2.w */
/* loaded from: classes-dex2jar.jar:d2/w.class */
public class ActivityC2429w extends Activity {

    /* renamed from: a */
    public C2322j0 f8596a;

    /* renamed from: b */
    public int f8597b = -1;

    /* renamed from: c */
    public int f8598c;

    /* renamed from: d */
    public boolean f8599d;

    /* renamed from: e */
    public boolean f8600e;

    /* renamed from: f */
    public boolean f8601f;

    /* renamed from: g */
    public boolean f8602g;

    /* renamed from: h */
    public boolean f8603h;

    /* renamed from: i */
    public boolean f8604i;

    /* renamed from: d2.w$a */
    /* loaded from: classes-dex2jar.jar:d2/w$a.class */
    public class C2430a implements AbstractC2458y0 {
        public C2430a() {
            ActivityC2429w.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            ActivityC2429w.this.mo3561c(c2410t0);
        }
    }

    /* renamed from: a */
    public void m3563a() {
        C2230f1 m3591d = C2408t.m3591d();
        if (this.f8596a == null) {
            this.f8596a = m3591d.f8097l;
        }
        C2322j0 c2322j0 = this.f8596a;
        if (c2322j0 == null) {
            return;
        }
        c2322j0.f8313w = false;
        if (C2315i3.m3672E()) {
            this.f8596a.f8313w = true;
        }
        Rect m3777h = this.f8602g ? m3591d.m3721m().m3777h() : m3591d.m3721m().m3778g();
        if (m3777h.width() <= 0 || m3777h.height() <= 0) {
            return;
        }
        C2267f4 c2267f4 = new C2267f4();
        C2267f4 c2267f42 = new C2267f4();
        float m3779f = m3591d.m3721m().m3779f();
        C2227e4.m3740m(c2267f42, "width", (int) (m3777h.width() / m3779f));
        C2227e4.m3740m(c2267f42, "height", (int) (m3777h.height() / m3779f));
        C2227e4.m3740m(c2267f42, "app_orientation", C2315i3.m3647x(C2315i3.m3674C()));
        C2227e4.m3740m(c2267f42, "x", 0);
        C2227e4.m3740m(c2267f42, "y", 0);
        C2227e4.m3744i(c2267f42, "ad_session_id", this.f8596a.f8302l);
        C2227e4.m3740m(c2267f4, "screen_width", m3777h.width());
        C2227e4.m3740m(c2267f4, "screen_height", m3777h.height());
        C2227e4.m3744i(c2267f4, "ad_session_id", this.f8596a.f8302l);
        C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8596a.f8300j);
        this.f8596a.setLayoutParams(new FrameLayout.LayoutParams(m3777h.width(), m3777h.height()));
        this.f8596a.f8298h = m3777h.width();
        this.f8596a.f8299i = m3777h.height();
        new C2410t0("MRAID.on_size_change", this.f8596a.f8301k, c2267f42).m3586b();
        new C2410t0("AdContainer.on_orientation_change", this.f8596a.f8301k, c2267f4).m3586b();
    }

    /* renamed from: b */
    public void m3562b(int i) {
        if (i == 0) {
            setRequestedOrientation(7);
        } else if (i != 1) {
            setRequestedOrientation(4);
        } else {
            setRequestedOrientation(6);
        }
        this.f8597b = i;
    }

    /* renamed from: c */
    public void mo3561c(C2410t0 c2410t0) {
        int m3735r = C2227e4.m3735r(c2410t0.f8537b, "status");
        if ((m3735r == 5 || m3735r == 0 || m3735r == 6 || m3735r == 1) && !this.f8599d) {
            C2230f1 m3591d = C2408t.m3591d();
            C2204e2 m3720n = m3591d.m3720n();
            m3591d.f8104s = c2410t0;
            AlertDialog alertDialog = m3720n.f8032b;
            if (alertDialog != null) {
                alertDialog.dismiss();
                m3720n.f8032b = null;
            }
            if (!this.f8601f) {
                finish();
            }
            this.f8599d = true;
            ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            m3591d.f8063A = false;
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8596a.f8302l);
            new C2410t0("AdSession.on_close", this.f8596a.f8301k, c2267f4).m3586b();
            m3591d.f8097l = null;
            m3591d.f8100o = null;
            m3591d.f8099n = null;
            C2408t.m3591d().m3722l().f8330c.remove(this.f8596a.f8302l);
        }
    }

    /* renamed from: d */
    public void m3560d(boolean z) {
        Iterator<Map.Entry<Integer, TextureView$SurfaceTextureListenerC2399r3>> it2 = this.f8596a.f8291a.entrySet().iterator();
        while (it2.hasNext() && !isFinishing()) {
            TextureView$SurfaceTextureListenerC2399r3 value = it2.next().getValue();
            if (!value.f8503s && value.f8481K.isPlaying()) {
                value.m3608c();
            }
        }
        C2387q c2387q = C2408t.m3591d().f8100o;
        if (c2387q == null || !c2387q.m3617a()) {
            return;
        }
        C2411t1 c2411t1 = c2387q.f8440e;
        if (c2411t1.f8538a == null || !z || !this.f8603h) {
            return;
        }
        c2411t1.m3583c("pause", 0.0f);
    }

    /* renamed from: e */
    public void m3559e(boolean z) {
        for (Map.Entry<Integer, TextureView$SurfaceTextureListenerC2399r3> entry : this.f8596a.f8291a.entrySet()) {
            TextureView$SurfaceTextureListenerC2399r3 value = entry.getValue();
            if (!value.f8503s && !value.f8481K.isPlaying() && !C2408t.m3591d().m3720n().f8033c) {
                value.m3607d();
            }
        }
        C2387q c2387q = C2408t.m3591d().f8100o;
        if (c2387q == null || !c2387q.m3617a()) {
            return;
        }
        C2411t1 c2411t1 = c2387q.f8440e;
        if (c2411t1.f8538a == null) {
            return;
        }
        if ((z && this.f8603h) || !this.f8604i) {
            return;
        }
        c2411t1.m3583c("resume", 0.0f);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8596a.f8302l);
        new C2410t0("AdSession.on_back_button", this.f8596a.f8301k, c2267f4).m3586b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this instanceof AdColonyInterstitialActivity) {
            m3563a();
        } else {
            ((AdColonyAdViewActivity) this).f3159j.m3641a();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!C2408t.m3589f() || C2408t.m3591d().f8097l == null) {
            finish();
            return;
        }
        C2230f1 m3591d = C2408t.m3591d();
        this.f8601f = false;
        C2322j0 c2322j0 = m3591d.f8097l;
        this.f8596a = c2322j0;
        c2322j0.f8313w = false;
        if (C2315i3.m3672E()) {
            this.f8596a.f8313w = true;
        }
        Objects.requireNonNull(this.f8596a);
        this.f8598c = this.f8596a.f8301k;
        boolean m3741l = C2227e4.m3741l(m3591d.m3715s().f8370d, "multi_window_enabled");
        this.f8602g = m3741l;
        if (m3741l) {
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
        } else {
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
        }
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(-16777216);
        if (C2227e4.m3741l(m3591d.m3715s().f8370d, "keep_screen_on")) {
            getWindow().addFlags(128);
        }
        ViewParent parent = this.f8596a.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this.f8596a);
        }
        setContentView(this.f8596a);
        ArrayList<AbstractC2458y0> arrayList = this.f8596a.f8309s;
        C2430a c2430a = new C2430a();
        C2408t.m3594a("AdSession.finish_fullscreen_ad", c2430a);
        arrayList.add(c2430a);
        this.f8596a.f8310t.add("AdSession.finish_fullscreen_ad");
        m3562b(this.f8597b);
        if (this.f8596a.f8312v) {
            m3563a();
            return;
        }
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8596a.f8302l);
        C2227e4.m3740m(c2267f4, "screen_width", this.f8596a.f8298h);
        C2227e4.m3740m(c2267f4, "screen_height", this.f8596a.f8299i);
        new C2410t0("AdSession.on_fullscreen_ad_started", this.f8596a.f8301k, c2267f4).m3586b();
        this.f8596a.f8312v = true;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!C2408t.m3589f() || this.f8596a == null || this.f8599d) {
            return;
        }
        if ((Build.VERSION.SDK_INT >= 24 && C2315i3.m3672E()) || this.f8596a.f8313w) {
            return;
        }
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8596a.f8302l);
        new C2410t0("AdSession.on_error", this.f8596a.f8301k, c2267f4).m3586b();
        this.f8601f = true;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        m3560d(this.f8600e);
        this.f8600e = false;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        m3563a();
        m3559e(this.f8600e);
        this.f8600e = true;
        this.f8604i = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (z && this.f8600e) {
            C2408t.m3591d().m3733a().m3694b(true);
            m3559e(this.f8600e);
            this.f8603h = true;
        } else if (z || !this.f8600e) {
        } else {
            C2408t.m3591d().m3733a().m3695a(true);
            m3560d(this.f8600e);
            this.f8603h = false;
        }
    }
}
