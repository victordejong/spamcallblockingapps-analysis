package com.allinone.callerid.p144d.p149d;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0951c;
import androidx.recyclerview.widget.GridLayoutManager;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity;
import com.allinone.callerid.callscreen.activitys.GuideUseActivity;
import com.allinone.callerid.callscreen.activitys.ManageDiyActivity;
import com.allinone.callerid.callscreen.activitys.OpenPerActivity;
import com.allinone.callerid.callscreen.activitys.SelectVideoActivity;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.RewardedAdInfo;
import com.allinone.callerid.customview.MyGridLayoutManager;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.p144d.p145a.C2457b;
import com.allinone.callerid.p144d.p147b.C2484d;
import com.allinone.callerid.p144d.p150e.C2545c;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p202gg.C3750b;
import com.allinone.callerid.util.p204j1.C3776a;
import com.github.jdsjlzx.recyclerview.C4568a;
import com.github.jdsjlzx.recyclerview.LRecyclerView;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
import p078c.p081b.p082a.p083g.AbstractC1828e;
import p078c.p081b.p082a.p083g.AbstractC1830g;
/* renamed from: com.allinone.callerid.d.d.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b.class */
public class View$OnClickListenerC2521b extends Fragment implements View.OnClickListener {

    /* renamed from: f0 */
    private Typeface f8898f0;

    /* renamed from: g0 */
    private View f8899g0;

    /* renamed from: h0 */
    private Context f8900h0;

    /* renamed from: i0 */
    private LRecyclerView f8901i0;

    /* renamed from: j0 */
    private C2457b f8902j0;

    /* renamed from: k0 */
    private ProgressBar f8903k0;

    /* renamed from: l0 */
    private LinearLayout f8904l0;

    /* renamed from: n0 */
    private FrameLayout f8906n0;

    /* renamed from: o0 */
    private C2535k f8907o0;

    /* renamed from: p0 */
    private ArrayList<HomeInfo> f8908p0;

    /* renamed from: q0 */
    private MainActivity f8909q0;

    /* renamed from: r0 */
    private MyGridLayoutManager f8910r0;

    /* renamed from: s0 */
    private AlertDialog f8911s0;

    /* renamed from: t0 */
    private boolean f8912t0;

    /* renamed from: u0 */
    private boolean f8913u0;

    /* renamed from: v0 */
    private boolean f8914v0;

    /* renamed from: w0 */
    private boolean f8915w0;

    /* renamed from: x0 */
    private boolean f8916x0;

    /* renamed from: y0 */
    private HomeInfo f8917y0;

    /* renamed from: z0 */
    private boolean f8918z0;

    /* renamed from: e0 */
    private final String f8897e0 = "PopularFragment";

    /* renamed from: m0 */
    private int f8905m0 = 1;

    /* renamed from: com.allinone.callerid.d.d.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$a.class */
    public class C2522a implements AbstractC1828e {

        /* renamed from: com.allinone.callerid.d.d.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$a$a.class */
        class C2523a implements C2545c.AbstractC2546a {
            C2523a() {
                C2522a.this = r4;
            }

            @Override // com.allinone.callerid.p144d.p150e.C2545c.AbstractC2546a
            /* renamed from: a */
            public void mo27139a(ArrayList<HomeInfo> arrayList, boolean z) {
                if (arrayList == null || arrayList.size() <= 0) {
                    View$OnClickListenerC2521b.this.f8901i0.setNoMore(true);
                    View$OnClickListenerC2521b.this.f8901i0.setLoadMoreEnabled(false);
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "homeInfos.size:" + arrayList.size());
                }
                View$OnClickListenerC2521b.this.f8902j0.m27281A(arrayList, false);
                View$OnClickListenerC2521b.this.f8902j0.m31967i();
                if (z) {
                    View$OnClickListenerC2521b.m27185d2(View$OnClickListenerC2521b.this);
                    View$OnClickListenerC2521b.this.f8901i0.m22269H1(arrayList.size());
                } else {
                    View$OnClickListenerC2521b.this.f8901i0.setNoMore(true);
                    View$OnClickListenerC2521b.this.f8901i0.setLoadMoreEnabled(false);
                }
                if (View$OnClickListenerC2521b.this.f8908p0 == null) {
                    View$OnClickListenerC2521b.this.f8908p0 = new ArrayList();
                }
                View$OnClickListenerC2521b.this.f8908p0.addAll(arrayList);
            }
        }

