package com.allinone.callerid.p160g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.fragment.app.Fragment;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.CirclePercentView;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.block.BlockManagerActivity;
import com.allinone.callerid.mvc.controller.block.BlockSettingActivity;
import com.allinone.callerid.mvc.controller.block.MyBlockListActivity;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p200l.p201a.AbstractC3041d;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.p202gg.C3760d;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.NativeAdView;
import java.lang.ref.WeakReference;
/* renamed from: com.allinone.callerid.g.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b.class */
public class View$OnClickListenerC2659b extends Fragment implements View.OnClickListener {

    /* renamed from: f0 */
    private Typeface f9171f0;

    /* renamed from: g0 */
    private View f9172g0;

    /* renamed from: h0 */
    private ImageView f9173h0;

    /* renamed from: i0 */
    private TextView f9174i0;

    /* renamed from: j0 */
    private FrameLayout f9175j0;

    /* renamed from: k0 */
    private FrameLayout f9176k0;

    /* renamed from: l0 */
    private MainActivity f9177l0;

    /* renamed from: m0 */
    private Context f9178m0;

    /* renamed from: n0 */
    private DialogInterfaceC0146a f9179n0;

    /* renamed from: o0 */
    private FrameLayout f9180o0;

    /* renamed from: q0 */
    private CirclePercentView f9182q0;

    /* renamed from: s0 */
    private int f9184s0;

    /* renamed from: t0 */
    private RunnableC2667e f9185t0;

    /* renamed from: u0 */
    private AbstractC5796a f9186u0;

    /* renamed from: v0 */
    private C5600d f9187v0;

    /* renamed from: w0 */
    private boolean f9188w0;

    /* renamed from: x0 */
    private int f9189x0;

    /* renamed from: y0 */
    private int f9190y0;

    /* renamed from: e0 */
    private final String f9170e0 = "EZBlockFragment";

    /* renamed from: p0 */
    private boolean f9181p0 = false;

    /* renamed from: r0 */
    private int f9183r0 = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$a.class */
    public class RunnableC2660a implements Runnable {

