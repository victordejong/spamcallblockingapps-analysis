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
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.p202gg.C3750b;
import com.allinone.callerid.util.p204j1.C3776a;
import com.github.jdsjlzx.recyclerview.C4568a;
import com.github.jdsjlzx.recyclerview.LRecyclerView;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
import p078c.p081b.p082a.p083g.AbstractC1828e;
import p078c.p081b.p082a.p083g.AbstractC1830g;
/* renamed from: com.allinone.callerid.d.d.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a.class */
public class View$OnClickListenerC2505a extends Fragment implements View.OnClickListener {

    /* renamed from: f0 */
    private Typeface f8860f0;

    /* renamed from: g0 */
    private View f8861g0;

    /* renamed from: h0 */
    private Context f8862h0;

    /* renamed from: i0 */
    private MainActivity f8863i0;

    /* renamed from: j0 */
    private LRecyclerView f8864j0;

    /* renamed from: k0 */
    private C2457b f8865k0;

    /* renamed from: l0 */
    private boolean f8866l0;

    /* renamed from: m0 */
    private ProgressBar f8867m0;

    /* renamed from: n0 */
    private LinearLayout f8868n0;

    /* renamed from: p0 */
    private ArrayList<HomeInfo> f8870p0;

    /* renamed from: q0 */
    private C2519k f8871q0;

    /* renamed from: r0 */
    private AlertDialog f8872r0;

    /* renamed from: s0 */
    private boolean f8873s0;

    /* renamed from: t0 */
    private boolean f8874t0;

    /* renamed from: u0 */
    private boolean f8875u0;

    /* renamed from: v0 */
    private boolean f8876v0;

    /* renamed from: w0 */
    private boolean f8877w0;

    /* renamed from: x0 */
    private HomeInfo f8878x0;

    /* renamed from: y0 */
    private boolean f8879y0;

    /* renamed from: e0 */
    private final String f8859e0 = "PopularFragment";

    /* renamed from: o0 */
    private int f8869o0 = 1;

    /* renamed from: com.allinone.callerid.d.d.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$a.class */
    public class C2506a implements AbstractC1828e {

        /* renamed from: com.allinone.callerid.d.d.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$a$a.class */
        class C2507a implements C2545c.AbstractC2546a {
            C2507a() {
                C2506a.this = r4;
            }

            @Override // com.allinone.callerid.p144d.p150e.C2545c.AbstractC2546a
            /* renamed from: a */
            public void mo27139a(ArrayList<HomeInfo> arrayList, boolean z) {
                if (arrayList == null || arrayList.size() <= 0) {
                    View$OnClickListenerC2505a.this.f8864j0.setNoMore(true);
                    View$OnClickListenerC2505a.this.f8864j0.setLoadMoreEnabled(false);
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "homeInfos.size:" + arrayList.size());
                }
                View$OnClickListenerC2505a.this.f8865k0.m27281A(arrayList, false);
                View$OnClickListenerC2505a.this.f8865k0.m31967i();
                if (z) {
                    View$OnClickListenerC2505a.m27208e2(View$OnClickListenerC2505a.this);
                    View$OnClickListenerC2505a.this.f8864j0.m22269H1(arrayList.size());
                } else {
                    View$OnClickListenerC2505a.this.f8864j0.setNoMore(true);
                    View$OnClickListenerC2505a.this.f8864j0.setLoadMoreEnabled(false);
                }
                if (View$OnClickListenerC2505a.this.f8870p0 == null) {
                    View$OnClickListenerC2505a.this.f8870p0 = new ArrayList();
                }
                View$OnClickListenerC2505a.this.f8870p0.addAll(arrayList);
            }
        }

