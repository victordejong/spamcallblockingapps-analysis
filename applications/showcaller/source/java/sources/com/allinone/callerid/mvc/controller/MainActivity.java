package com.allinone.callerid.mvc.controller;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.role.RoleManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemClock;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0586a;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewpager.widget.ViewPager;
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
import com.allinone.callerid.bean.EZSimpleContact;
import com.allinone.callerid.callscreen.activitys.CallScreenSettingActivity;
import com.allinone.callerid.customview.AVLoadingIndicatorView;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.customview.p143e.AbstractC2449c;
import com.allinone.callerid.customview.p143e.C2450d;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.dialog.DialogC2583d;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.dialog.DialogC2589g;
import com.allinone.callerid.dialog.DialogC2591h;
import com.allinone.callerid.dialog.DialogC2616n;
import com.allinone.callerid.inapputil.C3023c;
import com.allinone.callerid.inapputil.GoogleBillingUtil;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.CustomViewPager;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.main.LogActivity;
import com.allinone.callerid.model.C3071a;
import com.allinone.callerid.mvc.controller.block.AddCustomNumActivity;
import com.allinone.callerid.mvc.controller.block.BlockManagerActivity;
import com.allinone.callerid.mvc.controller.block.MyBlockListActivity;
import com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity;
import com.allinone.callerid.mvc.controller.recorder.RecorderActivity;
import com.allinone.callerid.p136b.C2210n;
import com.allinone.callerid.p140c.p141a.C2316a;
import com.allinone.callerid.p140c.p142b.C2321c;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.p156e.C2618a;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p160g.C2668c;
import com.allinone.callerid.p160g.View$OnClickListenerC2659b;
import com.allinone.callerid.p160g.View$OnClickListenerC2685d;
import com.allinone.callerid.p160g.View$OnClickListenerC2687e;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2791c;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f;
import com.allinone.callerid.p162i.p163a.p174i.AbstractC2849e;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p174i.C2846d;
import com.allinone.callerid.p162i.p163a.p186p.AbstractC2926b;
import com.allinone.callerid.p162i.p163a.p186p.C2927c;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g;
import com.allinone.callerid.p162i.p163a.p188r.C2942a;
import com.allinone.callerid.p162i.p163a.p190t.C2969b;
import com.allinone.callerid.p162i.p163a.p190t.C2970c;
import com.allinone.callerid.p162i.p163a.p190t.C2972d;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.receiver.DisturbNotifitcationReceiver;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.service.BinderC3612a;
import com.allinone.callerid.service.DaemonService;
import com.allinone.callerid.service.MyService;
import com.allinone.callerid.start.CommonSetting;
import com.allinone.callerid.start.DedicationActivity;
import com.allinone.callerid.start.StartActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3792k0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3811q0;
import com.allinone.callerid.util.C3877y;
import com.allinone.callerid.util.p202gg.C3749a;
import com.allinone.callerid.util.p202gg.C3763f;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import com.allinone.callerid.util.recorder.C3820b;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5758l;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.initialization.AbstractC5622a;
import com.google.android.gms.ads.initialization.AbstractC5623b;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.material.appbar.AppBarLayout;
import com.hzy.lib7z.ErrorCode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity.class */
public class MainActivity extends BaseActivity implements View.OnClickListener, View$OnClickListenerC2687e.AbstractC2718s {

    /* renamed from: A */
    private TextView f10144A;

    /* renamed from: A0 */
    private int f10145A0;

    /* renamed from: B */
    private TextView f10146B;

    /* renamed from: B0 */
    private int f10147B0;

    /* renamed from: C */
    private Intent f10148C;

    /* renamed from: C0 */
    private int f10149C0;

    /* renamed from: D */
    private DialogC2583d f10150D;

    /* renamed from: D0 */
    private int f10151D0;

    /* renamed from: E */
    private FrameLayout f10152E;

    /* renamed from: E0 */
    private int f10153E0;

    /* renamed from: F */
    private C3168j0 f10154F;

    /* renamed from: F0 */
    private int f10155F0;

    /* renamed from: G */
    private FrameLayout f10156G;

    /* renamed from: G0 */
    private int f10157G0;

    /* renamed from: H */
    private ImageView f10158H;

    /* renamed from: H0 */
    private int f10159H0;

    /* renamed from: I */
    private ImageView f10160I;

    /* renamed from: I0 */
    private int f10161I0;

    /* renamed from: J */
    private Animation f10162J;

    /* renamed from: J0 */
    private LayoutInflater f10163J0;

    /* renamed from: K */
    private FrameLayout f10164K;

    /* renamed from: K0 */
    private long f10165K0;

    /* renamed from: L0 */
    private FrameLayout f10167L0;

    /* renamed from: M */
    private C3811q0 f10168M;

    /* renamed from: M0 */
    private ImageView f10169M0;

    /* renamed from: N */
    private long f10170N;

    /* renamed from: N0 */
    private TextView f10171N0;

    /* renamed from: O0 */
    private int f10173O0;

    /* renamed from: P0 */
    private int f10175P0;

    /* renamed from: Q */
    private FloatingActionButton f10176Q;

    /* renamed from: Q0 */
    private Typeface f10177Q0;

    /* renamed from: R */
    private boolean f10178R;

    /* renamed from: R0 */
    private Animation f10179R0;

    /* renamed from: S */
    private TextView f10180S;

    /* renamed from: S0 */
    private C5600d f10181S0;

    /* renamed from: T */
    private TextView f10182T;

    /* renamed from: U */
    private ConstraintLayout f10184U;

    /* renamed from: V */
    private GoogleBillingUtil f10186V;

    /* renamed from: Y */
    private ImageView f10191Y;

    /* renamed from: Z */
    private DisturbNotifitcationReceiver f10192Z;

    /* renamed from: a0 */
    private boolean f10193a0;

    /* renamed from: b0 */
    private ImageView f10194b0;

    /* renamed from: c0 */
    private PopupWindow f10195c0;

    /* renamed from: d0 */
    private View$OnClickListenerC2687e f10196d0;

    /* renamed from: e0 */
    private TextView f10197e0;

    /* renamed from: f0 */
    private TextView f10198f0;

    /* renamed from: g0 */
    private TextView f10199g0;

    /* renamed from: h0 */
    private TextView f10200h0;

    /* renamed from: i0 */
    private ImageView f10201i0;

    /* renamed from: j0 */
    private ImageView f10202j0;

    /* renamed from: k0 */
    private ImageView f10203k0;

    /* renamed from: l0 */
    private ImageView f10204l0;

    /* renamed from: m0 */
    private View f10205m0;

    /* renamed from: n0 */
    private FloatingActionMenu f10206n0;

    /* renamed from: o0 */
    private PopupWindow f10207o0;

    /* renamed from: p0 */
    private TextView f10208p0;

    /* renamed from: q0 */
    private TextView f10209q0;

    /* renamed from: r0 */
    private ImageView f10210r0;

    /* renamed from: t0 */
    private ImageView f10212t0;

    /* renamed from: u */
    private CustomViewPager f10213u;

    /* renamed from: u0 */
    private boolean f10214u0;

    /* renamed from: v */
    private ImageView f10215v;

    /* renamed from: v0 */
    private String f10216v0;

    /* renamed from: w */
    private AVLoadingIndicatorView f10217w;

    /* renamed from: w0 */
    private boolean f10218w0;

    /* renamed from: x */
    private View f10219x;

    /* renamed from: x0 */
    private AppBarLayout f10220x0;

    /* renamed from: y */
    private DrawerLayout f10221y;

    /* renamed from: y0 */
    private int f10222y0;

    /* renamed from: z */
    private TextView f10223z;

    /* renamed from: z0 */
    private int f10224z0;

    /* renamed from: L */
    private boolean f10166L = true;

    /* renamed from: O */
    private int f10172O = 0;

    /* renamed from: P */
    private boolean f10174P = false;

    /* renamed from: W */
    private String f10188W = "$1.99";

    /* renamed from: X */
    private String f10190X = "$12.99";

    /* renamed from: s0 */
    private Handler f10211s0 = new Handler();

    /* renamed from: T0 */
    private boolean f10183T0 = false;

    /* renamed from: U0 */
    private boolean f10185U0 = true;

    /* renamed from: V0 */
    private float f10187V0 = 48.0f;

    /* renamed from: W0 */
    private Handler f10189W0 = new HandlerC3165i0(this, null);

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$a.class */
    public class DialogInterface$OnClickListenerC3138a implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ String f10225d;

