package com.allinone.callerid.p160g;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.CallLogActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.mvc.controller.recorder.RecordListActivity;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3792k0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.p202gg.C3756c;
import com.allinone.callerid.util.p202gg.C3760d;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.NativeAdView;
/* renamed from: com.allinone.callerid.g.i */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i.class */
public class View$OnClickListenerC2726i extends Fragment implements View.OnClickListener {

    /* renamed from: A0 */
    private ImageView f9350A0;

    /* renamed from: B0 */
    private ImageView f9351B0;

    /* renamed from: e0 */
    private UnknownContactActivity f9352e0;

    /* renamed from: f0 */
    private View f9353f0;

    /* renamed from: g0 */
    private ImageView f9354g0;

    /* renamed from: h0 */
    private Context f9355h0;

    /* renamed from: i0 */
    private CallLogBean f9356i0;

    /* renamed from: j0 */
    private FrameLayout f9357j0;

    /* renamed from: k0 */
    private ImageView f9358k0;

    /* renamed from: l0 */
    private ImageView f9359l0;

    /* renamed from: m0 */
    private boolean f9360m0;

    /* renamed from: n0 */
    private TextView f9361n0;

    /* renamed from: o0 */
    private TextView f9362o0;

    /* renamed from: p0 */
    private TextView f9363p0;

    /* renamed from: q0 */
    private TextView f9364q0;

    /* renamed from: r0 */
    private TextView f9365r0;

    /* renamed from: s0 */
    private TextView f9366s0;

    /* renamed from: t0 */
    private View f9367t0;

    /* renamed from: u0 */
    private FrameLayout f9368u0;

    /* renamed from: v0 */
    private TextView f9369v0;

    /* renamed from: w0 */
    private View f9370w0;

    /* renamed from: x0 */
    private Animation f9371x0;

    /* renamed from: y0 */
    private TextView f9372y0;

    /* renamed from: z0 */
    private TextView f9373z0;

    /* renamed from: com.allinone.callerid.g.i$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$a.class */
    public class RunnableC2727a implements Runnable {

        /* renamed from: com.allinone.callerid.g.i$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$a$a.class */
        class C2728a implements AbstractC2790b {
            C2728a() {
                RunnableC2727a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
            /* renamed from: a */
            public void mo24346a(boolean z) {
                if (z) {
                    View$OnClickListenerC2726i.this.m26743v2();
                }
            }
        }

        /* renamed from: com.allinone.callerid.g.i$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$a$b.class */
        class C2729b implements UnknownContactActivity.AbstractC3383m0 {
            C2729b() {
                RunnableC2727a.this = r4;
            }

            @Override // com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity.AbstractC3383m0
            /* renamed from: a */
            public void mo25356a(boolean z) {
                if (z) {
                    if (View$OnClickListenerC2726i.this.f9362o0 == null || View$OnClickListenerC2726i.this.f9363p0 == null) {
                        return;
                    }
                    View$OnClickListenerC2726i.this.f9362o0.setVisibility(0);
                    View$OnClickListenerC2726i.this.f9363p0.setVisibility(0);
                } else if (View$OnClickListenerC2726i.this.f9362o0 == null || View$OnClickListenerC2726i.this.f9363p0 == null) {
                } else {
                    View$OnClickListenerC2726i.this.f9362o0.setVisibility(8);
                    View$OnClickListenerC2726i.this.f9363p0.setVisibility(8);
                }
            }

