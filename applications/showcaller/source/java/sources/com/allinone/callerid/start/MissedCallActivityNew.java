package com.allinone.callerid.start;

import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.dialog.DialogC2595k;
import com.allinone.callerid.dialog.DialogMissed;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.mvc.controller.recommend.RecommendActivity;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2807a;
import com.allinone.callerid.p162i.p163a.p172g.C2811d;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.C3709a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.p202gg.C3749a;
import com.allinone.callerid.util.p204j1.C3784b;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import java.util.Date;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew.class */
public class MissedCallActivityNew extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f11756A;

    /* renamed from: B */
    private TextView f11757B;

    /* renamed from: C */
    private boolean f11758C;

    /* renamed from: D */
    private FrameLayout f11759D;

    /* renamed from: E */
    private FrameLayout f11760E;

    /* renamed from: G */
    private Context f11762G;

    /* renamed from: H */
    private ConstraintLayout f11763H;

    /* renamed from: I */
    private ConstraintLayout f11764I;

    /* renamed from: J */
    private boolean f11765J;

    /* renamed from: K */
    private TextView f11766K;

    /* renamed from: L */
    private TextView f11767L;

    /* renamed from: M */
    private int f11768M;

    /* renamed from: N */
    private LinearLayout f11769N;

    /* renamed from: O */
    private LinearLayout f11770O;

    /* renamed from: P */
    private ImageView f11771P;

    /* renamed from: Q */
    private ImageView f11772Q;

    /* renamed from: R */
    private TextView f11773R;

    /* renamed from: S */
    private TextView f11774S;

    /* renamed from: T */
    private LinearLayout f11775T;

    /* renamed from: U */
    private ImageView f11776U;

    /* renamed from: V */
    private TextView f11777V;

    /* renamed from: W */
    private CallLogBean f11778W;

    /* renamed from: X */
    private ImageView f11779X;

    /* renamed from: Y */
    private FrameLayout f11780Y;

    /* renamed from: Z */
    private boolean f11781Z;

    /* renamed from: a0 */
    private ConstraintLayout f11782a0;

    /* renamed from: b0 */
    private FrameLayout f11783b0;

    /* renamed from: c0 */
    private TextView f11784c0;

    /* renamed from: d0 */
    private FrameLayout f11785d0;

    /* renamed from: e0 */
    private TextView f11786e0;

    /* renamed from: f0 */
    private FrameLayout f11787f0;

    /* renamed from: g0 */
    private TextView f11788g0;

    /* renamed from: h0 */
    private FrameLayout f11789h0;

    /* renamed from: i0 */
    private TextView f11790i0;

    /* renamed from: j0 */
    private TextView f11791j0;

    /* renamed from: k0 */
    private int f11792k0;

    /* renamed from: v */
    private EZSearchResult f11794v;

    /* renamed from: w */
    private LinearLayout f11795w;

    /* renamed from: x */
    private TextView f11796x;

    /* renamed from: y */
    private TextView f11797y;

    /* renamed from: z */
    private TextView f11798z;

    /* renamed from: u */
    private final String f11793u = "MissedCallActivityNew";

    /* renamed from: F */
    private String f11761F = "";

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$a.class */
    class RunnableC3676a implements Runnable {
        RunnableC3676a() {
            MissedCallActivityNew.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MissedCallActivityNew.this.m24720C();
            MissedCallActivityNew.this.m24708i0();
            C3709a.m24672a(MissedCallActivityNew.this);
        }
    }

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$b.class */
    public class C3677b implements AbstractC5796a.AbstractC5799c {
        C3677b() {
            MissedCallActivityNew.this = r4;
        }

        @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
        /* renamed from: a */
        public void mo17848a(AbstractC5796a abstractC5796a) {
            C3749a.m24343a().f11963b = abstractC5796a;
            Log.e("wjjj", "成功");
            Intent intent = new Intent(EZCallApplication.m26146c(), DialogMissed.class);
            intent.addFlags(268435456);
            MissedCallActivityNew.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$c.class */
    public class C3678c extends AbstractC5596b {
        C3678c() {
            MissedCallActivityNew.this = r4;
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
        }
    }

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$d.class */
    class RunnableC3679d implements Runnable {
        RunnableC3679d() {
            MissedCallActivityNew.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MissedCallActivityNew.this.f11768M != 0 || System.currentTimeMillis() - C3711a1.m24547e0() <= 86400000) {
                return;
            }
            C3711a1.m24621K1(C3711a1.m24543f0() + 1);
        }
    }

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$e.class */
    class C3680e implements AbstractC2807a {
        C3680e() {
            MissedCallActivityNew.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2807a
        /* renamed from: a */
        public void mo24706a(long j) {
            if (j != 0) {
                if (MissedCallActivityNew.this.f11794v.getDate() == 1) {
                    TextView textView = MissedCallActivityNew.this.f11796x;
                    textView.setText(C3771i.m24205e(new Date(j)) + " " + MissedCallActivityNew.this.getResources().getString(R$string.missed_call));
                    return;
                }
                TextView textView2 = MissedCallActivityNew.this.f11796x;
                textView2.setText(C3771i.m24205e(new Date(j)) + " " + MissedCallActivityNew.this.getResources().getString(R$string.just_call));
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$f.class */
    public class C3681f implements AbstractC2790b {
        C3681f() {
            MissedCallActivityNew.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                MissedCallActivityNew.this.m24711f0();
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$g.class */
    public class C3682g implements AbstractC2795a {

        /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$g$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$g$a.class */
        class DialogInterface$OnClickListenerC3683a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3683a() {
                C3682g.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$g$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$g$b.class */
        public class DialogInterface$OnClickListenerC3684b implements DialogInterface.OnClickListener {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$g$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$g$b$a.class */
            public class C3685a implements AbstractC2795a {

                /* renamed from: a */
                final /* synthetic */ String f11808a;

                /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$g$b$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$g$b$a$a.class */
                class C3686a implements AbstractC2766a {
                    C3686a() {
                        C3685a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                    }
                }

                /* renamed from: com.allinone.callerid.start.MissedCallActivityNew$g$b$a$b */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/MissedCallActivityNew$g$b$a$b.class */
                class C3687b implements AbstractC2766a {
                    C3687b() {
                        C3685a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        CollectInfo collectInfo = new CollectInfo();
                        collectInfo.setNumber(C3685a.this.f11808a);
                        collectInfo.setUser_blocked("1");
                        collectInfo.setUser_commented("0");
                        collectInfo.setUser_reported("0");
                        collectInfo.setUser_upload_recording("0");
                        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                        MissedCallActivityNew.this.finish();
                    }
                }

                C3685a(String str) {
                    DialogInterface$OnClickListenerC3684b.this = r4;
                    this.f11808a = str;
                }

                @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
                /* renamed from: a */
                public void mo24705a(boolean z) {
                    if (z) {
                        C2796b.m26584e(this.f11808a, new C3686a());
                        return;
                    }
                    EZBlackList eZBlackList = new EZBlackList();
                    if (MissedCallActivityNew.this.f11794v.getName() == null || "".equals(MissedCallActivityNew.this.f11794v.getName())) {
                        eZBlackList.setName("");
                    } else {
                        eZBlackList.setName(MissedCallActivityNew.this.f11794v.getName());
                    }
                    eZBlackList.setNumber(this.f11808a);
                    eZBlackList.setIs_myblock("true");
                    C2796b.m26588a(eZBlackList, new C3687b());
                }
            }

            DialogInterface$OnClickListenerC3684b() {
                C3682g.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String replace = MissedCallActivityNew.this.f11794v.getNumber().replace("-", "");
                    if ("".equals(replace)) {
                        return;
                    }
                    C2796b.m26587b(replace, new C3685a(replace));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3682g() {
            MissedCallActivityNew.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            String str;
            String str2;
            try {
                if (MissedCallActivityNew.this.isFinishing()) {
                    return;
                }
                if (z) {
                    str = MissedCallActivityNew.this.getResources().getString(R$string.unblock) + " " + MissedCallActivityNew.this.f11794v.getNumber();
                    str2 = MissedCallActivityNew.this.getResources().getString(R$string.unblock_big);
                } else {
                    str = MissedCallActivityNew.this.getResources().getString(R$string.block) + " " + MissedCallActivityNew.this.f11794v.getNumber() + " ?";
                    str2 = MissedCallActivityNew.this.getResources().getString(R$string.block_big);
                }
                DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(MissedCallActivityNew.this).m35567h(str).m35561n(str2, new DialogInterface$OnClickListenerC3684b()).m35565j(MissedCallActivityNew.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3683a()).m35574a();
                m35574a.show();
                m35574a.m35577g(-1).setTextColor(MissedCallActivityNew.this.getResources().getColor(2131099706));
                m35574a.m35577g(-2).setTextColor(MissedCallActivityNew.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: C */
    public void m24720C() {
        this.f11792k0 = C3719c1.m24431b(this, R$attr.bg_dialog_tip_spam, R$drawable.bg_dialog_tip_spam);
        Typeface m24359b = C3739f1.m24359b();
        Typeface m24360a = C3739f1.m24360a();
        ((RelativeLayout) findViewById(R$id.al_all)).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R$id.lb_missed_close);
        this.f11759D = (FrameLayout) findViewById(R$id.btn_call);
        this.f11760E = (FrameLayout) findViewById(R$id.btn_details);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_detial);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.btn_block_spam);
        this.f11756A = (ImageView) findViewById(R$id.photo_view);
        this.f11763H = (ConstraintLayout) findViewById(R$id.ll_spam_call);
        this.f11764I = (ConstraintLayout) findViewById(R$id.ll_contact_make);
        this.f11769N = (LinearLayout) findViewById(R$id.ll_number_location);
        this.f11770O = (LinearLayout) findViewById(R$id.ll_spam_comment);
        this.f11771P = (ImageView) findViewById(R$id.im_call);
        this.f11772Q = (ImageView) findViewById(R$id.im_detail);
        this.f11779X = (ImageView) findViewById(R$id.iv_is_contacts);
        this.f11780Y = (FrameLayout) findViewById(R$id.btn_callscreen);
        TextView textView = (TextView) findViewById(R$id.tv_callscreen);
        this.f11780Y.setOnClickListener(this);
        textView.setTypeface(m24359b);
        this.f11782a0 = (ConstraintLayout) findViewById(R$id.ll_contact_missed);
        this.f11783b0 = (FrameLayout) findViewById(R$id.btn_contact_call);
        this.f11784c0 = (TextView) findViewById(R$id.tv_contact_call);
        this.f11785d0 = (FrameLayout) findViewById(R$id.btn_contact_sms);
        this.f11786e0 = (TextView) findViewById(R$id.tv_contact_sms);
        this.f11787f0 = (FrameLayout) findViewById(R$id.btn_contact_detail);
        this.f11788g0 = (TextView) findViewById(R$id.tv_message);
        this.f11789h0 = (FrameLayout) findViewById(R$id.btn_contact_callscreen);
        this.f11790i0 = (TextView) findViewById(R$id.tv_block);
        this.f11783b0.setOnClickListener(this);
        this.f11785d0.setOnClickListener(this);
        this.f11787f0.setOnClickListener(this);
        this.f11789h0.setOnClickListener(this);
        this.f11784c0.setTypeface(m24359b);
        this.f11786e0.setTypeface(m24359b);
        this.f11788g0.setTypeface(m24359b);
        this.f11790i0.setTypeface(m24359b);
        imageView.setOnClickListener(this);
        this.f11759D.setOnClickListener(this);
        this.f11760E.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        this.f11795w = (LinearLayout) findViewById(R$id.rl_float_top);
        this.f11767L = (TextView) findViewById(R$id.tv_missed_number);
        this.f11791j0 = (TextView) findViewById(R$id.tv_contacts_number);
        this.f11796x = (TextView) findViewById(R$id.tv_missed_time);
        this.f11766K = (TextView) findViewById(R$id.tv_comment_tags);
        this.f11797y = (TextView) findViewById(R$id.tv_number_name);
        this.f11757B = (TextView) findViewById(R$id.tv_spam);
        this.f11798z = (TextView) findViewById(R$id.tv_missed_location);
        this.f11774S = (TextView) findViewById(R$id.tv_call);
        this.f11773R = (TextView) findViewById(R$id.tv_detail);
        ((TextView) findViewById(R$id.tv_tip)).setTypeface(m24359b);
        this.f11774S.setTypeface(m24360a);
        this.f11773R.setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_block_spam)).setTypeface(m24360a);
        this.f11767L.setTypeface(m24359b);
        this.f11791j0.setTypeface(m24359b);
        this.f11796x.setTypeface(m24359b);
        this.f11766K.setTypeface(m24359b);
        this.f11797y.setTypeface(m24360a);
        this.f11757B.setTypeface(m24360a);
        this.f11798z.setTypeface(m24359b);
        this.f11775T = (LinearLayout) findViewById(R$id.ll_wiki);
        this.f11776U = (ImageView) findViewById(R$id.iv_wiki);
        TextView textView2 = (TextView) findViewById(R$id.tv_wiki);
        this.f11777V = textView2;
        textView2.setTypeface(m24359b);
    }

    /* renamed from: d0 */
    private void m24713d0() {
        String str = this.f11761F;
        if (str == null || "".equals(str)) {
            return;
        }
        if (C3714b1.m24448j(getApplicationContext())) {
            int m24504p = C3711a1.m24504p();
            if (m24504p != -1) {
                C3714b1.m24454d(this, m24504p, this.f11761F);
            } else if (Build.VERSION.SDK_INT >= 22) {
                C3714b1.m24439s(this, this.f11761F);
            } else {
                try {
                    C3809p0.m24078a(getApplicationContext(), this.f11761F);
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } catch (Exception e) {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_phone_related), 1).show();
                }
            }
        } else {
            try {
                C3809p0.m24078a(getApplicationContext(), this.f11761F);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } catch (Exception e2) {
                Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_phone_related), 1).show();
            }
        }
        C3810q.m24071b().m24070c("missed_dialog_call");
    }

    /* renamed from: e0 */
    private void m24712e0() {
        try {
            if (C3767h1.m24220u0() && C3711a1.m24591S() && this.f11765J) {
                C3711a1.m24474w1(false);
                if (Build.VERSION.SDK_INT < 23) {
                    m24707j0(getApplicationContext());
                } else if (Settings.canDrawOverlays(getApplicationContext())) {
                    m24707j0(getApplicationContext());
                }
            } else if (System.currentTimeMillis() - C3711a1.m24551d0() > 86400000) {
                C2786a.m26600a(new C3681f());
            } else if (C3767h1.m24253e(getApplicationContext()) && this.f11768M == 0) {
                Intent intent = new Intent(this, RecommendActivity.class);
                intent.setFlags(268435456);
                startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f0 */
    public void m24711f0() {
        C3810q.m24071b().m24070c("missed_request_num");
        C5600d.C5601a c5601a = new C5600d.C5601a(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/7437588851");
        c5601a.m18290c(new C3677b());
        c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
        c5601a.m18288e(new C3678c()).m18292a().m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
    }

    /* renamed from: g0 */
    private void m24710g0() {
        try {
            if (!C3711a1.m24469x2().booleanValue()) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26 && i < 28 && !C3784b.m24142d(getApplicationContext())) {
                    DialogC2588f dialogC2588f = new DialogC2588f(this, R$style.CustomDialog4);
                    dialogC2588f.setCanceledOnTouchOutside(false);
                    dialogC2588f.show();
                }
            }
            EZSearchResult eZSearchResult = this.f11794v;
            if (eZSearchResult != null && !"".equals(eZSearchResult.getNumber())) {
                C2796b.m26587b(this.f11794v.getNumber(), new C3682g());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h0 */
    private void m24709h0() {
        if (this.f11768M == 1) {
            C3852t.m23960c(this, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.f11794v.getRaw_contact_id()), "", R$drawable.ic_photo_normal, this.f11756A);
        } else if (this.f11794v.getIcon() != null && !"".equals(this.f11794v.getIcon())) {
            C3852t.m23961b(this.f11762G, this.f11794v.getIcon(), R$drawable.ic_photo_normal, this.f11756A);
        } else if (this.f11768M != 0 || this.f11794v.getType_label() == null || "".equals(this.f11794v.getType_label()) || this.f11794v.getReport_count() <= 0) {
            this.f11756A.setImageResource(R$drawable.ic_photo_normal);
        } else {
            this.f11756A.setImageResource(R$drawable.ic_photo_spam);
        }
    }

    /* renamed from: i0 */
    public void m24708i0() {
        if (this.f11794v != null) {
            try {
                m24709h0();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("missed_activity", "ezSearchResult" + this.f11794v.toString());
                }
                if (!this.f11758C) {
                    if (this.f11794v.getDate() == 1) {
                        this.f11765J = true;
                        this.f11796x.setText(getResources().getString(R$string.missed_call_ago));
                    } else {
                        this.f11796x.setText(getResources().getString(R$string.just_call));
                    }
                }
                if (this.f11794v.getNumber() != null && !"".equals(this.f11794v.getNumber())) {
                    this.f11761F = this.f11794v.getNumber();
                }
                String format_tel_number = this.f11794v.getFormat_tel_number();
                if (this.f11794v.getName() == null || "".equals(this.f11794v.getName())) {
                    if (format_tel_number == null || "".equals(format_tel_number)) {
                        this.f11797y.setText(this.f11794v.getNumber());
                    } else {
                        this.f11797y.setText(format_tel_number);
                    }
                    this.f11767L.setVisibility(8);
                } else {
                    this.f11797y.setText(this.f11794v.getName());
                    if (format_tel_number == null || "".equals(format_tel_number)) {
                        this.f11767L.setText(this.f11794v.getNumber());
                        this.f11791j0.setText(this.f11794v.getNumber());
                    } else {
                        this.f11767L.setText(format_tel_number);
                        this.f11791j0.setText(format_tel_number);
                    }
                    this.f11767L.setVisibility(0);
                }
                if (this.f11794v.getLocation() != null && !"".equals(this.f11794v.getLocation())) {
                    this.f11798z.setVisibility(0);
                    this.f11798z.setText(this.f11794v.getLocation());
                }
                if (this.f11768M == 0) {
                    String type_label = this.f11794v.getType_label();
                    if (type_label != null && !"".equals(type_label) && this.f11794v.getReport_count() > 0) {
                        this.f11795w.setBackgroundResource(this.f11792k0);
                        this.f11756A.setImageResource(R$drawable.ic_photo_spam);
                        this.f11763H.setVisibility(0);
                        this.f11764I.setVisibility(8);
                        this.f11757B.setVisibility(0);
                        TextView textView = this.f11757B;
                        textView.setText(this.f11794v.getReport_count() + " " + getResources().getString(R$string.reports) + " " + type_label);
                    }
                    String subtype = this.f11794v.getSubtype();
                    String keyword = this.f11794v.getKeyword();
                    if (subtype != null && !"".equals(subtype)) {
                        JSONArray jSONArray = new JSONArray(subtype);
                        if (jSONArray.length() > 0) {
                            String string = jSONArray.getJSONObject(0).getString("subtype");
                            this.f11766K.setVisibility(0);
                            this.f11766K.setText(string);
                        }
                    } else if (keyword != null && !"".equals(keyword)) {
                        this.f11766K.setVisibility(0);
                        this.f11766K.setText(keyword);
                    } else if (this.f11757B.getVisibility() == 8 && (this.f11794v.getLocation() == null || "".equals(this.f11794v.getLocation()))) {
                        this.f11769N.setVisibility(8);
                    } else if (this.f11757B.getVisibility() == 8) {
                        this.f11770O.setVisibility(8);
                    }
                    int block_count = this.f11794v.getBlock_count();
                    int declined_count = this.f11794v.getDeclined_count();
                    String name = this.f11794v.getName();
                    if (type_label != null && !"".equals(type_label)) {
                        if (name == null || "".equals(name)) {
                            C3810q.m24071b().m24070c("spam_no_name_missed_dialog");
                        } else {
                            C3810q.m24071b().m24070c("spam_name_missed_dialog");
                        }
                        if (block_count >= 3) {
                            this.f11776U.setImageResource(R$drawable.iv_block_count);
                            String str = EZCallApplication.m26146c().f9914h;
                            if (!"zh".equals(str) && !"zh-TW".equals(str)) {
                                TextView textView2 = this.f11777V;
                                textView2.setText(block_count + " " + getResources().getString(R$string.wiki_blocked));
                                this.f11775T.setVisibility(0);
                                if (name != null || "".equals(name)) {
                                    C3810q.m24071b().m24070c("spam_no_name_missed_blocked");
                                } else {
                                    C3810q.m24071b().m24070c("spam_name_missed_blocked");
                                }
                            }
                            TextView textView3 = this.f11777V;
                            textView3.setText(getResources().getString(R$string.wiki_blocked) + block_count + getResources().getString(R$string.time_as));
                            this.f11775T.setVisibility(0);
                            if (name != null) {
                            }
                            C3810q.m24071b().m24070c("spam_no_name_missed_blocked");
                        } else if (declined_count >= 3) {
                            this.f11776U.setImageResource(R$drawable.iv_declined_count);
                            String str2 = EZCallApplication.m26146c().f9914h;
                            if (!"zh".equals(str2) && !"zh-TW".equals(str2)) {
                                TextView textView4 = this.f11777V;
                                textView4.setText(declined_count + " " + getResources().getString(R$string.wiki_declined));
                                this.f11775T.setVisibility(0);
                                if (name != null || "".equals(name)) {
                                    C3810q.m24071b().m24070c("spam_no_name_missed_declined");
                                } else {
                                    C3810q.m24071b().m24070c("spam_name_missed_declined");
                                }
                            }
                            TextView textView5 = this.f11777V;
                            textView5.setText(getResources().getString(R$string.wiki_declined) + declined_count + getResources().getString(R$string.time_as));
                            this.f11775T.setVisibility(0);
                            if (name != null) {
                            }
                            C3810q.m24071b().m24070c("spam_no_name_missed_declined");
                        }
                    } else if (name == null || "".equals(name)) {
                        C3810q.m24071b().m24070c("no_spam_no_name_missed_dialog");
                        if (block_count >= 3) {
                            this.f11776U.setImageResource(R$drawable.iv_block_count);
                            String str3 = EZCallApplication.m26146c().f9914h;
                            if (!"zh".equals(str3) && !"zh-TW".equals(str3)) {
                                TextView textView6 = this.f11777V;
                                textView6.setText(block_count + " " + getResources().getString(R$string.wiki_blocked));
                                this.f11775T.setVisibility(0);
                                C3810q.m24071b().m24070c("no_spam_no_name_missed_blocked");
                            }
                            TextView textView7 = this.f11777V;
                            textView7.setText(getResources().getString(R$string.wiki_blocked) + block_count + getResources().getString(R$string.time_as));
                            this.f11775T.setVisibility(0);
                            C3810q.m24071b().m24070c("no_spam_no_name_missed_blocked");
                        } else if (declined_count >= 3) {
                            this.f11776U.setImageResource(R$drawable.iv_declined_count);
                            String str4 = EZCallApplication.m26146c().f9914h;
                            if (!"zh".equals(str4) && !"zh-TW".equals(str4)) {
                                TextView textView8 = this.f11777V;
                                textView8.setText(declined_count + " " + getResources().getString(R$string.wiki_declined));
                                this.f11775T.setVisibility(0);
                                C3810q.m24071b().m24070c("no_spam_no_name_missed_declined");
                            }
                            TextView textView9 = this.f11777V;
                            textView9.setText(getResources().getString(R$string.wiki_declined) + declined_count + getResources().getString(R$string.time_as));
                            this.f11775T.setVisibility(0);
                            C3810q.m24071b().m24070c("no_spam_no_name_missed_declined");
                        }
                    }
                } else {
                    this.f11759D.setBackgroundResource(R$drawable.bg_missed_full);
                    this.f11771P.setImageResource(R$drawable.dial_button);
                    this.f11774S.setTextColor(getResources().getColor(R$color.white));
                    this.f11760E.setBackgroundResource(R$drawable.bg_missed_empty);
                    this.f11772Q.setImageResource(R$drawable.ic_find_blue);
                    this.f11773R.setTextColor(getResources().getColor(2131099706));
                    this.f11779X.setVisibility(0);
                    if (this.f11794v.getDate() == 1) {
                        if (!this.f11781Z) {
                            this.f11764I.setVisibility(8);
                            this.f11769N.setVisibility(8);
                            this.f11782a0.setVisibility(0);
                            this.f11791j0.setVisibility(0);
                            if (C2578f.m27073h()) {
                                this.f11789h0.setVisibility(0);
                            }
                        } else if (C2578f.m27073h()) {
                            this.f11759D.setVisibility(8);
                            this.f11780Y.setVisibility(0);
                        }
                    }
                }
                CallLogBean callLogBean = new CallLogBean();
                this.f11778W = callLogBean;
                callLogBean.m24955C0(this.f11794v.getName());
                this.f11778W.m24951E0(this.f11794v.getNumber());
                this.f11778W.m24905d0(this.f11794v.getAddress());
                this.f11778W.m24891i1(this.f11794v.getWebsite());
                this.f11778W.m24902e0(this.f11794v.getIcon());
                this.f11778W.m24933O0(this.f11794v.getType());
                this.f11778W.m24901e1(this.f11794v.getType_label());
                this.f11778W.m24915Z0(this.f11794v.getT_p());
                this.f11778W.m24913a1(this.f11794v.getTel_number());
                this.f11778W.m24939L0(String.valueOf(this.f11794v.getReport_count()));
                this.f11778W.m24896g0(this.f11794v.getAddress());
                this.f11778W.m24937M0(this.f11794v.getName());
                this.f11778W.m24863x0(this.f11794v.getFormat_tel_number());
                this.f11778W.m24945H0(this.f11794v.getOperator());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: j0 */
    private void m24707j0(Context context) {
        try {
            DialogC2595k dialogC2595k = new DialogC2595k(context, R$style.CustomDialog4, false);
            if (Build.VERSION.SDK_INT >= 26) {
                if (dialogC2595k.getWindow() != null) {
                    dialogC2595k.getWindow().setType(2038);
                }
            } else if (dialogC2595k.getWindow() != null) {
                dialogC2595k.getWindow().setType(2003);
            }
            dialogC2595k.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            switch (view.getId()) {
                case R$id.al_all /* 2131296342 */:
                    m24712e0();
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                case R$id.btn_block_spam /* 2131296410 */:
                    m24710g0();
                    C3810q.m24071b().m24070c("missed_btn_block_spam");
                    return;
                case R$id.btn_call /* 2131296411 */:
                    m24713d0();
                    return;
                case R$id.btn_callscreen /* 2131296415 */:
                    Intent intent = new Intent(this, MainActivity.class);
                    intent.putExtra("is_callscreen", true);
                    startActivity(intent);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    finish();
                    return;
                case R$id.btn_contact_call /* 2131296417 */:
                    m24713d0();
                    return;
                case R$id.btn_contact_callscreen /* 2131296418 */:
                    Intent intent2 = new Intent(this, MainActivity.class);
                    intent2.putExtra("is_callscreen", true);
                    startActivity(intent2);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    finish();
                    return;
                case R$id.btn_contact_detail /* 2131296419 */:
                    try {
                        if (this.f11794v != null) {
                            Intent intent3 = new Intent(this, ContactActivity.class);
                            Bundle bundle = new Bundle();
                            bundle.putParcelable("contact_tony", this.f11778W);
                            intent3.putExtra("is_missed", true);
                            intent3.putExtras(bundle);
                            intent3.setFlags(268435456);
                            startActivity(intent3);
                            finish();
                            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    C3810q.m24071b().m24070c("missed_btn_detial");
                    return;
                case R$id.btn_contact_sms /* 2131296421 */:
                    try {
                        Intent intent4 = new Intent("android.intent.action.VIEW");
                        intent4.setType("vnd.android-dir/mms-sms");
                        intent4.setData(Uri.parse("smsto:" + this.f11778W.m24880o()));
                        intent4.addFlags(268468224);
                        startActivity(intent4);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                case R$id.btn_details /* 2131296422 */:
                    try {
                        EZSearchResult eZSearchResult = this.f11794v;
                        if (eZSearchResult != null) {
                            if (eZSearchResult.isContact()) {
                                Intent intent5 = new Intent(this, ContactActivity.class);
                                Bundle bundle2 = new Bundle();
                                bundle2.putParcelable("contact_tony", this.f11778W);
                                intent5.putExtra("is_missed", true);
                                intent5.putExtras(bundle2);
                                intent5.setFlags(268435456);
                                startActivity(intent5);
                            } else {
                                Intent intent6 = new Intent(this, UnknownContactActivity.class);
                                Bundle bundle3 = new Bundle();
                                bundle3.putParcelable("contact_tony", this.f11778W);
                                intent6.putExtra("is_missed", true);
                                intent6.putExtras(bundle3);
                                intent6.setFlags(268435456);
                                startActivity(intent6);
                            }
                            finish();
                            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    C3810q.m24071b().m24070c("missed_btn_detial");
                    return;
                case R$id.fl_detial /* 2131296738 */:
                    try {
                        EZSearchResult eZSearchResult2 = this.f11794v;
                        if (eZSearchResult2 != null) {
                            if (eZSearchResult2.isContact()) {
                                Intent intent7 = new Intent(this, ContactActivity.class);
                                Bundle bundle4 = new Bundle();
                                bundle4.putParcelable("contact_tony", this.f11778W);
                                intent7.putExtra("is_missed", true);
                                intent7.putExtras(bundle4);
                                intent7.setFlags(268435456);
                                startActivity(intent7);
                            } else {
                                Intent intent8 = new Intent(this, UnknownContactActivity.class);
                                Bundle bundle5 = new Bundle();
                                bundle5.putParcelable("contact_tony", this.f11778W);
                                intent8.putExtra("is_missed", true);
                                intent8.putExtras(bundle5);
                                intent8.setFlags(268435456);
                                startActivity(intent8);
                            }
                            finish();
                            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    C3810q.m24071b().m24070c("missed_btn_detial");
                    return;
                case R$id.lb_missed_close /* 2131297124 */:
                    C3810q.m24071b().m24070c("missed_close");
                    m24712e0();
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                default:
                    return;
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        e5.printStackTrace();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
            this.f11762G = getApplicationContext();
            Intent intent = getIntent();
            if (intent != null) {
                this.f11794v = (EZSearchResult) intent.getParcelableExtra("contact_missed");
                this.f11758C = intent.getBooleanExtra("isuserrejected", false);
                this.f11781Z = intent.getBooleanExtra("answer", false);
                this.f11768M = intent.getIntExtra("isContact", 0);
            }
            setContentView(R$layout.activity_missed);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            C3810q.m24071b().m24070c("missed_activity");
            getWindow().getDecorView().post(new RunnableC3676a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Log.e("wjjj", "MISSCALLonDestroy");
        C3772i0.m24190a().f12015b.execute(new RunnableC3679d());
        C3709a.m24670c(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m24712e0();
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String str;
        super.onResume();
        try {
            if (this.f11794v != null && (str = this.f11761F) != null && !"".equals(str)) {
                try {
                    if (!this.f11758C) {
                        C2811d.m26560a(this.f11761F, new C3680e());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (!C3784b.f12036a) {
                return;
            }
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
            }
            C3784b.f12036a = false;
            m24710g0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
