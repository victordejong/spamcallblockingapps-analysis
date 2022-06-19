package p068d2;

import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.adcolony.sdk.AdColonyAdViewActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import p008a7.EnumC0038e;
/* renamed from: d2.j */
/* loaded from: classes-dex2jar.jar:d2/j.class */
public class C2319j extends FrameLayout {

    /* renamed from: a */
    public C2322j0 f8269a;

    /* renamed from: b */
    public AbstractC2328k f8270b;

    /* renamed from: c */
    public C2278h f8271c;

    /* renamed from: d */
    public String f8272d;

    /* renamed from: e */
    public String f8273e;

    /* renamed from: f */
    public String f8274f;

    /* renamed from: g */
    public String f8275g;

    /* renamed from: h */
    public ImageView f8276h;

    /* renamed from: i */
    public C2411t1 f8277i;

    /* renamed from: j */
    public C2410t0 f8278j;

    /* renamed from: k */
    public boolean f8279k;

    /* renamed from: l */
    public boolean f8280l;

    /* renamed from: m */
    public boolean f8281m;

    /* renamed from: n */
    public boolean f8282n;

    /* renamed from: o */
    public boolean f8283o;

    /* renamed from: p */
    public int f8284p;

    /* renamed from: q */
    public int f8285q;

    /* renamed from: r */
    public int f8286r;

    /* renamed from: s */
    public int f8287s;

    /* renamed from: t */
    public int f8288t;

    /* renamed from: u */
    public AbstractC2321b f8289u;

    /* renamed from: d2.j$a */
    /* loaded from: classes-dex2jar.jar:d2/j$a.class */
    public class View$OnClickListenerC2320a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f8290a;

