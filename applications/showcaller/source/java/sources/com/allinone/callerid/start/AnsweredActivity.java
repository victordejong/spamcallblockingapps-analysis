package com.allinone.callerid.start;

import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
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
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.ReportedContent;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.dialog.DialogC2594j;
import com.allinone.callerid.dialog.DialogC2595k;
import com.allinone.callerid.dialog.DialogMissed;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.recommend.RecommendActivity;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a;
import com.allinone.callerid.p162i.p163a.p183m.C2907b;
import com.allinone.callerid.p162i.p163a.p193w.C2987d;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.AsyncTaskC3853t0;
import com.allinone.callerid.util.C3709a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
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
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity.class */
public class AnsweredActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private FrameLayout f11632A;

    /* renamed from: C */
    private Context f11634C;

    /* renamed from: D */
    private ConstraintLayout f11635D;

    /* renamed from: E */
    private boolean f11636E;

    /* renamed from: F */
    private int f11637F;

    /* renamed from: G */
    private TextView f11638G;

    /* renamed from: H */
    private TextView f11639H;

    /* renamed from: I */
    private LinearLayout f11640I;

    /* renamed from: J */
    private FrameLayout f11641J;

    /* renamed from: K */
    private FrameLayout f11642K;

    /* renamed from: L */
    private FrameLayout f11643L;

    /* renamed from: M */
    private DialogC2594j f11644M;

    /* renamed from: N */
    private TextView f11645N;

    /* renamed from: O */
    private FrameLayout f11646O;

    /* renamed from: v */
    private EZSearchResult f11648v;

    /* renamed from: w */
    private TextView f11649w;

    /* renamed from: x */
    private ImageView f11650x;

    /* renamed from: y */
    private TextView f11651y;

    /* renamed from: z */
    private FrameLayout f11652z;

    /* renamed from: u */
    private final String f11647u = "AnsweredActivity";

    /* renamed from: B */
    private String f11633B = "";

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$a.class */
    class RunnableC3617a implements Runnable {
        RunnableC3617a() {
            AnsweredActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AnsweredActivity.this.m24792C();
            AnsweredActivity.this.m24775n0();
            C3709a.m24672a(AnsweredActivity.this);
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$b.class */
    public class C3618b implements AbstractC5796a.AbstractC5799c {
        C3618b() {
            AnsweredActivity.this = r4;
        }

        @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
        /* renamed from: a */
        public void mo17848a(AbstractC5796a abstractC5796a) {
            C3749a.m24343a().f11963b = abstractC5796a;
            Log.e("wjjj", "成功");
            Intent intent = new Intent(EZCallApplication.m26146c(), DialogMissed.class);
            intent.addFlags(268435456);
            AnsweredActivity.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$c.class */
    public class C3619c extends AbstractC5596b {
        C3619c() {
            AnsweredActivity.this = r4;
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

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$d.class */
    public class C3620d implements AbstractC2790b {
        C3620d() {
            AnsweredActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z && System.currentTimeMillis() - C3711a1.m24551d0() > 86400000) {
                AnsweredActivity.this.m24779j0();
            } else if (!z || !C3767h1.m24253e(AnsweredActivity.this.getApplicationContext()) || AnsweredActivity.this.f11637F != 0) {
            } else {
                Intent intent = new Intent(AnsweredActivity.this, RecommendActivity.class);
                intent.setFlags(268435456);
                AnsweredActivity.this.startActivity(intent);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$e.class */
    class C3621e implements AbstractC2906a {
        C3621e() {
            AnsweredActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(AnsweredActivity.this.f11634C, AnsweredActivity.this.getResources().getString(R$string.reported), 1).show();
                return;
            }
            C3711a1.m24609N1(C3711a1.m24531i0() + 1);
            AnsweredActivity answeredActivity = AnsweredActivity.this;
            answeredActivity.m24778k0(answeredActivity.f11633B, "is_scam", "Scam");
            if (Build.VERSION.SDK_INT < 23) {
                AnsweredActivity.this.m24773p0();
            } else if (!Settings.canDrawOverlays(AnsweredActivity.this.f11634C)) {
            } else {
                AnsweredActivity.this.m24773p0();
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$f.class */
    class C3622f implements AbstractC2906a {
        C3622f() {
            AnsweredActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(AnsweredActivity.this.f11634C, AnsweredActivity.this.getResources().getString(R$string.reported), 1).show();
                return;
            }
            C3711a1.m24609N1(C3711a1.m24531i0() + 1);
            AnsweredActivity answeredActivity = AnsweredActivity.this;
            answeredActivity.m24778k0(answeredActivity.f11633B, "is_spam", "Spam");
            if (Build.VERSION.SDK_INT < 23) {
                AnsweredActivity.this.m24773p0();
            } else if (!Settings.canDrawOverlays(AnsweredActivity.this.f11634C)) {
            } else {
                AnsweredActivity.this.m24773p0();
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$g.class */
    class C3623g implements AbstractC2906a {
        C3623g() {
            AnsweredActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(AnsweredActivity.this.f11634C, AnsweredActivity.this.getResources().getString(R$string.reported), 1).show();
                return;
            }
            C3711a1.m24609N1(C3711a1.m24531i0() + 1);
            AnsweredActivity answeredActivity = AnsweredActivity.this;
            answeredActivity.m24778k0(answeredActivity.f11633B, "is_telemarketing", "Telemarketing");
            if (Build.VERSION.SDK_INT < 23) {
                AnsweredActivity.this.m24773p0();
            } else if (!Settings.canDrawOverlays(AnsweredActivity.this.f11634C)) {
            } else {
                AnsweredActivity.this.m24773p0();
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$h.class */
    public class View$OnClickListenerC3624h implements View.OnClickListener {
        View$OnClickListenerC3624h() {
            AnsweredActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() != 2131297131) {
                return;
            }
            AnsweredActivity.this.f11644M.dismiss();
        }
    }

    /* renamed from: com.allinone.callerid.start.AnsweredActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$i.class */
    public class C3625i implements AbstractC2795a {

        /* renamed from: com.allinone.callerid.start.AnsweredActivity$i$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$i$a.class */
        class DialogInterface$OnClickListenerC3626a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3626a() {
                C3625i.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.start.AnsweredActivity$i$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$i$b.class */
        public class DialogInterface$OnClickListenerC3627b implements DialogInterface.OnClickListener {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.start.AnsweredActivity$i$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$i$b$a.class */
            public class C3628a implements AbstractC2795a {

                /* renamed from: a */
                final /* synthetic */ String f11664a;

                /* renamed from: com.allinone.callerid.start.AnsweredActivity$i$b$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$i$b$a$a.class */
                class C3629a implements AbstractC2766a {
                    C3629a() {
                        C3628a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                    }
                }

                /* renamed from: com.allinone.callerid.start.AnsweredActivity$i$b$a$b */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/AnsweredActivity$i$b$a$b.class */
                class C3630b implements AbstractC2766a {
                    C3630b() {
                        C3628a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        CollectInfo collectInfo = new CollectInfo();
                        collectInfo.setNumber(C3628a.this.f11664a);
                        collectInfo.setUser_blocked("1");
                        collectInfo.setUser_commented("0");
                        collectInfo.setUser_reported("0");
                        collectInfo.setUser_upload_recording("0");
                        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                    }
                }

                C3628a(String str) {
                    DialogInterface$OnClickListenerC3627b.this = r4;
                    this.f11664a = str;
                }

                @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
                /* renamed from: a */
                public void mo24705a(boolean z) {
                    if (z) {
                        C2796b.m26584e(this.f11664a, new C3629a());
                        return;
                    }
                    EZBlackList eZBlackList = new EZBlackList();
                    if (AnsweredActivity.this.f11648v.getName() == null || "".equals(AnsweredActivity.this.f11648v.getName())) {
                        eZBlackList.setName("");
                    } else {
                        eZBlackList.setName(AnsweredActivity.this.f11648v.getName());
                    }
                    eZBlackList.setIs_myblock("true");
                    eZBlackList.setNumber(this.f11664a);
                    C2796b.m26588a(eZBlackList, new C3630b());
                }
            }

            DialogInterface$OnClickListenerC3627b() {
                C3625i.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String replace = AnsweredActivity.this.f11648v.getNumber().replace("-", "");
                if (replace == null || "".equals(replace)) {
                    return;
                }
                C2796b.m26587b(replace, new C3628a(replace));
            }
        }

        C3625i() {
            AnsweredActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            String str;
            String str2;
            try {
                if (AnsweredActivity.this.isFinishing()) {
                    return;
                }
                if (z) {
                    str = AnsweredActivity.this.getResources().getString(R$string.unblock) + " " + AnsweredActivity.this.f11648v.getNumber();
                    str2 = AnsweredActivity.this.getResources().getString(R$string.unblock_big);
                } else {
                    str = AnsweredActivity.this.getResources().getString(R$string.block) + " " + AnsweredActivity.this.f11648v.getNumber() + " ?";
                    str2 = AnsweredActivity.this.getResources().getString(R$string.block_big);
                }
                DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(AnsweredActivity.this).m35567h(str).m35561n(str2, new DialogInterface$OnClickListenerC3627b()).m35565j(AnsweredActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3626a()).m35574a();
                m35574a.show();
                m35574a.m35577g(-1).setTextColor(AnsweredActivity.this.getResources().getColor(2131099706));
                m35574a.m35577g(-2).setTextColor(AnsweredActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: C */
    public void m24792C() {
        ((RelativeLayout) findViewById(R$id.al_all)).setOnClickListener(this);
        Typeface m24360a = C3739f1.m24360a();
        Typeface m24359b = C3739f1.m24359b();
        ImageView imageView = (ImageView) findViewById(R$id.lb_missed_close);
        this.f11652z = (FrameLayout) findViewById(R$id.btn_message);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.btn_block);
        this.f11632A = (FrameLayout) findViewById(R$id.btn_add_contact);
        this.f11646O = (FrameLayout) findViewById(R$id.btn_block_spam);
        this.f11650x = (ImageView) findViewById(R$id.photo_view);
        this.f11635D = (ConstraintLayout) findViewById(R$id.ll_contact_make);
        this.f11640I = (LinearLayout) findViewById(R$id.ll_spam_tip);
        this.f11641J = (FrameLayout) findViewById(R$id.btn_scam);
        this.f11642K = (FrameLayout) findViewById(R$id.btn_spam);
        this.f11643L = (FrameLayout) findViewById(R$id.btn_telemarketing);
        this.f11641J.setOnClickListener(this);
        this.f11642K.setOnClickListener(this);
        this.f11643L.setOnClickListener(this);
        imageView.setOnClickListener(this);
        this.f11652z.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        this.f11632A.setOnClickListener(this);
        this.f11646O.setOnClickListener(this);
        this.f11649w = (TextView) findViewById(R$id.tv_number_name);
        this.f11645N = (TextView) findViewById(R$id.tv_spam_number);
        this.f11651y = (TextView) findViewById(R$id.tv_spam);
        this.f11638G = (TextView) findViewById(R$id.tv_spam_counts);
        this.f11639H = (TextView) findViewById(R$id.tv_block_tip);
        ((TextView) findViewById(R$id.tv_spams)).setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_scam)).setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_telemarketing)).setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_tip)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_message)).setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_favorite)).setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_block)).setTypeface(m24360a);
        ((TextView) findViewById(R$id.tv_block_spam)).setTypeface(m24360a);
        this.f11649w.setTypeface(m24360a);
        this.f11645N.setTypeface(m24359b);
        this.f11651y.setTypeface(m24359b);
        this.f11638G.setTypeface(m24359b);
        this.f11639H.setTypeface(m24359b);
    }

    /* renamed from: h0 */
    private void m24781h0() {
        try {
            Intent intent = new Intent("android.intent.action.INSERT");
            intent.setType("vnd.android.cursor.dir/person");
            intent.setType("vnd.android.cursor.dir/contact");
            intent.setType("vnd.android.cursor.dir/raw_contact");
            intent.putExtra("phone_type", 2);
            intent.putExtra("phone", this.f11648v.getNumber());
            intent.putExtra(ShortCut.NAME, this.f11648v.getName());
            startActivity(intent);
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i0 */
    private void m24780i0() {
        if (!C3767h1.m24220u0() || !C3711a1.m24591S() || !this.f11636E) {
            C2786a.m26600a(new C3620d());
            return;
        }
        C3711a1.m24474w1(false);
        if (Build.VERSION.SDK_INT < 23) {
            m24774o0(getApplicationContext());
        } else if (!Settings.canDrawOverlays(getApplicationContext())) {
        } else {
            m24774o0(getApplicationContext());
        }
    }

    /* renamed from: j0 */
    public void m24779j0() {
        C3810q.m24071b().m24070c("missed_request_num");
        C5600d.C5601a c5601a = new C5600d.C5601a(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/7437588851");
        c5601a.m18290c(new C3618b());
        c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
        c5601a.m18288e(new C3619c()).m18292a().m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
    }

    /* renamed from: k0 */
    public void m24778k0(String str, String str2, String str3) {
        try {
            ReportedContent reportedContent = new ReportedContent();
            reportedContent.setNumber(str);
            reportedContent.setType(str2);
            reportedContent.setTime(System.currentTimeMillis());
            C2987d.m26303d(reportedContent);
        } catch (Exception e) {
            e.printStackTrace();
        }
        new AsyncTaskC3853t0(this.f11634C, str, str2, "android", C3767h1.m24265W(EZCallApplication.m26146c()), C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code(), str3).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        CollectInfo collectInfo = new CollectInfo();
        collectInfo.setNumber(str);
        collectInfo.setUser_blocked("0");
        collectInfo.setUser_commented("0");
        collectInfo.setUser_reported("1");
        collectInfo.setUser_upload_recording("0");
        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
    }

    /* renamed from: l0 */
    private void m24777l0() {
        int i;
        if (C3711a1.m24469x2().booleanValue() || (i = Build.VERSION.SDK_INT) < 26 || i >= 28 || C3784b.m24142d(getApplicationContext())) {
            C2796b.m26587b(this.f11648v.getNumber(), new C3625i());
            return;
        }
        DialogC2588f dialogC2588f = new DialogC2588f(this, R$style.CustomDialog4);
        dialogC2588f.setCanceledOnTouchOutside(false);
        dialogC2588f.show();
    }

    /* renamed from: m0 */
    private void m24776m0() {
        if (this.f11637F == 1) {
            C3852t.m23960c(this, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.f11648v.getRaw_contact_id()), "", R$drawable.ic_photo_normal, this.f11650x);
        } else if (this.f11648v.getIcon() != null && !"".equals(this.f11648v.getIcon())) {
            C3852t.m23961b(this.f11634C, this.f11648v.getIcon(), R$drawable.ic_photo_normal, this.f11650x);
        } else if (this.f11637F != 0 || this.f11648v.getType_label() == null || "".equals(this.f11648v.getType_label()) || this.f11648v.getReport_count() <= 0) {
            this.f11650x.setImageResource(R$drawable.ic_photo_normal);
        } else {
            this.f11650x.setImageResource(R$drawable.ic_photo_spam);
        }
    }

    /* renamed from: n0 */
    public void m24775n0() {
        if (this.f11648v != null) {
            try {
                m24776m0();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("missed_activity", "ezSearchResult" + this.f11648v.toString());
                }
                if (this.f11648v.getDate() == 1) {
                    this.f11636E = true;
                }
                if (this.f11648v.getNumber() != null && !"".equals(this.f11648v.getNumber())) {
                    this.f11633B = this.f11648v.getNumber();
                }
                String format_tel_number = this.f11648v.getFormat_tel_number();
                if (this.f11648v.getName() != null && !"".equals(this.f11648v.getName())) {
                    this.f11649w.setText(this.f11648v.getName());
                    if (format_tel_number == null || "".equals(format_tel_number)) {
                        this.f11645N.setText(this.f11648v.getNumber());
                    } else {
                        this.f11645N.setText(format_tel_number);
                    }
                    this.f11645N.setVisibility(0);
                } else if (format_tel_number == null || "".equals(format_tel_number)) {
                    this.f11649w.setText(this.f11648v.getNumber());
                } else {
                    this.f11649w.setText(format_tel_number);
                }
                if (this.f11637F != 0 || this.f11648v.getType_label() == null || "".equals(this.f11648v.getType_label()) || this.f11648v.getReport_count() <= 0) {
                    return;
                }
                this.f11646O.setVisibility(0);
                this.f11635D.setVisibility(8);
                this.f11650x.setImageResource(R$drawable.ic_photo_spam);
                this.f11651y.setVisibility(0);
                this.f11638G.setVisibility(0);
                this.f11645N.setTextColor(getResources().getColor(R$color.comments_sapm));
                TextView textView = this.f11638G;
                textView.setText(this.f11648v.getReport_count() + "");
                TextView textView2 = this.f11651y;
                textView2.setText(getResources().getString(R$string.reports) + " " + this.f11648v.getType_label());
                this.f11640I.setVisibility(0);
                this.f11639H.setText(getResources().getString(R$string.block_tips));
                this.f11639H.setVisibility(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: o0 */
    private void m24774o0(Context context) {
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

    /* renamed from: p0 */
    public void m24773p0() {
        DialogC2594j dialogC2594j = new DialogC2594j(this.f11634C, R$style.CustomDialog4, new View$OnClickListenerC3624h());
        this.f11644M = dialogC2594j;
        try {
            dialogC2594j.getWindow().setType(2003);
            this.f11644M.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            switch (view.getId()) {
                case R$id.al_all /* 2131296342 */:
                    m24780i0();
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    break;
                case R$id.btn_add_contact /* 2131296407 */:
                    m24781h0();
                    C3810q.m24071b().m24070c("answered_btn_add_contact");
                    break;
                case R$id.btn_block /* 2131296409 */:
                    m24777l0();
                    C3810q.m24071b().m24070c("answered_btn_block");
                    break;
                case R$id.btn_block_spam /* 2131296410 */:
                    m24777l0();
                    C3810q.m24071b().m24070c("answered_btn_block_spam");
                    break;
                case R$id.btn_message /* 2131296425 */:
                    C3810q.m24071b().m24070c("answered_btn_report");
                    this.f11652z.setVisibility(8);
                    this.f11632A.setVisibility(8);
                    this.f11641J.setVisibility(0);
                    this.f11642K.setVisibility(0);
                    this.f11643L.setVisibility(0);
                    break;
                case R$id.btn_scam /* 2131296430 */:
                    C3810q.m24071b().m24070c("answered_scam");
                    String str = this.f11633B;
                    if (str != null && !"".equals(str)) {
                        C2907b.m26436a(this.f11633B, new C3621e());
                        break;
                    }
                    break;
                case R$id.btn_spam /* 2131296436 */:
                    C3810q.m24071b().m24070c("answered_spam");
                    String str2 = this.f11633B;
                    if (str2 != null && !"".equals(str2)) {
                        C2907b.m26436a(this.f11633B, new C3622f());
                        break;
                    }
                    break;
                case R$id.btn_telemarketing /* 2131296440 */:
                    C3810q.m24071b().m24070c("answered_telemarket");
                    String str3 = this.f11633B;
                    if (str3 != null && !"".equals(str3)) {
                        C2907b.m26436a(this.f11633B, new C3623g());
                        break;
                    }
                    break;
                case R$id.lb_missed_close /* 2131297124 */:
                    C3810q.m24071b().m24070c("missed_close");
                    m24780i0();
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
            this.f11634C = getApplicationContext();
            Intent intent = getIntent();
            if (intent != null) {
                this.f11648v = (EZSearchResult) intent.getParcelableExtra("contact_missed");
                this.f11637F = intent.getIntExtra("isContact", 0);
            }
            setContentView(R$layout.activity_answered_end);
            if (C3767h1.m24250f0(this.f11634C).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            C3810q.m24071b().m24070c("answered_activity");
            getWindow().getDecorView().post(new RunnableC3617a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C3709a.m24670c(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m24780i0();
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
        super.onResume();
        if (C3784b.f12036a) {
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
            }
            C3784b.f12036a = false;
            m24777l0();
        }
    }
}
