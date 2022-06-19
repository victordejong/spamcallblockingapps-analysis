package com.allinone.callerid.mvc.controller.contactpdt;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentUris;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
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
import com.allinone.callerid.customview.AppBarStateChangeListener;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.dialog.DialogC2616n;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.CallLogActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.recorder.RecordListActivity;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p180k.C2879a;
import com.allinone.callerid.p162i.p163a.p187q.AbstractC2938b;
import com.allinone.callerid.p162i.p163a.p187q.AbstractC2939c;
import com.allinone.callerid.p162i.p163a.p187q.AbstractC2940d;
import com.allinone.callerid.p162i.p163a.p187q.AbstractC2941e;
import com.allinone.callerid.p162i.p163a.p187q.C2932a;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2957d;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3792k0;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.p202gg.C3756c;
import com.allinone.callerid.util.p202gg.C3760d;
import com.allinone.callerid.util.p204j1.C3784b;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity.class */
public class ContactActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f10664A;

    /* renamed from: B */
    private CallLogBean f10665B;

    /* renamed from: C */
    private PopupWindow f10666C;

    /* renamed from: D */
    private TextView f10667D;

    /* renamed from: E */
    private TextView f10668E;

    /* renamed from: F */
    private TextView f10669F;

    /* renamed from: G */
    private ProgressBar f10670G;

    /* renamed from: H */
    private TextView f10671H;

    /* renamed from: I */
    private ImageView f10672I;

    /* renamed from: J */
    private LinearLayout f10673J;

    /* renamed from: K */
    private FrameLayout f10674K;

    /* renamed from: L */
    private LinearLayout f10675L;

    /* renamed from: M */
    private TextView f10676M;

    /* renamed from: N */
    private ImageView f10677N;

    /* renamed from: O */
    private ConstraintLayout f10678O;

    /* renamed from: P */
    private AppBarStateChangeListener f10679P;

    /* renamed from: Q */
    private AppBarLayout f10680Q;

    /* renamed from: R */
    private Toolbar f10681R;

    /* renamed from: S */
    private RelativeLayout f10682S;

    /* renamed from: T */
    private ConstraintLayout f10683T;

    /* renamed from: U */
    private LinearLayout f10684U;

    /* renamed from: V */
    private ImageView f10685V;

    /* renamed from: W */
    private ImageView f10686W;

    /* renamed from: X */
    private TextView f10687X;

    /* renamed from: Y */
    private FrameLayout f10688Y;

    /* renamed from: Z */
    private View f10689Z;

    /* renamed from: a0 */
    private TextView f10690a0;

    /* renamed from: b0 */
    private ImageView f10691b0;

    /* renamed from: c0 */
    private ImageView f10692c0;

    /* renamed from: d0 */
    private ImageView f10693d0;

    /* renamed from: e0 */
    private ImageView f10694e0;

    /* renamed from: f0 */
    private boolean f10695f0;

    /* renamed from: g0 */
    private View f10696g0;

    /* renamed from: h0 */
    private Animation f10697h0;

    /* renamed from: i0 */
    private TextView f10698i0;

    /* renamed from: j0 */
    private TextView f10699j0;

    /* renamed from: k0 */
    private ImageView f10700k0;

    /* renamed from: l0 */
    private ImageView f10701l0;

    /* renamed from: m0 */
    private boolean f10702m0;

    /* renamed from: n0 */
    private int f10703n0;

    /* renamed from: o0 */
    private ImageView f10704o0;

    /* renamed from: p0 */
    private ImageView f10705p0;
    @SuppressLint({"NewApi", "SetJavaScriptEnabled"})

    /* renamed from: q0 */
    private Typeface f10706q0;

    /* renamed from: u */
    private final String f10707u = "ContactActivity";

    /* renamed from: v */
    private ImageView f10708v;

    /* renamed from: w */
    private ImageView f10709w;

    /* renamed from: x */
    private TextView f10710x;

    /* renamed from: y */
    private TextView f10711y;

    /* renamed from: z */
    private TextView f10712z;

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a.class */
    public class RunnableC3322a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$a.class */
        class C3323a extends AppBarStateChangeListener {
            C3323a() {
                RunnableC3322a.this = r4;
            }

            @Override // com.allinone.callerid.customview.AppBarStateChangeListener
            /* renamed from: b */
            public void mo25359b(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
                if (state == AppBarStateChangeListener.State.EXPANDED) {
                    ContactActivity.this.f10678O.setVisibility(8);
                    ContactActivity.this.f10690a0.setVisibility(8);
                    ContactActivity.this.f10710x.setVisibility(0);
                } else if (state == AppBarStateChangeListener.State.COLLAPSED) {
                    ContactActivity.this.f10678O.setVisibility(0);
                    ContactActivity.this.f10690a0.setVisibility(0);
                    ContactActivity.this.f10710x.setVisibility(4);
                } else {
                    ContactActivity.this.f10678O.setVisibility(8);
                    ContactActivity.this.f10690a0.setVisibility(8);
                    ContactActivity.this.f10710x.setVisibility(0);
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a$b.class */
        class C3324b implements AbstractC2790b {
            C3324b() {
                RunnableC3322a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
            /* renamed from: a */
            public void mo24346a(boolean z) {
                if (z) {
                    ContactActivity.this.m25475R0();
                }
            }
        }

        RunnableC3322a() {
            ContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactActivity.this.m25476Q0();
            ContactActivity.this.m25477P0();
            ContactActivity.this.f10679P = new C3323a();
            if (ContactActivity.this.f10680Q != null && ContactActivity.this.f10679P != null) {
                ContactActivity.this.f10680Q.m5774b(ContactActivity.this.f10679P);
            }
            ContactActivity.this.m25481L0();
            C2786a.m26600a(new C3324b());
            ContactActivity.this.m25470W0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$b.class */
    class C3325b implements AbstractC2766a {
        C3325b() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
        /* renamed from: a */
        public void mo24704a() {
            ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favourite_unselect_white);
            ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favourite_unselect_white);
            ContactActivity.this.f10665B.m24922V0("0");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$c.class */
    class C3326c implements AbstractC2766a {
        C3326c() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
        /* renamed from: a */
        public void mo24704a() {
            ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favorite_select_white);
            ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favorite_select_white);
            ContactActivity.this.f10665B.m24922V0("1");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$d.class */
    class C3327d implements AbstractC2766a {
        C3327d() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
        /* renamed from: a */
        public void mo24704a() {
            ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favourite_unselect_white);
            ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favourite_unselect_white);
            ContactActivity.this.f10665B.m24922V0("0");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$e.class */
    class C3328e implements AbstractC2766a {
        C3328e() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
        /* renamed from: a */
        public void mo24704a() {
            ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favorite_select_white);
            ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favorite_select_white);
            ContactActivity.this.f10665B.m24922V0("1");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$f.class */
    class DialogInterface$OnClickListenerC3329f implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3329f() {
            ContactActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g.class */
    public class DialogInterface$OnClickListenerC3330g implements DialogInterface.OnClickListener {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$g$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g$a.class */
        public class C3331a implements AbstractC2940d {

            /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$g$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g$a$a.class */
            class RunnableC3332a implements Runnable {
                RunnableC3332a() {
                    C3331a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ContactActivity contactActivity = ContactActivity.this;
                    Toast.makeText(contactActivity, contactActivity.getResources().getString(R$string.delete_success), 0).show();
                    Intent intent = new Intent();
                    intent.setAction("com.allinone.callerid.RELOAD_DATA");
                    C1764a.m28939b(ContactActivity.this.getApplicationContext()).m28937d(intent);
                    ContactActivity.this.finish();
                    ContactActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
            }

            C3331a() {
                DialogInterface$OnClickListenerC3330g.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p187q.AbstractC2940d
            /* renamed from: a */
            public void mo25440a() {
                ContactActivity.this.f10670G.setVisibility(8);
                new Handler().postDelayed(new RunnableC3332a(), 300L);
            }
        }

        DialogInterface$OnClickListenerC3330g() {
            ContactActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ContactActivity.this.f10670G.setVisibility(0);
            ContactActivity contactActivity = ContactActivity.this;
            C2932a.m26392d(contactActivity, contactActivity.f10665B.m24868v(), new C3331a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h.class */
    public class C3333h implements AbstractC2795a {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$a.class */
        class DialogInterface$OnClickListenerC3334a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3334a() {
                C3333h.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$h$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b.class */
        public class DialogInterface$OnClickListenerC3335b implements DialogInterface.OnClickListener {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$h$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a.class */
            public class C3336a implements AbstractC2795a {

                /* renamed from: a */
                final /* synthetic */ String f10727a;

                /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$h$b$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$a.class */
                class C3337a implements AbstractC2766a {
                    C3337a() {
                        C3336a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        ContactActivity.this.m25481L0();
                        Toast.makeText(ContactActivity.this.getApplicationContext(), ContactActivity.this.getResources().getString(R$string.number_unblock), 0).show();
                    }
                }

                /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$h$b$a$b */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h$b$a$b.class */
                class C3338b implements AbstractC2766a {
                    C3338b() {
                        C3336a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        ContactActivity.this.m25481L0();
                        Toast.makeText(ContactActivity.this.getApplicationContext(), ContactActivity.this.getResources().getString(R$string.blocked_to_list), 0).show();
                        CollectInfo collectInfo = new CollectInfo();
                        collectInfo.setNumber(ContactActivity.this.f10665B.m24880o());
                        collectInfo.setUser_blocked("1");
                        collectInfo.setUser_commented("0");
                        collectInfo.setUser_reported("0");
                        collectInfo.setUser_upload_recording("0");
                        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                    }
                }

                C3336a(String str) {
                    DialogInterface$OnClickListenerC3335b.this = r4;
                    this.f10727a = str;
                }

                @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
                /* renamed from: a */
                public void mo24705a(boolean z) {
                    if (z) {
                        C2796b.m26584e(this.f10727a, new C3337a());
                        return;
                    }
                    EZBlackList eZBlackList = new EZBlackList();
                    if (ContactActivity.this.f10665B.m24884m() != null && !"".equals(ContactActivity.this.f10665B.m24884m())) {
                        eZBlackList.setName(ContactActivity.this.f10665B.m24884m());
                    } else if (ContactActivity.this.f10665B.m24861z() == null || "".equals(ContactActivity.this.f10665B.m24861z())) {
                        eZBlackList.setName("");
                    } else {
                        eZBlackList.setName(ContactActivity.this.f10665B.m24861z());
                    }
                    eZBlackList.setIs_myblock("true");
                    eZBlackList.setNumber(this.f10727a);
                    C2796b.m26588a(eZBlackList, new C3338b());
                }
            }

            DialogInterface$OnClickListenerC3335b() {
                C3333h.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String replace = ContactActivity.this.f10665B.m24880o().replace("-", "");
                    if (replace == null || "".equals(replace)) {
                        return;
                    }
                    C2796b.m26587b(replace, new C3336a(replace));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3333h() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            String str;
            String str2;
            try {
                if (ContactActivity.this.isFinishing()) {
                    return;
                }
                if (z) {
                    str = ContactActivity.this.getResources().getString(R$string.unblock) + " " + ContactActivity.this.f10665B.m24880o();
                    str2 = ContactActivity.this.getResources().getString(R$string.unblock_big);
                } else {
                    str = ContactActivity.this.getResources().getString(R$string.block) + " " + ContactActivity.this.f10665B.m24880o() + " ?";
                    str2 = ContactActivity.this.getResources().getString(R$string.block_big);
                }
                AlertDialog create = new AlertDialog.Builder(ContactActivity.this).setMessage(str).setPositiveButton(str2, new DialogInterface$OnClickListenerC3335b()).setNegativeButton(ContactActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3334a()).create();
                create.show();
                create.getButton(-1).setTextColor(ContactActivity.this.f10703n0);
                create.getButton(-2).setTextColor(ContactActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$i.class */
    class RunnableC3339i implements Runnable {
        RunnableC3339i() {
            ContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int height = ContactActivity.this.f10684U.getHeight();
                int height2 = ContactActivity.this.f10683T.getHeight();
                CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) ContactActivity.this.f10681R.getLayoutParams();
                int i = height + height2;
                ((FrameLayout.LayoutParams) layoutParams).height = C3774j.m24169a(ContactActivity.this.getApplicationContext(), 12.0f) + i;
                ContactActivity.this.f10681R.setLayoutParams(layoutParams);
                Toolbar.LayoutParams layoutParams2 = (Toolbar.LayoutParams) ContactActivity.this.f10682S.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams2).height = i + C3774j.m24169a(ContactActivity.this.getApplicationContext(), 12.0f);
                ContactActivity.this.f10682S.setLayoutParams(layoutParams2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j.class */
    public class C3340j implements C3756c.AbstractC3759c {
        C3340j() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p202gg.C3756c.AbstractC3759c
        /* renamed from: a */
        public void mo24327a(AbstractC5796a abstractC5796a) {
            NativeAdView nativeAdView = (NativeAdView) ContactActivity.this.getLayoutInflater().inflate(R$layout.aad_pdt, (ViewGroup) null);
            C3760d.m24325a(abstractC5796a, nativeAdView);
            ContactActivity.this.f10674K.removeAllViews();
            ContactActivity.this.f10674K.addView(nativeAdView);
            ContactActivity.this.f10673J.setVisibility(0);
        }

        @Override // com.allinone.callerid.util.p202gg.C3756c.AbstractC3759c
        /* renamed from: b */
        public void mo24326b() {
            C3756c.m24329c().m24330b();
            ContactActivity.this.m25475R0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$k.class */
    public class C3341k implements AbstractC2795a {
        C3341k() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            try {
                if (z) {
                    ContactActivity.this.f10667D.setVisibility(0);
                    ContactActivity.this.f10668E.setVisibility(0);
                    ContactActivity.this.f10669F.setText(ContactActivity.this.getResources().getString(R$string.unblock));
                    ContactActivity.this.f10677N.setImageResource(R$drawable.ic_blocked);
                    ContactActivity.this.f10671H.setText(ContactActivity.this.getResources().getString(R$string.unblock));
                    ContactActivity.this.f10686W.setImageResource(R$drawable.ic_blocked);
                    ContactActivity.this.f10687X.setText(ContactActivity.this.getResources().getString(R$string.unblock));
                } else {
                    ContactActivity.this.f10667D.setVisibility(8);
                    ContactActivity.this.f10668E.setVisibility(8);
                    ContactActivity.this.f10669F.setText(ContactActivity.this.getResources().getString(R$string.block));
                    ContactActivity.this.f10677N.setImageResource(R$drawable.ic_block_white);
                    ContactActivity.this.f10671H.setText(ContactActivity.this.getResources().getString(R$string.block));
                    ContactActivity.this.f10686W.setImageResource(R$drawable.ic_block_white);
                    ContactActivity.this.f10687X.setText(ContactActivity.this.getResources().getString(R$string.block));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$l.class */
    public class RunnableC3342l implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$l$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$l$a.class */
        class RunnableC3343a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f10735d;

            RunnableC3343a(int i) {
                RunnableC3342l.this = r4;
                this.f10735d = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (this.f10735d <= 0) {
                        return;
                    }
                    ContactActivity.this.f10701l0.setVisibility(0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC3342l() {
            ContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactActivity.this.runOnUiThread(new RunnableC3343a(C2645b.m26967d().m26966e(ContactActivity.this.f10665B.m24880o())));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m.class */
    public class C3344m implements AbstractC2957d {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$m$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$a.class */
        class View$OnClickListenerC3345a implements View.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ CallLogBean f10738d;

            View$OnClickListenerC3345a(CallLogBean callLogBean) {
                C3344m.this = r4;
                this.f10738d = callLogBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    C3809p0.m24078a(ContactActivity.this.getApplicationContext(), this.f10738d.m24880o());
                } catch (Exception e) {
                    ContactActivity contactActivity = ContactActivity.this;
                    Toast.makeText(contactActivity, contactActivity.getResources().getString(R$string.no_phone_related), 1).show();
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$m$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$b.class */
        class View$OnClickListenerC3346b implements View.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ CallLogBean f10740d;

            View$OnClickListenerC3346b(CallLogBean callLogBean) {
                C3344m.this = r4;
                this.f10740d = callLogBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setType("vnd.android-dir/mms-sms");
                    intent.setData(Uri.parse("smsto:" + this.f10740d.m24880o()));
                    intent.addFlags(268468224);
                    ContactActivity.this.startActivity(intent);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3344m() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2957d
        /* renamed from: a */
        public void mo25439a(ArrayList<CallLogBean> arrayList) {
            String m24280J;
            if (arrayList != null) {
                try {
                    if (arrayList.size() <= 0) {
                        return;
                    }
                    for (int i = 0; i < arrayList.size(); i++) {
                        CallLogBean callLogBean = arrayList.get(i);
                        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(ContactActivity.this).inflate(R$layout.view_phone_nubmer, (ViewGroup) null);
                        ImageView imageView = (ImageView) relativeLayout.findViewById(R$id.btn_call_blue);
                        LinearLayout linearLayout = (LinearLayout) relativeLayout.findViewById(R$id.ll_type);
                        TextView textView = (TextView) relativeLayout.findViewById(R$id.tv_contact_number);
                        TextView textView2 = (TextView) relativeLayout.findViewById(R$id.tv_contact_type);
                        ImageView imageView2 = (ImageView) relativeLayout.findViewById(R$id.btn_contact_sms);
                        if (callLogBean.m24958B() != null && !"".equals(callLogBean.m24958B())) {
                            String m24280J2 = C3767h1.m24280J(ContactActivity.this.getApplicationContext(), callLogBean.m24958B());
                            if (m24280J2 != null && !"".equals(m24280J2)) {
                                textView2.setText(m24280J2);
                                textView2.setVisibility(0);
                                linearLayout.setVisibility(0);
                            }
                        } else if (ContactActivity.this.f10665B.m24876r() != null && !"".equals(ContactActivity.this.f10665B.m24876r())) {
                            textView2.setText(ContactActivity.this.f10665B.m24876r());
                            textView2.setVisibility(0);
                            linearLayout.setVisibility(0);
                        } else if (ContactActivity.this.f10665B.m24958B() != null && !"".equals(ContactActivity.this.f10665B.m24958B()) && (m24280J = C3767h1.m24280J(ContactActivity.this.getApplicationContext(), ContactActivity.this.f10665B.m24958B())) != null && !"".equals(m24280J)) {
                            textView2.setText(m24280J);
                            textView2.setVisibility(0);
                            linearLayout.setVisibility(0);
                        }
                        textView.setText(C3809p0.m24077b(callLogBean.m24880o()));
                        imageView.setOnClickListener(new View$OnClickListenerC3345a(callLogBean));
                        imageView2.setOnClickListener(new View$OnClickListenerC3346b(callLogBean));
                        ContactActivity.this.f10675L.addView(relativeLayout);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n.class */
    public class C3347n implements AbstractC2938b {
        C3347n() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p187q.AbstractC2938b
        /* renamed from: a */
        public void mo25438a(int i, String str) {
            if (i != -999) {
                ContactActivity.this.f10665B.m24942J0(i);
            }
            if (str == null || "".equals(str)) {
                ContactActivity.this.f10665B.m24922V0("0");
                ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favourite_unselect_white);
                ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favourite_unselect_white);
            } else if (str.equals("1")) {
                ContactActivity.this.f10665B.m24922V0("1");
                ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favorite_select_white);
                ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favorite_select_white);
            } else {
                ContactActivity.this.f10665B.m24922V0("0");
                ContactActivity.this.f10672I.setImageResource(R$drawable.ic_favourite_unselect_white);
                ContactActivity.this.f10685V.setImageResource(R$drawable.ic_favourite_unselect_white);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$o.class */
    public class C3348o implements AbstractC2941e {
        C3348o() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p187q.AbstractC2941e
        /* renamed from: a */
        public void mo25358a(String str) {
            if (str != null && !"".equals(str)) {
                ContactActivity.this.f10710x.setText(str);
                ContactActivity.this.f10665B.m24955C0(str);
            } else if (ContactActivity.this.f10665B.m24884m() == null || "".equals(ContactActivity.this.f10665B.m24884m())) {
                ContactActivity.this.f10710x.setText(ContactActivity.this.f10665B.m24880o());
            } else {
                ContactActivity.this.f10710x.setText(ContactActivity.this.f10665B.m24884m());
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p.class */
    public class C3349p implements AbstractC2939c {
        C3349p() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p187q.AbstractC2939c
        /* renamed from: a */
        public void mo25357a(long j) {
            if (j != 0) {
                C3852t.m23960c(ContactActivity.this, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "", R$drawable.ic_photo_normal, ContactActivity.this.f10709w);
            } else if (ContactActivity.this.f10665B.m24914a() == null || "".equals(ContactActivity.this.f10665B.m24914a())) {
                ContactActivity.this.f10709w.setImageResource(R$drawable.ic_photo_normal);
            } else {
                ContactActivity contactActivity = ContactActivity.this;
                C3852t.m23962a(contactActivity, contactActivity.f10665B.m24914a(), R$drawable.ic_photo_normal, ContactActivity.this.f10709w);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.ContactActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/ContactActivity$q.class */
    public class C3350q implements AbstractC2790b {
        C3350q() {
            ContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (!z || !C3792k0.m24116u() || System.currentTimeMillis() - C3711a1.m24583U() <= 259200000 || !C3767h1.m24242j0(ContactActivity.this.getApplicationContext()) || !C3767h1.m24224s0(ContactActivity.this.getApplicationContext()) || C3767h1.m24232o0(ContactActivity.this.getApplicationContext(), C3792k0.m24136a())) {
                return;
            }
            if (C3792k0.m24132e() != null && !"".equals(C3792k0.m24132e())) {
                C3852t.m23962a(ContactActivity.this, C3792k0.m24132e(), R$drawable.ic_photo_normal, ContactActivity.this.f10700k0);
            }
            if (C3792k0.m24134c() != null && !"".equals(C3792k0.m24134c())) {
                ContactActivity.this.f10698i0.setText(C3792k0.m24134c());
            }
            if (C3792k0.m24135b() != null && !"".equals(C3792k0.m24135b())) {
                ContactActivity.this.f10699j0.setText(C3792k0.m24135b());
            }
            ContactActivity.this.f10696g0.setVisibility(0);
            C3810q.m24071b().m24070c("pdt_recommend_show");
            ImageView imageView = (ImageView) ContactActivity.this.findViewById(R$id.iv_smmallred);
            imageView.setVisibility(8);
            if (!C3711a1.m24491s0()) {
                imageView.setVisibility(0);
                return;
            }
            ContactActivity contactActivity = ContactActivity.this;
            contactActivity.f10697h0 = AnimationUtils.loadAnimation(contactActivity.getApplicationContext(), R$anim.iv_scale);
            ContactActivity.this.f10697h0.setInterpolator(new LinearInterpolator());
            ContactActivity.this.f10700k0.startAnimation(ContactActivity.this.f10697h0);
            C3711a1.m24565Z1(false);
        }
    }

    /* renamed from: L0 */
    public void m25481L0() {
        try {
            CallLogBean callLogBean = this.f10665B;
            if (callLogBean == null || callLogBean.m24880o() == null || "".equals(this.f10665B.m24880o())) {
                return;
            }
            C2796b.m26587b(this.f10665B.m24880o().replace("-", ""), new C3341k());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: M0 */
    private void m25480M0() {
        C2932a.m26391e(getApplicationContext(), this.f10665B.m24868v(), this.f10665B.m24880o(), new C3344m());
    }

    /* renamed from: O0 */
    private void m25478O0() {
        getWindow().getDecorView().post(new RunnableC3322a());
    }

    /* renamed from: P0 */
    public void m25477P0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.popuwindow_contact, (ViewGroup) null);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_copy);
        frameLayout.setVisibility(0);
        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_block);
        frameLayout2.setVisibility(0);
        FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.fl_delete_contact);
        frameLayout3.setVisibility(0);
        FrameLayout frameLayout4 = (FrameLayout) inflate.findViewById(R$id.fl_edit_contact);
        frameLayout4.setVisibility(0);
        this.f10669F = (TextView) inflate.findViewById(R$id.tv_block);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_delete_contact);
        ((TextView) inflate.findViewById(R$id.tv_copy)).setTypeface(this.f10706q0);
        ((TextView) inflate.findViewById(R$id.tv_edit_contact)).setTypeface(this.f10706q0);
        FrameLayout frameLayout5 = (FrameLayout) inflate.findViewById(R$id.fl_share);
        ((TextView) inflate.findViewById(R$id.tv_share)).setTypeface(this.f10706q0);
        frameLayout5.setVisibility(0);
        frameLayout5.setOnClickListener(this);
        this.f10669F.setTypeface(this.f10706q0);
        textView.setTypeface(this.f10706q0);
        frameLayout3.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        this.f10666C = new PopupWindow(inflate);
        this.f10666C.setWidth(getWindowManager().getDefaultDisplay().getWidth() / 2);
        this.f10666C.setHeight(-2);
        this.f10666C.setFocusable(true);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f10666C.setAnimationStyle(R$style.pop_style_rtl);
        } else {
            this.f10666C.setAnimationStyle(R$style.pop_style);
        }
        this.f10666C.setBackgroundDrawable(new ColorDrawable(0));
    }

    /* renamed from: Q0 */
    public void m25476Q0() {
        this.f10703n0 = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        ImageView imageView = (ImageView) findViewById(R$id.lb_contact_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f10704o0 = (ImageView) findViewById(R$id.iv_callscreen);
        this.f10705p0 = (ImageView) findViewById(R$id.iv_bg);
        this.f10690a0 = (TextView) findViewById(R$id.tv_title_name);
        this.f10680Q = (AppBarLayout) findViewById(R$id.appbarlayout);
        this.f10681R = (Toolbar) findViewById(R$id.toolbar);
        this.f10682S = (RelativeLayout) findViewById(R$id.rl_contact);
        this.f10678O = (ConstraintLayout) findViewById(R$id.ll_contact_make1);
        this.f10683T = (ConstraintLayout) findViewById(R$id.ll_contact_make);
        this.f10708v = (ImageView) findViewById(R$id.lb_contact_more);
        this.f10672I = (ImageView) findViewById(R$id.im_favorite);
        this.f10677N = (ImageView) findViewById(R$id.im_add_block);
        this.f10685V = (ImageView) findViewById(R$id.im_favorite1);
        this.f10686W = (ImageView) findViewById(R$id.im_add_block1);
        this.f10709w = (ImageView) findViewById(R$id.ic_contact_icon);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.btn_call);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.see_history);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.btn_add_block);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.btn_favorite);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.btn_message);
        FrameLayout frameLayout6 = (FrameLayout) findViewById(R$id.btn_add_call);
        FrameLayout frameLayout7 = (FrameLayout) findViewById(R$id.btn_add_block1);
        FrameLayout frameLayout8 = (FrameLayout) findViewById(R$id.btn_favorite1);
        FrameLayout frameLayout9 = (FrameLayout) findViewById(R$id.btn_message1);
        FrameLayout frameLayout10 = (FrameLayout) findViewById(R$id.btn_add_call1);
        ImageView imageView2 = (ImageView) findViewById(R$id.btn_contact_record);
        this.f10701l0 = imageView2;
        imageView2.setOnClickListener(this);
        this.f10675L = (LinearLayout) findViewById(R$id.ll_phone_numbers);
        this.f10688Y = (FrameLayout) findViewById(R$id.rl_location);
        this.f10689Z = findViewById(R$id.line2);
        ImageView imageView3 = (ImageView) findViewById(R$id.btn_contact_sms);
        TextView textView = (TextView) findViewById(R$id.btn_see_history);
        this.f10670G = (ProgressBar) findViewById(R$id.progress_search);
        this.f10684U = (LinearLayout) findViewById(R$id.ll_name);
        this.f10691b0 = (ImageView) findViewById(R$id.iv_sim1);
        this.f10692c0 = (ImageView) findViewById(R$id.iv_sim2);
        this.f10693d0 = (ImageView) findViewById(R$id.btn_sim1);
        this.f10694e0 = (ImageView) findViewById(R$id.btn_sim2);
        this.f10691b0.setVisibility(8);
        this.f10692c0.setVisibility(8);
        imageView.setOnClickListener(this);
        this.f10708v.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        imageView3.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        frameLayout5.setOnClickListener(this);
        frameLayout6.setOnClickListener(this);
        frameLayout7.setOnClickListener(this);
        frameLayout8.setOnClickListener(this);
        frameLayout9.setOnClickListener(this);
        frameLayout10.setOnClickListener(this);
        this.f10693d0.setOnClickListener(this);
        this.f10694e0.setOnClickListener(this);
        this.f10704o0.setOnClickListener(this);
        this.f10688Y.setOnClickListener(this);
        this.f10710x = (TextView) findViewById(R$id.tv_name_number);
        this.f10667D = (TextView) findViewById(R$id.tv_dian);
        this.f10668E = (TextView) findViewById(R$id.tv_is_block);
        this.f10711y = (TextView) findViewById(R$id.tv_contact_location);
        this.f10712z = (TextView) findViewById(R$id.tv_contact_number);
        this.f10664A = (TextView) findViewById(R$id.tv_contact_type);
        this.f10676M = (TextView) findViewById(R$id.tv_operator);
        TextView textView2 = (TextView) findViewById(R$id.tv_favorite);
        this.f10671H = (TextView) findViewById(R$id.tv_add_is_block);
        TextView textView3 = (TextView) findViewById(R$id.tv_favorite1);
        this.f10687X = (TextView) findViewById(R$id.tv_add_is_block1);
        TextView textView4 = (TextView) findViewById(R$id.tv_add_call);
        TextView textView5 = (TextView) findViewById(R$id.tv_add_message);
        TextView textView6 = (TextView) findViewById(R$id.tv_add_call1);
        TextView textView7 = (TextView) findViewById(R$id.tv_add_message1);
        Typeface m24359b = C3739f1.m24359b();
        this.f10706q0 = m24359b;
        this.f10668E.setTypeface(m24359b);
        this.f10710x.setTypeface(this.f10706q0);
        this.f10711y.setTypeface(this.f10706q0);
        this.f10712z.setTypeface(this.f10706q0);
        this.f10664A.setTypeface(this.f10706q0);
        this.f10676M.setTypeface(this.f10706q0);
        textView.setTypeface(this.f10706q0);
        textView2.setTypeface(this.f10706q0);
        this.f10671H.setTypeface(this.f10706q0);
        textView3.setTypeface(this.f10706q0);
        this.f10687X.setTypeface(this.f10706q0);
        textView4.setTypeface(this.f10706q0);
        textView5.setTypeface(this.f10706q0);
        textView6.setTypeface(this.f10706q0);
        textView7.setTypeface(this.f10706q0);
        this.f10690a0.setTypeface(this.f10706q0);
        this.f10696g0 = findViewById(R$id.rl_recommend);
        FrameLayout frameLayout11 = (FrameLayout) findViewById(R$id.btn_recommend);
        this.f10698i0 = (TextView) findViewById(R$id.tv_title);
        this.f10699j0 = (TextView) findViewById(R$id.tv_content);
        this.f10700k0 = (ImageView) findViewById(R$id.icic);
        ImageView imageView4 = (ImageView) findViewById(R$id.iv_close);
        this.f10698i0.setTypeface(this.f10706q0);
        this.f10699j0.setTypeface(this.f10706q0);
        ((TextView) findViewById(R$id.tv_ad)).setTypeface(this.f10706q0);
        frameLayout11.setOnClickListener(this);
        imageView4.setOnClickListener(this);
        C2786a.m26600a(new C3350q());
    }

    /* renamed from: R0 */
    public void m25475R0() {
        this.f10674K = (FrameLayout) findViewById(R$id.fl_junk_admob);
        this.f10673J = (LinearLayout) findViewById(R$id.invis1);
        C3756c.m24329c().m24328d(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/5960855653", new C3340j());
    }

    /* renamed from: S0 */
    private void m25474S0() {
        try {
            if (!C3711a1.m24469x2().booleanValue()) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26 && i < 28 && !C3784b.m24142d(getApplicationContext())) {
                    DialogC2588f dialogC2588f = new DialogC2588f(this, R$style.CustomDialog4);
                    dialogC2588f.setCanceledOnTouchOutside(false);
                    dialogC2588f.show();
                }
            }
            C2796b.m26587b(this.f10665B.m24880o(), new C3333h());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: T0 */
    private void m25473T0() {
        CallLogBean callLogBean = this.f10665B;
        if (callLogBean != null && callLogBean.m24868v() != 0) {
            C3852t.m23960c(this, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.f10665B.m24868v()), "", R$drawable.ic_photo_normal, this.f10709w);
            return;
        }
        CallLogBean callLogBean2 = this.f10665B;
        if (callLogBean2 == null || callLogBean2.m24880o() == null || "".equals(this.f10665B.m24880o())) {
            return;
        }
        C2932a.m26395a(this.f10665B.m24880o(), new C3349p());
    }

    /* renamed from: U0 */
    private void m25472U0() {
        C2932a.m26394b(this.f10665B.m24880o(), new C3348o());
    }

    /* renamed from: V0 */
    private void m25471V0() {
        C2932a.m26393c(this.f10665B.m24868v(), this.f10665B.m24880o(), new C3347n());
    }

    /* renamed from: W0 */
    public void m25470W0() {
        String[] split;
        if (this.f10665B != null) {
            m25471V0();
            m25473T0();
            if (this.f10695f0) {
                this.f10693d0.setVisibility(0);
                this.f10694e0.setVisibility(0);
                try {
                    if (this.f10665B.m24956C().equals("0")) {
                        this.f10691b0.setVisibility(0);
                    } else if (this.f10665B.m24956C().equals("1")) {
                        this.f10692c0.setVisibility(0);
                    } else {
                        this.f10691b0.setVisibility(8);
                        this.f10692c0.setVisibility(8);
                    }
                } catch (Exception e) {
                }
            } else {
                this.f10693d0.setImageResource(R$drawable.ic_tel);
                this.f10691b0.setVisibility(8);
                this.f10692c0.setVisibility(8);
            }
            if (this.f10665B.m24952E() != null) {
                if (this.f10665B.m24952E().equals("1")) {
                    this.f10665B.m24922V0("1");
                    this.f10672I.setImageResource(R$drawable.ic_favorite_select_white);
                    this.f10685V.setImageResource(R$drawable.ic_favorite_select_white);
                } else {
                    this.f10665B.m24922V0("0");
                    this.f10672I.setImageResource(R$drawable.ic_favourite_unselect_white);
                    this.f10685V.setImageResource(R$drawable.ic_favourite_unselect_white);
                }
            }
            if (this.f10665B.m24884m() == null || "".equals(this.f10665B.m24884m())) {
                this.f10710x.setText(this.f10665B.m24880o());
                this.f10690a0.setText(this.f10665B.m24880o());
            } else {
                this.f10710x.setText(this.f10665B.m24884m());
                this.f10690a0.setText(this.f10665B.m24884m());
            }
            if (this.f10665B.m24909c() == null || "".equals(this.f10665B.m24909c())) {
                this.f10688Y.setVisibility(8);
                this.f10689Z.setVisibility(8);
            } else {
                this.f10711y.setText(this.f10665B.m24909c());
                this.f10688Y.setVisibility(0);
                this.f10689Z.setVisibility(0);
            }
            String m24906d = this.f10665B.m24906d();
            if (this.f10665B.m24892i() != null && !"".equals(this.f10665B.m24892i())) {
                this.f10712z.setText(this.f10665B.m24892i());
            } else if (m24906d == null || "".equals(m24906d)) {
                this.f10712z.setText(this.f10665B.m24880o());
            } else {
                this.f10712z.setText(m24906d);
            }
            if (this.f10665B.m24886l() != null && !"".equals(this.f10665B.m24886l()) && (split = this.f10665B.m24886l().split(":")) != null && split.length > 1) {
                m25480M0();
            }
            if (this.f10665B.m24876r() != null && !"".equals(this.f10665B.m24876r())) {
                this.f10664A.setText(this.f10665B.m24876r());
                this.f10664A.setVisibility(0);
                if (this.f10665B.m24872t() != null && !"".equals(this.f10665B.m24872t())) {
                    TextView textView = this.f10676M;
                    textView.setText(" • " + this.f10665B.m24872t());
                    this.f10676M.setVisibility(0);
                }
            } else if (this.f10665B.m24958B() == null || "".equals(this.f10665B.m24958B())) {
                this.f10664A.setText(getResources().getString(R$string.mobile_fixed));
                this.f10664A.setVisibility(0);
                if (this.f10665B.m24872t() != null && !"".equals(this.f10665B.m24872t())) {
                    TextView textView2 = this.f10676M;
                    textView2.setText(" • " + this.f10665B.m24872t());
                    this.f10676M.setVisibility(0);
                }
            } else {
                this.f10664A.setText(this.f10665B.m24958B());
                this.f10664A.setVisibility(0);
                if (this.f10665B.m24872t() != null && !"".equals(this.f10665B.m24872t())) {
                    TextView textView3 = this.f10676M;
                    textView3.setText(" • " + this.f10665B.m24872t());
                    this.f10676M.setVisibility(0);
                }
            }
            if (this.f10665B.m24880o() == null) {
                return;
            }
            new Thread(new RunnableC3342l()).start();
        }
    }

    /* renamed from: N0 */
    public void m25479N0() {
        if (this.f10702m0) {
            Intent intent = new Intent(this, MainActivity.class);
            intent.putExtra("missedcall", true);
            startActivity(intent);
        }
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 200) {
            m25473T0();
            m25472U0();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.btn_add_block /* 2131296403 */:
                C3810q.m24071b().m24070c("btn_add_block");
                m25474S0();
                return;
            case R$id.btn_add_block1 /* 2131296404 */:
                C3810q.m24071b().m24070c("btn_add_block");
                m25474S0();
                return;
            case R$id.btn_add_call /* 2131296405 */:
                try {
                    if (!C3714b1.m24448j(this)) {
                        C3809p0.m24078a(getApplicationContext(), this.f10665B.m24880o());
                    } else if (C3711a1.m24639G()) {
                        C3714b1.m24454d(this, C3711a1.m24504p(), this.f10665B.m24880o());
                    } else if (Build.VERSION.SDK_INT >= 22) {
                        C3714b1.m24439s(this, this.f10665B.m24880o());
                    } else {
                        C3809p0.m24078a(getApplicationContext(), this.f10665B.m24880o());
                    }
                    return;
                } catch (Exception e) {
                    Toast.makeText(this, getResources().getString(R$string.no_phone_related), 1).show();
                    return;
                }
            case R$id.btn_add_call1 /* 2131296406 */:
                try {
                    C3809p0.m24078a(getApplicationContext(), this.f10665B.m24880o());
                    return;
                } catch (Exception e2) {
                    Toast.makeText(this, getResources().getString(R$string.no_phone_related), 1).show();
                    return;
                }
            case R$id.btn_contact_record /* 2131296420 */:
                try {
                    Intent intent = new Intent(this, RecordListActivity.class);
                    intent.putExtra("recordnumber", this.f10665B.m24880o());
                    intent.putExtra("recordname", this.f10665B.m24884m());
                    intent.addFlags(268435456);
                    startActivity(intent);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case R$id.btn_contact_sms /* 2131296421 */:
                try {
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setType("vnd.android-dir/mms-sms");
                    intent2.setData(Uri.parse("smsto:" + this.f10665B.m24880o()));
                    intent2.addFlags(268468224);
                    startActivity(intent2);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                C3810q.m24071b().m24070c("btn_contact_sms");
                return;
            case R$id.btn_favorite /* 2131296423 */:
                C3810q.m24071b().m24070c("btn_favorite");
                try {
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
                if (this.f10665B.m24952E() != null && !"".equals(this.f10665B.m24952E())) {
                    if (this.f10665B.m24952E().equals("1")) {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.remove_fav), 0).show();
                        try {
                            C2879a.m26474b(this.f10665B.m24868v(), new C3325b());
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    } else {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.add_fav), 0).show();
                        try {
                            C2879a.m26475a(this.f10665B.m24868v(), new C3326c());
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                    e5.printStackTrace();
                    return;
                }
                return;
            case R$id.btn_favorite1 /* 2131296424 */:
                C3810q.m24071b().m24070c("btn_favorite");
                try {
                } catch (Exception e8) {
                    e8.printStackTrace();
                    return;
                }
                if (this.f10665B.m24952E() != null && !"".equals(this.f10665B.m24952E())) {
                    if (this.f10665B.m24952E().equals("1")) {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.remove_fav), 0).show();
                        try {
                            C2879a.m26474b(this.f10665B.m24868v(), new C3327d());
                        } catch (Exception e9) {
                            e9.printStackTrace();
                        }
                    } else {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.add_fav), 0).show();
                        try {
                            C2879a.m26475a(this.f10665B.m24868v(), new C3328e());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    e8.printStackTrace();
                    return;
                }
                return;
            case R$id.btn_message /* 2131296425 */:
                try {
                    Intent intent3 = new Intent("android.intent.action.VIEW");
                    intent3.setType("vnd.android-dir/mms-sms");
                    intent3.setData(Uri.parse("smsto:" + this.f10665B.m24880o()));
                    intent3.addFlags(268468224);
                    startActivity(intent3);
                    return;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            case R$id.btn_message1 /* 2131296426 */:
                try {
                    Intent intent4 = new Intent("android.intent.action.VIEW");
                    intent4.setType("vnd.android-dir/mms-sms");
                    intent4.setData(Uri.parse("smsto:" + this.f10665B.m24880o()));
                    intent4.addFlags(268468224);
                    startActivity(intent4);
                    return;
                } catch (Exception e12) {
                    e12.printStackTrace();
                    return;
                }
            case R$id.btn_recommend /* 2131296428 */:
                C3810q.m24071b().m24070c("pdt_recommend_click");
                C3767h1.m24277K0(getApplicationContext(), C3792k0.m24136a(), "showcaller");
                this.f10696g0.setVisibility(8);
                return;
            case R$id.btn_sim1 /* 2131296433 */:
                if (this.f10665B == null) {
                    return;
                }
                C3714b1.m24457a(Boolean.valueOf(this.f10695f0), this.f10665B, this);
                return;
            case R$id.btn_sim2 /* 2131296434 */:
                if (this.f10665B == null) {
                    return;
                }
                C3714b1.m24456b(Boolean.valueOf(this.f10695f0), this.f10665B, this);
                return;
            case R$id.fl_block /* 2131296717 */:
                this.f10666C.dismiss();
                m25474S0();
                return;
            case R$id.fl_copy /* 2131296732 */:
                this.f10666C.dismiss();
                try {
                    ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.f10665B.m24880o()));
                    Toast.makeText(this, getResources().getString(R$string.copy_ok), 1).show();
                    return;
                } catch (Exception e13) {
                    e13.printStackTrace();
                    return;
                }
            case R$id.fl_delete_contact /* 2131296735 */:
                this.f10666C.dismiss();
                AlertDialog create = new AlertDialog.Builder(this).setMessage(getResources().getString(R$string.delete_contact_aio)).setPositiveButton(getResources().getString(R$string.delete_dialog), new DialogInterface$OnClickListenerC3330g()).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3329f()).create();
                create.show();
                create.getButton(-1).setTextColor(this.f10703n0);
                create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
                return;
            case R$id.fl_edit_contact /* 2131296740 */:
                this.f10666C.dismiss();
                try {
                    startActivityForResult(new Intent("android.intent.action.EDIT", Uri.parse("content://com.android.contacts/contacts/" + this.f10665B.m24868v())), 200);
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                C3810q.m24071b().m24070c("btn_add_edit");
                return;
            case R$id.fl_share /* 2131296795 */:
                try {
                    this.f10666C.dismiss();
                    C3810q.m24071b().m24070c("number_content_share_click");
                    DialogC2616n dialogC2616n = new DialogC2616n(this, R$style.CustomDialog4, getResources().getString(R$string.share_title_number), getResources().getString(R$string.share_subject), C3767h1.m24276L(this.f10665B.m24884m(), this.f10665B.m24880o(), this.f10665B.m24909c()), 0, null);
                    dialogC2616n.setCanceledOnTouchOutside(false);
                    dialogC2616n.show();
                    Window window = dialogC2616n.getWindow();
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    window.setGravity(80);
                    WindowManager windowManager = (WindowManager) getApplicationContext().getApplicationContext().getSystemService("window");
                    int width = windowManager.getDefaultDisplay().getWidth();
                    int height = windowManager.getDefaultDisplay().getHeight();
                    attributes.width = width;
                    attributes.height = height / 2;
                    window.setAttributes(attributes);
                    return;
                } catch (Exception e15) {
                    e15.printStackTrace();
                    return;
                }
            case R$id.iv_callscreen /* 2131296965 */:
                try {
                    C3810q.m24071b().m24070c("number_pdt_callscreen_click");
                    Intent intent5 = new Intent(this, MainActivity.class);
                    intent5.putExtra("is_callscreen", true);
                    startActivity(intent5);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    finish();
                    return;
                } catch (Exception e16) {
                    e16.printStackTrace();
                    return;
                }
            case R$id.iv_close /* 2131296970 */:
                this.f10696g0.setVisibility(8);
                C3711a1.m24466y1(System.currentTimeMillis());
                return;
            case R$id.lb_contact_back /* 2131297120 */:
                m25479N0();
                return;
            case R$id.lb_contact_more /* 2131297121 */:
                if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                    this.f10666C.showAtLocation(this.f10708v, 51, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                } else {
                    this.f10666C.showAtLocation(this.f10708v, 53, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                }
            case R$id.rl_location /* 2131297510 */:
                if (this.f10665B.m24909c() == null || "".equals(this.f10665B.m24909c())) {
                    return;
                }
                C3767h1.m24212y0(getApplicationContext(), this.f10665B.m24909c());
                return;
            case R$id.see_history /* 2131297584 */:
                try {
                    Intent intent6 = new Intent(this, CallLogActivity.class);
                    intent6.putExtra("call_log_number", this.f10665B.m24880o().replace(" ", ""));
                    startActivity(intent6);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    C3810q.m24071b().m24070c("see_history");
                    return;
                } catch (Exception e17) {
                    e17.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            this.f10665B = (CallLogBean) intent.getParcelableExtra("contact_tony");
            this.f10702m0 = intent.getBooleanExtra("is_missed", false);
        }
        setContentView(R$layout.activity_contact_new);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        if (C3714b1.m24448j(this)) {
            this.f10695f0 = true;
        } else {
            this.f10695f0 = false;
        }
        C3810q.m24071b().m24070c("contact_content_show");
        m25478O0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AppBarStateChangeListener appBarStateChangeListener;
        super.onDestroy();
        try {
            AppBarLayout appBarLayout = this.f10680Q;
            if (appBarLayout == null || (appBarStateChangeListener = this.f10679P) == null) {
                return;
            }
            appBarLayout.m5760p(appBarStateChangeListener);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25479N0();
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
        new Handler().postDelayed(new RunnableC3339i(), 800L);
        if (C3784b.f12036a) {
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
            }
            C3784b.f12036a = false;
            m25474S0();
        }
    }
}