        C2506a() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // p078c.p081b.p082a.p083g.AbstractC1828e
        /* renamed from: a */
        public void mo27163a() {
            C2545c.m27141a(View$OnClickListenerC2505a.this.f8869o0, "publish_time", false, new C2507a());
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$b.class */
    public class C2508b implements C2545c.AbstractC2546a {
        C2508b() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2545c.AbstractC2546a
        /* renamed from: a */
        public void mo27139a(ArrayList<HomeInfo> arrayList, boolean z) {
            View$OnClickListenerC2505a.this.f8867m0.setVisibility(8);
            if (arrayList == null || arrayList.size() <= 0) {
                View$OnClickListenerC2505a.this.f8864j0.m22269H1(0);
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "homeInfos:" + arrayList.toString());
            }
            View$OnClickListenerC2505a.this.f8865k0.m27281A(arrayList, true);
            View$OnClickListenerC2505a.this.f8865k0.m31967i();
            if (z) {
                View$OnClickListenerC2505a.m27208e2(View$OnClickListenerC2505a.this);
                View$OnClickListenerC2505a.this.f8864j0.m22269H1(arrayList.size());
            } else {
                View$OnClickListenerC2505a.this.f8864j0.setNoMore(true);
                View$OnClickListenerC2505a.this.f8864j0.setLoadMoreEnabled(false);
            }
            if (View$OnClickListenerC2505a.this.f8870p0 == null) {
                View$OnClickListenerC2505a.this.f8870p0 = new ArrayList();
            }
            View$OnClickListenerC2505a.this.f8870p0.addAll(arrayList);
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$c.class */
    public class C2509c implements AbstractC1830g {
        C2509c() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // p078c.p081b.p082a.p083g.AbstractC1830g
        /* renamed from: a */
        public void mo27162a() {
            View$OnClickListenerC2505a.this.f8864j0.setNoMore(false);
            View$OnClickListenerC2505a.this.f8864j0.setLoadMoreEnabled(true);
            View$OnClickListenerC2505a.this.f8869o0 = 1;
            View$OnClickListenerC2505a.this.m27192u2(1, "publish_time");
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$d.class */
    public class C2510d implements C4568a.AbstractC4572d {
        C2510d() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // com.github.jdsjlzx.recyclerview.C4568a.AbstractC4572d
        /* renamed from: a */
        public int mo22228a(GridLayoutManager gridLayoutManager, int i) {
            ArrayList<HomeInfo> m27280B;
            if (View$OnClickListenerC2505a.this.f8865k0 == null || (m27280B = View$OnClickListenerC2505a.this.f8865k0.m27280B()) == null || m27280B.size() > 0) {
            }
            return 1;
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$e.class */
    public class C2511e implements C2457b.AbstractC2462e {
        C2511e() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2457b.AbstractC2462e
        /* renamed from: a */
        public void mo27161a(HomeInfo homeInfo) {
            View$OnClickListenerC2505a.this.m27193t2(homeInfo);
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$f.class */
    public class C2512f implements C2457b.AbstractC2463f {
        C2512f() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2457b.AbstractC2463f
        /* renamed from: a */
        public void mo27160a(HomeInfo homeInfo) {
            try {
                if (C3776a.m24164a(View$OnClickListenerC2505a.this.f8862h0)) {
                    if (!homeInfo.isContacts_diy() && !homeInfo.isDefautl_diy()) {
                        Intent intent = new Intent(View$OnClickListenerC2505a.this.f8862h0, SelectVideoActivity.class);
                        intent.putExtra("is_from_main", true);
                        View$OnClickListenerC2505a.this.f8862h0.startActivity(intent);
                        View$OnClickListenerC2505a.this.f8863i0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                    View$OnClickListenerC2505a.this.f8862h0.startActivity(new Intent(View$OnClickListenerC2505a.this.f8862h0, ManageDiyActivity.class));
                    View$OnClickListenerC2505a.this.f8863i0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } else {
                    Intent intent2 = new Intent();
                    intent2.setClass(View$OnClickListenerC2505a.this.f8862h0, OpenPerActivity.class);
                    intent2.putExtra("homeinfo", homeInfo);
                    intent2.putExtra("is_diy", true);
                    View$OnClickListenerC2505a.this.f8862h0.startActivity(intent2);
                    View$OnClickListenerC2505a.this.f8863i0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$g.class */
    public class View$OnClickListenerC2513g implements View.OnClickListener {
        View$OnClickListenerC2513g() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (View$OnClickListenerC2505a.this.f8872r0 != null) {
                View$OnClickListenerC2505a.this.f8872r0.cancel();
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$h.class */
    public class View$OnClickListenerC2514h implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8888d;

        /* renamed from: com.allinone.callerid.d.d.a$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$h$a.class */
        class C2515a implements C3750b.AbstractC3755e {
            C2515a() {
                View$OnClickListenerC2514h.this = r4;
            }

            @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3755e
            /* renamed from: a */
            public void mo24335a() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "onUserEarnedReward");
                }
                View$OnClickListenerC2505a.this.f8879y0 = true;
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
                    C3718c0.m24436a("tony", "onAdDismissedFullScreenContent_mUserEarnedReward:" + View$OnClickListenerC2505a.this.f8879y0);
                }
                if (View$OnClickListenerC2505a.this.f8879y0) {
                    View$OnClickListenerC2514h view$OnClickListenerC2514h = View$OnClickListenerC2514h.this;
                    View$OnClickListenerC2505a.this.m27189x2(view$OnClickListenerC2514h.f8888d);
                    View$OnClickListenerC2505a.this.f8879y0 = false;
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

        View$OnClickListenerC2514h(HomeInfo homeInfo) {
            View$OnClickListenerC2505a.this = r4;
            this.f8888d = homeInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (View$OnClickListenerC2505a.this.f8872r0 != null) {
                View$OnClickListenerC2505a.this.f8872r0.cancel();
            }
            if (View$OnClickListenerC2505a.this.f8876v0) {
                View$OnClickListenerC2505a.this.m27189x2(this.f8888d);
            } else {
                C3750b.m24341b().m24339d(View$OnClickListenerC2505a.this.f8863i0, new C2515a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$i.class */
    public class C2516i implements C3750b.AbstractC3754d {
        C2516i() {
            View$OnClickListenerC2505a.this = r4;
        }

        @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3754d
        /* renamed from: a */
        public void mo24337a() {
        }

        @Override // com.allinone.callerid.util.p202gg.C3750b.AbstractC3754d
        /* renamed from: b */
        public void mo24336b() {
            View$OnClickListenerC2505a.this.f8876v0 = true;
        }
    }

    /* renamed from: com.allinone.callerid.d.d.a$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$j.class */
    public class RunnableC2517j implements Runnable {

        /* renamed from: d */
        final /* synthetic */ HomeInfo f8892d;

        /* renamed from: com.allinone.callerid.d.d.a$j$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$j$a.class */
        class RunnableC2518a implements Runnable {
            RunnableC2518a() {
                RunnableC2517j.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1764a.m28939b(View$OnClickListenerC2505a.this.f8863i0).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
            }
        }

        RunnableC2517j(HomeInfo homeInfo) {
            View$OnClickListenerC2505a.this = r4;
            this.f8892d = homeInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardedAdInfo rewardedAdInfo = new RewardedAdInfo();
            rewardedAdInfo.setName(this.f8892d.getName());
            rewardedAdInfo.setDataId(this.f8892d.getData_id());
            C2484d.m27262b().m27263a(rewardedAdInfo);
            View$OnClickListenerC2505a.this.f8863i0.runOnUiThread(new RunnableC2518a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.d.a$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$k.class */
    public class C2519k extends BroadcastReceiver {

        /* renamed from: com.allinone.callerid.d.d.a$k$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/d/a$k$a.class */
        class C2520a implements C2545c.AbstractC2546a {
            C2520a() {
                C2519k.this = r4;
            }

            @Override // com.allinone.callerid.p144d.p150e.C2545c.AbstractC2546a
            /* renamed from: a */
            public void mo27139a(ArrayList<HomeInfo> arrayList, boolean z) {
                if (arrayList == null || arrayList.size() <= 0) {
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "LatestFragment刷新数据");
                }
                View$OnClickListenerC2505a.this.f8865k0.m27281A(arrayList, true);
                if (View$OnClickListenerC2505a.this.f8865k0 == null) {
                    return;
                }
                View$OnClickListenerC2505a.this.f8865k0.m31967i();
            }
        }

        private C2519k() {
            View$OnClickListenerC2505a.this = r4;
        }

        /* synthetic */ C2519k(View$OnClickListenerC2505a view$OnClickListenerC2505a, C2506a c2506a) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "LatestFragmentRefresh");
            }
            if (View$OnClickListenerC2505a.this.f8865k0 != null && View$OnClickListenerC2505a.this.f8865k0.m27280B() != null && View$OnClickListenerC2505a.this.f8865k0.m27280B().size() > 0) {
                C2545c.m27140b(View$OnClickListenerC2505a.this.f8870p0, new C2520a());
                return;
            }
            View$OnClickListenerC2505a.this.f8869o0 = 1;
            View$OnClickListenerC2505a.this.m27192u2(1, "publish_time");
        }
    }

    /* renamed from: e2 */
    static /* synthetic */ int m27208e2(View$OnClickListenerC2505a view$OnClickListenerC2505a) {
        int i = view$OnClickListenerC2505a.f8869o0;
        view$OnClickListenerC2505a.f8869o0 = i + 1;
        return i;
    }

    /* renamed from: s2 */
    private void m27194s2(View view) {
        this.f8864j0 = (LRecyclerView) view.findViewById(R$id.lrecyeleview);
        MyGridLayoutManager myGridLayoutManager = new MyGridLayoutManager(this.f8862h0, 2);
        myGridLayoutManager.m32114z2(1);
        this.f8864j0.setLayoutManager(myGridLayoutManager);
        this.f8864j0.setHasFixedSize(true);
        this.f8864j0.setRefreshProgressStyle(22);
        this.f8864j0.setLoadingMoreProgressStyle(22);
        this.f8864j0.setItemAnimator(new C0951c());
        this.f8864j0.setOnLoadMoreListener(new C2506a());
        this.f8864j0.setOnRefreshListener(new C2509c());
        this.f8864j0.setPullRefreshEnabled(true);
        this.f8865k0 = new C2457b(this.f8862h0);
        C4568a c4568a = new C4568a(this.f8865k0);
        c4568a.m22229P(new C2510d());
        this.f8865k0.m27305E(new C2511e());
        this.f8865k0.m27304F(new C2512f());
        this.f8864j0.setAdapter(c4568a);
        this.f8867m0 = (ProgressBar) view.findViewById(R$id.progress_data);
        this.f8868n0 = (LinearLayout) view.findViewById(R$id.ll_no_net_collect);
        TextView textView = (TextView) view.findViewById(R$id.tv_no_net);
        TextView textView2 = (TextView) view.findViewById(R$id.tv_no_net_dec);
        ((FrameLayout) view.findViewById(R$id.flayout_retry)).setOnClickListener(this);
        textView.setTypeface(this.f8860f0);
        textView2.setTypeface(this.f8860f0);
        ((TextView) view.findViewById(R$id.tv_retry)).setTypeface(this.f8860f0);
        if (!C3725e.m24417b(this.f8862h0)) {
            this.f8868n0.setVisibility(0);
        } else {
            this.f8868n0.setVisibility(8);
        }
    }

    /* renamed from: t2 */
    public void m27193t2(HomeInfo homeInfo) {
        try {
            if (homeInfo.isUnLock()) {
                if (this.f8863i0 != null) {
                    if (C3776a.m24164a(this.f8862h0)) {
                        Intent intent = new Intent(this.f8862h0, CallScreenPdtActivity.class);
                        intent.putExtra("homeinfo", homeInfo);
                        this.f8862h0.startActivity(intent);
                        this.f8863i0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    } else {
                        Intent intent2 = new Intent();
                        intent2.setClass(this.f8862h0, OpenPerActivity.class);
                        intent2.putExtra("homeinfo", homeInfo);
                        this.f8862h0.startActivity(intent2);
                        this.f8863i0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                }
            } else if (this.f8863i0 != null) {
                if (C3776a.m24164a(this.f8862h0)) {
                    m27190w2(homeInfo);
                } else {
                    Intent intent3 = new Intent();
                    intent3.setClass(this.f8862h0, OpenPerActivity.class);
                    intent3.putExtra("homeinfo", homeInfo);
                    this.f8862h0.startActivity(intent3);
                    this.f8863i0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    this.f8877w0 = true;
                    this.f8878x0 = homeInfo;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: u2 */
    public void m27192u2(int i, String str) {
        if (C3725e.m24417b(this.f8862h0)) {
            this.f8868n0.setVisibility(8);
            this.f8867m0.setVisibility(0);
            this.f8865k0.f8749j = C2578f.m27072i();
            C2545c.m27141a(i, str, true, new C2508b());
        }
    }

    /* renamed from: v2 */
    private void m27191v2(HomeInfo homeInfo) {
        this.f8873s0 = false;
        this.f8874t0 = false;
        this.f8875u0 = false;
        this.f8876v0 = false;
        C3750b.m24341b().m24340c(new C2516i());
    }

    /* renamed from: w2 */
    private void m27190w2(HomeInfo homeInfo) {
        try {
            View inflate = LayoutInflater.from(this.f8863i0).inflate(R$layout.view_dialog_rewarded_ad, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_content);
            ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_close);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_watch);
            textView.setTypeface(this.f8860f0);
            ((TextView) inflate.findViewById(R$id.tv_watch)).setTypeface(this.f8860f0);
            imageView.setOnClickListener(new View$OnClickListenerC2513g());
            frameLayout.setOnClickListener(new View$OnClickListenerC2514h(homeInfo));
            AlertDialog create = new AlertDialog.Builder(this.f8862h0).setView(inflate).create();
            this.f8872r0 = create;
            create.setCanceledOnTouchOutside(false);
            this.f8872r0.show();
            m27191v2(homeInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x2 */
    public void m27189x2(HomeInfo homeInfo) {
        try {
            this.f8874t0 = true;
            if (this.f8863i0 == null) {
                return;
            }
            C3772i0.m24190a().f12015b.execute(new RunnableC2517j(homeInfo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f8861g0 == null) {
            C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
            this.f8861g0 = layoutInflater.inflate(R$layout.fragment_latest, viewGroup, false);
            if (C3767h1.m24250f0(m32996B()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                try {
                    if (m32896u() != null && m32896u().getWindow() != null) {
                        m32896u().getWindow().getDecorView().setLayoutDirection(1);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.f8866l0 = true;
            this.f8860f0 = C3739f1.m24359b();
            m27194s2(this.f8861g0);
            this.f8871q0 = new C2519k(this, null);
            C1764a.m28939b(this.f8862h0).m28938c(this.f8871q0, new IntentFilter("com.allinone.callerid.REFRESH_HOME_DATA"));
        }
        return this.f8861g0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
        try {
            Context context = this.f8862h0;
            if (context == null || this.f8871q0 == null) {
                return;
            }
            C1764a.m28939b(context).m28936e(this.f8871q0);
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
            View view = this.f8861g0;
            if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
                return;
            }
            viewGroup.removeView(this.f8861g0);
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
                if (this.f8866l0) {
                    this.f8866l0 = false;
                    m27192u2(1, "publish_time");
                }
                C2457b c2457b = this.f8865k0;
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
            if (!this.f8877w0 || this.f8878x0 == null || !C3776a.m24164a(this.f8862h0)) {
                return;
            }
            m27190w2(this.f8878x0);
            this.f8877w0 = false;
            this.f8878x0 = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131296819) {
            m27192u2(1, "publish_time");
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f8862h0 = context;
        this.f8863i0 = (MainActivity) context;
    }
}
