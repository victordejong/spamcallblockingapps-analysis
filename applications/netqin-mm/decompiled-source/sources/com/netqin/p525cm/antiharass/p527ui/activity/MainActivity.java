package com.netqin.p525cm.antiharass.p527ui.activity;

import android.animation.AnimatorSet;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.LocalActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.library.p518ad.core.AdInfo;
import com.netqin.p525cm.billing.SubscribeActivity;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p526ad.triggerad.main.HollowEffect;
import com.netqin.p525cm.permission.CBPermissionsHelper;
import com.netqin.p525cm.receiver.CBPhoneStateReceiver;
import com.netqin.p525cm.setting.MoreActivity;
import com.netqin.p525cm.utils.NQSPFManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p012b.p014a0.p015a.AbstractC0573a;
import p012b.p042i.p043h.C0838a;
import p012b.p042i.p044i.C0869a;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p431l.p432a.p433a.p437d.C6706a;
import p131c.p431l.p432a.p433a.p438e.AlertDialogC6710a;
import p131c.p431l.p432a.p433a.p439f.p440a.C6714b;
import p131c.p431l.p432a.p433a.p439f.p440a.DialogInterface$OnDismissListenerC6711a;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6741c;
import p131c.p431l.p432a.p442b.p448f.p449a.C6765b;
import p131c.p431l.p432a.p442b.p448f.p449a.DialogC6763a;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p432a.p452c.View$OnClickListenerC6792c;
import p131c.p431l.p432a.p455e.C6800a;
import p131c.p431l.p432a.p466l.C6835a;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6844e;
import p131c.p431l.p432a.p468n.C6846g;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
import p131c.p431l.p432a.p468n.C6852k;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p432a.p468n.p469s.p473d.C6865a;
import p131c.p431l.p478c.C6871a;
import ripple.RippleView;
/* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity.class */
public class MainActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    public C6727b f35460A;

    /* renamed from: C */
    public int f35462C;

    /* renamed from: D */
    public int f35463D;

    /* renamed from: E */
    public int f35464E;

    /* renamed from: F */
    public ImageView f35465F;

    /* renamed from: G */
    public BlockCallLogHistoryActivity f35466G;

    /* renamed from: H */
    public BlockRuleActivity f35467H;

    /* renamed from: J */
    public C6714b f35469J;

    /* renamed from: K */
    public C6835a f35470K;

    /* renamed from: L */
    public C6706a f35471L;

    /* renamed from: M */
    public HollowEffect f35472M;

    /* renamed from: N */
    public TextView f35473N;

    /* renamed from: P */
    public FrameLayout f35475P;

    /* renamed from: R */
    public View f35477R;

    /* renamed from: S */
    public View$OnClickListenerC6792c f35478S;

    /* renamed from: T */
    public LinearLayout f35479T;

    /* renamed from: U */
    public List<String> f35480U;

    /* renamed from: V */
    public final View.OnClickListener f35481V;

    /* renamed from: W */
    public View.OnClickListener f35482W;

    /* renamed from: Z */
    public final int[] f35483Z;

    /* renamed from: a0 */
    public int f35484a0;

    /* renamed from: b0 */
    public boolean f35485b0;

    /* renamed from: c0 */
    public boolean f35486c0;

    /* renamed from: d0 */
    public boolean f35487d0;

    /* renamed from: e0 */
    public DialogC6763a f35488e0;

    /* renamed from: f0 */
    public final Runnable f35489f0;

    /* renamed from: g0 */
    public AlertDialog f35490g0;

    /* renamed from: h0 */
    public UnifiedNativeAd f35491h0;

    /* renamed from: i0 */
    public AnimatorSet f35492i0;

    /* renamed from: j0 */
    public C6490b f35493j0;

    /* renamed from: k0 */
    public String f35494k0;

    /* renamed from: l0 */
    public int f35495l0;

    /* renamed from: t */
    public TextView f35496t;

    /* renamed from: u */
    public ImageView f35497u;

    /* renamed from: v */
    public ViewPager f35498v;

    /* renamed from: w */
    public int f35499w;

    /* renamed from: x */
    public List<View> f35500x;

    /* renamed from: y */
    public LocalActivityManager f35501y;

    /* renamed from: z */
    public C9118w f35502z;

    /* renamed from: B */
    public boolean f35461B = false;

    /* renamed from: I */
    public int f35468I = 0;

    /* renamed from: O */
    public boolean f35474O = false;

    /* renamed from: Q */
    public boolean f35476Q = false;

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$a.class */
    public class C9096a extends AbstractC6515g {
        public C9096a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: a */
        public void mo3232a(AdInfo adInfo, int i) {
            C6850i.m19579a(MainActivity.this.f35494k0, "退出主界面广告被点击");
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
            C6850i.m19579a(MainActivity.this.f35494k0, "退出主界面广告关闭");
            if (MainActivity.this.f35495l0 == 3) {
                MainActivity.this.startActivity(new Intent(MainActivity.this.f35625q, ExitActivity.class));
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            C6850i.m19579a(MainActivity.this.f35494k0, "退出主界面广告已经显示，展示中...");
            MainActivity.this.f35495l0 = adInfo.getAdType();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$b.class */
    public class DialogInterface$OnKeyListenerC9097b implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC9097b() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 84;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$c.class */
    public class DialogInterface$OnDismissListenerC9098c implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC9098c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (MainActivity.this.f35491h0 != null) {
                MainActivity.this.f35491h0.mo16794a();
                MainActivity.this.f35491h0 = null;
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$d.class */
    public class View$OnClickListenerC9099d implements View.OnClickListener {
        public View$OnClickListenerC9099d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35490g0.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$e.class */
    public class View$OnClickListenerC9100e implements View.OnClickListener {
        public View$OnClickListenerC9100e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35490g0.dismiss();
            MainActivity.this.m3428c(0);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$f.class */
    public class View$OnClickListenerC9101f implements View.OnClickListener {
        public View$OnClickListenerC9101f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35490g0.dismiss();
            MainActivity.this.m3428c(1);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$g  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$g.class */
    public class animationAnimation$AnimationListenerC9102g implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ FrameLayout f35509a;

        /* renamed from: b */
        public final /* synthetic */ RelativeLayout.LayoutParams f35510b;

        /* renamed from: c */
        public final /* synthetic */ RelativeLayout.LayoutParams f35511c;

        public animationAnimation$AnimationListenerC9102g(FrameLayout frameLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
            this.f35509a = frameLayout;
            this.f35510b = layoutParams;
            this.f35511c = layoutParams2;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C6850i.m19579a("MainActivity", " onAnimationEnd");
            this.f35509a.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = this.f35510b;
            MainActivity mainActivity = MainActivity.this;
            layoutParams.height = mainActivity.m3440a(mainActivity.f35626r, 330);
            RelativeLayout.LayoutParams layoutParams2 = this.f35511c;
            MainActivity mainActivity2 = MainActivity.this;
            layoutParams2.topMargin = mainActivity2.m3440a(mainActivity2.f35626r, 0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$h.class */
    public class DialogInterface$OnKeyListenerC9103h implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC9103h() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 84;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$i.class */
    public class DialogInterface$OnDismissListenerC9104i implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC9104i() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$j.class */
    public class View$OnClickListenerC9105j implements View.OnClickListener {
        public View$OnClickListenerC9105j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35490g0.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$k */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$k.class */
    public class View$OnClickListenerC9106k implements View.OnClickListener {
        public View$OnClickListenerC9106k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == 2131231039) {
                C6871a.m19508a("IAP Click", "Tap IAP Icon On Main Page");
                MainActivity.this.startActivity(new Intent(MainActivity.this, SubscribeActivity.class));
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$l */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$l.class */
    public class View$OnClickListenerC9107l implements View.OnClickListener {
        public View$OnClickListenerC9107l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35490g0.dismiss();
            MainActivity.this.m3428c(0);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$m */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$m.class */
    public class View$OnClickListenerC9108m implements View.OnClickListener {
        public View$OnClickListenerC9108m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35490g0.dismiss();
            MainActivity.this.m3428c(1);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$n  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$n.class */
    public class animationAnimation$AnimationListenerC9109n implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ FrameLayout f35519a;

        /* renamed from: b */
        public final /* synthetic */ RelativeLayout.LayoutParams f35520b;

        /* renamed from: c */
        public final /* synthetic */ RelativeLayout.LayoutParams f35521c;

        public animationAnimation$AnimationListenerC9109n(FrameLayout frameLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
            this.f35519a = frameLayout;
            this.f35520b = layoutParams;
            this.f35521c = layoutParams2;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C6850i.m19579a("MainActivity", " onAnimationEnd");
            this.f35519a.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = this.f35520b;
            MainActivity mainActivity = MainActivity.this;
            layoutParams.height = mainActivity.m3440a(mainActivity.f35626r, 330);
            RelativeLayout.LayoutParams layoutParams2 = this.f35521c;
            MainActivity mainActivity2 = MainActivity.this;
            layoutParams2.topMargin = mainActivity2.m3440a(mainActivity2.f35626r, 0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$o */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$o.class */
    public class RunnableC9110o implements Runnable {
        public RunnableC9110o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.m3456B();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$p */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$p.class */
    public class View$OnClickListenerC9111p implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AlertDialog f35524a;

        public View$OnClickListenerC9111p(AlertDialog alertDialog) {
            this.f35524a = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C6843d.m19600a(MainActivity.this.f35626r, C6843d.m19604a(MainActivity.this.f35625q), "https://play.google.com/store/apps/details?id=com.netqin.mm&referrer=utm_source%3DCB%26utm_medium%3DSelf", "&referrer=utm_source%3DCB%26utm_medium%3DSelf");
            this.f35524a.dismiss();
            C6871a.m19509a("ClickRateDialog");
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$q */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$q.class */
    public class View$OnClickListenerC9112q implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AlertDialog f35526a;

        public View$OnClickListenerC9112q(AlertDialog alertDialog) {
            this.f35526a = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f35526a.cancel();
            C6871a.m19509a("ClickRateDialog");
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$r */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$r.class */
    public class C9113r implements C6835a.AbstractC6837b {
        public C9113r() {
        }

        @Override // p131c.p431l.p432a.p466l.C6835a.AbstractC6837b
        /* renamed from: a */
        public void mo3387a(boolean z) {
            if (!C6793d.m19782d()) {
                MainActivity.this.m3446H();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$s */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$s.class */
    public class View$OnClickListenerC9114s implements View.OnClickListener {
        public View$OnClickListenerC9114s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.startActivity(new Intent(MainActivity.this, MoreActivity.class));
            C6860r.m19542a(MainActivity.this.f35626r, System.currentTimeMillis());
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$t */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$t.class */
    public class View$OnClickListenerC9115t implements View.OnClickListener {
        public View$OnClickListenerC9115t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35488e0.dismiss();
            MainActivity.this.f35486c0 = false;
            MainActivity.this.m3442L();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$u */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$u.class */
    public class View$OnClickListenerC9116u implements View.OnClickListener {
        public View$OnClickListenerC9116u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35488e0.dismiss();
            MainActivity.this.f35487d0 = false;
            MainActivity.this.m3442L();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$v */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$v.class */
    public class RunnableC9117v implements Runnable {
        public RunnableC9117v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MainActivity.this.f35478S == null) {
                MainActivity.this.f35478S = new View$OnClickListenerC6792c(MainActivity.this);
            }
            MainActivity.this.f35476Q = true;
            MainActivity.this.f35478S.show();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$w */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$w.class */
    public class C9118w extends BroadcastReceiver {
        public C9118w() {
        }

        public /* synthetic */ C9118w(MainActivity mainActivity, View$OnClickListenerC9106k kVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("com.netqin.antiharass.refresh".equals(action) || "com.netqin.antiharass.update".equals(action) || "com.netqin.antiharass.refresh_tab".equals(action) || "com.netqin.antiharass.refresh_view".equals(action)) {
                C6850i.m19579a(null, "action:" + intent.getAction());
                MainActivity.this.m3393x();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$x */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$x.class */
    public class View$OnClickListenerC9119x implements View.OnClickListener {

        /* renamed from: a */
        public int f35534a;

        public View$OnClickListenerC9119x(int i) {
            this.f35534a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f35498v.setCurrentItem(this.f35534a);
            C6741c.m19914a(MainActivity.this.f35626r, "com.netqin.antiharass.refresh_view");
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$y */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$y.class */
    public class C9120y implements ViewPager.AbstractC0566i {
        public C9120y() {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
        public void onPageScrollStateChanged(int i) {
            C6850i.m19579a("MainActivity", "...............onPageScrollStateChanged arg0 " + i);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
        public void onPageScrolled(int i, float f, int i2) {
            C6850i.m19579a("MainActivity", "...............onPageScrolled");
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
        public void onPageSelected(int i) {
            C6850i.m19579a("Antiharass", "onPageSelected mCurrentTab=" + MainActivity.this.f35462C + " mPreviousTab=" + MainActivity.this.f35463D);
            MainActivity.this.f35462C = i;
            int i2 = (MainActivity.this.f35499w * 2) + MainActivity.this.f35464E;
            C6850i.m19579a("onPageSelected", "mCurrentTab=" + MainActivity.this.f35462C);
            r9 = null;
            r9 = null;
            TranslateAnimation translateAnimation = null;
            boolean z = false;
            if (i == 0) {
                C6852k.m19564a(MainActivity.this.f35625q);
                if (MainActivity.this.f35463D == 1) {
                    translateAnimation = new TranslateAnimation(i2, 0.0f, 0.0f, 0.0f);
                }
                if (MainActivity.this.f35498v.getCurrentItem() == 0 && MainActivity.this.f35466G != null) {
                    MainActivity.this.f35466G.onResume();
                }
                C6850i.m19579a("MainActivity", "onPageSelected  arg0 is " + i);
            } else if (i == 1) {
                z = false;
                if (MainActivity.this.f35463D == 0) {
                    C6852k.m19564a(MainActivity.this.f35625q);
                    TranslateAnimation translateAnimation2 = new TranslateAnimation(MainActivity.this.f35499w, i2, 0.0f, 0.0f);
                    translateAnimation = translateAnimation2;
                    z = false;
                    if (MainActivity.this.m3403s() > 0) {
                        MainActivity.this.f35460A.m19916x();
                        z = true;
                        translateAnimation = translateAnimation2;
                    }
                }
                C6850i.m19579a("MainActivity", "onPageSelected  arg0 is " + i);
            }
            MainActivity.this.f35463D = i;
            if (z) {
                MainActivity.this.m3405r();
            }
            if (translateAnimation != null) {
                translateAnimation.setFillAfter(true);
                translateAnimation.setDuration(300L);
                MainActivity.this.f35497u.startAnimation(translateAnimation);
            }
            MainActivity.this.m3443K();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.MainActivity$z */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/MainActivity$z.class */
    public class C9121z extends AbstractC0573a {

        /* renamed from: a */
        public List<View> f35537a;

        public C9121z(List<View> list) {
            this.f35537a = list;
        }

        @Override // p012b.p014a0.p015a.AbstractC0573a
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            List<View> list = this.f35537a;
            if (list != null && !list.isEmpty()) {
                viewGroup.removeView(this.f35537a.get(i));
            }
        }

        @Override // p012b.p014a0.p015a.AbstractC0573a
        public int getCount() {
            return this.f35537a.size();
        }

        @Override // p012b.p014a0.p015a.AbstractC0573a
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            viewGroup.addView(this.f35537a.get(i), 0);
            return this.f35537a.get(i);
        }

        @Override // p012b.p014a0.p015a.AbstractC0573a
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    public MainActivity() {
        this.f35480U = Build.VERSION.SDK_INT < 26 ? C6800a.f20935a : Arrays.asList("android.permission.ANSWER_PHONE_CALLS", "android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG", "android.permission.CALL_PHONE");
        this.f35481V = new View$OnClickListenerC9106k();
        this.f35482W = new View$OnClickListenerC9114s();
        this.f35483Z = new int[]{2131230844, 2131230845};
        this.f35484a0 = 12345;
        this.f35485b0 = false;
        this.f35486c0 = false;
        this.f35487d0 = false;
        this.f35489f0 = new RunnableC9117v();
        this.f35493j0 = new C6490b("13");
        this.f35494k0 = "AD_TAG";
        this.f35495l0 = 3;
    }

    /* renamed from: A */
    public final void m3458A() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f35480U) {
            int a = C0869a.m35690a(getApplicationContext(), str);
            C6850i.m19579a("MainActivity", str + " check result " + a);
        }
        if (C0869a.m35690a(getApplicationContext(), this.f35480U.get(0)) == 0 && C0869a.m35690a(getApplicationContext(), this.f35480U.get(2)) == 0) {
            C6850i.m19579a("MainActivity", "电话和通话权限权限已经有");
        } else {
            C6850i.m19579a("MainActivity", "电话或通话记录权限没有");
            arrayList.addAll(this.f35480U);
        }
        if (arrayList.size() > 0) {
            C6850i.m19579a("MainActivity", "还有必要的电话和通话权限权限没有，需要继续请求");
            C0838a.m35799a(this, (String[]) arrayList.toArray(new String[0]), this.f35484a0);
        } else {
            C6850i.m19579a("MainActivity", "电话和通话权限权限已全部申请完毕");
            CBPhoneStateReceiver.m3275a(this.f35626r).m3276a();
        }
        DialogC6763a aVar = this.f35488e0;
        if (aVar != null && aVar.isShowing()) {
            C6850i.m19579a(MainActivity.class.getSimpleName(), "dialog.dismiss");
            this.f35488e0.dismiss();
        }
    }

    /* renamed from: B */
    public final void m3456B() {
        this.f35475P.setVisibility(0);
        this.f35472M.m3641a(this.f35474O);
    }

    /* renamed from: C */
    public final void m3454C() {
        View findViewById = findViewById(2131231198);
        FrameLayout frameLayout = (FrameLayout) findViewById(2131231207);
        this.f35496t = (TextView) findViewById(2131230865);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131231208);
        this.f35497u = (ImageView) findViewById(2131230909);
        this.f35498v = (ViewPager) findViewById(2131231269);
        TextView textView = (TextView) findViewById(2131230784);
        View findViewById2 = findViewById(2131231039);
        this.f35477R = findViewById2;
        findViewById2.setOnClickListener(this.f35481V);
        this.f35469J = new C6714b(this);
        this.f35472M = (HollowEffect) findViewById(2131231248);
        this.f35473N = (TextView) findViewById(2131231251);
        this.f35475P = (FrameLayout) findViewById(2131231250);
        this.f35472M.setOnClickListener(this);
        View findViewById3 = findViewById(2131230990);
        if (C6843d.m19596b()) {
            textView.setVisibility(0);
            textView.setText(2131558495);
        } else {
            textView.setText(2131558495);
        }
        findViewById3.setVisibility(0);
        relativeLayout.setVisibility(0);
        findViewById.setVisibility(0);
        findViewById3.setOnClickListener(this.f35482W);
        frameLayout.setOnClickListener(new View$OnClickListenerC9119x(0));
        relativeLayout.setOnClickListener(new View$OnClickListenerC9119x(1));
        this.f35470K = new C6835a(this, new C9113r());
    }

    /* renamed from: D */
    public final void m3452D() {
        AlertDialog alertDialog = this.f35490g0;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.f35490g0 = new AlertDialog.Builder(this.f35626r).create();
        }
        this.f35490g0.setCanceledOnTouchOutside(false);
        this.f35490g0.setCancelable(false);
        this.f35490g0.setOnKeyListener(new DialogInterface$OnKeyListenerC9103h());
        this.f35490g0.setOnDismissListener(new DialogInterface$OnDismissListenerC9104i());
        this.f35490g0.show();
        View a = m3439a(this.f35626r, this.f35490g0, 2131427397, 36);
        this.f35490g0.setContentView(a);
        FrameLayout frameLayout = (FrameLayout) a.findViewById(2131231030);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ((LinearLayout) a.findViewById(2131231031)).getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) ((ImageView) a.findViewById(2131231012)).getLayoutParams();
        ((RippleView) a.findViewById(2131231139)).setOnClickListener(new View$OnClickListenerC9105j());
        ((RippleView) a.findViewById(2131231140)).setOnClickListener(new View$OnClickListenerC9107l());
        ((ImageView) a.findViewById(2131230991)).setOnClickListener(new View$OnClickListenerC9108m());
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f35626r, 2130771995);
        loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC9109n(frameLayout, layoutParams2, layoutParams));
        frameLayout.startAnimation(loadAnimation);
        frameLayout.removeAllViews();
        this.f35493j0.m20697c(frameLayout);
    }

    /* renamed from: E */
    public final void m3450E() {
        C6871a.m19509a("PopRateDialog");
        C6850i.m19579a("MainActivity", "显示打分Dialog");
        AlertDialog create = new AlertDialog.Builder(this).create();
        create.setCanceledOnTouchOutside(false);
        create.show();
        WindowManager.LayoutParams attributes = create.getWindow().getAttributes();
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        double d = point.x;
        Double.isNaN(d);
        attributes.width = (int) (d * 0.9d);
        create.getWindow().setAttributes(attributes);
        Window window = create.getWindow();
        window.setContentView(2131427455);
        ((Button) window.findViewById(2131230861)).setOnClickListener(new View$OnClickListenerC9111p(create));
        ((Button) window.findViewById(2131230859)).setOnClickListener(new View$OnClickListenerC9112q(create));
    }

    /* renamed from: F */
    public final boolean m3448F() {
        int a = NQSPFManager.m3184a(this.f35626r).f35743b.m19574a(NQSPFManager.EnumNetQin.wifi_doctor_state);
        if (this.f35476Q || !C6865a.m19516a(this.f35626r) || AlertDialogC6710a.m20012a(this.f35626r) || a == 2) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 17 && isDestroyed()) {
            return false;
        }
        this.f35476Q = true;
        new AlertDialogC6710a(this, a).show();
        return true;
    }

    /* renamed from: G */
    public final void m3447G() {
        if (this.f35486c0) {
            DialogC6763a aVar = this.f35488e0;
            if (aVar != null && aVar.isShowing()) {
                C6850i.m19579a(MainActivity.class.getSimpleName(), "dialog != null dialog.dismiss");
                this.f35488e0.dismiss();
            }
            DialogC6763a.C6764a aVar2 = new DialogC6763a.C6764a(this);
            aVar2.m19850b(2131427452);
            aVar2.m19853a(2131624358);
            aVar2.m19852a(2131231109, new View$OnClickListenerC9115t());
            DialogC6763a a = aVar2.m19854a();
            this.f35488e0 = a;
            a.show();
        } else if (this.f35487d0) {
            C6850i.m19579a("MainActivity", "弹出新型的提示");
            DialogC6763a.C6764a aVar3 = new DialogC6763a.C6764a(this);
            aVar3.m19850b(2131427453);
            aVar3.m19853a(2131624358);
            aVar3.m19852a(2131231110, new View$OnClickListenerC9116u());
            DialogC6763a a2 = aVar3.m19854a();
            this.f35488e0 = a2;
            a2.show();
        }
    }

    /* renamed from: H */
    public void m3446H() {
        if (C6860r.m19530c(this)) {
            getWindow().getDecorView().postDelayed(new RunnableC9110o(), 500L);
        } else {
            m3444J();
        }
    }

    /* renamed from: I */
    public void m3445I() {
        this.f35469J.m19997c();
    }

    /* renamed from: J */
    public final void m3444J() {
        this.f35472M.m3638c();
        this.f35475P.setVisibility(8);
    }

    /* renamed from: K */
    public final void m3443K() {
        int i = 0;
        while (true) {
            int[] iArr = this.f35483Z;
            if (i < iArr.length) {
                View findViewById = findViewById(iArr[i]);
                float f = 1.0f;
                if (i != this.f35462C) {
                    f = i != 0 ? i != 1 ? 1.0f : 0.81f : 0.78f;
                }
                findViewById.setAlpha(f);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: L */
    public final void m3442L() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getApplicationContext().getPackageName(), null));
        startActivityForResult(intent, 1745);
    }

    /* renamed from: M */
    public final void m3441M() {
        unregisterReceiver(this.f35502z);
    }

    /* renamed from: a */
    public int m3440a(Context context, int i) {
        return (int) ((context.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    /* renamed from: a */
    public View m3439a(Context context, AlertDialog alertDialog, int i, int i2) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i3 = displayMetrics.widthPixels;
        int a = m3440a(context, i2);
        View inflate = View.inflate(context, i, null);
        alertDialog.setContentView(inflate);
        WindowManager.LayoutParams attributes = alertDialog.getWindow().getAttributes();
        attributes.width = i3 - a;
        attributes.height = -2;
        alertDialog.getWindow().setAttributes(attributes);
        return inflate;
    }

    /* renamed from: a */
    public final View m3432a(String str, Intent intent) {
        try {
            return this.f35501y.startActivity(str, intent).getDecorView();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m3438a(C6765b bVar) {
        if (this.f35476Q) {
            return false;
        }
        AlertDialog alertDialog = this.f35490g0;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.f35490g0 = new AlertDialog.Builder(this.f35625q).create();
        }
        this.f35490g0.setCanceledOnTouchOutside(false);
        this.f35490g0.setCancelable(false);
        this.f35490g0.setOnKeyListener(new DialogInterface$OnKeyListenerC9097b());
        this.f35490g0.setOnDismissListener(new DialogInterface$OnDismissListenerC9098c());
        this.f35490g0.show();
        this.f35476Q = true;
        View a = m3439a(this.f35626r, this.f35490g0, 2131427397, 36);
        this.f35490g0.setContentView(a);
        FrameLayout frameLayout = (FrameLayout) a.findViewById(2131231030);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ((LinearLayout) a.findViewById(2131231031)).getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) ((ImageView) a.findViewById(2131231012)).getLayoutParams();
        ((RippleView) a.findViewById(2131231139)).setOnClickListener(new View$OnClickListenerC9099d());
        ((RippleView) a.findViewById(2131231140)).setOnClickListener(new View$OnClickListenerC9100e());
        ((ImageView) a.findViewById(2131230991)).setOnClickListener(new View$OnClickListenerC9101f());
        if (bVar == null) {
            frameLayout.setVisibility(8);
            this.f35490g0.findViewById(2131231134).setVisibility(4);
            return true;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f35626r, 2130771995);
        loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC9102g(frameLayout, layoutParams2, layoutParams));
        frameLayout.startAnimation(loadAnimation);
        return true;
    }

    /* renamed from: c */
    public final void m3428c(int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.addFlags(270532608);
        startActivity(intent);
        C6850i.m19579a(this.f35494k0, "退出主界面");
    }

    /* renamed from: n */
    public final void m3413n() {
        if (!C6793d.m19782d() && C6865a.m19516a(this.f35626r)) {
            C6850i.m19579a(this.f35494k0, "预加载退出APP广告");
            this.f35493j0.m20694e();
        }
    }

    /* renamed from: o */
    public final boolean m3411o() {
        if (C6793d.m19782d() || this.f35476Q || !C6793d.m19785b()) {
            return false;
        }
        C6846g.m19585b(this.f35489f0);
        C6846g.m19586a(this.f35489f0, 100L);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1745) {
            Activity currentActivity = this.f35501y.getCurrentActivity();
            if (currentActivity instanceof BlockRuleActivity) {
                ((BlockRuleActivity) currentActivity).onActivityResult(i, i2, intent);
            }
        } else if (!(C0869a.m35690a(getApplicationContext(), this.f35480U.get(0)) == 0 && C0869a.m35690a(getApplicationContext(), this.f35480U.get(2)) == 0)) {
            onBackPressed();
        }
        C6850i.m19579a("onActivityResult", "onActivityResult");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        C6850i.m19579a(this.f35494k0, "按下返回键，onBackPressed");
        m3395w();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131231248) {
            this.f35469J.m20001a(new Rect(), new DialogInterface$OnDismissListenerC6711a(this));
            this.f35474O = true;
            m3444J();
            C6871a.m19506a(null, "MainClick", "Feeling Lucky Click", 0L, null);
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427423);
        this.f35479T = (LinearLayout) findViewById(2131230793);
        findViewById(2131230988).setVisibility(0);
        this.f35465F = (ImageView) findViewById(2131230989);
        LocalActivityManager localActivityManager = new LocalActivityManager(this, true);
        this.f35501y = localActivityManager;
        localActivityManager.dispatchCreate(bundle);
        m3454C();
        m3391y();
        this.f35460A = C6727b.m19968a((Context) this.f35625q);
        this.f35461B = getIntent().getBooleanExtra("block_notification", false);
        this.f35463D = 0;
        int intExtra = getIntent().getIntExtra("tab_default", 0);
        this.f35462C = intExtra;
        if (this.f35461B && intExtra == 1) {
            this.f35463D = -1;
        }
        m3397v();
        this.f35466G = (BlockCallLogHistoryActivity) this.f35501y.getActivity("calllog");
        BlockRuleActivity blockRuleActivity = (BlockRuleActivity) this.f35501y.getActivity("block_rule");
        this.f35467H = blockRuleActivity;
        blockRuleActivity.m3485a((BaseActivity) this);
        if (!C6793d.m19782d()) {
            C6706a aVar = new C6706a(this.f35466G.m3502n(), 0);
            this.f35471L = aVar;
            this.f35498v.m36935a(aVar);
            this.f35471L.onPageSelected(this.f35462C);
        }
        this.f35498v.m36935a(new C6706a(this.f35467H.m3470s(), 1));
        this.f35460A.m19948c(false);
        if (this.f35460A.m19925o()) {
            C6850i.m19579a("MainActivity", " isNewUser KrAnalyticsUtil.newUser(mContext); ");
            this.f35460A.m19918v();
        }
        if (Build.VERSION.SDK_INT > 23) {
            m3458A();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (this.f35462C != 0 || this.f35460A.m19936g() <= 0) {
            return true;
        }
        menu.add(0, 1, 1, getString(2131558458));
        return true;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3441M();
        C6850i.m19579a("MainActivity", "onDestroy");
        m3389z();
        C6706a aVar = this.f35471L;
        if (aVar != null) {
            aVar.m20025b();
            this.f35471L = null;
        }
        this.f35467H = null;
        this.f35466G = null;
        C6727b.m19915y();
        C6846g.m19585b(this.f35489f0);
        this.f35470K.m19618b();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f35462C = intent.getIntExtra("tab_default", 0);
        boolean booleanExtra = intent.getBooleanExtra("block_notification", false);
        this.f35461B = booleanExtra;
        if (booleanExtra && this.f35462C == 1) {
            this.f35463D = -1;
        }
        C6850i.m19579a(null, "onNewIntent_mCurrentTab:" + this.f35462C);
        C6850i.m19579a(null, "onNewIntent_mIsFromBlockNotification:" + this.f35461B);
        setIntent(intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.f35460A.m19936g() > 0 && this.f35462C == 0) {
            this.f35466G.m3495s();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        C6850i.m19579a("MainActivity", "call onPause");
        BlockCallLogHistoryActivity blockCallLogHistoryActivity = this.f35466G;
        if (blockCallLogHistoryActivity != null) {
            blockCallLogHistoryActivity.onPause();
        }
        BlockRuleActivity blockRuleActivity = this.f35467H;
        if (blockRuleActivity != null) {
            blockRuleActivity.onPause();
        }
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (CBPermissionsHelper.m3287b() || this.f35476Q) {
            this.f35476Q = false;
        } else {
            this.f35476Q = true;
            CBPermissionsHelper.m3292a(this, 3);
        }
        m3409p();
        m3407q();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return this.f35462C == 0;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, p012b.p042i.p043h.C0838a.AbstractC0840b
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C6850i.m19579a("MainActivity", "onRequestPermissionsResult requestCode = " + i);
        if (i == this.f35484a0 && strArr.length == iArr.length) {
            int length = strArr.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                String str = strArr[i2];
                if (iArr[i3] != -1 || C0838a.m35800a((Activity) this, str)) {
                    if (iArr[i3] != 0) {
                        this.f35485b0 = false;
                        break;
                    }
                    this.f35485b0 = true;
                    C6850i.m19579a("MainActivity", "permission" + i3 + ":" + iArr[i3]);
                    i3++;
                    i2++;
                } else {
                    C6850i.m19579a("MainActivity", "用户选择了不再提示");
                    this.f35487d0 = true;
                    break;
                }
            }
            if (!this.f35485b0) {
                if (this.f35487d0) {
                    C6850i.m19579a("MainActivity", "用户拒绝申请权限的系统提示再次弹出，需要显示自定义对话框");
                    this.f35486c0 = true;
                } else {
                    onBackPressed();
                }
                m3447G();
            }
        }
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (C6793d.m19782d() && this.f35471L != null) {
            C6850i.m19579a("MainActivity", "清理界面广告");
            this.f35471L.m20027a();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m3399u();
        m3393x();
        if (System.currentTimeMillis() - C6860r.m19544a(this.f35626r) <= 259200000 || !C6865a.m19516a(this)) {
            this.f35465F.setVisibility(8);
        } else {
            this.f35465F.setVisibility(0);
        }
        BlockCallLogHistoryActivity blockCallLogHistoryActivity = this.f35466G;
        if (blockCallLogHistoryActivity != null) {
            blockCallLogHistoryActivity.onResume();
        }
        BlockRuleActivity blockRuleActivity = this.f35467H;
        if (blockRuleActivity != null) {
            blockRuleActivity.onResume();
        }
        C6850i.m19579a("MainActivity", "call onResume");
        int currentItem = this.f35498v.getCurrentItem();
        if (currentItem == 0) {
            this.f35463D = 0;
        } else if (currentItem == 2) {
            this.f35463D = 1;
        }
        boolean d = C6793d.m19782d();
        boolean c = C6860r.m19530c(this);
        if (d) {
            this.f35477R.setVisibility(8);
        } else {
            this.f35477R.setVisibility(0);
        }
        if (!c || d) {
            this.f35472M.setVisibility(8);
            this.f35473N.setVisibility(8);
            return;
        }
        m3446H();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f35470K.m19623a();
        m3413n();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStop() {
        /*
            r3 = this;
            r0 = r3
            super.onStop()
            java.lang.String r0 = "MainActivity"
            java.lang.String r1 = "call onStop"
            p131c.p431l.p432a.p468n.C6850i.m19579a(r0, r1)
            r0 = r3
            androidx.viewpager.widget.ViewPager r0 = r0.f35498v
            int r0 = r0.getCurrentItem()
            if (r0 != 0) goto L_0x0058
            r0 = r3
            android.content.Context r0 = r0.f35626r
            p131c.p431l.p432a.p468n.C6852k.m19564a(r0)
            r0 = r3
            int r0 = r0.m3403s()
            if (r0 <= 0) goto L_0x0058
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "updateAllCallLog2Read()"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r3
            androidx.viewpager.widget.ViewPager r1 = r1.f35498v
            int r1 = r1.getCurrentItem()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "MainActivity"
            r1 = r4
            java.lang.String r1 = r1.toString()
            p131c.p431l.p432a.p468n.C6850i.m19579a(r0, r1)
            r0 = r3
            c.l.a.b.c.b r0 = r0.f35460A
            int r0 = r0.m19916x()
            r0 = 1
            r5 = r0
            goto L_0x005a
        L_0x0058:
            r0 = 0
            r5 = r0
        L_0x005a:
            r0 = r5
            if (r0 == 0) goto L_0x0062
            r0 = r3
            r0.m3405r()
        L_0x0062:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netqin.p525cm.antiharass.p527ui.activity.MainActivity.onStop():void");
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i == 20) {
            this.f35469J.m20003a();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (C6793d.m19782d()) {
            return;
        }
        if (z) {
            this.f35471L.m20019e();
        } else {
            this.f35471L.m20021d();
        }
    }

    /* renamed from: p */
    public final void m3409p() {
        this.f35460A.m19917w();
        if (C6865a.m19516a(this.f35626r) && this.f35460A.m19931i() > 3 && !this.f35460A.m19926n() && !this.f35460A.m19930j() && !this.f35476Q) {
            m3450E();
            this.f35476Q = true;
            this.f35460A.m19960a(true);
        }
    }

    /* renamed from: q */
    public final void m3407q() {
        C6851j<NQSPFManager.EnumNetQin> jVar = NQSPFManager.m3184a(this.f35626r).f35743b;
        int a = jVar.m19574a(NQSPFManager.EnumNetQin.wifi_doctor_state);
        C6850i.m19580a("检查状态Self_AD:" + a);
        if (a == 0) {
            C6850i.m19580a("Self_AD状态设置为:SHOULD_FIRST_SHOW");
            jVar.m19568b((C6851j<NQSPFManager.EnumNetQin>) NQSPFManager.EnumNetQin.wifi_doctor_state, 1);
        }
    }

    /* renamed from: r */
    public final void m3405r() {
        C6741c.m19914a(this.f35626r, "com.netqin.antiharass.refresh_tab");
        C6741c.m19914a(this.f35626r, "com.netqin.antiharass.refresh");
        C6741c.m19914a(this.f35626r, "com.netqin.antiharass.refresh_view");
    }

    /* renamed from: s */
    public final int m3403s() {
        return this.f35460A.m19946d(0);
    }

    /* renamed from: t */
    public final void m3401t() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        this.f35464E = i / this.f35500x.size();
        this.f35499w = ((i / this.f35500x.size()) - this.f35464E) / 2;
        C6850i.m19579a("Antiharass", "bmpW=" + this.f35464E + " screenW=" + i + " mOffSet=" + this.f35499w);
        Matrix matrix = new Matrix();
        StringBuilder sb = new StringBuilder();
        sb.append("mInitPosX=");
        sb.append(0);
        C6850i.m19579a("xxxxxxxxxx", sb.toString());
        matrix.postTranslate((float) this.f35499w, 0.0f);
    }

    /* renamed from: u */
    public final void m3399u() {
        this.f35468I = this.f35460A.m19946d(0);
        C6850i.m19579a("MainActivity", "mUnreadCallCount:" + this.f35468I);
        if (this.f35468I > 0) {
            this.f35496t.setVisibility(0);
            this.f35496t.setText(getString(2131558474, new Object[]{String.valueOf(this.f35468I)}));
            return;
        }
        this.f35496t.setVisibility(8);
    }

    /* renamed from: v */
    public final void m3397v() {
        this.f35500x = new ArrayList();
        this.f35500x.add(m3432a("calllog", new Intent(this.f35626r, BlockCallLogHistoryActivity.class)));
        this.f35500x.add(m3432a("block_rule", new Intent(this.f35626r, BlockRuleActivity.class)));
        m3401t();
        C9121z zVar = new C9121z(this.f35500x);
        this.f35498v.setAdapter(zVar);
        this.f35498v.m36935a(new C9120y());
        this.f35498v.setOffscreenPageLimit(zVar.getCount() - 1);
        m3443K();
    }

    /* renamed from: w */
    public final void m3395w() {
        AnimatorSet animatorSet = this.f35492i0;
        if (animatorSet != null && animatorSet.isRunning()) {
            return;
        }
        if (C6793d.m19782d()) {
            m3428c(-1);
            return;
        }
        if (C6865a.m19516a(this.f35626r) && !this.f35476Q) {
            if (C6490b.m20696c("13")) {
                this.f35493j0.m20709a(new C9096a());
                int adType = C6490b.m20699b("13").getAdType();
                if (adType == 1) {
                    m3452D();
                    return;
                } else if (adType == 3) {
                    this.f35493j0.m20697c(this.f35479T);
                    return;
                }
            } else if (m3411o() || m3448F() || m3438a((C6765b) null)) {
                return;
            }
        }
        m3428c(-1);
    }

    /* renamed from: x */
    public final void m3393x() {
        C6850i.m19576c("MainActivity", "refreshData:");
        this.f35468I = m3403s();
        C6850i.m19576c("MainActivity", "refreshData:mUnreadCallCount--" + this.f35468I);
        if (this.f35468I > 0) {
            TextView textView = this.f35496t;
            textView.setText("" + this.f35468I);
            if (this.f35468I > 99) {
                this.f35496t.setText("99+");
            }
            this.f35496t.setVisibility(0);
        } else {
            this.f35496t.setVisibility(8);
        }
        if (this.f35461B) {
            this.f35498v.setCurrentItem(this.f35462C);
            C6850i.m19579a("MainActivity", "tab:" + this.f35462C);
        }
        C6850i.m19576c("MainActivity", "tab:" + this.f35462C);
    }

    /* renamed from: y */
    public final void m3391y() {
        this.f35502z = new C9118w(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.netqin.antiharass.delete");
        intentFilter.addAction("com.netqin.antiharass.insert");
        intentFilter.addAction("com.netqin.antiharass.refresh");
        intentFilter.addAction("com.netqin.antiharass.update");
        intentFilter.addAction("com.netqin.antiharass.refresh_tab");
        registerReceiver(this.f35502z, intentFilter);
    }

    /* renamed from: z */
    public final void m3389z() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("calllog");
        arrayList.add("block_rule");
        C6844e.m19589a(this.f35500x, this.f35501y, arrayList);
        this.f35501y = null;
    }
}
