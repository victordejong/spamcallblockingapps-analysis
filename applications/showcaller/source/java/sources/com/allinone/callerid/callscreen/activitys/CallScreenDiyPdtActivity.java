package com.allinone.callerid.callscreen.activitys;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.jzvd.C2129t;
import cn.jzvd.Jzvd;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$style;
import com.allinone.callerid.callscreen.CustomMedia.JZMediaExo;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.callscreen.view.MyJzvdStd;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p150e.p151e.AbstractC2557c;
import com.allinone.callerid.p144d.p150e.p151e.C2552a;
import com.allinone.callerid.p144d.p150e.p151e.C2558d;
import com.allinone.callerid.p144d.p150e.p153g.AbstractC2564a;
import com.allinone.callerid.p144d.p150e.p153g.C2565b;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.p144d.p154f.C2575c;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p202gg.C3760d;
import com.allinone.callerid.util.p204j1.C3776a;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.NativeAdView;
import java.io.File;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity.class */
public class CallScreenDiyPdtActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f8156A;

    /* renamed from: B */
    private FrameLayout f8157B;

    /* renamed from: C */
    private HomeInfo f8158C;

    /* renamed from: D */
    private boolean f8159D;

    /* renamed from: E */
    private RelativeLayout f8160E;

    /* renamed from: F */
    private boolean f8161F;

    /* renamed from: G */
    private RadioButton f8162G;

    /* renamed from: H */
    private RadioButton f8163H;

    /* renamed from: I */
    private RadioButton f8164I;

    /* renamed from: J */
    private RadioButton f8165J;

    /* renamed from: K */
    private Dialog f8166K;

    /* renamed from: L */
    private LinearLayout f8167L;

    /* renamed from: O */
    private DialogInterfaceC0146a f8170O;

    /* renamed from: Q */
    private ConstraintLayout f8172Q;

    /* renamed from: R */
    private FrameLayout f8173R;

    /* renamed from: S */
    private LinearLayout f8174S;

    /* renamed from: T */
    private boolean f8175T;

    /* renamed from: U */
    private FrameLayout f8176U;

    /* renamed from: V */
    private FrameLayout f8177V;

    /* renamed from: W */
    private boolean f8178W;

    /* renamed from: X */
    private boolean f8179X;

    /* renamed from: Y */
    private FrameLayout f8180Y;

    /* renamed from: Z */
    private AbstractC5796a f8181Z;

    /* renamed from: a0 */
    private C5600d f8182a0;

    /* renamed from: b0 */
    private ImageView f8183b0;

    /* renamed from: c0 */
    private boolean f8184c0;

    /* renamed from: v */
    private Typeface f8186v;

    /* renamed from: w */
    private Typeface f8187w;

    /* renamed from: x */
    private Boolean f8188x;

    /* renamed from: y */
    private MyJzvdStd f8189y;

    /* renamed from: z */
    private ImageView f8190z;

    /* renamed from: u */
    private final String f8185u = "CallScreenDiyPdtActivity";

    /* renamed from: M */
    private boolean f8168M = true;

    /* renamed from: N */
    private boolean f8169N = true;

    /* renamed from: P */
    ArrayList<PersonaliseContact> f8171P = new ArrayList<>();

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a.class */
    public class RunnableC2332a implements Runnable {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a.class */
        public class RunnableC2333a implements Runnable {

            /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$a$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a$a.class */
            class C2334a implements AbstractC2564a {
                C2334a() {
                    RunnableC2333a.this = r4;
                }

                @Override // com.allinone.callerid.p144d.p150e.p153g.AbstractC2564a
                /* renamed from: a */
                public void mo27111a(boolean z) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "设置默认铃声:" + z);
                    }
                }
            }

            RunnableC2333a() {
                RunnableC2332a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C3776a.m24154k(EZCallApplication.m26146c())) {
                    C2565b.m27109b(C2568a.f8984c, CallScreenDiyPdtActivity.this.f8158C.getName(), new C2334a());
                }
            }
        }

        RunnableC2332a() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2575c.m27084b(CallScreenDiyPdtActivity.this.f8158C.getPath(), C2568a.f8984c);
            CallScreenDiyPdtActivity.this.runOnUiThread(new RunnableC2333a());
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b.class */
    public class RunnableC2335b implements Runnable {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a.class */
        public class RunnableC2336a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f8195d;

            /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$b$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a$a.class */
            class C2337a implements AbstractC2564a {
                C2337a() {
                    RunnableC2336a.this = r4;
                }

                @Override // com.allinone.callerid.p144d.p150e.p153g.AbstractC2564a
                /* renamed from: a */
                public void mo27111a(boolean z) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "设置联系人铃声:" + z);
                    }
                }
            }

            RunnableC2336a(String str) {
                RunnableC2335b.this = r4;
                this.f8195d = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C3776a.m24154k(EZCallApplication.m26146c())) {
                    C2565b.m27110a(this.f8195d, CallScreenDiyPdtActivity.this.f8158C.getName(), CallScreenDiyPdtActivity.this.f8171P, new C2337a());
                }
            }
        }

        RunnableC2335b() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = C2568a.f8983b + CallScreenDiyPdtActivity.this.f8158C.getName() + ".aac";
            C2575c.m27084b(CallScreenDiyPdtActivity.this.f8158C.getPath(), str);
            CallScreenDiyPdtActivity.this.runOnUiThread(new RunnableC2336a(str));
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$c.class */
    class RunnableC2338c implements Runnable {
        RunnableC2338c() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CallScreenDiyPdtActivity.this.m27622o0();
            CallScreenDiyPdtActivity.this.m27623n0();
            C3810q.m24071b().m24070c("callscreen_diy_pdt_show");
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$d.class */
    public class C2339d implements CompoundButton.OnCheckedChangeListener {
        C2339d() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                CallScreenDiyPdtActivity.this.f8169N = false;
                return;
            }
            CallScreenDiyPdtActivity.this.f8169N = true;
            CallScreenDiyPdtActivity.this.f8163H.setChecked(false);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e.class */
    public class C2340e implements CompoundButton.OnCheckedChangeListener {
        C2340e() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                CallScreenDiyPdtActivity.this.f8162G.setChecked(false);
                Intent intent = new Intent(CallScreenDiyPdtActivity.this, CallScreenSelectActivity.class);
                intent.putExtra("theme_name", CallScreenDiyPdtActivity.this.f8158C.getName());
                intent.putExtra("is_default", CallScreenDiyPdtActivity.this.f8158C.isIsdefault());
                CallScreenDiyPdtActivity.this.startActivityForResult(intent, 8989);
                CallScreenDiyPdtActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$f.class */
    public class C2341f implements CompoundButton.OnCheckedChangeListener {
        C2341f() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                CallScreenDiyPdtActivity.this.f8168M = false;
                return;
            }
            CallScreenDiyPdtActivity.this.f8168M = true;
            CallScreenDiyPdtActivity.this.f8165J.setChecked(false);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$g.class */
    public class C2342g implements CompoundButton.OnCheckedChangeListener {
        C2342g() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                CallScreenDiyPdtActivity.this.f8164I.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h.class */
    public class View$OnClickListenerC2343h implements View.OnClickListener {
        View$OnClickListenerC2343h() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallScreenDiyPdtActivity.this.f8170O != null) {
                CallScreenDiyPdtActivity.this.f8170O.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i.class */
    public class C2344i implements AbstractC2790b {

        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$i$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a.class */
        class C2345a implements AbstractC5796a.AbstractC5799c {
            C2345a() {
                C2344i.this = r4;
            }

            @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
            /* renamed from: a */
            public void mo17848a(AbstractC5796a abstractC5796a) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onUnifiedNativeAdLoaded");
                }
                try {
                    CallScreenDiyPdtActivity.this.f8181Z = abstractC5796a;
                    NativeAdView nativeAdView = (NativeAdView) CallScreenDiyPdtActivity.this.getLayoutInflater().inflate(R$layout.aad_offline_result, (ViewGroup) null);
                    C3760d.m24325a(abstractC5796a, nativeAdView);
                    if (CallScreenDiyPdtActivity.this.f8180Y == null) {
                        return;
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "fl_junk");
                    }
                    CallScreenDiyPdtActivity.this.f8180Y.removeAllViews();
                    CallScreenDiyPdtActivity.this.f8180Y.addView(nativeAdView);
                    CallScreenDiyPdtActivity.this.f8180Y.setVisibility(0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$i$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$b.class */
        class C2346b extends AbstractC5596b {
            C2346b() {
                C2344i.this = r4;
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
                if (CallScreenDiyPdtActivity.this.f8170O != null) {
                    CallScreenDiyPdtActivity.this.f8170O.dismiss();
                }
            }
        }

        C2344i() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                C5600d.C5601a c5601a = new C5600d.C5601a(CallScreenDiyPdtActivity.this.getApplicationContext(), "ca-app-pub-5825926894918682/1530656055");
                c5601a.m18290c(new C2345a());
                c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
                CallScreenDiyPdtActivity.this.f8182a0 = c5601a.m18288e(new C2346b()).m18292a();
                CallScreenDiyPdtActivity.this.f8182a0.m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j.class */
    public class C2347j implements AbstractC2557c {
        C2347j() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.p151e.AbstractC2557c
        /* renamed from: a */
        public void mo24812a(boolean z, HomeInfo homeInfo) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "设置默认来电秀" + z);
            }
            C1764a.m28939b(CallScreenDiyPdtActivity.this).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
            CallScreenDiyPdtActivity.this.f8184c0 = true;
            CallScreenDiyPdtActivity callScreenDiyPdtActivity = CallScreenDiyPdtActivity.this;
            callScreenDiyPdtActivity.m27615v0(callScreenDiyPdtActivity);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenDiyPdtActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$k.class */
    public class C2348k implements C2552a.AbstractC2553a {
        C2348k() {
            CallScreenDiyPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.p151e.C2552a.AbstractC2553a
        /* renamed from: a */
        public void mo27126a(boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "单独设置联系人来电秀" + z);
            }
            C1764a.m28939b(CallScreenDiyPdtActivity.this).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
            CallScreenDiyPdtActivity.this.f8184c0 = true;
            CallScreenDiyPdtActivity callScreenDiyPdtActivity = CallScreenDiyPdtActivity.this;
            callScreenDiyPdtActivity.m27615v0(callScreenDiyPdtActivity);
        }
    }

    /* renamed from: n0 */
    public void m27623n0() {
        try {
            if (this.f8188x.booleanValue()) {
                this.f8190z.setImageResource(R$drawable.ic_back_oppo);
            }
            HomeInfo homeInfo = (HomeInfo) getIntent().getSerializableExtra("homeinfo");
            this.f8158C = homeInfo;
            if (homeInfo == null) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "homeInfo:" + this.f8158C.toString());
            }
            if (this.f8158C.getPath() != null && !"".equals(this.f8158C.getPath())) {
                if (new File(this.f8158C.getPath()).exists()) {
                    this.f8178W = true;
                } else {
                    this.f8178W = false;
                }
            }
            if (!this.f8158C.isDownloaded() || !this.f8178W || !C3776a.m24159f(getApplicationContext())) {
                return;
            }
            m27619r0(this.f8158C);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o0 */
    public void m27622o0() {
        this.f8189y = (MyJzvdStd) findViewById(R$id.jz_video);
        this.f8190z = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f8190z.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f8156A = (ImageView) findViewById(R$id.iv_silent);
        this.f8183b0 = (ImageView) findViewById(R$id.iv_perview);
        this.f8157B = (FrameLayout) findViewById(R$id.fl_set_callscreen);
        TextView textView = (TextView) findViewById(R$id.tv_set_callscreen);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_set_callscreen_guide);
        TextView textView2 = (TextView) findViewById(R$id.tv_set_callscreen_guide);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_guide);
        this.f8160E = relativeLayout;
        if (this.f8161F) {
            relativeLayout.setVisibility(0);
            C2578f.m27059v(false);
        }
        this.f8172Q = (ConstraintLayout) findViewById(R$id.ll_call_action);
        this.f8173R = (FrameLayout) findViewById(R$id.fl_set_callscreen_preview);
        TextView textView3 = (TextView) findViewById(R$id.tv_set_callscreen_preview);
        this.f8174S = (LinearLayout) findViewById(R$id.ll_preview_top);
        TextView textView4 = (TextView) findViewById(R$id.tv_number_name);
        if ("1".equals(C3806p.m24083d(getApplicationContext()).getCountry_code())) {
            textView4.setText("Emily");
        }
        TextView textView5 = (TextView) findViewById(R$id.tv_number);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R$id.rl_bg);
        this.f8176U = (FrameLayout) findViewById(R$id.fl_shade_top);
        this.f8177V = (FrameLayout) findViewById(R$id.fl_shade_bottom);
        this.f8190z.setOnClickListener(this);
        this.f8156A.setOnClickListener(this);
        this.f8183b0.setOnClickListener(this);
        this.f8157B.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        this.f8173R.setOnClickListener(this);
        relativeLayout2.setOnClickListener(this);
        textView5.setTypeface(this.f8187w);
        textView4.setTypeface(this.f8187w);
        textView.setTypeface(this.f8187w);
        textView3.setTypeface(this.f8187w);
        textView2.setTypeface(this.f8187w);
        textView2.setTypeface(this.f8186v);
    }

    /* renamed from: p0 */
    private void m27621p0() {
        try {
            C2786a.m26600a(new C2344i());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: q0 */
    public static void m27620q0(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i < 19) {
            return;
        }
        Window window = activity.getWindow();
        if (i < 21) {
            window.addFlags(67108864);
            return;
        }
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 256 | 1024);
        window.setStatusBarColor(0);
    }

    /* renamed from: r0 */
    private void m27619r0(HomeInfo homeInfo) {
        try {
            ComponentCallbacks2C3958c.m23676v(this).mo23629s(homeInfo.getPath()).m23660A0(this.f8189y.f7337j0);
            Jzvd.m27996L();
            C2129t c2129t = new C2129t(Uri.parse(homeInfo.getPath()));
            c2129t.f7391e = true;
            this.f8189y.setUp(c2129t, 1, JZMediaExo.class);
            this.f8189y.mo27462U();
            this.f8179X = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: s0 */
    private void m27618s0() {
        Dialog dialog = this.f8166K;
        if (dialog != null) {
            dialog.dismiss();
        }
        if (this.f8158C != null) {
            m27621p0();
            C3810q.m24071b().m24070c("callscreen_diy_set");
            this.f8158C.setIsdiy(true);
            if (this.f8168M && this.f8158C.isIsdiy()) {
                this.f8158C.setUseVideoAudioRing(true);
            }
            if (this.f8169N) {
                C2558d.m27121a(this.f8158C, new C2347j());
            } else {
                C2552a.m27127b(this.f8158C, this.f8171P, new C2348k());
            }
        }
    }

    /* renamed from: t0 */
    private void m27617t0() {
        HomeInfo homeInfo = this.f8158C;
        if (homeInfo == null || homeInfo.isIsdiy()) {
            return;
        }
        if (this.f8169N) {
            C3772i0.m24190a().f12015b.execute(new RunnableC2332a());
        } else {
            C3772i0.m24190a().f12015b.execute(new RunnableC2335b());
        }
    }

    /* renamed from: u0 */
    private void m27616u0(boolean z) {
        try {
            this.f8166K = new Dialog(this, R$style.BottomDialog);
            View inflate = LayoutInflater.from(this).inflate(R$layout.dialog_set_callscreen, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(R$id.lb_missed_close);
            this.f8162G = (RadioButton) inflate.findViewById(R$id.radio_set_default);
            this.f8163H = (RadioButton) inflate.findViewById(R$id.radio_set_contacts);
            this.f8164I = (RadioButton) inflate.findViewById(R$id.radio_set_video_ringtone);
            this.f8165J = (RadioButton) inflate.findViewById(R$id.radio_set_default_ringtone);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_set);
            this.f8167L = (LinearLayout) inflate.findViewById(R$id.ll_guide_set);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_counts);
            if (!this.f8158C.isIsdefault() && this.f8158C.getContacts_diy_counts() != 0) {
                textView.setText(String.valueOf(this.f8158C.getContacts_diy_counts()));
                textView.setVisibility(0);
            }
            this.f8162G.setOnCheckedChangeListener(new C2339d());
            this.f8163H.setOnCheckedChangeListener(new C2340e());
            this.f8164I.setOnCheckedChangeListener(new C2341f());
            this.f8165J.setOnCheckedChangeListener(new C2342g());
            this.f8167L.setOnClickListener(this);
            imageView.setOnClickListener(this);
            frameLayout.setOnClickListener(this);
            this.f8162G.setTypeface(this.f8186v);
            this.f8163H.setTypeface(this.f8186v);
            this.f8164I.setTypeface(this.f8186v);
            this.f8165J.setTypeface(this.f8186v);
            this.f8162G.setTypeface(this.f8186v);
            ((TextView) inflate.findViewById(R$id.tv_callscreen_title)).setTypeface(this.f8186v);
            ((TextView) inflate.findViewById(R$id.tv_ringtone_title)).setTypeface(this.f8186v);
            ((TextView) inflate.findViewById(R$id.tv_set_callscreen)).setTypeface(this.f8186v);
            ((TextView) inflate.findViewById(R$id.tv_set_guide)).setTypeface(this.f8186v);
            this.f8166K.setContentView(inflate);
            ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
            layoutParams.width = getResources().getDisplayMetrics().widthPixels;
            inflate.setLayoutParams(layoutParams);
            if (this.f8166K.getWindow() != null) {
                this.f8166K.getWindow().setGravity(80);
                this.f8166K.getWindow().setWindowAnimations(R$style.BottomDialog_Animation);
            }
            this.f8166K.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: v0 */
    public void m27615v0(Context context) {
        try {
            View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_set_success, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
            this.f8180Y = (FrameLayout) inflate.findViewById(R$id.fl_junk_admob);
            textView.setTypeface(this.f8186v);
            textView2.setTypeface(this.f8186v);
            ((ImageView) inflate.findViewById(R$id.lb_missed_close)).setOnClickListener(new View$OnClickListenerC2343h());
            this.f8170O = new DialogInterfaceC0146a.C0147a(context).m35557r(inflate).m35571d(true).m35556s();
            if (this.f8181Z == null) {
                C5600d c5600d = this.f8182a0;
                if (c5600d == null || c5600d.m18295a()) {
                    return;
                }
                m27621p0();
                return;
            }
            NativeAdView nativeAdView = (NativeAdView) getLayoutInflater().inflate(R$layout.aad_offline_result, (ViewGroup) null);
            C3760d.m24325a(this.f8181Z, nativeAdView);
            if (this.f8180Y != null) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "ad has,show ad");
                }
                this.f8180Y.removeAllViews();
                this.f8180Y.addView(nativeAdView);
                this.f8180Y.setVisibility(0);
                this.f8180Y = null;
            }
            this.f8181Z = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        HomeInfo homeInfo;
        RadioButton radioButton;
        Bundle extras;
        super.onActivityResult(i, i2, intent);
        if (i == 8989 && i2 == 9898) {
            if (intent != null && (extras = intent.getExtras()) != null) {
                this.f8171P = extras.getParcelableArrayList("selected_contacts");
            }
            ArrayList<PersonaliseContact> arrayList = this.f8171P;
            if ((arrayList != null && arrayList.size() > 0) || (radioButton = this.f8162G) == null) {
                return;
            }
            radioButton.setChecked(true);
        } else if (i != 970 || i2 != 980 || (homeInfo = this.f8158C) == null || !homeInfo.isDownloaded()) {
        } else {
            m27618s0();
            if (!this.f8168M) {
                return;
            }
            m27617t0();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        try {
            if (Jzvd.m27993b()) {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_set /* 2131296784 */:
                LinearLayout linearLayout = this.f8167L;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                if (!C3776a.m24164a(getApplicationContext())) {
                    Intent intent = new Intent();
                    intent.setClass(this, OpenPerActivity.class);
                    startActivityForResult(intent, 970);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                }
                HomeInfo homeInfo = this.f8158C;
                if (homeInfo == null || !homeInfo.isDownloaded()) {
                    return;
                }
                m27618s0();
                if (!this.f8168M) {
                    return;
                }
                m27617t0();
                return;
            case R$id.fl_set_callscreen /* 2131296785 */:
                m27616u0(C2578f.m27070k());
                return;
            case R$id.fl_set_callscreen_guide /* 2131296786 */:
                this.f8160E.setVisibility(8);
                this.f8161F = false;
                m27616u0(C2578f.m27070k());
                return;
            case R$id.fl_set_callscreen_preview /* 2131296787 */:
                m27616u0(C2578f.m27070k());
                return;
            case R$id.iv_back /* 2131296951 */:
                if (this.f8184c0) {
                    setResult(888);
                } else {
                    setResult(777);
                }
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.iv_perview /* 2131297028 */:
                if (!this.f8175T) {
                    this.f8175T = true;
                    this.f8172Q.setVisibility(0);
                    this.f8173R.setVisibility(0);
                    this.f8174S.setVisibility(0);
                    this.f8157B.setVisibility(8);
                    this.f8176U.setVisibility(8);
                    this.f8177V.setVisibility(8);
                    this.f8183b0.setImageResource(R$drawable.back_perview);
                    return;
                }
                this.f8175T = false;
                this.f8172Q.setVisibility(8);
                this.f8173R.setVisibility(8);
                this.f8174S.setVisibility(8);
                this.f8157B.setVisibility(0);
                this.f8176U.setVisibility(0);
                this.f8177V.setVisibility(0);
                this.f8183b0.setImageResource(R$drawable.pdt_preview_white_24dp);
                return;
            case R$id.iv_silent /* 2131297055 */:
                if (!this.f8179X) {
                    return;
                }
                if (this.f8159D) {
                    this.f8189y.m27991d();
                    this.f8159D = false;
                    this.f8156A.setImageResource(R$drawable.pdt_sound);
                    return;
                }
                this.f8189y.m27988s();
                this.f8159D = true;
                this.f8156A.setImageResource(R$drawable.pdt_nosound);
                return;
            case R$id.lb_missed_close /* 2131297124 */:
                Dialog dialog = this.f8166K;
                if (dialog == null) {
                    return;
                }
                dialog.dismiss();
                return;
            case R$id.rl_bg /* 2131297475 */:
                if (this.f8161F) {
                    return;
                }
                if (!this.f8175T) {
                    this.f8175T = true;
                    this.f8172Q.setVisibility(0);
                    this.f8173R.setVisibility(0);
                    this.f8174S.setVisibility(0);
                    this.f8157B.setVisibility(8);
                    this.f8176U.setVisibility(8);
                    this.f8177V.setVisibility(8);
                    this.f8183b0.setImageResource(R$drawable.back_perview);
                    return;
                }
                this.f8175T = false;
                this.f8172Q.setVisibility(8);
                this.f8173R.setVisibility(8);
                this.f8174S.setVisibility(8);
                this.f8157B.setVisibility(0);
                this.f8176U.setVisibility(0);
                this.f8177V.setVisibility(0);
                this.f8183b0.setImageResource(R$drawable.pdt_preview_white_24dp);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m27620q0(this);
        setContentView(R$layout.activity_callscreen_diy);
        Boolean m24250f0 = C3767h1.m24250f0(this);
        this.f8188x = m24250f0;
        if (m24250f0.booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f8186v = C3739f1.m24359b();
        this.f8187w = C3739f1.m24360a();
        getWindow().getDecorView().post(new RunnableC2338c());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            Jzvd.m27996L();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.f8161F) {
                this.f8161F = false;
                this.f8160E.setVisibility(8);
                return true;
            } else if (this.f8184c0) {
                setResult(888);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return true;
            } else {
                setResult(777);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        try {
            Jzvd.m27987t();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            Jzvd.m27986u();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