        public View$OnClickListenerC2320a(C2319j c2319j, Context context) {
            this.f8290a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f8290a;
            if (context instanceof AdColonyAdViewActivity) {
                ((AdColonyAdViewActivity) context).m7241f();
            }
        }
    }

    /* renamed from: d2.j$b */
    /* loaded from: classes-dex2jar.jar:d2/j$b.class */
    public interface AbstractC2321b {
    }

    public C2319j(Context context, C2410t0 c2410t0, AbstractC2328k abstractC2328k) {
        super(context);
        this.f8270b = abstractC2328k;
        this.f8273e = abstractC2328k.f8325a;
        C2267f4 c2267f4 = c2410t0.f8537b;
        this.f8272d = c2267f4.m3697o(FacebookAdapter.KEY_ID);
        this.f8274f = c2267f4.m3697o("close_button_filepath");
        this.f8279k = C2227e4.m3741l(c2267f4, "trusted_demand_source");
        this.f8283o = C2227e4.m3741l(c2267f4, "close_button_snap_to_webview");
        this.f8287s = C2227e4.m3735r(c2267f4, "close_button_width");
        this.f8288t = C2227e4.m3735r(c2267f4, "close_button_height");
        this.f8269a = C2408t.m3591d().m3722l().f8329b.get(this.f8272d);
        this.f8271c = abstractC2328k.f8326b;
        C2322j0 c2322j0 = this.f8269a;
        setLayoutParams(new FrameLayout.LayoutParams(c2322j0.f8298h, c2322j0.f8299i));
        setBackgroundColor(0);
        addView(this.f8269a);
    }

    /* renamed from: a */
    public boolean m3641a() {
        if (!this.f8279k && !this.f8282n) {
            if (this.f8278j == null) {
                return false;
            }
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3739n(c2267f4, "success", false);
            this.f8278j.m3587a(c2267f4).m3586b();
            this.f8278j = null;
            return false;
        }
        C2179b2 m3721m = C2408t.m3591d().m3721m();
        Rect m3778g = m3721m.m3778g();
        int i = this.f8285q;
        if (i <= 0) {
            i = m3778g.width();
        }
        int i2 = this.f8286r;
        if (i2 <= 0) {
            i2 = m3778g.height();
        }
        int width = (m3778g.width() - i) / 2;
        int height = (m3778g.height() - i2) / 2;
        this.f8269a.setLayoutParams(new FrameLayout.LayoutParams(m3778g.width(), m3778g.height()));
        C2441x3 webView = getWebView();
        if (webView != null) {
            C2410t0 c2410t0 = new C2410t0("WebView.set_bounds", 0);
            C2267f4 c2267f42 = new C2267f4();
            C2227e4.m3740m(c2267f42, "x", width);
            C2227e4.m3740m(c2267f42, "y", height);
            C2227e4.m3740m(c2267f42, "width", i);
            C2227e4.m3740m(c2267f42, "height", i2);
            c2410t0.f8537b = c2267f42;
            webView.m3551i(c2410t0);
            float m3779f = m3721m.m3779f();
            C2267f4 c2267f43 = new C2267f4();
            C2227e4.m3740m(c2267f43, "app_orientation", C2315i3.m3647x(C2315i3.m3674C()));
            C2227e4.m3740m(c2267f43, "width", (int) (i / m3779f));
            C2227e4.m3740m(c2267f43, "height", (int) (i2 / m3779f));
            C2227e4.m3740m(c2267f43, "x", C2315i3.m3669b(webView));
            C2227e4.m3740m(c2267f43, "y", C2315i3.m3657n(webView));
            C2227e4.m3744i(c2267f43, "ad_session_id", this.f8272d);
            new C2410t0("MRAID.on_size_change", this.f8269a.f8301k, c2267f43).m3586b();
        }
        ImageView imageView = this.f8276h;
        if (imageView != null) {
            this.f8269a.removeView(imageView);
        }
        Context context = C2408t.f8531a;
        if (context != null && !this.f8281m && webView != null) {
            float m4794c = C1676a.m4794c();
            int i3 = (int) (this.f8287s * m4794c);
            int i4 = (int) (this.f8288t * m4794c);
            int width2 = this.f8283o ? webView.f8656m + webView.f8660q : m3778g.width();
            int i5 = this.f8283o ? webView.f8658o : 0;
            ImageView imageView2 = new ImageView(context.getApplicationContext());
            this.f8276h = imageView2;
            imageView2.setImageURI(Uri.fromFile(new File(this.f8274f)));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(width2 - i3, i5, 0, 0);
            this.f8276h.setOnClickListener(new View$OnClickListenerC2320a(this, context));
            this.f8269a.addView(this.f8276h, layoutParams);
            this.f8269a.m3640a(this.f8276h, EnumC0038e.CLOSE_AD);
        }
        if (this.f8278j == null) {
            return true;
        }
        C2267f4 c2267f44 = new C2267f4();
        C2227e4.m3739n(c2267f44, "success", true);
        this.f8278j.m3587a(c2267f44).m3586b();
        this.f8278j = null;
        return true;
    }

    public C2278h getAdSize() {
        return this.f8271c;
    }

    public String getClickOverride() {
        return this.f8275g;
    }

    public C2322j0 getContainer() {
        return this.f8269a;
    }

    public AbstractC2328k getListener() {
        return this.f8270b;
    }

    public C2411t1 getOmidManager() {
        return this.f8277i;
    }

    public int getOrientation() {
        return this.f8284p;
    }

    public boolean getTrustedDemandSource() {
        return this.f8279k;
    }

    public C2441x3 getWebView() {
        C2322j0 c2322j0 = this.f8269a;
        return c2322j0 == null ? null : c2322j0.f8293c.get(2);
    }

    public String getZoneId() {
        return this.f8273e;
    }

    public void setClickOverride(String str) {
        this.f8275g = str;
    }

    public void setExpandMessage(C2410t0 c2410t0) {
        this.f8278j = c2410t0;
    }

    public void setExpandedHeight(int i) {
        this.f8286r = (int) (C2408t.m3591d().m3721m().m3779f() * i);
    }

    public void setExpandedWidth(int i) {
        this.f8285q = (int) (C2408t.m3591d().m3721m().m3779f() * i);
    }

    public void setListener(AbstractC2328k abstractC2328k) {
        this.f8270b = abstractC2328k;
    }

    public void setNoCloseButton(boolean z) {
        this.f8281m = this.f8279k && z;
    }

    public void setOmidManager(C2411t1 c2411t1) {
        this.f8277i = c2411t1;
    }

    public void setOnDestroyListenerOrCall(AbstractC2321b abstractC2321b) {
        if (!this.f8280l) {
            this.f8289u = abstractC2321b;
            return;
        }
        C2230f1 c2230f1 = ((C2359l1) abstractC2321b).f8371a;
        int i = c2230f1.f8085W - 1;
        c2230f1.f8085W = i;
        if (i != 0) {
            return;
        }
        c2230f1.m3730d();
    }

    public void setOrientation(int i) {
        this.f8284p = i;
    }

    public void setUserInteraction(boolean z) {
        this.f8282n = z;
    }
}