        /* renamed from: com.allinone.callerid.g.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$a$a.class */
        class RunnableC2661a implements Runnable {
            RunnableC2661a() {
                RunnableC2660a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    View$OnClickListenerC2659b.this.f9184s0 = 0;
                    View$OnClickListenerC2659b.this.f9173h0.setImageResource(R$drawable.block_finish);
                    View$OnClickListenerC2659b.this.f9182q0.setVisibility(8);
                    TextView textView = View$OnClickListenerC2659b.this.f9174i0;
                    textView.setText(View$OnClickListenerC2659b.this.f9178m0.getResources().getString(R$string.lastupdate) + ": " + C3771i.m24204f(System.currentTimeMillis()));
                    C3711a1.m24602P0(System.currentTimeMillis());
                    View$OnClickListenerC2659b view$OnClickListenerC2659b = View$OnClickListenerC2659b.this;
                    view$OnClickListenerC2659b.m26901v2(view$OnClickListenerC2659b.f9177l0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC2660a() {
            View$OnClickListenerC2659b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (View$OnClickListenerC2659b.this.f9184s0 < View$OnClickListenerC2659b.this.f9183r0) {
                View$OnClickListenerC2659b.m26920c2(View$OnClickListenerC2659b.this, 5);
                View$OnClickListenerC2659b.this.f9177l0.runOnUiThread(View$OnClickListenerC2659b.this.f9185t0);
                try {
                    Thread.sleep(150L);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            View$OnClickListenerC2659b.this.f9177l0.runOnUiThread(new RunnableC2661a());
        }
    }

    /* renamed from: com.allinone.callerid.g.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$b.class */
    class C2662b implements AbstractC3041d {
        C2662b() {
            View$OnClickListenerC2659b.this = r4;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: a */
        public void mo24848a() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "onSuccess");
            }
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: b */
        public void mo24847b() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "onEnd");
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$c.class */
    public class View$OnClickListenerC2663c implements View.OnClickListener {
        View$OnClickListenerC2663c() {
            View$OnClickListenerC2659b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (View$OnClickListenerC2659b.this.f9179n0 != null) {
                View$OnClickListenerC2659b.this.f9179n0.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$d.class */
    public class C2664d implements AbstractC2790b {

        /* renamed from: com.allinone.callerid.g.b$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$d$a.class */
        class C2665a implements AbstractC5796a.AbstractC5799c {
            C2665a() {
                C2664d.this = r4;
            }

            @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
            /* renamed from: a */
            public void mo17848a(AbstractC5796a abstractC5796a) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onUnifiedNativeAdLoaded");
                }
                try {
                    View$OnClickListenerC2659b.this.f9186u0 = abstractC5796a;
                    NativeAdView nativeAdView = (NativeAdView) View$OnClickListenerC2659b.this.m32972L().inflate(R$layout.aad_offline_result, (ViewGroup) null);
                    C3760d.m24325a(abstractC5796a, nativeAdView);
                    if (View$OnClickListenerC2659b.this.f9180o0 == null) {
                        return;
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "fl_junk");
                    }
                    View$OnClickListenerC2659b.this.f9180o0.removeAllViews();
                    View$OnClickListenerC2659b.this.f9180o0.addView(nativeAdView);
                    View$OnClickListenerC2659b.this.f9180o0.setVisibility(0);
                    View$OnClickListenerC2659b.this.f9180o0 = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.g.b$d$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$d$b.class */
        class C2666b extends AbstractC5596b {
            C2666b() {
                C2664d.this = r4;
            }

            @Override // com.google.android.gms.ads.AbstractC5596b
            /* renamed from: n */
            public void mo9079n(C5756j c5756j) {
                super.mo9079n(c5756j);
            }

            @Override // com.google.android.gms.ads.AbstractC5596b
            /* renamed from: r */
            public void mo9076r() {
                super.mo9076r();
                if (View$OnClickListenerC2659b.this.f9179n0 != null) {
                    View$OnClickListenerC2659b.this.f9179n0.dismiss();
                }
            }
        }

        C2664d() {
            View$OnClickListenerC2659b.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                View$OnClickListenerC2659b.this.f9188w0 = true;
                C5600d.C5601a c5601a = new C5600d.C5601a(View$OnClickListenerC2659b.this.f9178m0, "ca-app-pub-5825926894918682/1530656055");
                c5601a.m18290c(new C2665a());
                c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
                View$OnClickListenerC2659b.this.f9187v0 = c5601a.m18288e(new C2666b()).m18292a();
                View$OnClickListenerC2659b.this.f9187v0.m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.b$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/b$e.class */
    public static class RunnableC2667e implements Runnable {

        /* renamed from: d */
        final WeakReference<View$OnClickListenerC2659b> f9198d;

        RunnableC2667e(View$OnClickListenerC2659b view$OnClickListenerC2659b) {
            this.f9198d = new WeakReference<>(view$OnClickListenerC2659b);
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnClickListenerC2659b view$OnClickListenerC2659b = this.f9198d.get();
            if (view$OnClickListenerC2659b != null) {
                view$OnClickListenerC2659b.f9182q0.setPercentage(view$OnClickListenerC2659b.f9184s0);
            }
        }
    }

    /* renamed from: c2 */
    static /* synthetic */ int m26920c2(View$OnClickListenerC2659b view$OnClickListenerC2659b, int i) {
        int i2 = view$OnClickListenerC2659b.f9184s0 + i;
        view$OnClickListenerC2659b.f9184s0 = i2;
        return i2;
    }

    /* renamed from: s2 */
    private void m26904s2(View view) {
        this.f9189x0 = C3719c1.m24431b(this.f9178m0, R$attr.bg_rect_not_update, R$drawable.bg_rect_not_update);
        this.f9190y0 = C3719c1.m24431b(this.f9178m0, R$attr.bg_rect_update, R$drawable.bg_rect_update);
        this.f9173h0 = (ImageView) view.findViewById(R$id.iv_update);
        this.f9174i0 = (TextView) view.findViewById(R$id.tv_offline_date);
        TextView textView = (TextView) view.findViewById(R$id.tv_update);
        this.f9175j0 = (FrameLayout) view.findViewById(R$id.fl_update);
        this.f9182q0 = (CirclePercentView) view.findViewById(R$id.circleProgressBar);
        this.f9176k0 = (FrameLayout) view.findViewById(R$id.fl_update_bg);
        this.f9175j0.setOnClickListener(this);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R$id.rl_my_block_list);
        FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R$id.rl_blocked_history);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        ((FrameLayout) view.findViewById(R$id.rl_block_settings)).setOnClickListener(this);
        if (C3767h1.m24250f0(this.f9178m0).booleanValue()) {
            ((ImageView) view.findViewById(R$id.iv_my_block_list)).setRotation(180.0f);
            ((ImageView) view.findViewById(R$id.iv_blocked_history)).setRotation(180.0f);
            ((ImageView) view.findViewById(R$id.iv_block_settings)).setRotation(180.0f);
        }
        ((TextView) view.findViewById(R$id.tv_update_database)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_update_database_des)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_my_block_list)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_my_block_list_des)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_blocked_history)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_blocked_history_des)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_block_settings)).setTypeface(this.f9171f0);
        ((TextView) view.findViewById(R$id.tv_block_settings_des)).setTypeface(this.f9171f0);
        this.f9174i0.setTypeface(this.f9171f0);
        textView.setTypeface(this.f9171f0);
        long m24516m = C3711a1.m24516m();
        if (m24516m == 0) {
            TextView textView2 = this.f9174i0;
            textView2.setText(m32941X().getString(R$string.lastupdate) + ": " + C3771i.m24204f(System.currentTimeMillis()));
        } else {
            TextView textView3 = this.f9174i0;
            textView3.setText(m32941X().getString(R$string.lastupdate) + ": " + C3771i.m24204f(m24516m));
        }
        m26903t2(m24516m);
        this.f9185t0 = new RunnableC2667e(this);
    }