        C2522a() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // p078c.p081b.p082a.p083g.AbstractC1828e
        /* renamed from: a */
        public void mo27163a() {
            C2545c.m27141a(View$OnClickListenerC2521b.this.f8905m0, "download_count", false, new C2523a());
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$b.class */
    public class C2524b implements C2545c.AbstractC2546a {
        C2524b() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2545c.AbstractC2546a
        /* renamed from: a */
        public void mo27139a(ArrayList<HomeInfo> arrayList, boolean z) {
            View$OnClickListenerC2521b.this.f8903k0.setVisibility(8);
            if (arrayList == null || arrayList.size() <= 0) {
                View$OnClickListenerC2521b.this.f8901i0.m22269H1(0);
                return;
            }
            View$OnClickListenerC2521b.this.f8902j0.m27281A(arrayList, true);
            View$OnClickListenerC2521b.this.f8902j0.m31967i();
            if (z) {
                View$OnClickListenerC2521b.m27185d2(View$OnClickListenerC2521b.this);
                View$OnClickListenerC2521b.this.f8901i0.m22269H1(arrayList.size());
            } else {
                View$OnClickListenerC2521b.this.f8901i0.setNoMore(true);
                View$OnClickListenerC2521b.this.f8901i0.setLoadMoreEnabled(false);
            }
            if (View$OnClickListenerC2521b.this.f8908p0 == null) {
                View$OnClickListenerC2521b.this.f8908p0 = new ArrayList();
            }
            View$OnClickListenerC2521b.this.f8908p0.addAll(arrayList);
            View$OnClickListenerC2521b.this.m27166w2();
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$c.class */
    public class C2525c implements AbstractC1830g {
        C2525c() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // p078c.p081b.p082a.p083g.AbstractC1830g
        /* renamed from: a */
        public void mo27162a() {
            View$OnClickListenerC2521b.this.f8901i0.setNoMore(false);
            View$OnClickListenerC2521b.this.f8901i0.setLoadMoreEnabled(true);
            View$OnClickListenerC2521b.this.f8905m0 = 1;
            View$OnClickListenerC2521b.this.m27168u2(1, "download_count");
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$d.class */
    public class C2526d implements C4568a.AbstractC4572d {
        C2526d() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // com.github.jdsjlzx.recyclerview.C4568a.AbstractC4572d
        /* renamed from: a */
        public int mo22228a(GridLayoutManager gridLayoutManager, int i) {
            ArrayList<HomeInfo> m27280B;
            if (View$OnClickListenerC2521b.this.f8902j0 == null || (m27280B = View$OnClickListenerC2521b.this.f8902j0.m27280B()) == null || m27280B.size() > 0) {
            }
            return 1;
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$e.class */
    public class C2527e implements C2457b.AbstractC2462e {
        C2527e() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2457b.AbstractC2462e
        /* renamed from: a */
        public void mo27161a(HomeInfo homeInfo) {
            View$OnClickListenerC2521b.this.m27169t2(homeInfo);
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$f.class */
    public class C2528f implements C2457b.AbstractC2463f {
        C2528f() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2457b.AbstractC2463f
        /* renamed from: a */
        public void mo27160a(HomeInfo homeInfo) {
            try {
                if (C3776a.m24164a(View$OnClickListenerC2521b.this.f8900h0)) {
                    if (!homeInfo.isContacts_diy() && !homeInfo.isDefautl_diy()) {
                        Intent intent = new Intent(View$OnClickListenerC2521b.this.f8900h0, SelectVideoActivity.class);
                        intent.putExtra("is_from_main", true);
                        View$OnClickListenerC2521b.this.f8900h0.startActivity(intent);
                        View$OnClickListenerC2521b.this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                    View$OnClickListenerC2521b.this.f8900h0.startActivity(new Intent(View$OnClickListenerC2521b.this.f8900h0, ManageDiyActivity.class));
                    View$OnClickListenerC2521b.this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } else {
                    Intent intent2 = new Intent();
                    intent2.setClass(View$OnClickListenerC2521b.this.f8900h0, OpenPerActivity.class);
                    intent2.putExtra("homeinfo", homeInfo);
                    intent2.putExtra("is_diy", true);
                    View$OnClickListenerC2521b.this.f8900h0.startActivity(intent2);
                    View$OnClickListenerC2521b.this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$g.class */
    public class View$OnClickListenerC2529g implements View.OnClickListener {
        View$OnClickListenerC2529g() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (View$OnClickListenerC2521b.this.f8911s0 != null) {
                View$OnClickListenerC2521b.this.f8911s0.cancel();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$h.class */
    public class View$OnClickListenerC2530h implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8927d;

        /* renamed from: com.allinone.callerid.d.d.b$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$h$a.class */
        class C2531a implements C3750b.AbstractC3755e {
            C2531a() {
                View$OnClickListenerC2530h.this = r4;
            }

            @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3755e
            /* renamed from: a */
            public void mo24335a() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onUserEarnedReward");
                }
                View$OnClickListenerC2521b.this.f8918z0 = true;
            }

            @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3755e
            /* renamed from: b */
            public void mo24334b() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onAdShowedFullScreenContent");
                }
            }

            @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3755e
            /* renamed from: c */
            public void mo24333c() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onAdDismissedFullScreenContent_mUserEarnedReward:" + View$OnClickListenerC2521b.this.f8918z0);
                }
                if (View$OnClickListenerC2521b.this.f8918z0) {
                    View$OnClickListenerC2530h view$OnClickListenerC2530h = View$OnClickListenerC2530h.this;
                    View$OnClickListenerC2521b.this.m27164y2(view$OnClickListenerC2530h.f8927d);
                    View$OnClickListenerC2521b.this.f8918z0 = false;
                }
            }

            @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3755e
            /* renamed from: d */
            public void mo24332d() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onAdFailedToShowFullScreenContent");
                }
            }
        }

        View$OnClickListenerC2530h(HomeInfo homeInfo) {
            View$OnClickListenerC2521b.this = r4;
            this.f8927d = homeInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (View$OnClickListenerC2521b.this.f8911s0 != null) {
                View$OnClickListenerC2521b.this.f8911s0.cancel();
            }
            if (View$OnClickListenerC2521b.this.f8915w0) {
                View$OnClickListenerC2521b.this.m27164y2(this.f8927d);
            } else {
                C3750b.m24341b().m24339d(View$OnClickListenerC2521b.this.f8909q0, new C2531a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$i.class */
    public class C2532i implements C3750b.AbstractC3754d {
        C2532i() {
            View$OnClickListenerC2521b.this = r4;
        }

        @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3754d
        /* renamed from: a */
        public void mo24337a() {
        }

        @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3754d
        /* renamed from: b */
        public void mo24336b() {
            View$OnClickListenerC2521b.this.f8915w0 = true;
        }
    }

    /* renamed from: com.allinone.callerid.d.d.b$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$j.class */
    public class RunnableC2533j implements Runnable {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8931d;

        /* renamed from: com.allinone.callerid.d.d.b$j$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$j$a.class */
        class RunnableC2534a implements Runnable {
            RunnableC2534a() {
                RunnableC2533j.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1764a.m28939b(View$OnClickListenerC2521b.this.f8909q0).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
            }
        }

        RunnableC2533j(HomeInfo homeInfo) {
            View$OnClickListenerC2521b.this = r4;
            this.f8931d = homeInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardedAdInfo rewardedAdInfo = new RewardedAdInfo();
            rewardedAdInfo.setName(this.f8931d.getName());
            rewardedAdInfo.setDataId(this.f8931d.getData_id());
            C2484d.m27262b().m27263a(rewardedAdInfo);
            View$OnClickListenerC2521b.this.f8909q0.runOnUiThread(new RunnableC2534a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.d.b$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$k.class */
    public class C2535k extends BroadcastReceiver {

        /* renamed from: com.allinone.callerid.d.d.b$k$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/b$k$a.class */
        class C2536a implements C2545c.AbstractC2546a {
            C2536a() {
                C2535k.this = r4;
            }

            @Override // com.allinone.callerid.p144d.p150e.C2545c.AbstractC2546a
            /* renamed from: a */
            public void mo27139a(ArrayList<HomeInfo> arrayList, boolean z) {
                if (arrayList == null || arrayList.size() <= 0) {
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "刷新数据");
                }
                View$OnClickListenerC2521b.this.f8902j0.m27281A(arrayList, true);
                if (View$OnClickListenerC2521b.this.f8902j0 == null) {
                    return;
                }
                View$OnClickListenerC2521b.this.f8902j0.m31967i();
            }
        }

        private C2535k() {
            View$OnClickListenerC2521b.this = r4;
        }

        /* synthetic */ C2535k(View$OnClickListenerC2521b view$OnClickListenerC2521b, C2522a c2522a) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "Refresh");
            }
            if (View$OnClickListenerC2521b.this.f8902j0 == null || View$OnClickListenerC2521b.this.f8902j0.m27280B() == null || View$OnClickListenerC2521b.this.f8902j0.m27280B().size() <= 0) {
                View$OnClickListenerC2521b.this.f8905m0 = 1;
                View$OnClickListenerC2521b.this.m27168u2(1, "download_count");
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "刷新数据");
            }
            C2545c.m27140b(View$OnClickListenerC2521b.this.f8908p0, new C2536a());
        }
    }

    /* renamed from: d2 */
    static /* synthetic */ int m27185d2(View$OnClickListenerC2521b view$OnClickListenerC2521b) {
        int i = view$OnClickListenerC2521b.f8905m0;
        view$OnClickListenerC2521b.f8905m0 = i + 1;
        return i;
    }

    /* renamed from: s2 */
    private void m27170s2(View view) {
        this.f8901i0 = (LRecyclerView) view.findViewById(R$id.lrecyeleview);
        MyGridLayoutManager myGridLayoutManager = new MyGridLayoutManager(this.f8900h0, 2);
        this.f8910r0 = myGridLayoutManager;
        myGridLayoutManager.m32114z2(1);
        this.f8910r0.m27382f3(true);
        this.f8901i0.setLayoutManager(this.f8910r0);
        this.f8901i0.setHasFixedSize(true);
        this.f8901i0.setRefreshProgressStyle(22);
        this.f8901i0.setLoadingMoreProgressStyle(22);
        this.f8901i0.setItemAnimator(new C0951c());
        this.f8901i0.setOnLoadMoreListener(new C2522a());
        this.f8901i0.setOnRefreshListener(new C2525c());
        this.f8901i0.setPullRefreshEnabled(true);
        this.f8902j0 = new C2457b(this.f8900h0);
        C4568a c4568a = new C4568a(this.f8902j0);
        c4568a.m22229P(new C2526d());
        this.f8902j0.m27305E(new C2527e());
        this.f8902j0.m27304F(new C2528f());
        this.f8901i0.setAdapter(c4568a);
        this.f8903k0 = (ProgressBar) view.findViewById(R$id.progress_data);
        this.f8904l0 = (LinearLayout) view.findViewById(R$id.ll_no_net_collect);
        TextView textView = (TextView) view.findViewById(R$id.tv_no_net);
        TextView textView2 = (TextView) view.findViewById(R$id.tv_no_net_dec);
        ((FrameLayout) view.findViewById(R$id.flayout_retry)).setOnClickListener(this);
        textView.setTypeface(this.f8898f0);
        textView2.setTypeface(this.f8898f0);
        ((TextView) view.findViewById(R$id.tv_retry)).setTypeface(this.f8898f0);
        if (!C3725e.m24417b(this.f8900h0)) {
            this.f8904l0.setVisibility(0);
        } else {
            this.f8904l0.setVisibility(8);
        }
        this.f8906n0 = (FrameLayout) view.findViewById(R$id.rl_permission_tip);
        ((TextView) view.findViewById(R$id.tv_per_tip)).setTypeface(this.f8898f0);
        this.f8906n0.setOnClickListener(this);
        if (C2578f.m27071j() || C3776a.m24164a(this.f8900h0)) {
            return;
        }
        this.f8906n0.setVisibility(0);
    }

    /* renamed from: t2 */
    public void m27169t2(HomeInfo homeInfo) {
        try {
            if (homeInfo.isUnLock()) {
                if (this.f8909q0 != null) {
                    if (C3776a.m24164a(this.f8900h0)) {
                        Intent intent = new Intent(this.f8900h0, CallScreenPdtActivity.class);
                        intent.putExtra("homeinfo", homeInfo);
                        this.f8900h0.startActivity(intent);
                        this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    } else {
                        Intent intent2 = new Intent();
                        intent2.setClass(this.f8900h0, OpenPerActivity.class);
                        intent2.putExtra("homeinfo", homeInfo);
                        this.f8900h0.startActivity(intent2);
                        this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                }
            } else if (this.f8909q0 != null) {
                if (C3776a.m24164a(this.f8900h0)) {
                    m27165x2(homeInfo);
                } else {
                    Intent intent3 = new Intent();
                    intent3.setClass(this.f8900h0, OpenPerActivity.class);
                    intent3.putExtra("homeinfo", homeInfo);
                    this.f8900h0.startActivity(intent3);
                    this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    this.f8916x0 = true;
                    this.f8917y0 = homeInfo;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: v2 */
    private void m27167v2(HomeInfo homeInfo) {
        this.f8912t0 = false;
        this.f8913u0 = false;
        this.f8914v0 = false;
        this.f8915w0 = false;
        C3750b.m24341b().m24340c(new C2532i());
    }

    /* renamed from: w2 */
    public void m27166w2() {
        try {
            if (!C2578f.m27071j() || !C2568a.f8985d) {
                return;
            }
            m32942W1(new Intent(this.f8900h0, GuideUseActivity.class));
            this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            C2578f.m27060u(false);
            C3810q.m24071b().m24070c("callscreen_user_guide");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x2 */
    private void m27165x2(HomeInfo homeInfo) {
        try {
            View inflate = LayoutInflater.from(this.f8909q0).inflate(R$layout.view_dialog_rewarded_ad, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_content);
            ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_close);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_watch);
            textView.setTypeface(this.f8898f0);
            ((TextView) inflate.findViewById(R$id.tv_watch)).setTypeface(this.f8898f0);
            imageView.setOnClickListener(new View$OnClickListenerC2529g());
            frameLayout.setOnClickListener(new View$OnClickListenerC2530h(homeInfo));
            AlertDialog create = new AlertDialog.Builder(this.f8900h0).setView(inflate).create();
            this.f8911s0 = create;
            create.setCanceledOnTouchOutside(false);
            this.f8911s0.show();
            m27167v2(homeInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: y2 */
    public void m27164y2(HomeInfo homeInfo) {
        try {
            this.f8913u0 = true;
            C3810q.m24071b().m24070c("unlock_resouse");
            if (this.f8909q0 == null) {
                return;
            }
            C3772i0.m24190a().f12015b.execute(new RunnableC2533j(homeInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f8899g0 == null) {
            try {
                C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
                this.f8899g0 = layoutInflater.inflate(R$layout.fragment_popular, viewGroup, false);
                if (C3767h1.m24250f0(m32996B()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                    try {
                        if (m32896u() != null && m32896u().getWindow() != null) {
                            m32896u().getWindow().getDecorView().setLayoutDirection(1);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                this.f8898f0 = C3739f1.m24359b();
                m27170s2(this.f8899g0);
                this.f8907o0 = new C2535k(this, null);
                C1764a.m28939b(this.f8900h0).m28938c(this.f8907o0, new IntentFilter("com.allinone.callerid.REFRESH_HOME_DATA"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return this.f8899g0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
        try {
            Context context = this.f8900h0;
            if (context == null || this.f8907o0 == null) {
                return;
            }
            C1764a.m28939b(context).m28936e(this.f8907o0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K0 */
    public void mo25114K0() {
        ViewGroup viewGroup;
        super.mo25114K0();
        try {
            View view = this.f8899g0;
            if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
                return;
            }
            viewGroup.removeView(this.f8899g0);
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
                C2457b c2457b = this.f8902j0;
                if (c2457b == null) {
                    return;
                }
                c2457b.m31967i();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
        try {
            if (C3776a.m24164a(this.f8900h0)) {
                this.f8906n0.setVisibility(8);
            }
            if (!this.f8916x0 || this.f8917y0 == null || !C3776a.m24164a(this.f8900h0)) {
                return;
            }
            m27165x2(this.f8917y0);
            this.f8916x0 = false;
            this.f8917y0 = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296819) {
            m27168u2(1, "download_count");
        } else if (id != 2131297528) {
        } else {
            Intent intent = new Intent();
            intent.setClass(this.f8909q0, OpenPerActivity.class);
            startActivityForResult(intent, 10010);
            this.f8909q0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: u2 */
    public void m27168u2(int i, String str) {
        try {
            if (!C3725e.m24417b(EZCallApplication.m26146c())) {
                return;
            }
            this.f8904l0.setVisibility(8);
            this.f8903k0.setVisibility(0);
            this.f8902j0.f8749j = C2578f.m27072i();
            C2545c.m27141a(i, str, true, new C2524b());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: w0 */
    public void mo17298w0(int i, int i2, Intent intent) {
        super.mo17298w0(i, i2, intent);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("callscreen", "onActivityResult");
        }
        if (i != 10010 || !C3776a.m24164a(this.f8900h0)) {
            return;
        }
        this.f8906n0.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f8900h0 = context;
        this.f8909q0 = (MainActivity) context;
    }
}