        DialogInterface$OnClickListenerC3138a(String str) {
            MainActivity.this = r4;
            this.f10225d = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = new Intent(EZCallApplication.m26146c(), EZSearchNumberActivity.class);
            intent.putExtra("searchnumber", this.f10225d);
            MainActivity.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$a0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$a0.class */
    public class C3139a0 implements AbstractC2808b {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$a0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$a0$a.class */
        class DialogInterface$OnClickListenerC3140a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3140a() {
                C3139a0.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$a0$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$a0$b.class */
        class DialogInterface$OnClickListenerC3141b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10229d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f10230e;

            DialogInterface$OnClickListenerC3141b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3139a0.this = r4;
                this.f10229d = deletableEditText;
                this.f10230e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f10229d.getText().toString();
                    MainActivity.this.m25784s1(this.f10230e.getText().toString(), obj, true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3139a0() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b
        /* renamed from: a */
        public void mo25264a(CallLogBean callLogBean) {
            try {
                View inflate = MainActivity.this.f10163J0.inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                deletableEditText.setHint(R$string.block_name);
                deletableEditText2.setTypeface(MainActivity.this.f10177Q0);
                deletableEditText2.setHint(R$string.block_number);
                deletableEditText.setText(callLogBean.m24884m());
                deletableEditText2.setText(callLogBean.m24880o());
                deletableEditText2.setSelection(deletableEditText2.getText().length());
                AlertDialog create = new AlertDialog.Builder(MainActivity.this).setMessage(MainActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(MainActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3141b(deletableEditText2, deletableEditText)).setNegativeButton(MainActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3140a()).create();
                create.show();
                create.getButton(-1).setTextColor(MainActivity.this.f10161I0);
                create.getButton(-2).setTextColor(MainActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$b.class */
    public class C3142b implements AbstractC5796a.AbstractC5799c {
        C3142b() {
            MainActivity.this = r4;
        }

        @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
        /* renamed from: a */
        public void mo17848a(AbstractC5796a abstractC5796a) {
            MainActivity.this.f10215v.setVisibility(0);
            MainActivity.this.f10152E.startAnimation(MainActivity.this.f10179R0);
            C3763f.m24317a().f11985b = abstractC5796a;
            C3711a1.m24566Z0(System.currentTimeMillis());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$b0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$b0.class */
    public class View$OnClickListenerC3143b0 implements View.OnClickListener {
        View$OnClickListenerC3143b0() {
            MainActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MainActivity.this.f10213u.getCurrentItem() == 0) {
                Intent intent = new Intent();
                intent.setClass(MainActivity.this, EZDialerActivity.class);
                MainActivity.this.startActivity(intent);
                MainActivity.this.overridePendingTransition(R$anim.abc_grow_fade_in_from_bottom, R$anim.abc_slide_out_top);
                C3810q.m24071b().m24070c("dial_buttom");
                return;
            }
            try {
                Intent intent2 = new Intent("android.intent.action.INSERT");
                intent2.setType("vnd.android.cursor.dir/person");
                intent2.setType("vnd.android.cursor.dir/contact");
                intent2.setType("vnd.android.cursor.dir/raw_contact");
                intent2.putExtra("phone_type", 2);
                MainActivity.this.startActivity(intent2);
            } catch (Exception e) {
                e.printStackTrace();
            }
            C3810q.m24071b().m24070c("button_add_contact");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$c.class */
    public class C3144c extends AbstractC5596b {
        C3144c() {
            MainActivity.this = r4;
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: n */
        public void mo9079n(C5756j c5756j) {
            super.mo9079n(c5756j);
            MainActivity.this.f10152E.setVisibility(8);
            MainActivity.this.f10217w.setVisibility(8);
            MainActivity.this.f10215v.setVisibility(8);
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: q */
        public void mo9077q() {
            super.mo9077q();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("AdLoaded", "gift--onAdLoaded");
            }
            MainActivity.this.f10217w.setVisibility(8);
            MainActivity.this.f10183T0 = true;
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: r */
        public void mo9076r() {
            super.mo9076r();
            if (MainActivity.this.f10150D != null) {
                MainActivity.this.f10150D.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$c0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$c0.class */
    public class C3145c0 implements ViewPager.AbstractC1193i {
        C3145c0() {
            MainActivity.this = r4;
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
                try {
                    MainActivity.this.f10205m0.setVisibility(0);
                    MainActivity.this.f10206n0.setVisibility(8);
                    MainActivity.this.m25849A1(true);
                    MainActivity.this.f10176Q.setImageResource(MainActivity.this.f10173O0);
                    MainActivity.this.f10176Q.setContentDescription(MainActivity.this.getResources().getString(R$string.shortcut_dialer));
                    MainActivity.this.f10176Q.setVisibility(0);
                    MainActivity.this.m25779u1();
                } catch (Resources.NotFoundException e) {
                    e.printStackTrace();
                }
            } else if (i == 1) {
                try {
                    MainActivity.this.f10205m0.setVisibility(0);
                    MainActivity.this.f10206n0.setVisibility(8);
                    MainActivity.this.m25849A1(false);
                    MainActivity.this.f10176Q.setImageResource(MainActivity.this.f10175P0);
                    MainActivity.this.f10176Q.setContentDescription(MainActivity.this.getResources().getString(R$string.add_contacts));
                    MainActivity.this.f10176Q.setVisibility(0);
                    MainActivity.this.m25777v1();
                } catch (Resources.NotFoundException e2) {
                    e2.printStackTrace();
                }
            } else if (i == 2) {
                try {
                    MainActivity.this.f10205m0.setVisibility(0);
                    MainActivity.this.f10206n0.setVisibility(0);
                    MainActivity.this.m25849A1(false);
                    MainActivity.this.f10176Q.setVisibility(8);
                    MainActivity.this.m25781t1();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } else if (i != 3) {
            } else {
                try {
                    MainActivity.this.f10205m0.setVisibility(0);
                    MainActivity.this.f10206n0.setVisibility(0);
                    MainActivity.this.m25849A1(false);
                    MainActivity.this.f10176Q.setVisibility(8);
                    MainActivity.this.m25781t1();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$d.class */
    class RunnableC3146d implements Runnable {
        RunnableC3146d() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.startActivity(new Intent(MainActivity.this, RecorderActivity.class));
            MainActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$d0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$d0.class */
    public class RunnableC3147d0 implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$d0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$d0$a.class */
        class C3148a implements AbstractC5623b {
            C3148a() {
                RunnableC3147d0.this = r4;
            }

            @Override // com.google.android.gms.ads.initialization.AbstractC5623b
            /* renamed from: a */
            public void mo18224a(AbstractC5622a abstractC5622a) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$d0$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$d0$b.class */
        class ServiceConnectionC3149b implements ServiceConnection {
            ServiceConnectionC3149b() {
                RunnableC3147d0.this = r4;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                MyService m24807a;
                if ((iBinder instanceof BinderC3612a) && (m24807a = ((BinderC3612a) iBinder).m24807a()) != null) {
                    m24807a.m24853a();
                }
                MainActivity.this.getApplicationContext().unbindService(this);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$d0$c */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$d0$c.class */
        public class RunnableC3150c implements Runnable {

            /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$d0$c$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$d0$c$a.class */
            class RunnableC3151a implements Runnable {
                RunnableC3151a() {
                    RunnableC3150c.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MainActivity.this.f10214u0) {
                        MainActivity.this.f10212t0.setVisibility(0);
                    }
                }
            }

            RunnableC3150c() {
                RunnableC3147d0.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C3711a1.m24653C1(System.currentTimeMillis());
                C3711a1.m24533h2("3");
                MainActivity.this.m25792o1();
                MainActivity.this.f10214u0 = C2578f.m27069l();
                MainActivity.this.runOnUiThread(new RunnableC3151a());
            }
        }

        RunnableC3147d0() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity mainActivity = MainActivity.this;
            mainActivity.f10178R = C3767h1.m24250f0(mainActivity).booleanValue();
            if (MainActivity.this.f10178R && Build.VERSION.SDK_INT >= 17) {
                MainActivity.this.getWindow().getDecorView().setLayoutDirection(1);
            }
            MainActivity.this.m25798l1();
            C5758l.m17904a(MainActivity.this, new C3148a());
            int i = Build.VERSION.SDK_INT;
            if (i <= 20) {
                MainActivity.this.startService(new Intent(MainActivity.this.getApplicationContext(), DaemonService.class));
            } else if (i > 25) {
                MainActivity.this.getApplicationContext().bindService(new Intent(MainActivity.this.getApplicationContext(), MyService.class), new ServiceConnectionC3149b(), 1);
                C1764a.m28939b(MainActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.CHANGE_NOTIFI"));
            } else {
                MainActivity.this.startService(new Intent(MainActivity.this.getApplicationContext(), MyService.class));
            }
            MainActivity.this.m25800k1();
            C3792k0.m24130g();
            C3772i0.m24190a().f12015b.execute(new RunnableC3150c());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$e.class */
    class RunnableC3152e implements Runnable {
        RunnableC3152e() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.startActivity(new Intent(MainActivity.this, MyBlockListActivity.class));
            MainActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$e0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$e0.class */
    public class C3153e0 implements DrawerLayout.AbstractC0663d {
        C3153e0() {
            MainActivity.this = r4;
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0663d
        /* renamed from: a */
        public void mo25768a(View view) {
            try {
                InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
                MainActivity.this.f10160I.setVisibility(8);
                if (!C3711a1.m24603P()) {
                    return;
                }
                MainActivity.this.f10158H.startAnimation(MainActivity.this.f10162J);
                C3711a1.m24486t1(false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0663d
        /* renamed from: b */
        public void mo25767b(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0663d
        /* renamed from: c */
        public void mo25766c(int i) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0663d
        /* renamed from: d */
        public void mo25765d(View view, float f) {
            if (view == MainActivity.this.f10219x) {
                MainActivity.this.f10221y.m33055C(8388611);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$f.class */
    class RunnableC3154f implements Runnable {
        RunnableC3154f() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent();
            intent.setClass(MainActivity.this, CommonSetting.class);
            MainActivity.this.startActivity(intent);
            MainActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$f0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$f0.class */
    public class ClipboardManager$OnPrimaryClipChangedListenerC3155f0 implements ClipboardManager.OnPrimaryClipChangedListener {

        /* renamed from: a */
        final /* synthetic */ ClipboardManager f10245a;

        ClipboardManager$OnPrimaryClipChangedListenerC3155f0(ClipboardManager clipboardManager) {
            MainActivity.this = r4;
            this.f10245a = clipboardManager;
        }

        @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
        public void onPrimaryClipChanged() {
            ClipData primaryClip;
            try {
                if (!this.f10245a.hasPrimaryClip() || (primaryClip = this.f10245a.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) {
                    return;
                }
                String charSequence = primaryClip.getItemAt(0).getText().toString();
                if ("".equals(charSequence)) {
                    return;
                }
                String replace = charSequence.replace(" ", "").replace("-", "");
                if (replace.matches("[0-9]+") && C3711a1.m24519l0()) {
                    C3711a1.m24593R1(true);
                    C2969b.m26325c(replace, MainActivity.this);
                }
                if (!replace.startsWith("+") || !replace.substring(1, replace.length()).matches("[0-9]+") || !C3711a1.m24519l0()) {
                    return;
                }
                C3711a1.m24593R1(true);
                C2969b.m26325c(replace, MainActivity.this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$g.class */
    class RunnableC3156g implements Runnable {
        RunnableC3156g() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.finish();
            EZCallApplication.m26146c().m26144e();
            MainActivity.this.startActivity(new Intent(MainActivity.this, MainActivity.class));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$g0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$g0.class */
    public class RunnableC3157g0 implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$g0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$g0$a.class */
        class RunnableC3158a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f10249d;

            RunnableC3158a(String str) {
                RunnableC3157g0.this = r4;
                this.f10249d = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.m25812e1(this.f10249d);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$g0$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$g0$b.class */
        class RunnableC3159b implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f10251d;

            RunnableC3159b(String str) {
                RunnableC3157g0.this = r4;
                this.f10251d = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.m25812e1(this.f10251d);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$g0$c */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$g0$c.class */
        class C3160c implements AbstractC2849e {
            C3160c() {
                RunnableC3157g0.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2849e
            /* renamed from: a */
            public void mo25764a(long j) {
                if (j != 0) {
                    long m24587T = C3711a1.m24587T();
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "最新通话记录时间:" + C3771i.m24206d(j));
                        C3718c0.m24436a("tony", "保存的最新通话记录时间:" + C3771i.m24206d(m24587T));
                    }
                    if (m24587T == 0 || m24587T == j) {
                        return;
                    }
                    C3711a1.m24582U0(false);
                    C3711a1.m24630I0(false);
                    C3810q.m24071b().m24070c("not_alive");
                    C3810q.m24071b().m24065h();
                    if (C3711a1.m24659B() == 0) {
                        return;
                    }
                    if (C3771i.m24192r(new Date(System.currentTimeMillis()), new Date(C3711a1.m24659B()))) {
                        C3810q.m24071b().m24070c("not_alive_current_day_date");
                        C3810q.m24071b().m24064i();
                    }
                    long currentTimeMillis = System.currentTimeMillis() - C3711a1.m24659B();
                    int i = (currentTimeMillis > 86400000L ? 1 : (currentTimeMillis == 86400000L ? 0 : -1));
                    if (i < 0) {
                        C3810q.m24071b().m24070c("not_alive_current_day_time");
                        C3810q.m24071b().m24063j();
                    } else if (i <= 0 || currentTimeMillis >= 172800000) {
                        C3810q.m24071b().m24070c("not_alive_more_day_time");
                        C3810q.m24071b().m24062k();
                    } else {
                        C3810q.m24071b().m24070c("not_alive_next_day_time");
                        C3810q.m24071b().m24061l();
                    }
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$g0$d */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$g0$d.class */
        class C3161d implements AbstractC2849e {
            C3161d() {
                RunnableC3157g0.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2849e
            /* renamed from: a */
            public void mo25764a(long j) {
                if (j != 0) {
                    long m24587T = C3711a1.m24587T();
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("yaohao", "最新通话记录时间:" + C3771i.m24206d(j));
                        C3718c0.m24436a("yaohao", "保存的最新通话记录时间:" + C3771i.m24206d(m24587T));
                    }
                    if (m24587T == 0 || m24587T == j || C3711a1.m24659B() == 0) {
                        return;
                    }
                    if (C3771i.m24191s(new Date(System.currentTimeMillis()), new Date(C3711a1.m24659B()), "GMT+8:00")) {
                        if (!C3718c0.f11914a) {
                            return;
                        }
                        C3718c0.m24436a("yaohao", "时间为安装当日");
                    } else if (!C3771i.m24209a(C3711a1.m24659B(), "GMT+8:00")) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("yaohao", "时间为安装2日以后");
                        }
                        C3711a1.m24578V0(false);
                    } else {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("yaohao", "时间为安装后次日");
                        }
                        C3711a1.m24578V0(false);
                        C3810q.m24071b().m24070c("stay_not_alived");
                    }
                }
            }
        }

        RunnableC3157g0() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClipData primaryClip;
            try {
                if (C3711a1.m24515m0()) {
                    try {
                        ClipboardManager clipboardManager = (ClipboardManager) EZCallApplication.m26146c().getSystemService("clipboard");
                        if (clipboardManager != null && clipboardManager.hasPrimaryClip() && (primaryClip = clipboardManager.getPrimaryClip()) != null && primaryClip.getItemCount() > 0) {
                            String charSequence = primaryClip.getItemAt(0).getText().toString();
                            if (!"".equals(charSequence)) {
                                String replace = charSequence.replace(" ", "").replace("-", "");
                                if (replace.matches("[0-9]+") && C3711a1.m24519l0()) {
                                    MainActivity.this.runOnUiThread(new RunnableC3158a(replace));
                                    C3711a1.m24593R1(false);
                                }
                                if (replace.startsWith("+") && replace.substring(1, replace.length()).matches("[0-9]+") && C3711a1.m24519l0()) {
                                    MainActivity.this.runOnUiThread(new RunnableC3159b(replace));
                                    C3711a1.m24593R1(false);
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                C3711a1.m24594R0(C3767h1.m24265W(MainActivity.this.getApplicationContext()));
                C2969b.m26327a(MainActivity.this.getApplicationContext());
                C3045f.m26161k(MainActivity.this.getApplicationContext());
                if (C3711a1.m24496r()) {
                    C2846d.m26516a(MainActivity.this.getApplicationContext(), new C3160c());
                }
                if (C3711a1.m24544f()) {
                    long m24659B = C3711a1.m24659B();
                    if (C3771i.m24191s(new Date(m24659B), new Date(System.currentTimeMillis()), "GMT-8:00")) {
                        C3767h1.m24287F0(MainActivity.this.getApplicationContext(), C3767h1.m24264X(m24659B));
                    }
                }
                if (C3711a1.m24492s()) {
                    C2846d.m26516a(MainActivity.this.getApplicationContext(), new C3161d());
                }
                if (!"".equals(C3820b.m24034b())) {
                    AtomicBoolean atomicBoolean = new AtomicBoolean();
                    if (!atomicBoolean.get()) {
                        atomicBoolean.set(true);
                        try {
                            String m24034b = C3820b.m24034b();
                            if (m24034b != null && !"".equals(m24034b)) {
                                long currentTimeMillis = (long) (System.currentTimeMillis() - ((((Double.parseDouble(m24034b) * 24.0d) * 60.0d) * 60.0d) * 1000.0d));
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("recorder", "lodtime: " + currentTimeMillis);
                                }
                                C2645b.m26967d().m26969b(currentTimeMillis);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        atomicBoolean.set(false);
                    }
                }
                if (!C2321c.m27656a()) {
                    return;
                }
                int m27654c = C2321c.m27654c();
                if (m27654c == 2) {
                    if (System.currentTimeMillis() - C2321c.m27652e() <= 86400000) {
                        return;
                    }
                    C2316a.m27667a(MainActivity.this.getApplicationContext());
                } else if (m27654c == 3) {
                    if (System.currentTimeMillis() - C2321c.m27652e() <= 604800000) {
                        return;
                    }
                    C2316a.m27667a(MainActivity.this.getApplicationContext());
                } else if (m27654c != 4 || System.currentTimeMillis() - C2321c.m27652e() <= -1702967296) {
                } else {
                    C2316a.m27667a(MainActivity.this.getApplicationContext());
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$h.class */
    class RunnableC3162h implements Runnable {
        RunnableC3162h() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent();
            intent.setClass(MainActivity.this, DedicationActivity.class);
            MainActivity.this.startActivity(intent);
            MainActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$h0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$h0.class */
    public class DialogInterface$OnClickListenerC3163h0 implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3163h0() {
            MainActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$i.class */
    class RunnableC3164i implements Runnable {
        RunnableC3164i() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.f10221y.m33034d(8388611);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$i0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$i0.class */
    public static class HandlerC3165i0 extends Handler {

        /* renamed from: a */
        private final WeakReference<Activity> f10258a;

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$i0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$i0$a.class */
        class C3166a implements AbstractC2960g {
            C3166a() {
                HandlerC3165i0.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g
            /* renamed from: a */
            public void mo25307a(ArrayList<CallLogBean> arrayList) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "loadContact_ok");
                }
            }

            @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g
            /* renamed from: b */
            public void mo25306b() {
            }
        }

        private HandlerC3165i0(Activity activity) {
            this.f10258a = new WeakReference<>(activity);
        }

        /* synthetic */ HandlerC3165i0(Activity activity, C3169k c3169k) {
            this(activity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Activity activity = this.f10258a.get();
            if (activity != null && message.what == 911) {
                C3767h1.m24279J0(activity);
                Intent intent = new Intent();
                intent.setAction("com.allinone.callerid.STARRED_DATA");
                C1764a.m28939b(activity).m28937d(intent);
                C2942a.m26369l(activity, new C3166a());
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$j.class */
    class RunnableC3167j implements Runnable {
        RunnableC3167j() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.f10221y.m33034d(8388611);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$j0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$j0.class */
    public class C3168j0 extends BroadcastReceiver {
        C3168j0() {
            MainActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if (intent.getAction() == null) {
                    return;
                }
                String action = intent.getAction();
                boolean z = true;
                int hashCode = action.hashCode();
                if (hashCode != 106761066) {
                    if (hashCode != 660609717) {
                        if (hashCode == 1877915441 && action.equals("com.allinone.callerid.CLOSE_AD")) {
                            z = false;
                        }
                    } else if (action.equals("com.allinone.callerid.IDENTIFY_NUMBER")) {
                        z = true;
                    }
                } else if (action.equals("com.allinone.callerid.SET_SHORTCUT")) {
                    z = true;
                }
                if (!z) {
                    MainActivity.this.f10152E.setVisibility(8);
                    MainActivity.this.f10217w.setVisibility(8);
                    MainActivity.this.f10215v.setVisibility(8);
                } else if (z) {
                    MainActivity.this.m25769z1();
                } else if (!z) {
                } else {
                    MainActivity.this.m25792o1();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$k.class */
    public class C3169k implements AbstractC2790b {
        C3169k() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            try {
                if (z) {
                    MainActivity.this.m25788q1();
                } else {
                    MainActivity.this.f10152E.setVisibility(8);
                    MainActivity.this.f10217w.setVisibility(8);
                    MainActivity.this.f10215v.setVisibility(8);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$k0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$k0.class */
    public class C3170k0 extends C3023c {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$k0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$k0$a.class */
        class C3171a implements AbstractC2791c {
            C3171a() {
                C3170k0.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2791c
            public void close() {
                C1764a.m28939b(MainActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.CLOSE_AD"));
                C3749a.m24343a().f11963b = null;
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$k0$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$k0$b.class */
        class C3172b implements AbstractC2791c {
            C3172b() {
                C3170k0.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2791c
            public void close() {
                C1764a.m28939b(MainActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.CLOSE_AD"));
                C3749a.m24343a().f11963b = null;
            }
        }

        private C3170k0() {
            MainActivity.this = r4;
        }

        /* synthetic */ C3170k0(MainActivity mainActivity, C3169k c3169k) {
            this();
        }

        @Override // com.allinone.callerid.inapputil.C3023c
        /* renamed from: a */
        public void mo25763a(boolean z) {
            super.mo25763a(z);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("inappbilling", "onAcknowledgePurchaseSuccess");
            }
        }

        @Override // com.allinone.callerid.inapputil.C3023c
        /* renamed from: d */
        public void mo25762d(GoogleBillingUtil.GoogleBillingListenerTag googleBillingListenerTag, boolean z) {
            super.mo25762d(googleBillingListenerTag, z);
            C3767h1.f12011f = "";
            Toast.makeText(MainActivity.this.getApplicationContext(), MainActivity.this.getResources().getString(R$string.yanzheng), 0).show();
        }

        @Override // com.allinone.callerid.inapputil.C3023c
        /* renamed from: e */
        public void mo25761e(GoogleBillingUtil.GoogleBillingListenerTag googleBillingListenerTag, int i, boolean z) {
            super.mo25761e(googleBillingListenerTag, i, z);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("inappbilling", "tag:" + googleBillingListenerTag.tag);
                C3718c0.m24436a("inappbilling", "responseCode:" + i);
                C3718c0.m24436a("inappbilling", "isSelf:" + z);
            }
            if (GoogleBillingUtil.GoogleBillingListenerTag.PURCHASE.tag.equals(googleBillingListenerTag.tag)) {
                C2969b.m26326b(i, MainActivity.this.getApplicationContext());
                C3810q.m24071b().m24070c("buy_ad_fail");
                if ("showcaller_removeads_year".equals(C3767h1.f12011f)) {
                    C3810q.m24071b().m24070c("subscribe_year_failed");
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("inappbilling", "year_failed");
                    }
                } else if ("showcaller_removeads_month".equals(C3767h1.f12011f)) {
                    C3810q.m24071b().m24070c("subscribe_month_failed");
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("inappbilling", "month_failed");
                    }
                }
                C3767h1.f12011f = "";
            }
        }

        @Override // com.allinone.callerid.inapputil.C3023c
        /* renamed from: f */
        public boolean mo25760f(Purchase purchase, boolean z) {
            try {
                if ("showcaller_removeads_month".equals(purchase.m23867f()) || "showcaller_removeads_year".equals(purchase.m23867f()) || "showcaller_removeads_month_specialoffers".equals(purchase.m23867f()) || "showcaller_removeads_year_specialoffers".equals(purchase.m23867f())) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("inappbilling", "Infinite gas subscription purchased.");
                        C3718c0.m24436a("inappbilling", "purchase:" + purchase.toString());
                    }
                    Toast.makeText(MainActivity.this.getApplicationContext(), MainActivity.this.getResources().getString(R$string.subscribed), 1).show();
                    C2786a.m26599b(new C3172b());
                    MainActivity.this.f10216v0 = purchase.m23867f();
                    if ("showcaller_removeads_month".equals(purchase.m23867f())) {
                        MainActivity.this.f10209q0.setText(MainActivity.this.getResources().getString(R$string.monthly));
                        C3810q.m24071b().m24070c("buy_ad_success_month");
                    } else {
                        MainActivity.this.f10209q0.setText(MainActivity.this.getResources().getString(R$string.sub_yearly));
                        C3810q.m24071b().m24070c("buy_ad_success");
                    }
                    MainActivity.this.f10165K0 = purchase.m23870c();
                    MainActivity.this.f10208p0.setText(MainActivity.this.getResources().getString(R$string.premium));
                    MainActivity.this.f10209q0.setVisibility(0);
                    C3767h1.f12011f = "";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return super.mo25760f(purchase, z);
        }

        @Override // com.allinone.callerid.inapputil.C3023c
        /* renamed from: g */
        public void mo25759g(String str, List<SkuDetails> list, boolean z) {
            super.mo25759g(str, list, z);
            try {
                if ("subs".equals(str)) {
                    for (SkuDetails skuDetails : list) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("inappbilling", skuDetails.toString());
                        }
                        if ("showcaller_removeads_month".equals(skuDetails.m23859c())) {
                            MainActivity.this.f10188W = skuDetails.m23860b();
                        }
                        if ("showcaller_removeads_year".equals(skuDetails.m23859c())) {
                            MainActivity.this.f10190X = skuDetails.m23860b();
                        }
                    }
                }
                List<Purchase> m26252F = MainActivity.this.f10186V.m26252F(MainActivity.this);
                if (m26252F == null || m26252F.size() <= 0) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("inappbilling", "no subscription");
                    }
                    MainActivity.this.f10209q0.setVisibility(8);
                    C2786a.m26598c();
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("inappbilling", "has subscription");
                    C3718c0.m24436a("inappbilling", "purchaseList:" + m26252F.toString());
                }
                Purchase purchase = m26252F.get(0);
                if (purchase != null && !purchase.m23865h()) {
                    MainActivity.this.f10216v0 = purchase.m23867f();
                    MainActivity.this.f10218w0 = true;
                }
                if (purchase != null) {
                    MainActivity.this.f10216v0 = purchase.m23867f();
                    MainActivity.this.f10165K0 = purchase.m23870c();
                    if ("showcaller_removeads_month".equals(purchase.m23867f())) {
                        MainActivity.this.f10209q0.setText(MainActivity.this.getResources().getString(R$string.monthly));
                    } else {
                        MainActivity.this.f10209q0.setText(MainActivity.this.getResources().getString(R$string.sub_yearly));
                    }
                }
                MainActivity.this.f10208p0.setText(MainActivity.this.getResources().getString(R$string.premium));
                MainActivity.this.f10209q0.setVisibility(0);
                C2786a.m26599b(new C3171a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.allinone.callerid.inapputil.C3023c
        /* renamed from: i */
        public void mo25758i(boolean z) {
            super.mo25758i(z);
            try {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("inappbilling", "内购服务初始化完成");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$l.class */
    public class C3173l implements FloatingActionMenu.AbstractC4501h {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$l$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$l$a.class */
        class DialogInterface$OnDismissListenerC3174a implements DialogInterface.OnDismissListener {
            DialogInterface$OnDismissListenerC3174a() {
                C3173l.this = r4;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                MainActivity.this.m25814d1();
            }
        }

        C3173l() {
            MainActivity.this = r4;
        }

        @Override // com.github.clans.fab.FloatingActionMenu.AbstractC4501h
        /* renamed from: a */
        public void mo22319a(boolean z) {
            if (z) {
                try {
                    C3810q.m24071b().m24070c("addBlockButton");
                    if (C3711a1.m24469x2().booleanValue()) {
                        return;
                    }
                    int i = Build.VERSION.SDK_INT;
                    if (i < 26 || i >= 28 || C3784b.m24142d(MainActivity.this.getApplicationContext())) {
                        return;
                    }
                    DialogC2588f dialogC2588f = new DialogC2588f(MainActivity.this.getApplicationContext(), R$style.CustomDialog4);
                    dialogC2588f.setCanceledOnTouchOutside(false);
                    dialogC2588f.setOnDismissListener(new DialogInterface$OnDismissListenerC3174a());
                    dialogC2588f.show();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$m.class */
    class DialogInterface$OnDismissListenerC3175m implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC3175m() {
            MainActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (!MainActivity.this.f10183T0 || MainActivity.this.f10181S0 == null) {
                return;
            }
            MainActivity.this.f10181S0.m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
            MainActivity.this.f10183T0 = false;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$n.class */
    class C3176n implements C3776a.AbstractC3783g {
        C3176n() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            MainActivity.this.m25773x1();
            if (MainActivity.this.f10206n0.m22322s()) {
                MainActivity.this.f10206n0.m22320u(true);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$o.class */
    class C3177o implements C3776a.AbstractC3783g {
        C3177o() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (MainActivity.this.f10206n0.m22322s()) {
                MainActivity.this.f10206n0.m22320u(true);
            }
            MainActivity.this.m25775w1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$p.class */
    public class C3178p implements AbstractC2449c {
        C3178p() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.customview.p143e.AbstractC2449c
        /* renamed from: a */
        public void mo25757a() {
            MainActivity.this.f10185U0 = true;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$q.class */
    public class C3179q implements AbstractC2449c {
        C3179q() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.customview.p143e.AbstractC2449c
        /* renamed from: a */
        public void mo25757a() {
            MainActivity.this.f10185U0 = false;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$r.class */
    class RunnableC3180r implements Runnable {
        RunnableC3180r() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(MainActivity.this, OverlayGuideActivity.class);
            intent.putExtra("open_notifi_overlay", true);
            intent.addFlags(268435456);
            MainActivity.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$s.class */
    class RunnableC3181s implements Runnable {
        RunnableC3181s() {
            MainActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MainActivity.this.f10148C != null) {
                if (MainActivity.this.f10148C.getBooleanExtra("missedcall", false) && MainActivity.this.f10213u != null) {
                    MainActivity.this.f10213u.setCurrentItem(0);
                }
                MainActivity.this.f10148C.getBooleanExtra("blockedcall", false);
                MainActivity.this.f10148C = null;
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$t */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$t.class */
    class C3182t implements AbstractC2790b {
        C3182t() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            try {
                if (z) {
                    MainActivity.this.m25788q1();
                } else {
                    MainActivity.this.f10152E.setVisibility(8);
                    MainActivity.this.f10217w.setVisibility(8);
                    MainActivity.this.f10215v.setVisibility(8);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$u */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$u.class */
    public class C3183u implements AbstractC2926b {
        C3183u() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p186p.AbstractC2926b
        /* renamed from: a */
        public void mo25756a(String str, int i) {
            if ((str == null || "0".equals(str)) && i == 0) {
                return;
            }
            MainActivity.this.f10184U.setVisibility(0);
            MainActivity.this.f10182T.setText(str);
            MainActivity.this.f10180S.setText(String.valueOf(i));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$v */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$v.class */
    public class C3184v implements C3877y.AbstractC3879b {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$v$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$v$a.class */
        class RunnableC3185a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ C3071a f10278d;

            RunnableC3185a(C3071a c3071a) {
                C3184v.this = r4;
                this.f10278d = c3071a;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2972d.m26317c(this.f10278d, MainActivity.this);
            }
        }

        C3184v() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.C3877y.AbstractC3879b
        /* renamed from: a */
        public void mo23893a(C3071a c3071a) {
            MainActivity.this.runOnUiThread(new RunnableC3185a(c3071a));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$w */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$w.class */
    public class DialogInterface$OnClickListenerC3186w implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3186w() {
            MainActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$x */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$x.class */
    public class DialogInterface$OnClickListenerC3187x implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10281d;

        /* renamed from: e */
        final /* synthetic */ DeletableEditText f10282e;

        DialogInterface$OnClickListenerC3187x(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
            MainActivity.this = r4;
            this.f10281d = deletableEditText;
            this.f10282e = deletableEditText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String obj = this.f10281d.getText().toString();
                MainActivity.this.m25784s1(this.f10282e.getText().toString(), obj, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$y */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$y.class */
    public class C3188y implements AbstractC2814f {

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$y$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$y$a.class */
        class DialogInterface$OnClickListenerC3189a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3189a() {
                C3188y.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$y$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$y$b.class */
        class DialogInterface$OnClickListenerC3190b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10286d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f10287e;

            DialogInterface$OnClickListenerC3190b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3188y.this = r4;
                this.f10286d = deletableEditText;
                this.f10287e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f10286d.getText().toString();
                    MainActivity.this.m25784s1(this.f10287e.getText().toString(), obj, false);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3188y() {
            MainActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f
        /* renamed from: a */
        public void mo25263a(EZSimpleContact eZSimpleContact) {
            try {
                View inflate = MainActivity.this.f10163J0.inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                deletableEditText.setText(eZSimpleContact.getName());
                deletableEditText2.setTypeface(MainActivity.this.f10177Q0);
                deletableEditText2.setText(eZSimpleContact.getNumber());
                deletableEditText2.setSelection(deletableEditText2.getText().length());
                AlertDialog create = new AlertDialog.Builder(MainActivity.this).setMessage(MainActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(MainActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3190b(deletableEditText2, deletableEditText)).setNegativeButton(MainActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3189a()).create();
                create.show();
                create.getButton(-1).setTextColor(MainActivity.this.f10161I0);
                create.getButton(-2).setTextColor(MainActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$z */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$z.class */
    public class C3191z implements AbstractC2795a {

        /* renamed from: a */
        final /* synthetic */ String f10289a;

        /* renamed from: b */
        final /* synthetic */ String f10290b;

        /* renamed from: c */
        final /* synthetic */ boolean f10291c;

        /* renamed from: com.allinone.callerid.mvc.controller.MainActivity$z$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/MainActivity$z$a.class */
        class C3192a implements AbstractC2766a {
            C3192a() {
                C3191z.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                C3810q.m24071b().m24070c("add_blacklist");
                Toast.makeText(MainActivity.this.getApplicationContext(), MainActivity.this.getResources().getString(R$string.blocked_to_list), 0).show();
                if (C3191z.this.f10291c) {
                    CollectInfo collectInfo = new CollectInfo();
                    collectInfo.setNumber(C3191z.this.f10289a);
                    collectInfo.setUser_blocked("1");
                    collectInfo.setUser_commented("0");
                    collectInfo.setUser_reported("0");
                    collectInfo.setUser_upload_recording("0");
                    C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                }
            }
        }

        C3191z(String str, String str2, boolean z) {
            MainActivity.this = r4;
            this.f10289a = str;
            this.f10290b = str2;
            this.f10291c = z;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            try {
                if (z) {
                    Toast.makeText(MainActivity.this.getApplicationContext(), MainActivity.this.getResources().getString(R$string.blocked_to_list), 0).show();
                } else {
                    EZBlackList eZBlackList = new EZBlackList();
                    eZBlackList.setNumber(this.f10289a.replace("-", ""));
                    eZBlackList.setName(this.f10290b);
                    eZBlackList.setIs_myblock("true");
                    C2796b.m26588a(eZBlackList, new C3192a());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: A1 */
    public void m25849A1(boolean z) {
        if (this.f10178R) {
            this.f10187V0 = -48.0f;
        }
        if (z) {
            if (this.f10185U0) {
                return;
            }
            C2450d.m27319h(this.f10194b0).m27335d().m27328k(this.f10187V0, 0.0f).m27338a(this.f10152E).m27335d().m27328k(this.f10187V0, 0.0f).m27338a(this.f10210r0).m27335d().m27328k(this.f10187V0, 0.0f).m27336c().m27317j(300L).m27315l(new C3178p()).m27313n();
        } else if (!this.f10185U0) {
        } else {
            C2450d.m27319h(this.f10194b0).m27335d().m27328k(0.0f, this.f10187V0).m27338a(this.f10152E).m27335d().m27328k(0.0f, this.f10187V0).m27338a(this.f10210r0).m27335d().m27328k(0.0f, this.f10187V0).m27336c().m27317j(300L).m27315l(new C3179q()).m27313n();
        }
    }

    /* renamed from: B1 */
    private void m25847B1() {
        startActivity(new Intent(this, ShareActivity.class));
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    /* renamed from: X */
    private void m25827X() {
        if (C3711a1.m24603P()) {
            this.f10160I.setVisibility(0);
        }
        if (!this.f10174P) {
            this.f10156G.setVisibility(8);
        } else {
            this.f10156G.setVisibility(0);
        }
        this.f10144A.setText(C3767h1.m24265W(this));
        this.f10144A.setOnClickListener(this);
        this.f10223z.setTypeface(this.f10177Q0);
        this.f10144A.setTypeface(this.f10177Q0);
        this.f10146B.setTypeface(this.f10177Q0);
        if (C3820b.m24032d()) {
            this.f10191Y.setVisibility(8);
        } else {
            this.f10191Y.setVisibility(0);
        }
    }

    /* renamed from: d1 */
    public void m25814d1() {
        int i = Build.VERSION.SDK_INT;
        if (i < 26 || i >= 28 || C3784b.m24142d(getApplicationContext()) || !this.f10206n0.m22322s()) {
            return;
        }
        this.f10206n0.m22320u(true);
    }

    /* renamed from: e1 */
    public void m25812e1(String str) {
        try {
            if (isFinishing()) {
                return;
            }
            AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle(getResources().getString(R$string.copy_dia_title));
            AlertDialog create = title.setMessage(getResources().getString(R$string.copy_dia_message) + " " + str + "?").setPositiveButton(getResources().getString(R$string.yes), new DialogInterface$OnClickListenerC3138a(str)).setNegativeButton(getResources().getString(R$string.f7406no), new DialogInterface$OnClickListenerC3163h0()).create();
            create.show();
            create.getButton(-1).setTextColor(this.f10161I0);
            create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f1 */
    private void m25810f1() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3157g0());
    }

    /* renamed from: g1 */
    private void m25808g1() {
        GoogleBillingUtil.m26228s(true);
        this.f10186V = GoogleBillingUtil.m26231p().m26236k(this, new C3170k0(this, null)).m26235l(this);
    }

    /* renamed from: h1 */
    private void m25806h1() {
        try {
            View inflate = this.f10163J0.inflate(R$layout.popuwindow_callscreen_more, (ViewGroup) null);
            ((TextView) inflate.findViewById(R$id.tv_set)).setTypeface(C3739f1.m24359b());
            ((FrameLayout) inflate.findViewById(R$id.fl_set)).setOnClickListener(this);
            this.f10207o0 = new PopupWindow(inflate);
            this.f10207o0.setWidth(getWindowManager().getDefaultDisplay().getWidth() / 4);
            this.f10207o0.setHeight(-2);
            this.f10207o0.setFocusable(true);
            this.f10207o0.setAnimationStyle(R$style.pop_style);
            this.f10207o0.setBackgroundDrawable(new ColorDrawable(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i1 */
    private void m25804i1() {
        m25790p1();
    }

    /* renamed from: j1 */
    private void m25802j1() {
        try {
            View inflate = this.f10163J0.inflate(R$layout.popuwindow_filter, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_filter_all);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_filter_incoming);
            TextView textView3 = (TextView) inflate.findViewById(R$id.tv_filter_outgoing);
            TextView textView4 = (TextView) inflate.findViewById(R$id.tv_filter_missed);
            TextView textView5 = (TextView) inflate.findViewById(R$id.tv_filter_delete);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_filter_all);
            FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_filter_incoming);
            FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.fl_filter_outgoing);
            FrameLayout frameLayout4 = (FrameLayout) inflate.findViewById(R$id.fl_filter_missed);
            textView.setTypeface(C3739f1.m24359b());
            textView2.setTypeface(C3739f1.m24359b());
            textView3.setTypeface(C3739f1.m24359b());
            textView4.setTypeface(C3739f1.m24359b());
            textView5.setTypeface(C3739f1.m24359b());
            frameLayout.setOnClickListener(this);
            frameLayout2.setOnClickListener(this);
            frameLayout3.setOnClickListener(this);
            frameLayout4.setOnClickListener(this);
            ((FrameLayout) inflate.findViewById(R$id.fl_filter_delete)).setOnClickListener(this);
            PopupWindow popupWindow = new PopupWindow(inflate);
            this.f10195c0 = popupWindow;
            popupWindow.setHeight(-2);
            this.f10195c0.setWidth(-2);
            this.f10195c0.setFocusable(true);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                this.f10195c0.setAnimationStyle(R$style.pop_style_rtl);
            } else {
                this.f10195c0.setAnimationStyle(R$style.pop_style);
            }
            this.f10195c0.setBackgroundDrawable(new ColorDrawable(0));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: k1 */
    public void m25800k1() {
        C3877y c3877y = new C3877y();
        if (C3767h1.m24224s0(this)) {
            c3877y.m23894c(new C3184v());
            c3877y.m23895b(getApplicationContext());
        }
    }

    /* renamed from: l1 */
    public void m25798l1() {
        try {
            this.f10163J0 = LayoutInflater.from(this);
            this.f10222y0 = C3719c1.m24431b(this, R$attr.tab_image_selected_log, R$drawable.ic_history_blue_24dp);
            this.f10224z0 = C3719c1.m24431b(this, R$attr.tab_image_selected_callscreen, R$drawable.show);
            this.f10145A0 = C3719c1.m24431b(this, R$attr.tab_image_selected_contacts, R$drawable.ic_person_blue_24dp);
            this.f10147B0 = C3719c1.m24431b(this, R$attr.tab_image_selected_block, R$drawable.offline_blue);
            this.f10149C0 = C3719c1.m24431b(this, R$attr.tab_image_unselected_log, R$drawable.ic_history_gray_24dp);
            this.f10151D0 = C3719c1.m24431b(this, R$attr.tab_image_unselected_callscreen, R$drawable.show_gray);
            this.f10153E0 = C3719c1.m24431b(this, R$attr.tab_image_unselected_contacts, R$drawable.ic_person_gray_24dp);
            this.f10155F0 = C3719c1.m24431b(this, R$attr.tab_image_unselected_block, R$drawable.offline);
            this.f10157G0 = C3719c1.m24432a(this, R$attr.color_tab_selected, 2131099706);
            this.f10159H0 = C3719c1.m24432a(this, R$attr.color_tab_unselected, R$color.title_gray);
            this.f10161I0 = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
            this.f10179R0 = AnimationUtils.loadAnimation(getApplicationContext(), R$anim.share);
            Typeface m24360a = C3739f1.m24360a();
            this.f10177Q0 = C3739f1.m24359b();
            this.f10194b0 = (ImageView) findViewById(R$id.setwallpaper);
            this.f10220x0 = (AppBarLayout) findViewById(R$id.app_bar_layout);
            this.f10194b0.setOnClickListener(this);
            this.f10152E = (FrameLayout) findViewById(R$id.rl_liwu);
            this.f10215v = (ImageView) findViewById(R$id.setshangdian);
            ImageView imageView = (ImageView) findViewById(R$id.iv_search);
            this.f10210r0 = imageView;
            imageView.setOnClickListener(this);
            this.f10215v.setOnClickListener(this);
            this.f10217w = (AVLoadingIndicatorView) findViewById(R$id.av_loading);
            ((ImageView) findViewById(R$id.header_left)).setOnClickListener(this);
            this.f10219x = findViewById(R$id.main_menu_left);
            this.f10221y = (DrawerLayout) findViewById(R$id.drawer_layout);
            TextView textView = (TextView) findViewById(R$id.textView1);
            textView.setOnClickListener(this);
            textView.setTypeface(m24360a);
            CustomViewPager customViewPager = (CustomViewPager) findViewById(R$id.main_vp);
            this.f10213u = customViewPager;
            customViewPager.setOffscreenPageLimit(2);
            ((FrameLayout) findViewById(R$id.share_aiocaller)).setOnClickListener(this);
            ((FrameLayout) findViewById(R$id.fl_black_list)).setOnClickListener(this);
            ((FrameLayout) findViewById(R$id.setting)).setOnClickListener(this);
            ((FrameLayout) findViewById(R$id.dedication)).setOnClickListener(this);
            FrameLayout frameLayout = (FrameLayout) findViewById(R$id.recorder);
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                frameLayout.setVisibility(0);
            }
            this.f10191Y = (ImageView) findViewById(R$id.recorder_new_image);
            frameLayout.setOnClickListener(this);
            FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_show_log);
            this.f10164K = frameLayout2;
            frameLayout2.setOnClickListener(this);
            this.f10160I = (ImageView) findViewById(R$id.iv_red);
            this.f10223z = (TextView) findViewById(R$id.cehua_appname);
            this.f10144A = (TextView) findViewById(R$id.cehua_version);
            this.f10146B = (TextView) findViewById(R$id.tv_slogan);
            this.f10158H = (ImageView) findViewById(R$id.iv_no_ad);
            LinearLayout linearLayout = (LinearLayout) findViewById(R$id.ll_shade);
            this.f10156G = (FrameLayout) findViewById(R$id.fl_ad);
            this.f10184U = (ConstraintLayout) findViewById(R$id.ll_identify_blocked);
            ((LinearLayout) findViewById(R$id.ll_identified)).setOnClickListener(this);
            ((LinearLayout) findViewById(R$id.ll_blocked)).setOnClickListener(this);
            this.f10180S = (TextView) findViewById(R$id.tv_identify_counts);
            this.f10182T = (TextView) findViewById(R$id.tv_blocked_counts);
            this.f10160I = (ImageView) findViewById(R$id.iv_red);
            this.f10205m0 = findViewById(R$id.veiw_tab);
            this.f10156G.setOnClickListener(this);
            ((TextView) findViewById(R$id.tv_share_aiocaller)).setTypeface(m24360a);
            ((TextView) findViewById(R$id.tv_setting)).setTypeface(m24360a);
            ((TextView) findViewById(R$id.tv_recorder)).setTypeface(m24360a);
            ((TextView) findViewById(R$id.tv_black_list)).setTypeface(m24360a);
            this.f10208p0 = (TextView) findViewById(R$id.tv_ad);
            this.f10209q0 = (TextView) findViewById(R$id.tv_sub_mode);
            this.f10208p0.setTypeface(m24360a);
            this.f10209q0.setTypeface(m24360a);
            ((TextView) findViewById(R$id.tv_dedication)).setTypeface(m24360a);
            ((TextView) findViewById(R$id.tv_identify)).setTypeface(m24360a);
            ((TextView) findViewById(R$id.tv_blocked)).setTypeface(m24360a);
            this.f10167L0 = (FrameLayout) findViewById(R$id.fl_theme);
            this.f10169M0 = (ImageView) findViewById(R$id.iv_theme);
            TextView textView2 = (TextView) findViewById(R$id.tv_theme);
            this.f10171N0 = textView2;
            textView2.setTypeface(m24360a);
            this.f10167L0.setOnClickListener(this);
            if (C3711a1.m24461z2() == 1) {
                this.f10169M0.setImageResource(R$drawable.ic_bright_theme);
                this.f10171N0.setText(getResources().getString(R$string.bright_mode));
            } else {
                this.f10169M0.setImageResource(R$drawable.ic_dark_theme);
                this.f10171N0.setText(getResources().getString(R$string.dark_mode));
            }
            if (this.f10178R && i >= 17) {
                linearLayout.setBackgroundResource(R$drawable.nav_bar_drawer_shadow_left);
            }
            FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.fl_calllog);
            this.f10197e0 = (TextView) findViewById(R$id.tv_calllog);
            FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.fl_callscreen);
            this.f10198f0 = (TextView) findViewById(R$id.tv_callscreen);
            FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.fl_contacts);
            this.f10199g0 = (TextView) findViewById(R$id.tv_contacts);
            FrameLayout frameLayout6 = (FrameLayout) findViewById(R$id.fl_block);
            this.f10200h0 = (TextView) findViewById(R$id.tv_block);
            this.f10201i0 = (ImageView) findViewById(R$id.im_calllog);
            this.f10202j0 = (ImageView) findViewById(R$id.im_callscreen);
            this.f10203k0 = (ImageView) findViewById(R$id.im_contacts);
            this.f10204l0 = (ImageView) findViewById(R$id.im_block);
            this.f10212t0 = (ImageView) findViewById(R$id.iv_guide);
            this.f10197e0.setTypeface(m24360a);
            this.f10198f0.setTypeface(m24360a);
            this.f10199g0.setTypeface(m24360a);
            this.f10200h0.setTypeface(m24360a);
            frameLayout3.setOnClickListener(this);
            frameLayout4.setOnClickListener(this);
            frameLayout5.setOnClickListener(this);
            frameLayout6.setOnClickListener(this);
            FloatingActionMenu floatingActionMenu = (FloatingActionMenu) findViewById(R$id.switch_dial);
            this.f10206n0 = floatingActionMenu;
            floatingActionMenu.setContentDescription(getResources().getString(R$string.add));
            this.f10206n0.setClosedOnTouchOutside(true);
            FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R$id.fab_enter_number);
            FloatingActionButton floatingActionButton2 = (FloatingActionButton) findViewById(R$id.fab_from_his);
            FloatingActionButton floatingActionButton3 = (FloatingActionButton) findViewById(R$id.fab_from_contacts);
            FloatingActionButton floatingActionButton4 = (FloatingActionButton) findViewById(R$id.fab_custom_num);
            floatingActionButton.setOnClickListener(this);
            floatingActionButton2.setOnClickListener(this);
            floatingActionButton3.setOnClickListener(this);
            floatingActionButton4.setOnClickListener(this);
            floatingActionButton.setLabelTextType(this.f10177Q0);
            floatingActionButton2.setLabelTextType(this.f10177Q0);
            floatingActionButton3.setLabelTextType(this.f10177Q0);
            floatingActionButton4.setLabelTextType(this.f10177Q0);
            this.f10206n0.setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.show_from_bottom));
            this.f10206n0.setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.hide_to_bottom));
            this.f10206n0.setOnMenuToggleListener(new C3173l());
            FloatingActionButton floatingActionButton5 = (FloatingActionButton) findViewById(R$id.float_button);
            this.f10176Q = floatingActionButton5;
            floatingActionButton5.setShowAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.show_from_bottom));
            this.f10176Q.setHideAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.hide_to_bottom));
            this.f10173O0 = C3719c1.m24431b(this, R$attr.keyboard_down, R$drawable.keyboard_down);
            this.f10175P0 = C3719c1.m24431b(this, R$attr.fab_add_contacts, R$drawable.ic_add_contacts);
            this.f10176Q.setOnClickListener(new View$OnClickListenerC3143b0());
            this.f10213u.m30744c(new C3145c0());
            C2210n c2210n = new C2210n(m32877A());
            this.f10196d0 = new View$OnClickListenerC2687e();
            new View$OnClickListenerC2685d();
            c2210n.m27854y(this.f10196d0, getString(R$string.tv_title_calllog));
            c2210n.m27854y(new C2668c(), getString(R$string.shortcut_contacts));
            c2210n.m27854y(new View$OnClickListenerC2659b(), getString(R$string.block));
            this.f10213u.setAdapter(c2210n);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m1 */
    private void m25796m1() {
        getWindow().getDecorView().post(new RunnableC3147d0());
    }

    /* renamed from: n1 */
    private void m25794n1() {
        boolean booleanValue = C3711a1.m24509n2().booleanValue();
        long m24659B = C3711a1.m24659B();
        boolean z = m24659B != 0 && System.currentTimeMillis() - m24659B > 86400000;
        long m24523k0 = C3711a1.m24523k0();
        int m24479v0 = C3711a1.m24479v0();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "isCanShow:" + booleanValue + "oldtime:" + m24523k0 + "counts:" + m24479v0);
        }
        if (!booleanValue || !z || System.currentTimeMillis() <= m24523k0 || m24479v0 < 1) {
            return;
        }
        m25847B1();
        C3711a1.m24601P1(System.currentTimeMillis() + 172800000);
    }

    /* renamed from: o1 */
    public void m25792o1() {
        C2927c.m26404b(new C3183u());
    }

    /* renamed from: p1 */
    private void m25790p1() {
        CustomViewPager customViewPager;
        this.f10162J = AnimationUtils.loadAnimation(this, R$anim.share);
        this.f10221y.m33037a(new C3153e0());
        if (getIntent().getBooleanExtra("shortcutcontacts", false)) {
            C3810q.m24071b().m24070c("shortcut_contacts");
            CustomViewPager customViewPager2 = this.f10213u;
            if (customViewPager2 != null) {
                customViewPager2.setCurrentItem(1);
            }
            m25777v1();
        } else {
            CustomViewPager customViewPager3 = this.f10213u;
            if (customViewPager3 != null) {
                customViewPager3.setCurrentItem(0);
            }
            m25779u1();
        }
        if (getIntent().getBooleanExtra("is_callscreen", false) && (customViewPager = this.f10213u) != null) {
            C2568a.f8986e = true;
            customViewPager.setCurrentItem(2);
        }
        if (getIntent() != null && "open_offline".equals(getIntent().getStringExtra("offline_notifi"))) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("fcm", "open_offline");
            }
            CustomViewPager customViewPager4 = this.f10213u;
            if (customViewPager4 != null) {
                customViewPager4.setCurrentItem(2);
            }
            C3810q.m24071b().m24070c("fcm_open_notifi");
        }
        this.f10154F = new C3168j0();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.allinone.callerid.CLOSE_AD");
        intentFilter.addAction("com.allinone.callerid.SET_SHORTCUT");
        intentFilter.addAction("com.allinone.callerid.IDENTIFY_NUMBER");
        C1764a.m28939b(getApplicationContext()).m28938c(this.f10154F, intentFilter);
        m25786r1();
        this.f10168M = new C3811q0(this);
        m25769z1();
        this.f10192Z = new DisturbNotifitcationReceiver();
        C1764a.m28939b(this).m28938c(this.f10192Z, new IntentFilter("com.allinone.callerid.DISTURB_NOTIFICATION_TUENOFF"));
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.addPrimaryClipChangedListener(new ClipboardManager$OnPrimaryClipChangedListenerC3155f0(clipboardManager));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        m25802j1();
        m25806h1();
        C3767h1.m24285G0(this);
        boolean m24242j0 = C3767h1.m24242j0(this);
        this.f10174P = m24242j0;
        if (m24242j0) {
            GoogleBillingUtil.m26249I(null, new String[]{"showcaller_removeads_month", "showcaller_removeads_year"});
            m25808g1();
        }
        m25827X();
        m25810f1();
    }

    /* renamed from: q1 */
    public void m25788q1() {
        C5600d.C5601a c5601a = new C5600d.C5601a(getApplicationContext(), "ca-app-pub-5825926894918682/4484122459");
        c5601a.m18290c(new C3142b());
        c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
        C5600d m18292a = c5601a.m18288e(new C3144c()).m18292a();
        this.f10181S0 = m18292a;
        m18292a.m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
    }

    /* renamed from: r1 */
    private void m25786r1() {
        if (C0586a.m33353a(getApplicationContext(), "android.permission.READ_CONTACTS") == 0) {
            getContentResolver().registerContentObserver(ContactsContract.RawContacts.CONTENT_URI, true, new C2618a(this, this.f10189W0));
        }
    }

    /* renamed from: s1 */
    public void m25784s1(String str, String str2, boolean z) {
        if (str2 != null) {
            try {
                if (!"".equals(str2)) {
                    C2796b.m26587b(str2, new C3191z(str2, str, z));
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        Toast.makeText(getApplicationContext(), getResources().getString(R$string.invalid_nubmer), 0).show();
    }

    /* renamed from: t1 */
    public void m25781t1() {
        this.f10201i0.setImageResource(this.f10149C0);
        this.f10202j0.setImageResource(this.f10151D0);
        this.f10203k0.setImageResource(this.f10153E0);
        this.f10204l0.setImageResource(this.f10147B0);
        this.f10197e0.setTextColor(this.f10159H0);
        this.f10198f0.setTextColor(this.f10159H0);
        this.f10199g0.setTextColor(this.f10159H0);
        this.f10200h0.setTextColor(this.f10157G0);
    }

    /* renamed from: u1 */
    public void m25779u1() {
        this.f10201i0.setImageResource(this.f10222y0);
        this.f10202j0.setImageResource(this.f10151D0);
        this.f10203k0.setImageResource(this.f10153E0);
        this.f10204l0.setImageResource(this.f10155F0);
        this.f10197e0.setTextColor(this.f10157G0);
        this.f10198f0.setTextColor(this.f10159H0);
        this.f10199g0.setTextColor(this.f10159H0);
        this.f10200h0.setTextColor(this.f10159H0);
    }

    /* renamed from: v1 */
    public void m25777v1() {
        this.f10201i0.setImageResource(this.f10149C0);
        this.f10202j0.setImageResource(this.f10151D0);
        this.f10203k0.setImageResource(this.f10145A0);
        this.f10204l0.setImageResource(this.f10155F0);
        this.f10197e0.setTextColor(this.f10159H0);
        this.f10198f0.setTextColor(this.f10159H0);
        this.f10199g0.setTextColor(this.f10157G0);
        this.f10200h0.setTextColor(this.f10159H0);
    }

    /* renamed from: w1 */
    public void m25775w1() {
        C2600m.m27039h(this, new C3188y());
    }

    /* renamed from: x1 */
    public void m25773x1() {
        C2600m.m27040g(this, new C3139a0());
    }

    /* renamed from: y1 */
    private void m25771y1() {
        try {
            if (isFinishing()) {
                return;
            }
            View inflate = this.f10163J0.inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
            DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
            DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
            deletableEditText.setHint(R$string.block_name);
            deletableEditText2.setTypeface(this.f10177Q0);
            deletableEditText2.setHint(R$string.block_number);
            AlertDialog create = new AlertDialog.Builder(this).setMessage(getResources().getString(R$string.add)).setView(inflate).setPositiveButton(getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3187x(deletableEditText2, deletableEditText)).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3186w()).create();
            create.show();
            create.getButton(-1).setTextColor(this.f10161I0);
            create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: z1 */
    public void m25769z1() {
        if (Build.VERSION.SDK_INT >= 25) {
            C2970c.m26323b(this, this.f10168M);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("inappbilling", "onActivityResult(" + i + "," + i2 + "," + intent + ")");
        }
        if (i != 666 || i2 != 777 || !this.f10174P || !C3711a1.m24540g()) {
            return;
        }
        new DialogC2591h(this, R$style.CustomDialog4, this, this.f10188W, this.f10190X, this.f10186V, this.f10218w0, this.f10216v0, this.f10165K0, true).show();
        C3711a1.m24626J0(false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.cehua_version /* 2131296461 */:
                long uptimeMillis = SystemClock.uptimeMillis();
                long j = this.f10170N;
                this.f10170N = uptimeMillis;
                if (uptimeMillis - j >= 600) {
                    this.f10172O = 0;
                    return;
                }
                int i = this.f10172O + 1;
                this.f10172O = i;
                if (4 != i) {
                    return;
                }
                if (this.f10166L) {
                    this.f10164K.setVisibility(0);
                    this.f10166L = false;
                    return;
                }
                this.f10164K.setVisibility(8);
                this.f10166L = true;
                return;
            case R$id.dedication /* 2131296548 */:
                this.f10221y.m33034d(8388611);
                this.f10211s0.postDelayed(new RunnableC3162h(), 100L);
                return;
            case R$id.fab_custom_num /* 2131296692 */:
                if (this.f10206n0.m22322s()) {
                    this.f10206n0.m22320u(true);
                }
                Intent intent = new Intent();
                C3810q.m24071b().m24070c(C3744g1.f11943q);
                intent.setClass(this, AddCustomNumActivity.class);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fab_enter_number /* 2131296693 */:
                if (this.f10206n0.m22322s()) {
                    this.f10206n0.m22320u(true);
                }
                m25771y1();
                return;
            case R$id.fab_from_contacts /* 2131296694 */:
                if (!C3776a.m24161d(getApplicationContext())) {
                    C3776a.m24152m(this, new C3177o());
                    return;
                }
                if (this.f10206n0.m22322s()) {
                    this.f10206n0.m22320u(true);
                }
                m25775w1();
                return;
            case R$id.fab_from_his /* 2131296695 */:
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    C3776a.m24148q(this, new C3176n());
                    return;
                }
                m25773x1();
                if (!this.f10206n0.m22322s()) {
                    return;
                }
                this.f10206n0.m22320u(true);
                return;
            case R$id.fl_ad /* 2131296710 */:
                try {
                    new DialogC2591h(this, R$style.CustomDialog4, this, this.f10188W, this.f10190X, this.f10186V, this.f10218w0, this.f10216v0, this.f10165K0, false).show();
                    this.f10221y.m33034d(8388611);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.fl_black_list /* 2131296716 */:
                this.f10221y.m33034d(8388611);
                this.f10211s0.postDelayed(new RunnableC3152e(), 100L);
                return;
            case R$id.fl_block /* 2131296717 */:
                CustomViewPager customViewPager = this.f10213u;
                if (customViewPager == null) {
                    return;
                }
                customViewPager.setCurrentItem(2);
                return;
            case R$id.fl_calllog /* 2131296723 */:
                CustomViewPager customViewPager2 = this.f10213u;
                if (customViewPager2 != null) {
                    customViewPager2.setCurrentItem(0);
                }
                m25779u1();
                return;
            case R$id.fl_callscreen /* 2131296724 */:
                CustomViewPager customViewPager3 = this.f10213u;
                if (customViewPager3 == null) {
                    return;
                }
                customViewPager3.setCurrentItem(2);
                return;
            case R$id.fl_contacts /* 2131296730 */:
                CustomViewPager customViewPager4 = this.f10213u;
                if (customViewPager4 == null) {
                    return;
                }
                customViewPager4.setCurrentItem(1);
                return;
            case R$id.fl_filter_all /* 2131296745 */:
                View$OnClickListenerC2687e view$OnClickListenerC2687e = this.f10196d0;
                if (view$OnClickListenerC2687e != null) {
                    view$OnClickListenerC2687e.f9256A0 = 0;
                    view$OnClickListenerC2687e.m26812f3();
                }
                PopupWindow popupWindow = this.f10195c0;
                if (popupWindow == null) {
                    return;
                }
                popupWindow.dismiss();
                return;
            case R$id.fl_filter_delete /* 2131296746 */:
                this.f10195c0.dismiss();
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 23) {
                        this.f10196d0.m26822a3();
                        return;
                    } else if (C3776a.m24156i(EZCallApplication.m26146c())) {
                        View$OnClickListenerC2687e view$OnClickListenerC2687e2 = this.f10196d0;
                        if (view$OnClickListenerC2687e2 == null) {
                            return;
                        }
                        view$OnClickListenerC2687e2.m26822a3();
                        return;
                    } else {
                        try {
                            if (i2 >= 29) {
                                RoleManager roleManager = (RoleManager) getSystemService(RoleManager.class);
                                if (roleManager != null && roleManager.isRoleAvailable("android.app.role.DIALER")) {
                                    if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                                        if (C3718c0.f11914a) {
                                            C3718c0.m24436a("default_dialer", "This app is the default dialer app");
                                        }
                                        this.f10196d0.m26822a3();
                                    } else {
                                        if (C3718c0.f11914a) {
                                            C3718c0.m24436a("default_dialer", "This app isn't the default dialer app");
                                        }
                                        startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), ErrorCode.ERROR_CODE_PATH_ERROR);
                                    }
                                }
                            } else {
                                Intent intent2 = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                                intent2.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", C3767h1.m24275M(EZCallApplication.m26146c()));
                                startActivityForResult(intent2, ErrorCode.ERROR_CODE_PATH_ERROR);
                            }
                            C3810q.m24071b().m24070c("delete_request_default_dialer");
                            return;
                        } catch (Exception e2) {
                            this.f10196d0.m26822a3();
                            e2.printStackTrace();
                            return;
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case R$id.fl_filter_incoming /* 2131296747 */:
                View$OnClickListenerC2687e view$OnClickListenerC2687e3 = this.f10196d0;
                if (view$OnClickListenerC2687e3 != null) {
                    view$OnClickListenerC2687e3.f9256A0 = 1;
                    view$OnClickListenerC2687e3.m26812f3();
                }
                PopupWindow popupWindow2 = this.f10195c0;
                if (popupWindow2 == null) {
                    return;
                }
                popupWindow2.dismiss();
                return;
            case R$id.fl_filter_missed /* 2131296748 */:
                View$OnClickListenerC2687e view$OnClickListenerC2687e4 = this.f10196d0;
                if (view$OnClickListenerC2687e4 != null) {
                    view$OnClickListenerC2687e4.f9256A0 = 3;
                    view$OnClickListenerC2687e4.m26812f3();
                }
                PopupWindow popupWindow3 = this.f10195c0;
                if (popupWindow3 == null) {
                    return;
                }
                popupWindow3.dismiss();
                return;
            case R$id.fl_filter_outgoing /* 2131296749 */:
                View$OnClickListenerC2687e view$OnClickListenerC2687e5 = this.f10196d0;
                if (view$OnClickListenerC2687e5 != null) {
                    view$OnClickListenerC2687e5.f9256A0 = 2;
                    view$OnClickListenerC2687e5.m26812f3();
                }
                PopupWindow popupWindow4 = this.f10195c0;
                if (popupWindow4 == null) {
                    return;
                }
                popupWindow4.dismiss();
                return;
            case R$id.fl_set /* 2131296784 */:
                PopupWindow popupWindow5 = this.f10207o0;
                if (popupWindow5 != null) {
                    popupWindow5.dismiss();
                }
                try {
                    Intent intent3 = new Intent();
                    intent3.setClass(this, CallScreenSettingActivity.class);
                    startActivity(intent3);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            case R$id.fl_show_log /* 2131296796 */:
                startActivity(new Intent(this, LogActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                this.f10221y.m33034d(8388611);
                return;
            case R$id.fl_theme /* 2131296801 */:
                if (C3711a1.m24461z2() == 0) {
                    C3711a1.m24588S2(1);
                } else {
                    C3711a1.m24588S2(0);
                }
                this.f10167L0.postDelayed(new RunnableC3156g(), 350L);
                return;
            case R$id.header_left /* 2131296849 */:
                if (this.f10221y.m33055C(8388613)) {
                    this.f10221y.m33034d(8388613);
                }
                if (this.f10221y.m33055C(8388611)) {
                    this.f10221y.m33034d(8388611);
                    return;
                } else {
                    this.f10221y.m33048J(8388611);
                    return;
                }
            case R$id.iv_search /* 2131297040 */:
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "main_cardview");
                }
                try {
                    Intent intent4 = new Intent();
                    intent4.setClass(this, EZSearchNumberActivity.class);
                    startActivityForResult(intent4, 666);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
            case R$id.ll_blocked /* 2131297162 */:
                startActivity(new Intent(this, BlockManagerActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                this.f10211s0.postDelayed(new RunnableC3167j(), 100L);
                return;
            case R$id.ll_identified /* 2131297182 */:
                startActivity(new Intent(this, IdentifiedActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                this.f10211s0.postDelayed(new RunnableC3164i(), 100L);
                return;
            case R$id.recorder /* 2131297432 */:
                this.f10221y.m33034d(8388611);
                this.f10211s0.postDelayed(new RunnableC3146d(), 100L);
                if (this.f10191Y.getVisibility() == 0) {
                    C3820b.m24020p(true);
                    this.f10191Y.setVisibility(8);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    C3810q.m24071b().m24070c("click_cehua_record_p");
                }
                C3810q.m24071b().m24070c("recorder_home_sideslip_click");
                return;
            case R$id.setshangdian /* 2131297591 */:
                C3810q.m24071b().m24070c("main_liwuhe");
                if (this.f10150D == null) {
                    DialogC2583d dialogC2583d = new DialogC2583d(this, R$style.CustomDialog4);
                    this.f10150D = dialogC2583d;
                    dialogC2583d.setCanceledOnTouchOutside(true);
                    this.f10150D.setOnDismissListener(new DialogInterface$OnDismissListenerC3175m());
                }
                this.f10150D.show();
                Window window = this.f10150D.getWindow();
                if (window == null) {
                    return;
                }
                WindowManager.LayoutParams attributes = window.getAttributes();
                window.setGravity(17);
                WindowManager windowManager = (WindowManager) getSystemService("window");
                if (windowManager == null) {
                    return;
                }
                attributes.width = windowManager.getDefaultDisplay().getWidth();
                window.setAttributes(attributes);
                return;
            case R$id.setting /* 2131297592 */:
                this.f10221y.m33034d(8388611);
                this.f10211s0.postDelayed(new RunnableC3154f(), 100L);
                return;
            case R$id.setwallpaper /* 2131297629 */:
                CustomViewPager customViewPager5 = this.f10213u;
                if (customViewPager5 == null || customViewPager5.getCurrentItem() != 0) {
                    return;
                }
                if (this.f10195c0 == null) {
                    m25802j1();
                }
                if (this.f10195c0 == null) {
                    return;
                }
                if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                    this.f10195c0.showAtLocation(view, 8388659, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                } else {
                    this.f10195c0.showAtLocation(view, 8388661, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                }
            case R$id.share_aiocaller /* 2131297630 */:
                C3810q.m24071b().m24070c("share");
                try {
                    this.f10221y.m33034d(8388611);
                    DialogC2616n dialogC2616n = new DialogC2616n(this, R$style.CustomDialog4, getResources().getString(R$string.share_title_main), getResources().getString(R$string.share_subject), getResources().getString(R$string.share_text), 0, null);
                    dialogC2616n.setCanceledOnTouchOutside(false);
                    dialogC2616n.show();
                    Window window2 = dialogC2616n.getWindow();
                    WindowManager.LayoutParams attributes2 = window2.getAttributes();
                    window2.setGravity(80);
                    WindowManager windowManager2 = (WindowManager) getApplicationContext().getApplicationContext().getSystemService("window");
                    int width = windowManager2.getDefaultDisplay().getWidth();
                    int height = windowManager2.getDefaultDisplay().getHeight();
                    attributes2.width = width;
                    attributes2.height = height / 2;
                    window2.setAttributes(attributes2);
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                this.f10160I.setVisibility(8);
                return;
            case R$id.textView1 /* 2131297745 */:
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "main_cardview");
                }
                try {
                    Intent intent5 = new Intent();
                    intent5.setClass(this, EZSearchNumberActivity.class);
                    startActivityForResult(intent5, 666);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (C3711a1.m24467y0()) {
            int i = configuration.uiMode & 48;
            if (i == 16) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "Night mode is not active, we're using the light theme");
                }
                C3711a1.m24588S2(0);
            } else if (i == 32) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "Night mode is active, we're using dark theme");
                }
                C3711a1.m24588S2(1);
            }
            C3767h1.f12006a = true;
            finish();
            EZCallApplication.m26146c().m26144e();
            startActivity(new Intent(this, StartActivity.class));
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_main);
            m25796m1();
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("fcm", "main_onCreate");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f10154F != null) {
                C1764a.m28939b(getApplicationContext()).m28936e(this.f10154F);
            }
            if (this.f10192Z != null) {
                C1764a.m28939b(this).m28936e(this.f10192Z);
            }
            GoogleBillingUtil googleBillingUtil = this.f10186V;
            if (googleBillingUtil == null) {
                return;
            }
            googleBillingUtil.m26223x(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                if (this.f10193a0 || Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                    this.f10193a0 = false;
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setFlags(268435456);
                    intent.addCategory("android.intent.category.HOME");
                    startActivity(intent);
                    return true;
                }
                this.f10193a0 = true;
                DialogC2589g dialogC2589g = new DialogC2589g(this, R$style.CustomDialog4);
                dialogC2589g.setCanceledOnTouchOutside(false);
                dialogC2589g.show();
                C3810q.m24071b().m24070c("over_per_first_show");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        CustomViewPager customViewPager;
        super.onNewIntent(intent);
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("fcm", "mian_onNewIntent");
            }
            if (intent == null) {
                return;
            }
            if (intent.getExtras() != null) {
                for (String str : intent.getExtras().keySet()) {
                    C3718c0.m24436a("fcm", str + "--" + intent.getExtras().get(str));
                }
            }
            if (intent.getBooleanExtra("is_callscreen", false) && (customViewPager = this.f10213u) != null) {
                C2568a.f8986e = true;
                customViewPager.setCurrentItem(2);
            }
            if (intent.getBooleanExtra("shortcutcontacts", false)) {
                C3810q.m24071b().m24070c("shortcut_contacts");
                CustomViewPager customViewPager2 = this.f10213u;
                if (customViewPager2 != null) {
                    customViewPager2.setCurrentItem(1);
                }
            }
            if (intent.getBooleanExtra("launchapp", false)) {
                C3810q.m24071b().m24070c("wakeapp_noti_click");
                C3711a1.m24498q1(true);
            }
            if (intent.getBooleanExtra("open_notifi_overlay", false)) {
                Intent intent2 = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getApplicationContext().getPackageName()));
                intent2.setFlags(268435456);
                startActivity(intent2);
                this.f10211s0.postDelayed(new RunnableC3180r(), 500L);
            }
            this.f10148C = intent;
            if (C3718c0.f11914a) {
                C3718c0.m24436a("shortcut", "onNewIntent");
            }
            this.f10211s0.postDelayed(new RunnableC3181s(), 800L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        C3767h1.f12007b = false;
        if (C3718c0.f11914a) {
            C3718c0.m24436a("fcm", "main_onRestart");
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        NotificationManager notificationManager;
        super.onResume();
        try {
            if (C3763f.m24317a().f11985b != null && System.currentTimeMillis() - C3711a1.m24476w() > 3000000) {
                C2786a.m26600a(new C3182t());
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onResume");
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("fcm", "main_onResume");
            }
            if (C3767h1.f12007b) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "isShowShare");
                }
                m25794n1();
            }
            C3767h1.f12007b = true;
            if (Build.VERSION.SDK_INT < 23 || !Settings.canDrawOverlays(getApplicationContext()) || (notificationManager = (NotificationManager) getSystemService("notification")) == null) {
                return;
            }
            notificationManager.cancel(201922);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("fcm", "main_onStart");
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("fcm", "main_onStop");
        }
    }

    @Override // com.allinone.callerid.p160g.View$OnClickListenerC2687e.AbstractC2718s
    /* renamed from: t */
    public void mo25783t() {
        this.f10152E.setVisibility(0);
        this.f10217w.setVisibility(0);
        C2786a.m26600a(new C3169k());
        m25804i1();
    }
}
