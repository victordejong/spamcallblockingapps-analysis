package p131c.p431l.p432a.p433a.p437d;

import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import com.library.p518ad.core.AdInfo;
import com.netqin.p525cm.p526ad.family.NqFamilyRequest;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p431l.p432a.p433a.p436c.C6705a;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p478c.C6871a;
/* renamed from: c.l.a.a.d.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/d/a.class */
public class C6706a implements ViewPager.AbstractC0566i {

    /* renamed from: a */
    public final int f20664a;

    /* renamed from: b */
    public final LinearLayout f20665b;

    /* renamed from: c */
    public int f20666c;

    /* renamed from: d */
    public String f20667d;

    /* renamed from: e */
    public String f20668e;

    /* renamed from: f */
    public String f20669f;

    /* renamed from: g */
    public String f20670g;

    /* renamed from: h */
    public Runnable f20671h = new RunnableC6707a();

    /* renamed from: c.l.a.a.d.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/d/a$a.class */
    public class RunnableC6707a implements Runnable {
        public RunnableC6707a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6706a.this.m20027a();
            if (C6706a.this.f20666c == C6706a.this.f20664a) {
                C6706a.this.m20015g();
            }
        }
    }

    /* renamed from: c.l.a.a.d.a$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/d/a$b.class */
    public class C6708b extends AbstractC6515g {
        public C6708b() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: a */
        public void mo3232a(AdInfo adInfo, int i) {
            char c;
            String adSource = adInfo.getAdSource();
            int hashCode = adSource.hashCode();
            if (hashCode != 2092) {
                if (hashCode == 2236 && adSource.equals("FB")) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (adSource.equals("AM")) {
                    c = 1;
                }
                c = 65535;
            }
            if (c == 0) {
                C6871a.m19506a(null, "FB Ad Clicks", C6706a.this.f20668e, 0L, null);
            } else if (c == 1) {
                C6871a.m19506a(null, "Admob Ad Clicks", C6706a.this.f20670g, 0L, null);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            char c;
            String adSource = adInfo.getAdSource();
            int hashCode = adSource.hashCode();
            if (hashCode != 2092) {
                if (hashCode == 2236 && adSource.equals("FB")) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (adSource.equals("AM")) {
                    c = 1;
                }
                c = 65535;
            }
            if (c == 0) {
                C6871a.m19506a(null, "FB Ad Impressions", C6706a.this.f20667d, 0L, null);
            } else if (c == 1) {
                C6871a.m19506a(null, "Admob Ad Impressions", C6706a.this.f20669f, 0L, null);
            }
        }
    }

    /* renamed from: c.l.a.a.d.a$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/d/a$c.class */
    public class RunnableC6709c implements Runnable {
        public RunnableC6709c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6706a.this.m20015g();
        }
    }

    public C6706a(LinearLayout linearLayout, int i) {
        this.f20664a = i;
        this.f20665b = linearLayout;
        m20017f();
        m20023c();
    }

    /* renamed from: a */
    public void m20027a() {
        this.f20665b.removeAllViews();
    }

    /* renamed from: b */
    public void m20025b() {
        m20021d();
    }

    /* renamed from: c */
    public final void m20023c() {
        int i = this.f20664a;
        if (i == 0) {
            this.f20667d = "CB_CallBlockingPage_Native_FB_Show";
            this.f20668e = "CB_CallBlockingPage_Native_FB_Click";
            this.f20669f = "CB_CallBlockingPage_Native_AM_Show";
            this.f20670g = "CB_CallBlockingPage_Native_AM_Click";
        } else if (i == 1) {
            this.f20667d = "CB_RulePage_Native_FB_Show";
            this.f20668e = "CB_RulePage_Native_FB_Click";
            this.f20669f = "CB_RulePage_Native_AM_Show";
            this.f20670g = "CB_RulePage_Native_AM_Click";
        }
    }

    /* renamed from: d */
    public void m20021d() {
        this.f20665b.removeCallbacks(this.f20671h);
    }

    /* renamed from: e */
    public void m20019e() {
        if (this.f20665b != null) {
            m20021d();
            this.f20665b.postDelayed(this.f20671h, 300000L);
        }
    }

    /* renamed from: f */
    public final void m20017f() {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setAnimator(2, ObjectAnimator.ofFloat((Object) null, "translateY", 0.0f, C6860r.m19543a(this.f20665b.getContext(), 100.0f)));
        layoutTransition.setInterpolator(2, new AccelerateInterpolator());
        layoutTransition.setDuration(300L);
        this.f20665b.setLayoutTransition(layoutTransition);
    }

    /* renamed from: g */
    public final void m20015g() {
        LinearLayout linearLayout = this.f20665b;
        if (linearLayout != null && !C6860r.m19539a(linearLayout) && this.f20666c == this.f20664a && this.f20665b.getChildCount() <= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f20664a == 0 ? "电话" : "短信");
            sb.append("拦截记录页广告开始请求");
            C6850i.m19579a("AD", sb.toString());
            int i = this.f20664a;
            String str = "MAIN_CALL_LIST_SHOWN_AD_PACKAGE";
            String str2 = "&referrer=utm_source%3DCallBlocker%26utm_medium%3DCallList%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad";
            String str3 = "1";
            if (i != 0) {
                if (i != 1) {
                    str = "MAIN_CALL_LIST_SHOWN_AD_PACKAGE";
                    str2 = "&referrer=utm_source%3DCallBlocker%26utm_medium%3DCallList%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad";
                    str3 = "1";
                } else {
                    str3 = "3";
                    str2 = "&referrer=utm_source%3DCallBlocker%26utm_medium%3DRule%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad";
                    str = "MAIN_RULE_PAGE_SHOWN_AD_PACKAGE";
                }
            }
            C6708b bVar = new C6708b();
            C6490b bVar2 = new C6490b(str3);
            bVar2.m20709a(bVar);
            bVar2.m20710a(new NqFamilyRequest(str2));
            bVar2.m20707a(new C6705a(NqFamilyRequest.f35225w, str));
            bVar2.m20713a((ViewGroup) this.f20665b);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
    public void onPageSelected(int i) {
        this.f20666c = i;
        if (!C6793d.m19782d()) {
            this.f20665b.postDelayed(new RunnableC6709c(), 500L);
        }
    }
}
