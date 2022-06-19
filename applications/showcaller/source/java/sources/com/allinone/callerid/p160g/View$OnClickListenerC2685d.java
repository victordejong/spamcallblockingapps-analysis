package com.allinone.callerid.p160g;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.CustomViewPager;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.view.recorder.LTabIndicator;
import com.allinone.callerid.p136b.C2210n;
import com.allinone.callerid.p144d.p149d.View$OnClickListenerC2505a;
import com.allinone.callerid.p144d.p149d.View$OnClickListenerC2521b;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3810q;
import java.util.Date;
/* renamed from: com.allinone.callerid.g.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/d.class */
public class View$OnClickListenerC2685d extends Fragment implements View.OnClickListener {

    /* renamed from: e0 */
    private final String f9249e0 = "EZCallScreenFragment";

    /* renamed from: f0 */
    private View f9250f0;

    /* renamed from: g0 */
    private CustomViewPager f9251g0;

    /* renamed from: h0 */
    private View$OnClickListenerC2521b f9252h0;

    /* renamed from: i0 */
    private Context f9253i0;

    /* renamed from: j0 */
    private boolean f9254j0;

    /* renamed from: com.allinone.callerid.g.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/d$a.class */
    public class C2686a implements ViewPager.AbstractC1193i {
        C2686a() {
            View$OnClickListenerC2685d.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            if (i == 0) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "popularFragment");
                }
                C3810q.m24071b().m24070c("callscreen_list_download_show_new");
            } else if (i != 1) {
            } else {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "latestFragment");
                }
                C3810q.m24071b().m24070c("callscreen_list_last_show_new");
            }
        }
    }

    /* renamed from: a2 */
    private void m26850a2(View view) {
        this.f9251g0 = (CustomViewPager) view.findViewById(R$id.vp_callscreen);
        LTabIndicator lTabIndicator = (LTabIndicator) view.findViewById(R$id.main_tpi);
        C2210n c2210n = new C2210n(m32976J());
        this.f9252h0 = new View$OnClickListenerC2521b();
        View$OnClickListenerC2505a view$OnClickListenerC2505a = new View$OnClickListenerC2505a();
        c2210n.m27854y(this.f9252h0, m32931d0(R$string.popular_page));
        c2210n.m27854y(view$OnClickListenerC2505a, m32931d0(R$string.latest_page));
        this.f9251g0.m30744c(new C2686a());
        this.f9251g0.setAdapter(c2210n);
        lTabIndicator.f11411r = C3719c1.m24432a(this.f9253i0, R$attr.color_blue_tab_text_unselected, R$color.color_99ffffff);
        lTabIndicator.f11410q = C3719c1.m24432a(this.f9253i0, R$attr.color_title, R$color.color_ffffff);
        lTabIndicator.setIndicatorColor(C3719c1.m24432a(this.f9253i0, R$attr.color_title, R$color.color_ffffff));
        lTabIndicator.f11390B = 16;
        lTabIndicator.f11412s = 0;
        lTabIndicator.setViewPager(this.f9251g0);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f9254j0 = true;
        C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
        if (this.f9250f0 == null) {
            this.f9250f0 = layoutInflater.inflate(R$layout.fragment_callscreen, viewGroup, false);
            if (C3767h1.m24250f0(m32996B()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                try {
                    if (m32896u() != null && m32896u().getWindow() != null) {
                        m32896u().getWindow().getDecorView().setLayoutDirection(1);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            m26850a2(this.f9250f0);
        }
        return this.f9250f0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K0 */
    public void mo25114K0() {
        ViewGroup viewGroup;
        super.mo25114K0();
        try {
            View view = this.f9250f0;
            if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
                return;
            }
            viewGroup.removeView(this.f9250f0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: T0 */
    public void mo25021T0() {
        super.mo25021T0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: V1 */
    public void mo26766V1(boolean z) {
        View peekDecorView;
        super.mo26766V1(z);
        if (!z) {
            C2568a.f8985d = false;
            return;
        }
        if (C2578f.m27076e()) {
            C2578f.m27064q(false);
            if (C3771i.m24192r(new Date(C2578f.m27078c()), new Date(System.currentTimeMillis()))) {
                C3810q.m24071b().m24070c("new_user_callscreen_show");
            }
        }
        C2568a.f8985d = true;
        if (this.f9254j0) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "isEnterOnCreate:" + this.f9254j0);
            }
            this.f9254j0 = false;
            this.f9252h0.m27168u2(1, "download_count");
        }
        CustomViewPager customViewPager = this.f9251g0;
        if (customViewPager != null) {
            int currentItem = customViewPager.getCurrentItem();
            if (currentItem == 0) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "popularFragment");
                }
                C3810q.m24071b().m24070c("callscreen_list_download_show_new");
            } else if (currentItem == 1) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "latestFragment");
                }
                C3810q.m24071b().m24070c("callscreen_list_last_show_new");
            }
            if (C2568a.f8986e) {
                C2568a.f8986e = false;
                this.f9251g0.setCurrentItem(1);
            }
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) m32996B().getSystemService("input_method");
            if (inputMethodManager == null || !inputMethodManager.isActive() || (peekDecorView = m32896u().getWindow().peekDecorView()) == null || peekDecorView.getWindowToken() == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f9253i0 = context;
    }
}