    /* renamed from: t2 */
    private void m26903t2(long j) {
        try {
            if (System.currentTimeMillis() - j > 120000) {
                this.f9176k0.setBackgroundResource(this.f9190y0);
                this.f9175j0.setClickable(true);
                this.f9173h0.setImageResource(R$drawable.block_call);
                this.f9184s0 = 0;
                this.f9182q0.setVisibility(8);
            } else {
                this.f9173h0.setImageResource(R$drawable.block_finish);
                this.f9176k0.setBackgroundResource(this.f9189x0);
                this.f9175j0.setClickable(false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: u2 */
    private void m26902u2() {
        C2786a.m26600a(new C2664d());
    }

    /* renamed from: v2 */
    public void m26901v2(Activity activity) {
        try {
            View inflate = LayoutInflater.from(activity).inflate(R$layout.dialog_set_success, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
            ((TextView) inflate.findViewById(R$id.tv_content)).setVisibility(8);
            textView.setText(activity.getResources().getString(R$string.spam_protection_updated));
            this.f9180o0 = (FrameLayout) inflate.findViewById(R$id.fl_junk_admob);
            textView.setTypeface(this.f9171f0);
            ((ImageView) inflate.findViewById(R$id.lb_missed_close)).setOnClickListener(new View$OnClickListenerC2663c());
            if (m32917k0() && !activity.isFinishing()) {
                this.f9179n0 = new DialogInterfaceC0146a.C0147a(activity).m35557r(inflate).m35571d(true).m35556s();
            }
            if (!this.f9188w0) {
                return;
            }
            if (this.f9186u0 == null) {
                C5600d c5600d = this.f9187v0;
                if (c5600d == null || c5600d.m18295a()) {
                    return;
                }
                m26902u2();
                return;
            }
            NativeAdView nativeAdView = (NativeAdView) m32972L().inflate(R$layout.aad_offline_result, (ViewGroup) null);
            C3760d.m24325a(this.f9186u0, nativeAdView);
            if (this.f9180o0 != null) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "ad has,show ad");
                }
                this.f9180o0.removeAllViews();
                this.f9180o0.addView(nativeAdView);
                this.f9180o0.setVisibility(0);
                this.f9180o0 = null;
            }
            this.f9186u0 = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f9172g0 == null) {
            try {
                this.f9181p0 = true;
                C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
                this.f9172g0 = layoutInflater.inflate(R$layout.fragment_block, viewGroup, false);
                if (C3767h1.m24250f0(this.f9178m0).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                    try {
                        MainActivity mainActivity = this.f9177l0;
                        if (mainActivity != null && mainActivity.getWindow() != null) {
                            this.f9177l0.getWindow().getDecorView().setLayoutDirection(1);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                this.f9171f0 = C3739f1.m24359b();
                m26904s2(this.f9172g0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return this.f9172g0;
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
            View view = this.f9172g0;
            if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
                return;
            }
            viewGroup.removeView(this.f9172g0);
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
        super.mo26766V1(z);
        if (z) {
            try {
                if (!this.f9181p0 || this.f9178m0 == null) {
                    return;
                }
                m26903t2(C3711a1.m24516m());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_update /* 2131296803 */:
                if (!C3767h1.m24261a(EZCallApplication.m26146c())) {
                    Toast.makeText(this.f9178m0, m32931d0(R$string.search_desc), 0).show();
                    return;
                }
                this.f9182q0.setVisibility(0);
                this.f9176k0.setBackgroundResource(this.f9189x0);
                this.f9175j0.setClickable(false);
                m26902u2();
                C3772i0.m24190a().f12015b.execute(new RunnableC2660a());
                C3045f.m26164h(EZCallApplication.m26146c(), false, new C2662b());
                return;
            case R$id.rl_block_settings /* 2131297483 */:
                try {
                    m32942W1(new Intent(this.f9178m0, BlockSettingActivity.class));
                    this.f9177l0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.rl_blocked_history /* 2131297485 */:
                try {
                    m32942W1(new Intent(this.f9178m0, BlockManagerActivity.class));
                    this.f9177l0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R$id.rl_my_block_list /* 2131297516 */:
                try {
                    m32942W1(new Intent(this.f9178m0, MyBlockListActivity.class));
                    this.f9177l0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f9177l0 = (MainActivity) context;
        this.f9178m0 = context;
    }
}