            @Override // com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity.AbstractC3383m0
            /* renamed from: b */
            public void mo25355b(boolean z, String str) {
                try {
                    if (!z) {
                        if (View$OnClickListenerC2726i.this.f9364q0 == null) {
                            return;
                        }
                        View$OnClickListenerC2726i.this.f9364q0.setVisibility(8);
                    } else if (View$OnClickListenerC2726i.this.f9364q0 == null) {
                    } else {
                        String m24864x = View$OnClickListenerC2726i.this.f9356i0.m24864x();
                        int i = 1;
                        if (m24864x != null) {
                            i = 1;
                            if (!"".equals(m24864x)) {
                                i = 1 + Integer.parseInt(m24864x);
                            }
                        }
                        View$OnClickListenerC2726i.this.f9364q0.setText(i + " " + str + " " + View$OnClickListenerC2726i.this.m32941X().getString(R$string.reports));
                        View$OnClickListenerC2726i.this.f9364q0.setVisibility(0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC2727a() {
            View$OnClickListenerC2726i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2786a.m26600a(new C2728a());
            View$OnClickListenerC2726i.this.m26742w2();
            View$OnClickListenerC2726i.this.m26746s2();
            if (View$OnClickListenerC2726i.this.f9352e0 != null) {
                View$OnClickListenerC2726i.this.f9352e0.m25383n1(new C2729b());
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.i$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$b.class */
    public class C2730b implements AbstractC2790b {
        C2730b() {
            View$OnClickListenerC2726i.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (!z || !C3792k0.m24116u() || System.currentTimeMillis() - C3711a1.m24583U() <= 259200000 || !C3767h1.m24242j0(View$OnClickListenerC2726i.this.f9355h0) || !C3767h1.m24224s0(View$OnClickListenerC2726i.this.f9355h0) || C3767h1.m24232o0(View$OnClickListenerC2726i.this.f9355h0, C3792k0.m24136a())) {
                return;
            }
            if (C3792k0.m24132e() != null && !"".equals(C3792k0.m24132e())) {
                C3852t.m23961b(View$OnClickListenerC2726i.this.f9355h0, C3792k0.m24132e(), R$drawable.ic_photo_normal, View$OnClickListenerC2726i.this.f9350A0);
            }
            if (C3792k0.m24134c() != null && !"".equals(C3792k0.m24134c())) {
                View$OnClickListenerC2726i.this.f9372y0.setText(C3792k0.m24134c());
            }
            if (C3792k0.m24135b() != null && !"".equals(C3792k0.m24135b())) {
                View$OnClickListenerC2726i.this.f9373z0.setText(C3792k0.m24135b());
            }
            View$OnClickListenerC2726i.this.f9370w0.setVisibility(0);
            C3810q.m24071b().m24070c("pdt_recommend_show");
            View$OnClickListenerC2726i.this.f9351B0.setVisibility(8);
            if (!C3711a1.m24491s0()) {
                View$OnClickListenerC2726i.this.f9351B0.setVisibility(0);
                return;
            }
            View$OnClickListenerC2726i view$OnClickListenerC2726i = View$OnClickListenerC2726i.this;
            view$OnClickListenerC2726i.f9371x0 = AnimationUtils.loadAnimation(view$OnClickListenerC2726i.f9355h0, R$anim.iv_scale);
            View$OnClickListenerC2726i.this.f9371x0.setInterpolator(new LinearInterpolator());
            View$OnClickListenerC2726i.this.f9350A0.startAnimation(View$OnClickListenerC2726i.this.f9371x0);
            C3711a1.m24565Z1(false);
        }
    }

    /* renamed from: com.allinone.callerid.g.i$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$c.class */
    public class RunnableC2731c implements Runnable {

        /* renamed from: com.allinone.callerid.g.i$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$c$a.class */
        class RunnableC2732a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f9379d;

            RunnableC2732a(int i) {
                RunnableC2731c.this = r4;
                this.f9379d = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (this.f9379d <= 0) {
                        return;
                    }
                    View$OnClickListenerC2726i.this.f9354g0.setVisibility(0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC2731c() {
            View$OnClickListenerC2726i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnClickListenerC2726i.this.f9352e0.runOnUiThread(new RunnableC2732a(C2645b.m26967d().m26966e(View$OnClickListenerC2726i.this.f9356i0.m24880o())));
        }
    }

    /* renamed from: com.allinone.callerid.g.i$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$d.class */
    public class C2733d implements C3756c.AbstractC3759c {
        C2733d() {
            View$OnClickListenerC2726i.this = r4;
        }

        @Override // com.allinone.callerid.util.p202gg.C3756c.AbstractC3759c
        /* renamed from: a */
        public void mo24327a(AbstractC5796a abstractC5796a) {
            try {
                NativeAdView nativeAdView = (NativeAdView) View.inflate(View$OnClickListenerC2726i.this.f9352e0, R$layout.aad_pdt, null);
                C3760d.m24325a(abstractC5796a, nativeAdView);
                View$OnClickListenerC2726i.this.f9357j0.removeAllViews();
                View$OnClickListenerC2726i.this.f9357j0.addView(nativeAdView);
                View$OnClickListenerC2726i.this.f9357j0.setVisibility(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.allinone.callerid.util.p202gg.C3756c.AbstractC3759c
        /* renamed from: b */
        public void mo24326b() {
            C3756c.m24329c().m24330b();
            View$OnClickListenerC2726i.this.m26743v2();
        }
    }

    /* renamed from: com.allinone.callerid.g.i$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/i$e.class */
    public class C2734e implements AbstractC2795a {
        C2734e() {
            View$OnClickListenerC2726i.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            try {
                if (z) {
                    View$OnClickListenerC2726i.this.f9362o0.setVisibility(0);
                    View$OnClickListenerC2726i.this.f9363p0.setVisibility(0);
                } else {
                    View$OnClickListenerC2726i.this.f9362o0.setVisibility(8);
                    View$OnClickListenerC2726i.this.f9363p0.setVisibility(8);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: s2 */
    public void m26746s2() {
        CallLogBean callLogBean = this.f9356i0;
        if (callLogBean == null || callLogBean.m24880o() == null || "".equals(this.f9356i0.m24880o())) {
            return;
        }
        C2796b.m26587b(this.f9356i0.m24880o(), new C2734e());
    }

    /* renamed from: t2 */
    private void m26745t2() {
        this.f9352e0.getWindow().getDecorView().post(new RunnableC2727a());
    }

    /* renamed from: u2 */
    private void m26744u2(View view) {
        Typeface m24359b = C3739f1.m24359b();
        this.f9357j0 = (FrameLayout) view.findViewById(R$id.fl_junk_admob);
        this.f9358k0 = (ImageView) view.findViewById(R$id.btn_sim1);
        this.f9359l0 = (ImageView) view.findViewById(R$id.btn_sim2);
        this.f9361n0 = (TextView) view.findViewById(R$id.tv_contact_number);
        this.f9362o0 = (TextView) view.findViewById(R$id.tv_dian);
        this.f9363p0 = (TextView) view.findViewById(R$id.tv_is_block);
        this.f9364q0 = (TextView) view.findViewById(R$id.tv_spam_counts);
        this.f9365r0 = (TextView) view.findViewById(R$id.tv_contact_type);
        this.f9366s0 = (TextView) view.findViewById(R$id.tv_operator);
        ImageView imageView = (ImageView) view.findViewById(R$id.btn_contact_sms);
        this.f9367t0 = view.findViewById(R$id.line2);
        this.f9368u0 = (FrameLayout) view.findViewById(R$id.rl_location);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R$id.see_history);
        TextView textView = (TextView) view.findViewById(R$id.btn_see_history);
        this.f9354g0 = (ImageView) view.findViewById(R$id.btn_contact_record);
        this.f9369v0 = (TextView) view.findViewById(R$id.tv_contact_location);
        imageView.setOnClickListener(this);
        this.f9358k0.setOnClickListener(this);
        this.f9359l0.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        this.f9354g0.setOnClickListener(this);
        this.f9368u0.setOnClickListener(this);
        this.f9361n0.setTypeface(m24359b);
        this.f9362o0.setTypeface(m24359b);
        this.f9363p0.setTypeface(m24359b);
        this.f9364q0.setTypeface(m24359b);
        this.f9365r0.setTypeface(m24359b);
        this.f9366s0.setTypeface(m24359b);
        textView.setTypeface(m24359b);
        this.f9369v0.setTypeface(m24359b);
        this.f9370w0 = view.findViewById(R$id.rl_recommend);
        FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R$id.btn_recommend);
        this.f9372y0 = (TextView) view.findViewById(R$id.tv_title);
        this.f9373z0 = (TextView) view.findViewById(R$id.tv_content);
        this.f9350A0 = (ImageView) view.findViewById(R$id.icic);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_close);
        this.f9372y0.setTypeface(m24359b);
        this.f9373z0.setTypeface(m24359b);
        ((TextView) view.findViewById(R$id.tv_ad)).setTypeface(m24359b);
        this.f9351B0 = (ImageView) view.findViewById(R$id.iv_smmallred);
        frameLayout2.setOnClickListener(this);
        imageView2.setOnClickListener(this);
        C2786a.m26600a(new C2730b());
    }

    /* renamed from: v2 */
    public void m26743v2() {
        if (this.f9357j0 != null) {
            C3756c.m24329c().m24328d(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/5960855653", new C2733d());
        }
    }

    /* renamed from: w2 */
    public void m26742w2() {
        try {
            CallLogBean callLogBean = this.f9356i0;
            if (callLogBean == null) {
                return;
            }
            if (callLogBean.m24880o() != null) {
                new Thread(new RunnableC2731c()).start();
            }
            boolean m24448j = C3714b1.m24448j(this.f9355h0);
            this.f9360m0 = m24448j;
            if (m24448j) {
                this.f9358k0.setVisibility(0);
                this.f9359l0.setVisibility(0);
            } else {
                this.f9358k0.setImageResource(R$drawable.ic_tel);
            }
            CallLogBean callLogBean2 = this.f9356i0;
            if (callLogBean2 == null || callLogBean2.m24932P() == null || "".equals(this.f9356i0.m24932P()) || this.f9356i0.m24864x() == null || "".equals(this.f9356i0.m24864x()) || this.f9356i0.m24864x().equals("0")) {
                this.f9364q0.setVisibility(8);
            } else {
                this.f9364q0.setVisibility(0);
                TextView textView = this.f9364q0;
                textView.setText(this.f9356i0.m24864x() + " " + this.f9356i0.m24932P() + " " + m32941X().getString(R$string.reports));
            }
            if (this.f9356i0.m24909c() == null || "".equals(this.f9356i0.m24909c())) {
                this.f9368u0.setVisibility(8);
                this.f9367t0.setVisibility(8);
            } else {
                this.f9369v0.setText(this.f9356i0.m24909c());
                this.f9368u0.setVisibility(0);
                this.f9367t0.setVisibility(0);
            }
            if (this.f9356i0.m24906d() != null && !"".equals(this.f9356i0.m24906d())) {
                this.f9361n0.setText(this.f9356i0.m24906d());
            } else if (this.f9356i0.m24892i() != null && !"".equals(this.f9356i0.m24892i())) {
                this.f9361n0.setText(this.f9356i0.m24892i());
            } else if (this.f9356i0.m24880o() != null) {
                if (C3767h1.m24216w0(this.f9356i0.m24880o())) {
                    this.f9361n0.setText(m32941X().getString(R$string.unknow_call));
                } else {
                    this.f9361n0.setText(this.f9356i0.m24880o());
                }
            }
            if (this.f9356i0.m24876r() != null && !"".equals(this.f9356i0.m24876r())) {
                this.f9365r0.setText(this.f9356i0.m24876r());
                this.f9365r0.setVisibility(0);
                if (this.f9356i0.m24872t() == null || "".equals(this.f9356i0.m24872t())) {
                    return;
                }
                TextView textView2 = this.f9366s0;
                textView2.setText(" • " + this.f9356i0.m24872t());
                this.f9366s0.setVisibility(0);
            } else if (this.f9356i0.m24958B() == null || "".equals(this.f9356i0.m24958B())) {
                if (this.f9356i0.m24872t() == null || "".equals(this.f9356i0.m24872t())) {
                    return;
                }
                this.f9366s0.setText(this.f9356i0.m24872t());
                this.f9366s0.setVisibility(0);
            } else {
                this.f9365r0.setText(this.f9356i0.m24958B());
                this.f9365r0.setVisibility(0);
                if (this.f9356i0.m24872t() == null || "".equals(this.f9356i0.m24872t())) {
                    return;
                }
                TextView textView3 = this.f9366s0;
                textView3.setText(" • " + this.f9356i0.m24872t());
                this.f9366s0.setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        UnknownContactActivity unknownContactActivity;
        C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
        if (this.f9353f0 == null) {
            this.f9353f0 = View.inflate(m32896u(), R$layout.fragment_unknowncontent, null);
        }
        if (C3767h1.m24250f0(this.f9355h0).booleanValue() && Build.VERSION.SDK_INT >= 17 && (unknownContactActivity = this.f9352e0) != null) {
            unknownContactActivity.getWindow().getDecorView().setLayoutDirection(1);
        }
        m26744u2(this.f9353f0);
        if (m32896u() != null) {
            this.f9356i0 = (CallLogBean) m32896u().getIntent().getParcelableExtra("contact_tony");
        }
        return this.f9353f0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: c1 */
    public void mo25018c1(View view, Bundle bundle) {
        super.mo25018c1(view, bundle);
        m26745t2();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.btn_contact_record /* 2131296420 */:
                try {
                    Intent intent = new Intent(this.f9355h0, RecordListActivity.class);
                    intent.putExtra("recordnumber", this.f9356i0.m24880o());
                    intent.putExtra("recordname", this.f9356i0.m24884m());
                    intent.addFlags(268435456);
                    m32942W1(intent);
                    this.f9352e0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.btn_contact_sms /* 2131296421 */:
                try {
                    if (!C3767h1.m24216w0(this.f9356i0.m24880o())) {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setType("vnd.android-dir/mms-sms");
                        intent2.setData(Uri.parse("smsto:" + this.f9356i0.m24880o()));
                        intent2.addFlags(268468224);
                        m32942W1(intent2);
                    } else {
                        Toast.makeText(this.f9352e0, this.f9355h0.getResources().getString(R$string.unknow_call), 0).show();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                C3810q.m24071b().m24070c("btn_contact_sms");
                return;
            case R$id.btn_recommend /* 2131296428 */:
                C3810q.m24071b().m24070c("pdt_recommend_click");
                C3767h1.m24277K0(this.f9355h0, C3792k0.m24136a(), "showcaller");
                this.f9370w0.setVisibility(8);
                return;
            case R$id.btn_sim1 /* 2131296433 */:
                C3714b1.m24457a(Boolean.valueOf(this.f9360m0), this.f9356i0, this.f9355h0);
                return;
            case R$id.btn_sim2 /* 2131296434 */:
                C3714b1.m24456b(Boolean.valueOf(this.f9360m0), this.f9356i0, this.f9355h0);
                return;
            case R$id.iv_close /* 2131296970 */:
                this.f9370w0.setVisibility(8);
                C3711a1.m24466y1(System.currentTimeMillis());
                return;
            case R$id.rl_location /* 2131297510 */:
                try {
                    if (this.f9356i0.m24909c() == null || "".equals(this.f9356i0.m24909c())) {
                        return;
                    }
                    C3767h1.m24212y0(this.f9355h0, this.f9356i0.m24909c());
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case R$id.see_history /* 2131297584 */:
                CallLogBean callLogBean = this.f9356i0;
                if (callLogBean != null && callLogBean.m24880o() != null && !"".equals(this.f9356i0.m24880o())) {
                    Intent intent3 = new Intent(this.f9355h0, CallLogActivity.class);
                    intent3.putExtra("call_log_number", this.f9356i0.m24880o());
                    m32942W1(intent3);
                    this.f9352e0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
                C3810q.m24071b().m24070c("see_history");
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f9355h0 = context;
        this.f9352e0 = (UnknownContactActivity) context;
    }
}
