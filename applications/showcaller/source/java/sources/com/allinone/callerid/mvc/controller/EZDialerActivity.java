package com.allinone.callerid.mvc.controller;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$mipmap;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.customview.EZKeyboardView;
import com.allinone.callerid.dialog.DialogC2582c;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity;
import com.allinone.callerid.p136b.C2172e;
import com.allinone.callerid.p136b.C2201l;
import com.allinone.callerid.p162i.p163a.p189s.AbstractC2964b;
import com.allinone.callerid.p162i.p163a.p189s.AbstractC2965c;
import com.allinone.callerid.p162i.p163a.p189s.AbstractC2966d;
import com.allinone.callerid.p162i.p163a.p189s.C2961a;
import com.allinone.callerid.receiver.MyReceiver;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3720d;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p205t9.C3859d;
import com.github.clans.fab.FloatingActionButton;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity.class */
public class EZDialerActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    public static boolean f9993u = false;

    /* renamed from: v */
    public static boolean f9994v = true;

    /* renamed from: A */
    private C2172e f9995A;

    /* renamed from: G */
    private EZKeyboardView f10001G;

    /* renamed from: H */
    private FloatingActionButton f10002H;

    /* renamed from: I */
    private String f10003I;

    /* renamed from: J */
    private ArrayList<CallLogBean> f10004J;

    /* renamed from: K */
    private ListView f10005K;

    /* renamed from: L */
    private C2201l f10006L;

    /* renamed from: M */
    private DialogC2582c f10007M;

    /* renamed from: P */
    private Animation f10010P;

    /* renamed from: Q */
    private Animation f10011Q;

    /* renamed from: S */
    private ImageView f10013S;

    /* renamed from: T */
    private ImageView f10014T;

    /* renamed from: U */
    private ImageView f10015U;

    /* renamed from: V */
    private String f10016V;

    /* renamed from: W */
    private String f10017W;

    /* renamed from: Y */
    SubscriptionManager f10019Y;

    /* renamed from: Z */
    private ProgressBar f10020Z;

    /* renamed from: a0 */
    private C3101s f10021a0;

    /* renamed from: b0 */
    private FrameLayout f10022b0;

    /* renamed from: c0 */
    private int f10023c0;

    /* renamed from: d0 */
    private int f10024d0;

    /* renamed from: e0 */
    private int f10025e0;

    /* renamed from: f0 */
    private boolean f10026f0;

    /* renamed from: g0 */
    private boolean f10027g0;

    /* renamed from: x */
    private ImageView f10030x;

    /* renamed from: y */
    private ImageView f10031y;

    /* renamed from: z */
    private ListView f10032z;

    /* renamed from: w */
    private final String f10029w = "EZDialerActivity";

    /* renamed from: B */
    private List<CallLogBean> f9996B = new ArrayList();

    /* renamed from: C */
    private List<CallLogBean> f9997C = new ArrayList();

    /* renamed from: D */
    private ArrayList<CallLogBean> f9998D = new ArrayList<>();

    /* renamed from: E */
    private List<String> f9999E = new ArrayList();

    /* renamed from: F */
    private HashMap<String, Integer> f10000F = new HashMap<>();

    /* renamed from: N */
    private ArrayList<CallLogBean> f10008N = new ArrayList<>();

    /* renamed from: O */
    private ArrayList<CallLogBean> f10009O = new ArrayList<>();

    /* renamed from: R */
    private int f10012R = 0;

    /* renamed from: X */
    List<SubscriptionInfo> f10018X = new ArrayList();

    /* renamed from: h0 */
    private HandlerC3100r f10028h0 = new HandlerC3100r(this);

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$a.class */
    public class View$OnClickListenerC3082a implements View.OnClickListener {
        View$OnClickListenerC3082a() {
            EZDialerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (EZDialerActivity.this.f10003I.length() <= 0) {
                EZDialerActivity.this.m26009V0();
                return;
            }
            EZDialerActivity.this.f10003I = "";
            EZDialerActivity.this.f10001G.m27429e();
            EZDialerActivity.this.f9998D.clear();
            EZDialerActivity.this.f10005K.setVisibility(8);
            EZDialerActivity.this.f10032z.setVisibility(0);
            if (EZDialerActivity.this.f10026f0) {
                EZDialerActivity.this.f10030x.setImageResource(R$drawable.ic_back_oppo);
            } else {
                EZDialerActivity.this.f10030x.setImageResource(R$drawable.ic_back);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$b.class */
    public class View$OnClickListenerC3083b implements View.OnClickListener {
        View$OnClickListenerC3083b() {
            EZDialerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EZDialerActivity.this.startActivity(new Intent(EZDialerActivity.this, ContactsListActivity.class));
            EZDialerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$c.class */
    public class View$OnClickListenerC3084c implements View.OnClickListener {
        View$OnClickListenerC3084c() {
            EZDialerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EZDialerActivity.this.startActivity(new Intent(EZDialerActivity.this, QuickContactActivity.class));
            EZDialerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$d.class */
    public class animationAnimation$AnimationListenerC3085d implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3085d() {
            EZDialerActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            EZDialerActivity.this.f10001G.setVisibility(8);
            EZDialerActivity.f9994v = true;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$e.class */
    public class animationAnimation$AnimationListenerC3086e implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3086e() {
            EZDialerActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (!EZDialerActivity.this.f10027g0) {
                EZDialerActivity.this.f10027g0 = true;
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$f.class */
    public class C3087f implements AbstractC2964b {

        /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$f$a.class */
        class RunnableC3088a implements Runnable {
            RunnableC3088a() {
                C3087f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (EZDialerActivity.this.f9996B == null || EZDialerActivity.this.f9996B.size() == 0) {
                    return;
                }
                EZDialerActivity.this.m26008W0();
                EZDialerActivity.this.f10028h0.sendEmptyMessage(112);
                EZDialerActivity.this.m26000a1();
                EZDialerActivity.this.f10028h0.sendEmptyMessage(112);
            }
        }

        C3087f() {
            EZDialerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p189s.AbstractC2964b
        /* renamed from: a */
        public void mo25969a(List<CallLogBean> list, List<String> list2, HashMap<String, Integer> hashMap) {
            if (list == null || list.size() <= 0) {
                EZDialerActivity.this.f10020Z.setVisibility(8);
                EZDialerActivity.this.m25990f1(true);
                if (EZDialerActivity.this.f9996B != null && EZDialerActivity.this.f9996B.size() > 0) {
                    EZDialerActivity.this.f9996B.clear();
                }
                EZDialerActivity.this.f9995A.notifyDataSetChanged();
                return;
            }
            EZDialerActivity.this.f9996B = list;
            EZDialerActivity.this.f9999E = list2;
            EZDialerActivity.this.f10000F = hashMap;
            EZDialerActivity.this.f9995A.m27882e(EZDialerActivity.this.f9996B, EZDialerActivity.this.f10000F);
            EZDialerActivity.this.f9995A.notifyDataSetChanged();
            EZDialerActivity.this.f10020Z.setVisibility(8);
            C3772i0.m24190a().f12015b.execute(new RunnableC3088a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$g.class */
    public class C3089g implements AbstractC2965c {
        C3089g() {
            EZDialerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p189s.AbstractC2965c
        /* renamed from: a */
        public void mo25968a(List<CallLogBean> list, List<CallLogBean> list2) {
            if (list != null) {
                EZDialerActivity.this.f9996B = list;
            }
            if (list2 != null) {
                EZDialerActivity.this.f9997C = list2;
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$h.class */
    public class View$OnClickListenerC3090h implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Context f10041d;

        View$OnClickListenerC3090h(Context context) {
            EZDialerActivity.this = r4;
            this.f10041d = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131296485) {
                EZDialerActivity.this.f10007M.dismiss();
            } else if (id != 2131296733) {
            } else {
                C3810q.m24071b().m24070c("createshortcut_dialog_click");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "手机系统：" + Build.VERSION.SDK_INT);
                }
                if (Build.VERSION.SDK_INT < 26) {
                    if (C3711a1.m24623K()) {
                        C3720d.m24426d(EZDialerActivity.this.getApplicationContext());
                        C3711a1.m24506o1(false);
                    }
                    EZDialerActivity.this.f10007M.dismiss();
                    return;
                }
                ShortcutManager shortcutManager = (ShortcutManager) this.f10041d.getSystemService("shortcut");
                if (!shortcutManager.isRequestPinShortcutSupported()) {
                    return;
                }
                Intent intent = new Intent(EZDialerActivity.this, EZDialerActivity.class);
                intent.setAction("android.intent.action.VIEW");
                shortcutManager.requestPinShortcut(new ShortcutInfo.Builder(this.f10041d, "only id").setIcon(Icon.createWithResource(this.f10041d, (int) R$mipmap.ic_launcher)).setShortLabel(EZDialerActivity.this.getResources().getString(R$string.shortcut_dialer)).setIntent(intent).build(), PendingIntent.getBroadcast(this.f10041d, 0, new Intent(this.f10041d, MyReceiver.class), 201326592).getIntentSender());
                C3711a1.m24506o1(false);
                EZDialerActivity.this.f10007M.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$i.class */
    public class RunnableC3091i implements Runnable {
        RunnableC3091i() {
            EZDialerActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            EZDialerActivity.this.m26002Z0();
            EZDialerActivity.this.m25990f1(true);
            EZDialerActivity.this.f10003I = "";
            EZDialerActivity.this.m26011T0();
            EZDialerActivity.this.f9996B = new ArrayList();
            EZDialerActivity eZDialerActivity = EZDialerActivity.this;
            eZDialerActivity.m25998b1(eZDialerActivity.f9996B);
            EZDialerActivity eZDialerActivity2 = EZDialerActivity.this;
            eZDialerActivity2.m25994d1(eZDialerActivity2.f10008N, EZDialerActivity.this.f10000F);
            EZDialerActivity.this.m26006X0();
            EZDialerActivity.this.m25996c1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$j.class */
    public class C3092j implements AdapterView.OnItemClickListener {
        C3092j() {
            EZDialerActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (EZDialerActivity.this.f9996B == null || EZDialerActivity.this.f9996B.size() == 0) {
                return;
            }
            CallLogBean callLogBean = (CallLogBean) EZDialerActivity.this.f9996B.get(i);
            if (callLogBean.m24918Y()) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_tony", callLogBean);
                intent.putExtras(bundle);
                intent.setClass(EZDialerActivity.this, ContactActivity.class);
                EZDialerActivity.this.startActivity(intent);
                EZDialerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            }
            Intent intent2 = new Intent();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("contact_tony", callLogBean);
            intent2.putExtras(bundle2);
            intent2.setClass(EZDialerActivity.this, UnknownContactActivity.class);
            EZDialerActivity.this.startActivity(intent2);
            EZDialerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$k.class */
    public class C3093k implements AbsListView.OnScrollListener {
        C3093k() {
            EZDialerActivity.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (EZDialerActivity.this.f10001G.getVisibility() != 0 || !EZDialerActivity.f9994v) {
                return;
            }
            EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10024d0);
            EZDialerActivity.this.m25990f1(false);
            EZDialerActivity.f9994v = false;
            EZDialerActivity.this.f10015U.setVisibility(8);
            EZDialerActivity.this.f10013S.setVisibility(8);
            EZDialerActivity.this.f10014T.setVisibility(8);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$l.class */
    public class C3094l implements AdapterView.OnItemClickListener {
        C3094l() {
            EZDialerActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (EZDialerActivity.this.f10008N == null || EZDialerActivity.this.f10008N.size() == 0) {
                return;
            }
            CallLogBean callLogBean = (CallLogBean) EZDialerActivity.this.f10008N.get(i);
            try {
                if (!C3714b1.m24448j(EZDialerActivity.this)) {
                    C3809p0.m24078a(EZDialerActivity.this.getApplicationContext(), callLogBean.m24880o());
                } else if (C3711a1.m24639G()) {
                    C3714b1.m24454d(EZDialerActivity.this, C3711a1.m24504p(), callLogBean.m24880o());
                } else if (Build.VERSION.SDK_INT >= 22) {
                    C3714b1.m24439s(EZDialerActivity.this, callLogBean.m24880o());
                } else {
                    C3809p0.m24078a(EZDialerActivity.this.getApplicationContext(), callLogBean.m24880o());
                }
            } catch (Exception e) {
                Toast.makeText(EZDialerActivity.this.getApplicationContext(), EZDialerActivity.this.getResources().getString(R$string.no_phone_related), 1).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$m.class */
    public class C3095m implements AdapterView.OnItemLongClickListener {
        C3095m() {
            EZDialerActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return true;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$n.class */
    public class C3096n implements AbsListView.OnScrollListener {
        C3096n() {
            EZDialerActivity.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (EZDialerActivity.this.f10001G.getVisibility() != 0 || !EZDialerActivity.f9994v) {
                return;
            }
            EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10024d0);
            EZDialerActivity.this.m25990f1(false);
            EZDialerActivity.f9994v = false;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$o.class */
    public class C3097o implements EZKeyboardView.AbstractC2426b {
        C3097o() {
            EZDialerActivity.this = r4;
        }

        @Override // com.allinone.callerid.customview.EZKeyboardView.AbstractC2426b
        @SuppressLint({"StaticFieldLeak"})
        /* renamed from: a */
        public void mo25967a(String str, String str2) {
            try {
                EZDialerActivity.this.f10003I = str2;
                EZDialerActivity eZDialerActivity = EZDialerActivity.this;
                eZDialerActivity.f10003I = eZDialerActivity.f10003I.replaceAll("[ \\(\\)-]+", "");
                if (EZDialerActivity.this.f10003I.length() > 0) {
                    EZDialerActivity.this.f10030x.setImageResource(R$drawable.nav_close_white);
                    EZDialerActivity.this.f10021a0.filter(EZDialerActivity.this.f10003I);
                    EZDialerActivity.this.f10005K.setVisibility(0);
                    EZDialerActivity.this.f10032z.setVisibility(8);
                } else {
                    EZDialerActivity.this.f9998D.clear();
                    EZDialerActivity.this.f10005K.setVisibility(8);
                    EZDialerActivity.this.f10032z.setVisibility(0);
                    if (EZDialerActivity.this.f10026f0) {
                        EZDialerActivity.this.f10030x.setImageResource(R$drawable.ic_back_oppo);
                    } else {
                        EZDialerActivity.this.f10030x.setImageResource(R$drawable.ic_back);
                    }
                }
                EZDialerActivity.this.f10032z.setSelection(0);
                if (!"".equals(EZDialerActivity.this.f10003I)) {
                    EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10025e0);
                } else {
                    EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10023c0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$p.class */
    public class View$OnClickListenerC3098p implements View.OnClickListener {
        View$OnClickListenerC3098p() {
            EZDialerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (EZDialerActivity.this.f10001G.getVisibility() != 0) {
                    EZDialerActivity.this.m25990f1(true);
                    if (C3714b1.m24448j(EZDialerActivity.this.getApplicationContext())) {
                        EZDialerActivity.this.m26011T0();
                    }
                    if (EZDialerActivity.this.f10003I == null || EZDialerActivity.this.f10003I.equals("")) {
                        EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10023c0);
                    } else {
                        EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10025e0);
                    }
                } else if (EZDialerActivity.this.f10003I == null || EZDialerActivity.this.f10003I.equals("")) {
                    EZDialerActivity.this.f10002H.setImageResource(EZDialerActivity.this.f10024d0);
                    EZDialerActivity.this.m25990f1(false);
                } else {
                    EZDialerActivity.this.m26010U0();
                    if (!C3714b1.m24448j(EZDialerActivity.this.getApplicationContext())) {
                        C3809p0.m24078a(EZDialerActivity.this.getApplicationContext(), EZDialerActivity.this.f10003I);
                        return;
                    }
                    int m24504p = C3711a1.m24504p();
                    if (m24504p != -1) {
                        EZDialerActivity eZDialerActivity = EZDialerActivity.this;
                        C3714b1.m24454d(eZDialerActivity, m24504p, eZDialerActivity.f10003I);
                    } else if (Build.VERSION.SDK_INT < 22) {
                        C3809p0.m24078a(EZDialerActivity.this.getApplicationContext(), EZDialerActivity.this.f10003I);
                    } else {
                        EZDialerActivity eZDialerActivity2 = EZDialerActivity.this;
                        C3714b1.m24439s(eZDialerActivity2, eZDialerActivity2.f10003I);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$q.class */
    public class C3099q implements AbstractC2966d {
        C3099q() {
            EZDialerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p189s.AbstractC2966d
        /* renamed from: a */
        public void mo25966a(ArrayList<CallLogBean> arrayList) {
            EZDialerActivity.this.f10004J = arrayList;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$r.class */
    private static class HandlerC3100r extends Handler {

        /* renamed from: a */
        private WeakReference<Context> f10052a;

        HandlerC3100r(Context context) {
            this.f10052a = new WeakReference<>(context);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            EZDialerActivity eZDialerActivity = (EZDialerActivity) this.f10052a.get();
            if (eZDialerActivity == null || message.what != 112 || eZDialerActivity.f9996B == null || eZDialerActivity.f9996B.size() <= 0) {
                return;
            }
            eZDialerActivity.f9995A.m27882e(eZDialerActivity.f9996B, null);
            eZDialerActivity.f9995A.notifyDataSetChanged();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.EZDialerActivity$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/EZDialerActivity$s.class */
    public class C3101s extends Filter {
        private C3101s() {
            EZDialerActivity.this = r4;
        }

        /* synthetic */ C3101s(EZDialerActivity eZDialerActivity, RunnableC3091i runnableC3091i) {
            this();
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            if (EZDialerActivity.this.f10009O != null) {
                EZDialerActivity.this.f10009O.clear();
                if (EZDialerActivity.this.f10004J != null && EZDialerActivity.this.f10004J.size() > 0) {
                    ArrayList m23935d = TextUtils.isEmpty(charSequence) ? EZDialerActivity.this.f10004J : C3859d.m23935d(EZDialerActivity.this.f10004J, charSequence.toString());
                    EZDialerActivity.this.f10012R = m23935d.size();
                    EZDialerActivity.this.f10009O.addAll(m23935d);
                }
                if (EZDialerActivity.this.f9997C != null && EZDialerActivity.this.f9997C.size() > 0) {
                    EZDialerActivity.this.f10009O.addAll(TextUtils.isEmpty(charSequence) ? EZDialerActivity.this.f9997C : C3859d.m23935d(EZDialerActivity.this.f9997C, charSequence.toString()));
                }
            }
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (EZDialerActivity.this.f10009O != null) {
                filterResults.count = EZDialerActivity.this.f10009O.size();
                filterResults.values = EZDialerActivity.this.f10009O;
            } else {
                filterResults.count = 0;
                filterResults.values = null;
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            List list = (List) filterResults.values;
            if (list != null) {
                if (EZDialerActivity.this.f10008N != null) {
                    EZDialerActivity.this.f10008N.clear();
                    EZDialerActivity.this.f10008N.addAll(list);
                }
                EZDialerActivity.this.f10006L.m27857b(EZDialerActivity.this.f10008N, EZDialerActivity.this.f10012R);
            }
        }
    }

    /* renamed from: T0 */
    public void m26011T0() {
        try {
            if (C0586a.m33353a(getApplicationContext(), "android.permission.READ_PHONE_STATE") != 0) {
                return;
            }
            int m24504p = C3711a1.m24504p();
            if (!C3714b1.m24448j(this)) {
                ImageView imageView = this.f10013S;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                ImageView imageView2 = this.f10014T;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                ImageView imageView3 = this.f10015U;
                if (imageView3 == null) {
                    return;
                }
                imageView3.setVisibility(8);
                return;
            }
            if (m24504p == 0) {
                ImageView imageView4 = this.f10013S;
                if (imageView4 != null) {
                    imageView4.setVisibility(0);
                }
                ImageView imageView5 = this.f10014T;
                if (imageView5 != null) {
                    imageView5.setVisibility(8);
                }
                ImageView imageView6 = this.f10015U;
                if (imageView6 != null) {
                    imageView6.setVisibility(8);
                }
            } else if (m24504p == 1) {
                ImageView imageView7 = this.f10013S;
                if (imageView7 != null) {
                    imageView7.setVisibility(8);
                }
                ImageView imageView8 = this.f10014T;
                if (imageView8 != null) {
                    imageView8.setVisibility(0);
                }
                ImageView imageView9 = this.f10015U;
                if (imageView9 != null) {
                    imageView9.setVisibility(8);
                }
            } else if (m24504p == -1) {
                ImageView imageView10 = this.f10013S;
                if (imageView10 != null) {
                    imageView10.setVisibility(8);
                }
                ImageView imageView11 = this.f10014T;
                if (imageView11 != null) {
                    imageView11.setVisibility(8);
                }
                ImageView imageView12 = this.f10015U;
                if (imageView12 != null) {
                    imageView12.setVisibility(0);
                }
            }
            if (Build.VERSION.SDK_INT < 22) {
                return;
            }
            SubscriptionManager from = SubscriptionManager.from(this);
            this.f10019Y = from;
            List<SubscriptionInfo> activeSubscriptionInfoList = from.getActiveSubscriptionInfoList();
            this.f10018X = activeSubscriptionInfoList;
            if (activeSubscriptionInfoList == null || activeSubscriptionInfoList.size() != 2) {
                this.f10016V = "";
                this.f10017W = "";
                return;
            }
            SubscriptionInfo subscriptionInfo = this.f10018X.get(0);
            SubscriptionInfo subscriptionInfo2 = this.f10018X.get(1);
            if (subscriptionInfo == null || subscriptionInfo.getCarrierName() == null || "".equals(subscriptionInfo.getCarrierName())) {
                this.f10016V = "";
            } else {
                this.f10016V = subscriptionInfo.getCarrierName().toString();
            }
            if (subscriptionInfo2 == null || subscriptionInfo2.getCarrierName() == null || "".equals(subscriptionInfo2.getCarrierName())) {
                this.f10017W = "";
            } else {
                this.f10017W = subscriptionInfo2.getCarrierName().toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: U0 */
    public void m26010U0() {
        f9993u = true;
        if (C3711a1.m24599Q()) {
            C3711a1.m24534h1(true);
        }
    }

    /* renamed from: W0 */
    public void m26008W0() {
        C2961a.m26337a(this.f9996B, this.f9997C, new C3089g());
    }

    /* renamed from: X0 */
    public void m26006X0() {
        m26027C();
        C2961a.m26336b(new C3099q());
    }

    /* renamed from: Y0 */
    private void m26004Y0() {
        this.f10021a0 = new C3101s(this, null);
    }

    /* renamed from: Z0 */
    public void m26002Z0() {
        ((TextView) findViewById(R$id.tv_title_about)).setTypeface(C3739f1.m24359b());
        this.f10030x = (ImageView) findViewById(R$id.header_left_about);
        this.f10001G = (EZKeyboardView) findViewById(R$id.keyboard_view);
        this.f10002H = (FloatingActionButton) findViewById(R$id.activity_dial_button);
        this.f10023c0 = C3719c1.m24431b(this, R$attr.keyboard_down, R$drawable.keyboard_down);
        this.f10024d0 = C3719c1.m24431b(this, R$attr.keyboard_up, R$drawable.keyboard_up);
        this.f10025e0 = C3719c1.m24431b(this, R$attr.dial_button_icon, R$drawable.dial_button);
        ProgressBar progressBar = (ProgressBar) findViewById(R$id.progress_search);
        this.f10020Z = progressBar;
        if (Build.VERSION.SDK_INT <= 20) {
            progressBar.setVisibility(0);
        }
        this.f10013S = (ImageView) findViewById(R$id.iv_sim_switch1);
        this.f10014T = (ImageView) findViewById(R$id.iv_sim_switch2);
        this.f10015U = (ImageView) findViewById(R$id.iv_sim_ask);
        this.f10022b0 = (FrameLayout) findViewById(R$id.rl_sim_double);
        this.f10013S.setVisibility(8);
        this.f10014T.setVisibility(8);
        this.f10015U.setVisibility(8);
        this.f10013S.setOnClickListener(this);
        this.f10014T.setOnClickListener(this);
        this.f10015U.setOnClickListener(this);
        this.f10032z = (ListView) findViewById(R$id.ob_listview);
        this.f10005K = (ListView) findViewById(R$id.ob_listview_search);
        if (this.f10026f0) {
            this.f10030x.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f10030x.setOnClickListener(new View$OnClickListenerC3082a());
        ((ImageView) findViewById(R$id.lb_dialer_contacts)).setOnClickListener(new View$OnClickListenerC3083b());
        ImageView imageView = (ImageView) findViewById(R$id.lb_add_quick);
        this.f10031y = imageView;
        imageView.setOnClickListener(new View$OnClickListenerC3084c());
        this.f10010P = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_keyboardview);
        Animation loadAnimation = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_keyboardviewdown);
        this.f10011Q = loadAnimation;
        loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC3085d());
        this.f10010P.setAnimationListener(new animationAnimation$AnimationListenerC3086e());
    }

    /* renamed from: a1 */
    public void m26000a1() {
        this.f9996B = C2961a.m26334d(this.f9996B);
    }

    /* renamed from: b1 */
    public void m25998b1(List<CallLogBean> list) {
        if (this.f9995A == null) {
            C2172e c2172e = new C2172e(this, EZCallApplication.m26146c(), this.f10032z);
            this.f9995A = c2172e;
            this.f10032z.setAdapter((ListAdapter) c2172e);
        }
    }

    /* renamed from: c1 */
    public void m25996c1() {
        Uri data;
        String uri;
        String replace;
        String replace2;
        this.f10032z.setOnItemClickListener(new C3092j());
        this.f10032z.setOnScrollListener(new C3093k());
        this.f10005K.setOnItemClickListener(new C3094l());
        this.f10005K.setOnItemLongClickListener(new C3095m());
        this.f10005K.setOnScrollListener(new C3096n());
        this.f10001G.setNumberCallBack(new C3097o());
        this.f10002H.setImageResource(this.f10023c0);
        this.f10002H.setOnClickListener(new View$OnClickListenerC3098p());
        try {
            if (getIntent() != null) {
                String action = getIntent().getAction();
                if ("android.intent.action.DIAL".equals(action)) {
                    String dataString = getIntent().getDataString();
                    if (dataString != null && !"".equals(dataString) && (replace2 = dataString.replace("tel:", "")) != null && !"".equals(replace2)) {
                        this.f10003I = replace2;
                        this.f10001G.f8493f.setText(replace2);
                        BaseEditText baseEditText = this.f10001G.f8493f;
                        baseEditText.setSelection(baseEditText.getText().length());
                        this.f10002H.setImageResource(this.f10025e0);
                    }
                } else if ("android.intent.action.VIEW".equals(action) && (data = getIntent().getData()) != null && "tel".equals(data.getScheme()) && (uri = data.toString()) != null && !"".equals(uri) && (replace = uri.replace("tel:", "")) != null && !"".equals(replace)) {
                    this.f10003I = replace;
                    this.f10001G.f8493f.setText(replace);
                    BaseEditText baseEditText2 = this.f10001G.f8493f;
                    baseEditText2.setSelection(baseEditText2.getText().length());
                    this.f10002H.setImageResource(this.f10025e0);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d1 */
    public void m25994d1(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        C2201l c2201l = new C2201l(this, list, hashMap, this.f10005K);
        this.f10006L = c2201l;
        this.f10005K.setAdapter((ListAdapter) c2201l);
    }

    /* renamed from: e1 */
    private void m25992e1(Context context) {
        this.f10007M = new DialogC2582c(this, R$style.CustomDialog4, new View$OnClickListenerC3090h(context));
        C3810q.m24071b().m24070c("createshortcut_dialog_show");
        this.f10007M.show();
    }

    /* renamed from: f1 */
    public void m25990f1(boolean z) {
        if (!z) {
            this.f10031y.setVisibility(8);
            this.f10022b0.setVisibility(4);
            this.f10001G.startAnimation(this.f10011Q);
            return;
        }
        if (Build.VERSION.SDK_INT < 25) {
            this.f10031y.setVisibility(8);
        } else {
            this.f10031y.setVisibility(0);
        }
        this.f10022b0.setVisibility(0);
        this.f10001G.setVisibility(0);
        this.f10001G.startAnimation(this.f10010P);
    }

    /* renamed from: C */
    public void m26027C() {
        try {
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                return;
            }
            this.f9996B.clear();
            this.f9999E.clear();
            this.f10000F.clear();
            C2961a.m26335c(this.f9996B, this.f9999E, this.f10000F, new C3087f());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: V0 */
    public void m26009V0() {
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.iv_sim_ask /* 2131297058 */:
                Toast.makeText(this, getString(R$string.changesim1) + " " + this.f10016V, 0).show();
                C3711a1.m24522k1(true);
                C3711a1.m24590S0(0);
                m26011T0();
                C3810q.m24071b().m24070c(C3744g1.f11932f);
                C3810q.m24071b().m24070c(C3744g1.f11933g);
                return;
            case R$id.iv_sim_switch1 /* 2131297059 */:
                Toast.makeText(this, getString(R$string.changesim2) + " " + this.f10017W, 0).show();
                C3711a1.m24522k1(true);
                C3711a1.m24590S0(1);
                m26011T0();
                C3810q.m24071b().m24070c(C3744g1.f11932f);
                C3810q.m24071b().m24070c(C3744g1.f11934h);
                return;
            case R$id.iv_sim_switch2 /* 2131297060 */:
                Toast.makeText(this, (int) R$string.askalways, 0).show();
                C3711a1.m24522k1(false);
                C3711a1.m24590S0(-1);
                m26011T0();
                C3810q.m24071b().m24070c(C3744g1.f11932f);
                C3810q.m24071b().m24070c(C3744g1.f11935i);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_dialer);
            m26004Y0();
            boolean booleanValue = C3767h1.m24250f0(getApplicationContext()).booleanValue();
            this.f10026f0 = booleanValue;
            if (booleanValue && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            getWindow().getDecorView().post(new RunnableC3091i());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f10028h0.removeCallbacksAndMessages(null);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m26009V0();
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
        m26011T0();
        if (getIntent().getBooleanExtra("shortcutdial", false)) {
            C3810q.m24071b().m24070c("shortcut_dial");
        }
        if (!f9993u || !C3711a1.m24599Q() || !C3711a1.m24651D() || !C3711a1.m24619L()) {
            return;
        }
        m25992e1(getApplicationContext());
        C3711a1.m24482u1(false);
        C3711a1.m24534h1(false);
    }
}
