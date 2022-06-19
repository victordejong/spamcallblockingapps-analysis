package com.allinone.callerid.p160g;

import android.app.AlertDialog;
import android.app.role.RoleManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0586a;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0951c;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.SpamCall;
import com.allinone.callerid.customview.MyLinearLayoutManager;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.p136b.C2225t;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p166c0.AbstractC2779a;
import com.allinone.callerid.p162i.p163a.p166c0.C2780b;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2813e;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2817h;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2831n;
import com.allinone.callerid.p162i.p163a.p172g.C2818i;
import com.allinone.callerid.p162i.p163a.p172g.C2825l;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g;
import com.allinone.callerid.p162i.p163a.p188r.C2942a;
import com.allinone.callerid.p162i.p163a.p196z.AbstractC3014c;
import com.allinone.callerid.p162i.p163a.p196z.AbstractC3015d;
import com.allinone.callerid.p162i.p163a.p196z.C3010a;
import com.allinone.callerid.p162i.p163a.p196z.C3012b;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3735e1;
import com.allinone.callerid.util.C3736f;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3883z0;
import com.allinone.callerid.util.p202gg.C3760d;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import com.github.clans.fab.FloatingActionButton;
import com.github.jdsjlzx.recyclerview.C4568a;
import com.github.jdsjlzx.recyclerview.LRecyclerView;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.hzy.lib7z.ErrorCode;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.g.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e.class */
public class View$OnClickListenerC2687e extends Fragment implements View.OnClickListener {

    /* renamed from: A0 */
    public int f9256A0;

    /* renamed from: B0 */
    private Typeface f9257B0;

    /* renamed from: C0 */
    private Context f9258C0;

    /* renamed from: D0 */
    private ConstraintLayout f9259D0;

    /* renamed from: E0 */
    private FrameLayout f9260E0;

    /* renamed from: F0 */
    private TextView f9261F0;

    /* renamed from: G0 */
    private ImageView f9262G0;

    /* renamed from: J0 */
    private boolean f9265J0;

    /* renamed from: K0 */
    private int f9266K0;

    /* renamed from: L0 */
    private boolean f9267L0;

    /* renamed from: M0 */
    private View f9268M0;

    /* renamed from: N0 */
    private boolean f9269N0;

    /* renamed from: Q0 */
    private boolean f9272Q0;

    /* renamed from: S0 */
    private MyLinearLayoutManager f9274S0;

    /* renamed from: e0 */
    private MainActivity f9275e0;

    /* renamed from: f0 */
    private LRecyclerView f9276f0;

    /* renamed from: g0 */
    private C2225t f9277g0;

    /* renamed from: m0 */
    private C2721u f9283m0;

    /* renamed from: n0 */
    private LinearLayout f9284n0;

    /* renamed from: o0 */
    private ProgressBar f9285o0;

    /* renamed from: p0 */
    private FloatingActionButton f9286p0;

    /* renamed from: r0 */
    private boolean f9288r0;

    /* renamed from: t0 */
    public AbstractC2718s f9290t0;

    /* renamed from: u0 */
    private boolean f9291u0;

    /* renamed from: v0 */
    private CallLogBean f9292v0;

    /* renamed from: w0 */
    private int f9293w0;

    /* renamed from: x0 */
    private int f9294x0;

    /* renamed from: y0 */
    private FrameLayout f9295y0;

    /* renamed from: z0 */
    private ViewStub f9296z0;

    /* renamed from: h0 */
    private List<CallLogBean> f9278h0 = new ArrayList();

    /* renamed from: i0 */
    private List<CallLogBean> f9279i0 = new ArrayList();

    /* renamed from: j0 */
    private List<String> f9280j0 = new ArrayList();

    /* renamed from: k0 */
    private List<String> f9281k0 = new ArrayList();

    /* renamed from: l0 */
    private HashMap<String, Integer> f9282l0 = new HashMap<>();

    /* renamed from: q0 */
    private ArrayList<SpamCall> f9287q0 = new ArrayList<>();

    /* renamed from: s0 */
    private ArrayList<SpamCall> f9289s0 = new ArrayList<>();

    /* renamed from: H0 */
    private boolean f9263H0 = false;

    /* renamed from: I0 */
    private ArrayList<CallLogBean> f9264I0 = new ArrayList<>();

    /* renamed from: O0 */
    private Handler f9270O0 = new Handler();

    /* renamed from: P0 */
    private Runnable f9271P0 = new RunnableC2707m();

    /* renamed from: R0 */
    private Handler f9273R0 = new HandlerC2719t(this, null);

    /* renamed from: com.allinone.callerid.g.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$a.class */
    public class RunnableC2688a implements Runnable {

        /* renamed from: com.allinone.callerid.g.e$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$a$a.class */
        class RunnableC2689a implements Runnable {
            RunnableC2689a() {
                RunnableC2688a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC2718s abstractC2718s = View$OnClickListenerC2687e.this.f9290t0;
                if (abstractC2718s != null) {
                    abstractC2718s.mo25783t();
                }
                if (View$OnClickListenerC2687e.this.f9278h0 != null && View$OnClickListenerC2687e.this.f9278h0.size() > 0) {
                    View$OnClickListenerC2687e.this.f9278h0.clear();
                }
                View$OnClickListenerC2687e.this.f9285o0.setVisibility(8);
                View$OnClickListenerC2687e.this.m26779v3();
                if (View$OnClickListenerC2687e.this.f9277g0 != null) {
                    View$OnClickListenerC2687e.this.f9277g0.m31967i();
                }
            }
        }

        RunnableC2688a() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Cursor query = View$OnClickListenerC2687e.this.f9275e0.getContentResolver().query(C3714b1.m24450h(), null, null, null, "date DESC");
                if (query == null || query.getCount() <= 0) {
                    View$OnClickListenerC2687e.this.f9275e0.runOnUiThread(new RunnableC2689a());
                } else {
                    View$OnClickListenerC2687e.this.m26818c3(query);
                    if (View$OnClickListenerC2687e.this.f9278h0 == null || View$OnClickListenerC2687e.this.f9278h0.size() == 0) {
                        View$OnClickListenerC2687e.this.f9273R0.sendEmptyMessage(15002);
                        View$OnClickListenerC2687e.this.f9273R0.sendEmptyMessage(15000);
                    } else {
                        View$OnClickListenerC2687e.this.f9273R0.sendEmptyMessage(15001);
                        View$OnClickListenerC2687e.this.f9273R0.sendEmptyMessage(15000);
                        View$OnClickListenerC2687e.this.m26816d3();
                        View$OnClickListenerC2687e.this.f9273R0.sendEmptyMessage(15004);
                        View$OnClickListenerC2687e.this.m26804j3();
                        View$OnClickListenerC2687e.this.f9273R0.sendEmptyMessage(15003);
                    }
                }
                if (query == null) {
                    return;
                }
                query.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$b.class */
    public class C2690b implements C3736f.AbstractC3737a {

        /* renamed from: a */
        final /* synthetic */ CallLogBean f9299a;

        C2690b(CallLogBean callLogBean) {
            View$OnClickListenerC2687e.this = r4;
            this.f9299a = callLogBean;
        }

        @Override // com.allinone.callerid.util.C3736f.AbstractC3737a
        /* renamed from: a */
        public void mo24403a(int i, String str) {
            if (i != 0) {
                this.f9299a.m24955C0(str);
                this.f9299a.m24878p0(true);
                this.f9299a.m24942J0(i);
                return;
            }
            this.f9299a.m24878p0(false);
            this.f9299a.m24955C0("");
            this.f9299a.m24942J0(0);
        }
    }

    /* renamed from: com.allinone.callerid.g.e$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$c.class */
    public class C2691c implements AbstractC2817h {
        C2691c() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2817h
        /* renamed from: a */
        public void mo26031a() {
            View$OnClickListenerC2687e.this.f9264I0.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.e$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$d.class */
    public class DialogInterface$OnClickListenerC2692d implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2692d() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.e$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$e.class */
    public class DialogInterface$OnClickListenerC2693e implements DialogInterface.OnClickListener {

        /* renamed from: com.allinone.callerid.g.e$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$e$a.class */
        class C2694a implements AbstractC2817h {
            C2694a() {
                DialogInterface$OnClickListenerC2693e.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2817h
            /* renamed from: a */
            public void mo26031a() {
                try {
                    if (View$OnClickListenerC2687e.this.f9277g0 != null) {
                        View$OnClickListenerC2687e.this.f9279i0.clear();
                        View$OnClickListenerC2687e.this.f9278h0.clear();
                        View$OnClickListenerC2687e.this.f9277g0.m27833O(View$OnClickListenerC2687e.this.f9278h0);
                        View$OnClickListenerC2687e.this.f9277g0.m31967i();
                        View$OnClickListenerC2687e.this.m26814e3();
                    }
                    View$OnClickListenerC2687e.this.f9285o0.setVisibility(8);
                    Toast.makeText(EZCallApplication.m26146c(), EZCallApplication.m26146c().getResources().getString(R$string.delete_success), 0).show();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        DialogInterface$OnClickListenerC2693e() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (View$OnClickListenerC2687e.this.m32917k0()) {
                View$OnClickListenerC2687e.this.f9285o0.setVisibility(0);
                C2818i.m26553a(new C2694a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$f.class */
    public class C2695f implements C2225t.AbstractC2240m {
        C2695f() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p136b.C2225t.AbstractC2240m
        /* renamed from: a */
        public void mo26773a(View view, int i) {
            try {
                if (View$OnClickListenerC2687e.this.f9278h0 == null || View$OnClickListenerC2687e.this.f9278h0.size() == 0 || i >= View$OnClickListenerC2687e.this.f9278h0.size()) {
                    return;
                }
                CallLogBean callLogBean = (CallLogBean) View$OnClickListenerC2687e.this.f9278h0.get(i);
                if (View$OnClickListenerC2687e.this.f9263H0) {
                    return;
                }
                View$OnClickListenerC2687e.this.f9263H0 = true;
                callLogBean.m24930Q0(true);
                View$OnClickListenerC2687e.this.f9264I0.add(callLogBean);
                view.setBackgroundColor(C3719c1.m24432a(View$OnClickListenerC2687e.this.f9258C0, R$attr.color_calllogs_selected, R$color.colorselect));
                View$OnClickListenerC2687e.this.m26782u3();
                View$OnClickListenerC2687e.this.m26794o3();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.allinone.callerid.p136b.C2225t.AbstractC2240m
        /* renamed from: b */
        public void mo26772b(View view, int i) {
            try {
                if (View$OnClickListenerC2687e.this.f9278h0 == null || View$OnClickListenerC2687e.this.f9278h0.size() == 0) {
                    return;
                }
                CallLogBean callLogBean = (CallLogBean) View$OnClickListenerC2687e.this.f9278h0.get(i);
                if (View$OnClickListenerC2687e.this.f9263H0) {
                    if (callLogBean.m24911b0()) {
                        callLogBean.m24930Q0(false);
                        view.setBackground(null);
                        View$OnClickListenerC2687e.this.f9264I0.remove(callLogBean);
                    } else {
                        callLogBean.m24930Q0(true);
                        view.setBackgroundColor(C3719c1.m24432a(View$OnClickListenerC2687e.this.f9258C0, R$attr.color_calllogs_selected, R$color.colorselect));
                        View$OnClickListenerC2687e.this.f9264I0.add(callLogBean);
                    }
                    View$OnClickListenerC2687e.this.m26794o3();
                } else if (callLogBean.m24918Y()) {
                    Intent intent = new Intent();
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("contact_tony", callLogBean);
                    intent.putExtras(bundle);
                    intent.setClass(View$OnClickListenerC2687e.this.f9275e0, ContactActivity.class);
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("favtest", "联系人：" + callLogBean.toString());
                    }
                    View$OnClickListenerC2687e.this.m32942W1(intent);
                    View$OnClickListenerC2687e.this.f9275e0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } else {
                    Intent intent2 = new Intent();
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("contact_tony", callLogBean);
                    intent2.putExtras(bundle2);
                    intent2.setClass(View$OnClickListenerC2687e.this.f9275e0, UnknownContactActivity.class);
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("favtest", "陌生人：" + callLogBean.toString());
                    }
                    View$OnClickListenerC2687e.this.m32942W1(intent2);
                    View$OnClickListenerC2687e.this.f9275e0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$g.class */
    public class C2696g implements C2225t.AbstractC2239l {
        C2696g() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p136b.C2225t.AbstractC2239l
        /* renamed from: a */
        public void mo26771a() {
            View$OnClickListenerC2687e.this.m26823a2();
        }
    }

    /* renamed from: com.allinone.callerid.g.e$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$h.class */
    public class C2697h implements AbstractC2795a {

        /* renamed from: a */
        final /* synthetic */ SpamCall f9307a;

        /* renamed from: b */
        final /* synthetic */ String f9308b;

        /* renamed from: com.allinone.callerid.g.e$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$h$a.class */
        class C2698a implements AbstractC2766a {
            C2698a() {
                C2697h.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                CollectInfo collectInfo = new CollectInfo();
                collectInfo.setNumber(C2697h.this.f9308b);
                collectInfo.setUser_blocked("1");
                collectInfo.setUser_commented("0");
                collectInfo.setUser_reported("0");
                collectInfo.setUser_upload_recording("0");
                C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
            }
        }

        C2697h(SpamCall spamCall, String str) {
            View$OnClickListenerC2687e.this = r4;
            this.f9307a = spamCall;
            this.f9308b = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            if (z) {
                return;
            }
            EZBlackList eZBlackList = new EZBlackList();
            if (this.f9307a.getTypelabel() == null || "".equals(this.f9307a.getTypelabel())) {
                eZBlackList.setName("");
            } else {
                eZBlackList.setName(this.f9307a.getTypelabel());
            }
            eZBlackList.setNumber(this.f9308b);
            eZBlackList.setIs_myblock("true");
            C2796b.m26588a(eZBlackList, new C2698a());
        }
    }

    /* renamed from: com.allinone.callerid.g.e$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$i.class */
    public class C2699i implements AbstractC2813e {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.g.e$i$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$i$a.class */
        public class C2700a implements AbstractC3014c {

            /* renamed from: com.allinone.callerid.g.e$i$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$i$a$a.class */
            class C2701a implements AbstractC3015d {
                C2701a() {
                    C2700a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.p196z.AbstractC3015d
                /* renamed from: a */
                public void mo26258a(List<CallLogBean> list) {
                    if (list == null || list.size() <= 0 || View$OnClickListenerC2687e.this.f9277g0 == null) {
                        return;
                    }
                    View$OnClickListenerC2687e.this.f9277g0.m31967i();
                }
            }

            C2700a() {
                C2699i.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p196z.AbstractC3014c
            /* renamed from: a */
            public void mo26259a(String str) {
                if ("ok".equals(str)) {
                    C3012b.m26262a(View$OnClickListenerC2687e.this.f9278h0, new C2701a());
                }
            }
        }

        C2699i() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2813e
        /* renamed from: a */
        public void mo26557a(ArrayList<String> arrayList) {
            if (arrayList.size() != 0) {
                C3010a.m26265a(arrayList, new C2700a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$j.class */
    public class C2702j implements AbstractC2779a {
        C2702j() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p166c0.AbstractC2779a
        /* renamed from: a */
        public void mo26607a(List<SpamCall> list) {
            if (list != null) {
                try {
                    if (list.size() <= 0) {
                        return;
                    }
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("findspamcalls", "findspamcalls:" + list.toString());
                    }
                    C3711a1.m24622K0(false);
                    View$OnClickListenerC2687e.this.f9287q0.clear();
                    View$OnClickListenerC2687e.this.f9287q0.addAll(list);
                    C3810q.m24071b().m24070c("find_spamcall_show");
                    C3738f0.m24365v(EZCallApplication.m26146c());
                    if (View$OnClickListenerC2687e.this.f9277g0 == null) {
                        return;
                    }
                    View$OnClickListenerC2687e.this.f9277g0.m27832P(true);
                    View$OnClickListenerC2687e.this.f9277g0.m27837K(View$OnClickListenerC2687e.this.f9287q0, true);
                    View$OnClickListenerC2687e.this.f9277g0.m31967i();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.e$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$k.class */
    public class C2703k extends RecyclerView.AbstractC0929s {
        C2703k() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: a */
        public void mo4985a(RecyclerView recyclerView, int i) {
            super.mo4985a(recyclerView, i);
            if (i == 0) {
                View$OnClickListenerC2687e view$OnClickListenerC2687e = View$OnClickListenerC2687e.this;
                view$OnClickListenerC2687e.m26796n3(view$OnClickListenerC2687e.f9293w0, View$OnClickListenerC2687e.this.f9294x0);
            }
            if (recyclerView.canScrollVertically(1) || !C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("searchList", "onScrollStateChanged到底了");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: b */
        public void mo4984b(RecyclerView recyclerView, int i, int i2) {
            super.mo4984b(recyclerView, i, i2);
            if (View$OnClickListenerC2687e.this.f9274S0 == null) {
                View$OnClickListenerC2687e.this.f9274S0 = (MyLinearLayoutManager) recyclerView.getLayoutManager();
            }
            if (i2 > 0) {
                View$OnClickListenerC2687e view$OnClickListenerC2687e = View$OnClickListenerC2687e.this;
                view$OnClickListenerC2687e.f9294x0 = view$OnClickListenerC2687e.f9274S0.m31858J();
                View$OnClickListenerC2687e view$OnClickListenerC2687e2 = View$OnClickListenerC2687e.this;
                view$OnClickListenerC2687e2.f9293w0 = view$OnClickListenerC2687e2.f9274S0.m32140Z1();
                if (View$OnClickListenerC2687e.this.f9286p0 == null || View$OnClickListenerC2687e.this.f9286p0.m22345y()) {
                    return;
                }
                View$OnClickListenerC2687e.this.f9286p0.m22349u(true);
            } else if (i2 >= 0) {
            } else {
                View$OnClickListenerC2687e view$OnClickListenerC2687e3 = View$OnClickListenerC2687e.this;
                view$OnClickListenerC2687e3.f9294x0 = view$OnClickListenerC2687e3.f9274S0.m31858J();
                View$OnClickListenerC2687e view$OnClickListenerC2687e4 = View$OnClickListenerC2687e.this;
                view$OnClickListenerC2687e4.f9293w0 = view$OnClickListenerC2687e4.f9274S0.m32140Z1();
                if (View$OnClickListenerC2687e.this.f9286p0 == null || !View$OnClickListenerC2687e.this.f9286p0.m22345y()) {
                    return;
                }
                View$OnClickListenerC2687e.this.f9286p0.m22373H(true);
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$l.class */
    public class C2704l implements AbstractC2790b {

        /* renamed from: a */
        final /* synthetic */ Context f9316a;

        /* renamed from: com.allinone.callerid.g.e$l$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$l$a.class */
        class C2705a implements AbstractC5796a.AbstractC5799c {
            C2705a() {
                C2704l.this = r4;
            }

            @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
            /* renamed from: a */
            public void mo17848a(AbstractC5796a abstractC5796a) {
                View$OnClickListenerC2687e.this.m26786s3(abstractC5796a);
            }
        }

        /* renamed from: com.allinone.callerid.g.e$l$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$l$b.class */
        class C2706b extends AbstractC5596b {
            C2706b() {
                C2704l.this = r4;
            }

            @Override // com.google.android.gms.ads.AbstractC5596b
            /* renamed from: n */
            public void mo9079n(C5756j c5756j) {
                super.mo9079n(c5756j);
            }

            @Override // com.google.android.gms.ads.AbstractC5596b
            /* renamed from: q */
            public void mo9077q() {
                super.mo9077q();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("AdLoaded", "onAdLoaded");
                }
            }

            @Override // com.google.android.gms.ads.AbstractC5596b
            /* renamed from: r */
            public void mo9076r() {
                super.mo9076r();
                C2704l c2704l = C2704l.this;
                View$OnClickListenerC2687e.this.m26806i3(c2704l.f9316a);
            }
        }

        C2704l(Context context) {
            View$OnClickListenerC2687e.this = r4;
            this.f9316a = context;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                C3810q.m24071b().m24070c("history_request_num");
                C5600d.C5601a c5601a = new C5600d.C5601a(this.f9316a, "ca-app-pub-5825926894918682/4623723254");
                c5601a.m18290c(new C2705a());
                c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
                c5601a.m18288e(new C2706b()).m18292a().m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.e$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$m.class */
    public class RunnableC2707m implements Runnable {
        RunnableC2707m() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (View$OnClickListenerC2687e.this.f9275e0 != null) {
                C3714b1.m24455c(View$OnClickListenerC2687e.this.f9275e0);
                View$OnClickListenerC2687e.this.f9283m0 = new C2721u(View$OnClickListenerC2687e.this, null);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.allinone.callerid.RELOAD_DATA");
                intentFilter.addAction("com.allinone.callerid.CLOSE_AD");
                C1764a.m28939b(View$OnClickListenerC2687e.this.f9275e0).m28938c(View$OnClickListenerC2687e.this.f9283m0, intentFilter);
            }
            View$OnClickListenerC2687e view$OnClickListenerC2687e = View$OnClickListenerC2687e.this;
            view$OnClickListenerC2687e.m26792p3(view$OnClickListenerC2687e.f9278h0, View$OnClickListenerC2687e.this.f9282l0);
        }
    }

    /* renamed from: com.allinone.callerid.g.e$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$n.class */
    public class RunnableC2708n implements Runnable {
        RunnableC2708n() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnClickListenerC2687e.this.f9257B0 = C3739f1.m24359b();
            View$OnClickListenerC2687e.this.f9270O0.post(View$OnClickListenerC2687e.this.f9271P0);
            View$OnClickListenerC2687e.this.m26814e3();
        }
    }

    /* renamed from: com.allinone.callerid.g.e$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$o.class */
    public class C2709o implements AbstractC2831n {
        C2709o() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2831n
        /* renamed from: a */
        public void mo26527a(List<CallLogBean> list, List<String> list2) {
            try {
                View$OnClickListenerC2687e.this.f9281k0 = list2;
                if (View$OnClickListenerC2687e.this.f9281k0 == null || View$OnClickListenerC2687e.this.f9281k0.size() <= 0) {
                    View$OnClickListenerC2687e.this.m26802k3();
                } else {
                    View$OnClickListenerC2687e.this.m26800l3();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$p.class */
    public class C2710p implements AbstractC2813e {
        C2710p() {
            View$OnClickListenerC2687e.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2813e
        /* renamed from: a */
        public void mo26557a(ArrayList<String> arrayList) {
            if (arrayList.size() != 0) {
                new AsyncTaskC2722v(View$OnClickListenerC2687e.this, arrayList, false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            } else {
                View$OnClickListenerC2687e.this.m26802k3();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$q.class */
    public class C2711q implements AbstractC2795a {

        /* renamed from: a */
        final /* synthetic */ CallLogBean f9324a;

        /* renamed from: com.allinone.callerid.g.e$q$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$q$a.class */
        class DialogInterface$OnClickListenerC2712a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC2712a() {
                C2711q.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.g.e$q$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$q$b.class */
        public class DialogInterface$OnClickListenerC2713b implements DialogInterface.OnClickListener {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.g.e$q$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$q$b$a.class */
            public class C2714a implements AbstractC2795a {

                /* renamed from: a */
                final /* synthetic */ String f9328a;

                /* renamed from: com.allinone.callerid.g.e$q$b$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$q$b$a$a.class */
                class C2715a implements AbstractC2766a {
                    C2715a() {
                        C2714a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                    }
                }

                /* renamed from: com.allinone.callerid.g.e$q$b$a$b */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$q$b$a$b.class */
                class C2716b implements AbstractC2766a {
                    C2716b() {
                        C2714a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        CollectInfo collectInfo = new CollectInfo();
                        collectInfo.setNumber(C2714a.this.f9328a);
                        collectInfo.setUser_blocked("1");
                        collectInfo.setUser_commented("0");
                        collectInfo.setUser_reported("0");
                        collectInfo.setUser_upload_recording("0");
                        C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                    }
                }

                C2714a(String str) {
                    DialogInterface$OnClickListenerC2713b.this = r4;
                    this.f9328a = str;
                }

                @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
                /* renamed from: a */
                public void mo24705a(boolean z) {
                    if (z) {
                        C2796b.m26584e(this.f9328a, new C2715a());
                        return;
                    }
                    EZBlackList eZBlackList = new EZBlackList();
                    if (C2711q.this.f9324a.m24884m() == null || "".equals(C2711q.this.f9324a.m24884m())) {
                        eZBlackList.setName("");
                    } else {
                        eZBlackList.setName(C2711q.this.f9324a.m24884m());
                    }
                    eZBlackList.setNumber(this.f9328a);
                    eZBlackList.setIs_myblock("true");
                    C2796b.m26588a(eZBlackList, new C2716b());
                }
            }

            DialogInterface$OnClickListenerC2713b() {
                C2711q.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String replace = C2711q.this.f9324a.m24880o().replace("-", "");
                if (!"".equals(replace)) {
                    C2796b.m26587b(replace, new C2714a(replace));
                }
            }
        }

        C2711q(CallLogBean callLogBean) {
            View$OnClickListenerC2687e.this = r4;
            this.f9324a = callLogBean;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            String str;
            String str2;
            try {
                if (!View$OnClickListenerC2687e.this.m32917k0() || View$OnClickListenerC2687e.this.f9275e0 == null || View$OnClickListenerC2687e.this.f9275e0.isFinishing()) {
                    return;
                }
                if (z) {
                    str = View$OnClickListenerC2687e.this.m32941X().getString(R$string.unblock) + " " + this.f9324a.m24880o();
                    str2 = View$OnClickListenerC2687e.this.m32941X().getString(R$string.unblock_big);
                } else {
                    str = View$OnClickListenerC2687e.this.m32941X().getString(R$string.block) + " " + this.f9324a.m24880o() + " ?";
                    str2 = View$OnClickListenerC2687e.this.m32941X().getString(R$string.block_big);
                }
                DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(View$OnClickListenerC2687e.this.f9275e0).m35567h(str).m35561n(str2, new DialogInterface$OnClickListenerC2713b()).m35565j(View$OnClickListenerC2687e.this.m32941X().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC2712a()).m35574a();
                m35574a.show();
                m35574a.m35577g(-1).setTextColor(View$OnClickListenerC2687e.this.f9266K0);
                m35574a.m35577g(-2).setTextColor(View$OnClickListenerC2687e.this.m32941X().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$r.class */
    public static class AsyncTaskC2717r extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<View$OnClickListenerC2687e> f9332a;

        AsyncTaskC2717r(View$OnClickListenerC2687e view$OnClickListenerC2687e) {
            this.f9332a = new WeakReference<>(view$OnClickListenerC2687e);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                View$OnClickListenerC2687e view$OnClickListenerC2687e = this.f9332a.get();
                if (view$OnClickListenerC2687e == null || view$OnClickListenerC2687e.f9278h0 == null || view$OnClickListenerC2687e.f9278h0.size() <= 0 || view$OnClickListenerC2687e.f9264I0 == null) {
                    return null;
                }
                for (CallLogBean callLogBean : view$OnClickListenerC2687e.f9278h0) {
                    callLogBean.m24930Q0(false);
                }
                view$OnClickListenerC2687e.f9264I0.clear();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            View$OnClickListenerC2687e view$OnClickListenerC2687e = this.f9332a.get();
            if (view$OnClickListenerC2687e == null || view$OnClickListenerC2687e.f9277g0 == null) {
                return;
            }
            view$OnClickListenerC2687e.f9277g0.m31967i();
        }
    }

    /* renamed from: com.allinone.callerid.g.e$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$s.class */
    public interface AbstractC2718s {
        /* renamed from: t */
        void mo25783t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.g.e$t */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$t.class */
    public static class HandlerC2719t extends Handler {

        /* renamed from: a */
        private final WeakReference<View$OnClickListenerC2687e> f9333a;

        /* renamed from: com.allinone.callerid.g.e$t$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$t$a.class */
        class C2720a implements AbstractC2960g {
            C2720a() {
                HandlerC2719t.this = r4;
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

        private HandlerC2719t(View$OnClickListenerC2687e view$OnClickListenerC2687e) {
            this.f9333a = new WeakReference<>(view$OnClickListenerC2687e);
        }

        /* synthetic */ HandlerC2719t(View$OnClickListenerC2687e view$OnClickListenerC2687e, C2703k c2703k) {
            this(view$OnClickListenerC2687e);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            View$OnClickListenerC2687e view$OnClickListenerC2687e = this.f9333a.get();
            if (view$OnClickListenerC2687e != null) {
                try {
                    if (!view$OnClickListenerC2687e.f9269N0 || message.what != 15000) {
                        int i = message.what;
                        if (i == 15001) {
                            view$OnClickListenerC2687e.f9285o0.setVisibility(8);
                            view$OnClickListenerC2687e.f9276f0.setVisibility(0);
                            if (view$OnClickListenerC2687e.f9277g0 != null) {
                                view$OnClickListenerC2687e.f9277g0.m27835M(view$OnClickListenerC2687e.f9278h0, view$OnClickListenerC2687e.f9282l0);
                                view$OnClickListenerC2687e.f9277g0.m31967i();
                            }
                            view$OnClickListenerC2687e.f9296z0.setVisibility(8);
                            view$OnClickListenerC2687e.f9279i0.addAll(view$OnClickListenerC2687e.f9278h0);
                        } else if (i == 15002) {
                            view$OnClickListenerC2687e.f9285o0.setVisibility(8);
                            view$OnClickListenerC2687e.m26779v3();
                        } else if (i == 15003) {
                            if (view$OnClickListenerC2687e.f9277g0 != null) {
                                view$OnClickListenerC2687e.f9277g0.m31967i();
                            }
                            view$OnClickListenerC2687e.f9285o0.setVisibility(8);
                        } else if (i == 15004) {
                            if (view$OnClickListenerC2687e.f9278h0.size() > 0) {
                                view$OnClickListenerC2687e.m26798m3();
                                if (view$OnClickListenerC2687e.f9277g0 != null) {
                                    view$OnClickListenerC2687e.f9277g0.m31967i();
                                }
                            }
                            if (view$OnClickListenerC2687e.f9288r0 && view$OnClickListenerC2687e.f9289s0 != null && view$OnClickListenerC2687e.f9289s0.size() > 0) {
                                view$OnClickListenerC2687e.f9288r0 = false;
                                if (view$OnClickListenerC2687e.f9277g0 != null) {
                                    view$OnClickListenerC2687e.f9277g0.m27832P(true);
                                    view$OnClickListenerC2687e.f9277g0.m27837K(view$OnClickListenerC2687e.f9289s0, true);
                                    view$OnClickListenerC2687e.f9277g0.m31967i();
                                }
                            }
                        }
                    } else {
                        view$OnClickListenerC2687e.f9269N0 = false;
                        AbstractC2718s abstractC2718s = view$OnClickListenerC2687e.f9290t0;
                        if (abstractC2718s != null) {
                            abstractC2718s.mo25783t();
                        }
                        C2942a.m26369l(EZCallApplication.m26146c(), new C2720a());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: com.allinone.callerid.g.e$u */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$u.class */
    private class C2721u extends BroadcastReceiver {
        private C2721u() {
            View$OnClickListenerC2687e.this = r4;
        }

        /* synthetic */ C2721u(View$OnClickListenerC2687e view$OnClickListenerC2687e, C2703k c2703k) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if ("com.allinone.callerid.RELOAD_DATA".equals(intent.getAction())) {
                    View$OnClickListenerC2687e.this.m26814e3();
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("searchList", "reload_data====init()");
                    }
                    if (View$OnClickListenerC2687e.this.f9275e0 != null) {
                        C1764a.m28939b(context).m28937d(new Intent("com.allinone.callerid.IDENTIFY_NUMBER"));
                    }
                }
                if (!"com.allinone.callerid.CLOSE_AD".equals(intent.getAction()) || View$OnClickListenerC2687e.this.f9284n0 == null) {
                    return;
                }
                View$OnClickListenerC2687e.this.f9284n0.setVisibility(8);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.e$v */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/e$v.class */
    public static class AsyncTaskC2722v extends AsyncTask<Object, Void, Object> {

        /* renamed from: a */
        private WeakReference<View$OnClickListenerC2687e> f9336a;

        /* renamed from: b */
        private List<String> f9337b;

        /* renamed from: c */
        private EZSearchContacts f9338c;

        /* renamed from: d */
        private boolean f9339d;

        /* renamed from: e */
        private boolean f9340e;

        AsyncTaskC2722v(View$OnClickListenerC2687e view$OnClickListenerC2687e, List<String> list, boolean z) {
            this.f9336a = new WeakReference<>(view$OnClickListenerC2687e);
            this.f9337b = list;
            this.f9339d = z;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:51|52|53|54|55|56|57|58|(7:59|60|(33:62|63|64|65|66|67|68|69|70|71|(2:73|74)(2:227|75)|76|77|78|216|79|80|81|(14:83|(1:87)|91|92|(3:224|94|(2:104|(2:109|(1:111))(1:108)))|233|114|115|116|235|117|(16:119|120|(5:210|122|123|212|124)|126|(1:130)|131|132|(1:136)|137|138|(1:142)|143|144|145|222|146)(1:148)|154|155)|88|(1:90)|91|92|(0)|233|114|115|116|235|117|(0)(0)|154|155)(1:237)|195|201|206|207)|159|214|160|(4:162|163|164|(3:166|167|(3:168|169|(3:171|(5:173|(2:179|180)|181|182|240)(1:239)|183)(1:238)))(0))(0)) */
        /* JADX WARN: Can't wrap try/catch for region: R(33:62|63|64|65|66|67|68|69|70|71|(2:73|74)(2:227|75)|76|77|78|216|79|80|81|(14:83|(1:87)|91|92|(3:224|94|(2:104|(2:109|(1:111))(1:108)))|233|114|115|116|235|117|(16:119|120|(5:210|122|123|212|124)|126|(1:130)|131|132|(1:136)|137|138|(1:142)|143|144|145|222|146)(1:148)|154|155)|88|(1:90)|91|92|(0)|233|114|115|116|235|117|(0)(0)|154|155) */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x07e1, code lost:
            r9 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x07e5, code lost:
            r9 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:184:0x0a17, code lost:
            r8 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:186:0x0a1b, code lost:
            r8.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:187:0x0a20, code lost:
            r8 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:119:0x05bc A[Catch: Exception -> 0x07e1, TRY_ENTER, TRY_LEAVE, TryCatch #13 {Exception -> 0x07e1, blocks: (B:117:0x05b2, B:119:0x05bc), top: B:235:0x05b2 }] */
        /* JADX WARN: Removed duplicated region for block: B:148:0x07d2 A[Catch: Exception -> 0x07dd, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x07dd, blocks: (B:146:0x0728, B:148:0x07d2), top: B:222:0x0728 }] */
        /* JADX WARN: Removed duplicated region for block: B:224:0x03f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected java.lang.Object doInBackground(java.lang.Object[] r8) {
            /*
                Method dump skipped, instructions count: 2693
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p160g.View$OnClickListenerC2687e.AsyncTaskC2722v.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            try {
                View$OnClickListenerC2687e view$OnClickListenerC2687e = this.f9336a.get();
                if (view$OnClickListenerC2687e == null) {
                    return;
                }
                if (view$OnClickListenerC2687e.f9278h0 != null && view$OnClickListenerC2687e.f9278h0.size() != 0) {
                    if (view$OnClickListenerC2687e.f9277g0 != null) {
                        view$OnClickListenerC2687e.f9277g0.m31967i();
                    }
                    if (this.f9340e) {
                        view$OnClickListenerC2687e.m26777w3();
                    }
                    if (view$OnClickListenerC2687e.f9275e0 != null) {
                        C1764a.m28939b(view$OnClickListenerC2687e.f9275e0).m28937d(new Intent("com.allinone.callerid.IDENTIFY_NUMBER"));
                    }
                }
                view$OnClickListenerC2687e.m26802k3();
                if (view$OnClickListenerC2687e.f9275e0 == null) {
                    return;
                }
                C1764a.m28939b(view$OnClickListenerC2687e.f9275e0).m28937d(new Intent("com.allinone.callerid.IDENTIFY_NUMBER"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: Z2 */
    private void m26824Z2() {
        new AsyncTaskC2717r(this).execute(new Void[0]);
    }

    /* renamed from: a2 */
    public void m26823a2() {
        try {
            ArrayList<SpamCall> arrayList = this.f9287q0;
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            for (int i = 0; i < this.f9287q0.size(); i++) {
                SpamCall spamCall = this.f9287q0.get(i);
                if (spamCall.isSelected()) {
                    String replace = spamCall.getNumber().replace("-", "");
                    C2796b.m26587b(replace, new C2697h(spamCall, replace));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b3 */
    private void m26820b3() {
        ArrayList<CallLogBean> arrayList;
        try {
            List<CallLogBean> list = this.f9278h0;
            if (list == null || list.size() <= 0 || (arrayList = this.f9264I0) == null || arrayList.size() <= 0) {
                return;
            }
            this.f9278h0.removeAll(this.f9264I0);
            C2225t c2225t = this.f9277g0;
            if (c2225t != null) {
                c2225t.m27833O(this.f9278h0);
                this.f9277g0.m31967i();
            }
            TextView textView = this.f9261F0;
            textView.setText("0/" + this.f9278h0.size());
            C2818i.m26550d(this.f9264I0, new C2691c());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x02fa, code lost:
        if (com.allinone.callerid.util.C3714b1.m24443o() != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x034e, code lost:
        if (com.allinone.callerid.util.C3714b1.m24446l() != false) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02e7 A[Catch: Exception -> 0x0499, TRY_ENTER, TryCatch #0 {Exception -> 0x0499, blocks: (B:3:0x0002, B:6:0x000f, B:8:0x003a, B:11:0x009a, B:13:0x00f7, B:15:0x0100, B:18:0x0173, B:20:0x01a5, B:22:0x01fa, B:25:0x0210, B:28:0x0231, B:33:0x026e, B:37:0x0289, B:41:0x02a4, B:43:0x02ab, B:45:0x02b5, B:48:0x02c7, B:50:0x02da, B:53:0x02e7, B:55:0x02ed, B:59:0x02f7, B:62:0x02ff, B:65:0x0313, B:67:0x0322, B:69:0x0331, B:70:0x0342, B:70:0x0342, B:74:0x034b, B:77:0x0353, B:80:0x0366, B:82:0x0374, B:84:0x0380, B:85:0x038d, B:85:0x038d, B:87:0x0393, B:88:0x03b8, B:88:0x03b8, B:89:0x03bb, B:91:0x03f1, B:93:0x03fc, B:95:0x0407, B:97:0x0412, B:99:0x041a, B:101:0x0466, B:103:0x0472), top: B:107:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0393 A[Catch: Exception -> 0x0499, TryCatch #0 {Exception -> 0x0499, blocks: (B:3:0x0002, B:6:0x000f, B:8:0x003a, B:11:0x009a, B:13:0x00f7, B:15:0x0100, B:18:0x0173, B:20:0x01a5, B:22:0x01fa, B:25:0x0210, B:28:0x0231, B:33:0x026e, B:37:0x0289, B:41:0x02a4, B:43:0x02ab, B:45:0x02b5, B:48:0x02c7, B:50:0x02da, B:53:0x02e7, B:55:0x02ed, B:59:0x02f7, B:62:0x02ff, B:65:0x0313, B:67:0x0322, B:69:0x0331, B:70:0x0342, B:70:0x0342, B:74:0x034b, B:77:0x0353, B:80:0x0366, B:82:0x0374, B:84:0x0380, B:85:0x038d, B:85:0x038d, B:87:0x0393, B:88:0x03b8, B:88:0x03b8, B:89:0x03bb, B:91:0x03f1, B:93:0x03fc, B:95:0x0407, B:97:0x0412, B:99:0x041a, B:101:0x0466, B:103:0x0472), top: B:107:0x0002 }] */
    /* renamed from: c3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m26818c3(android.database.Cursor r6) {
        /*
            Method dump skipped, instructions count: 1183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p160g.View$OnClickListenerC2687e.m26818c3(android.database.Cursor):void");
    }

    /* renamed from: d3 */
    public void m26816d3() {
        ArrayList<SpamCall> arrayList;
        int m26966e;
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "getDataNumberDb_start:" + C3771i.m24206d(System.currentTimeMillis()));
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MMM", Locale.ENGLISH);
            this.f9289s0.clear();
            List<CallLogBean> list = this.f9278h0;
            if (list != null && list.size() != 0) {
                for (int i = 0; i < this.f9278h0.size(); i++) {
                    CallLogBean callLogBean = this.f9278h0.get(i);
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean.m24880o());
                    if (callLogBean.m24880o() != null && (m26966e = C2645b.m26967d().m26966e(callLogBean.m24880o())) > 0) {
                        callLogBean.m24929R0(true);
                        callLogBean.m24940K0(String.valueOf(m26966e));
                    }
                    if (m26999d != null) {
                        callLogBean.m24931P0(m26999d.isSearched());
                        callLogBean.m24935N0(m26999d.getSearch_time());
                        callLogBean.m24887k0(m26999d.isIs_can_search());
                        if (!callLogBean.m24918Y()) {
                            callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                            callLogBean.m24898f1(m26999d.getType_label());
                            callLogBean.m24939L0(m26999d.getReport_count());
                        }
                        callLogBean.m24896g0(m26999d.getBelong_area());
                        callLogBean.m24937M0(m26999d.getName());
                        if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                            callLogBean.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                        }
                        callLogBean.m24913a1(m26999d.getTel_number());
                        callLogBean.m24915Z0(m26999d.getT_p());
                        callLogBean.m24947G0(m26999d.getOld_tel_number());
                        callLogBean.m24863x0(m26999d.getFormat_tel_number());
                        callLogBean.m24945H0(m26999d.getOperator());
                        callLogBean.m24905d0(m26999d.getAddress());
                        callLogBean.m24902e0(m26999d.getAvatar());
                        callLogBean.m24865w0(m26999d.getFb_avatar());
                        callLogBean.m24895g1(m26999d.getType_tags());
                        callLogBean.m24953D0(m26999d.getName_tags());
                        callLogBean.m24879o0(m26999d.getComment_tags());
                        callLogBean.m24875r0(m26999d.getCountry());
                        callLogBean.m24921W0(m26999d.getSubtype());
                        callLogBean.m24919X0(m26999d.getSubtype_cc());
                        callLogBean.m24860z0(m26999d.getKeyword());
                        callLogBean.m24893h1(C3767h1.m24216w0(callLogBean.m24880o()));
                        callLogBean.m24917Y0(m26999d.getSubtype_pdt());
                        callLogBean.m24881n0(m26999d.getComment_count());
                        callLogBean.m24885l0(m26999d.isCan_search_commentcount());
                        callLogBean.m24867v0(m26999d.getFaild_error_log());
                        if (this.f9288r0 && (arrayList = this.f9289s0) != null && arrayList.size() < 3 && !C3767h1.m24263Y(this.f9258C0, m26999d.getOld_tel_number()) && m26999d.getType_label() != null && !"".equals(m26999d.getType_label()) && m26999d.getReport_count() != null && !"".equals(m26999d.getReport_count())) {
                            SpamCall spamCall = new SpamCall();
                            spamCall.setNumber(m26999d.getOld_tel_number());
                            spamCall.setTypelabel(m26999d.getType_label());
                            spamCall.setReportcounts(m26999d.getReport_count());
                            spamCall.setType(m26999d.getType());
                            spamCall.setTel_number(m26999d.getTel_number());
                            spamCall.setFormat_tel_number(m26999d.getFormat_tel_number());
                            spamCall.setOperator(m26999d.getOperator());
                            spamCall.setName(m26999d.getName());
                            spamCall.setAddress(m26999d.getAddress());
                            spamCall.setBelong_area(m26999d.getBelong_area());
                            spamCall.setAvatar(m26999d.getAvatar());
                            spamCall.setName_tags(m26999d.getName_tags());
                            spamCall.setType_tags(m26999d.getType_tags());
                            spamCall.setComment_tags(m26999d.getComment_tags());
                            spamCall.setCountry(m26999d.getCountry());
                            spamCall.setDate(simpleDateFormat.format(callLogBean.m24912b()));
                            spamCall.setCalltype(callLogBean.m24934O());
                            spamCall.setSelected(true);
                            this.f9289s0.add(spamCall);
                        }
                    }
                }
            }
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("tony", "getDataNumberDb_end:" + C3771i.m24206d(System.currentTimeMillis()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g3 */
    private void m26810g3() {
        MainActivity mainActivity = this.f9275e0;
        if (mainActivity != null) {
            mainActivity.getWindow().getDecorView().post(new RunnableC2708n());
        }
    }

    /* renamed from: h3 */
    private void m26808h3() {
        this.f9259D0 = (ConstraintLayout) this.f9275e0.findViewById(R$id.ll_select);
        this.f9260E0 = (FrameLayout) this.f9275e0.findViewById(R$id.rl_main);
        ((ImageView) this.f9275e0.findViewById(R$id.iv_select_all)).setOnClickListener(this);
        ((ImageView) this.f9275e0.findViewById(R$id.select_close)).setOnClickListener(this);
        this.f9261F0 = (TextView) this.f9275e0.findViewById(R$id.select_count);
        ImageView imageView = (ImageView) this.f9275e0.findViewById(R$id.iv_select_delete);
        this.f9262G0 = imageView;
        imageView.setOnClickListener(this);
    }

    /* renamed from: i3 */
    public void m26806i3(Context context) {
        C2786a.m26600a(new C2704l(context));
    }

    /* renamed from: j3 */
    public void m26804j3() {
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "loadDataContactsSim_start:" + C3771i.m24206d(System.currentTimeMillis()));
            }
            List<CallLogBean> list = this.f9278h0;
            if (list != null && list.size() > 0) {
                for (int i = 0; i < this.f9278h0.size(); i++) {
                    CallLogBean callLogBean = this.f9278h0.get(i);
                    if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0) {
                        C3736f.m24404a(EZCallApplication.m26146c(), callLogBean.m24880o(), new C2690b(callLogBean));
                    }
                }
            }
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("tony", "loadDataContactsSim_end:" + C3771i.m24206d(System.currentTimeMillis()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k3 */
    public void m26802k3() {
        C2825l.m26539a(this.f9278h0, new C2699i());
        if (this.f9291u0) {
            C3883z0.m23881h(EZCallApplication.m26146c());
            this.f9291u0 = false;
        }
    }

    /* renamed from: l3 */
    public void m26800l3() {
        boolean z;
        List<String> list;
        try {
            if (this.f9281k0.size() > 20) {
                list = new ArrayList<>(this.f9281k0.subList(0, 20));
                this.f9281k0.removeAll(list);
                z = true;
            } else {
                list = this.f9281k0;
                z = false;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24433d("searchList", "searchNumberList.size:" + this.f9281k0.size());
                C3718c0.m24433d("searchList", "canSearchList.size:" + list.size());
            }
            AsyncTaskC2722v asyncTaskC2722v = new AsyncTaskC2722v(this, list, z);
            if (asyncTaskC2722v.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2722v.cancel(true);
            new AsyncTaskC2722v(this, list, z).executeOnExecutor(C3735e1.m24405a(), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m3 */
    public void m26798m3() {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("searchList", "首次查询");
        }
        try {
            C2825l.m26537c(EZCallApplication.m26146c(), this.f9278h0, new C2709o());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: n3 */
    public void m26796n3(int i, int i2) {
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("searchList", "滑动后查询 start:" + i + " end:" + i2);
            }
            C2825l.m26538b(i, i2, this.f9278h0, new C2710p());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o3 */
    public void m26794o3() {
        List<CallLogBean> list = this.f9278h0;
        if (list == null || list.size() <= 0 || this.f9264I0 == null) {
            return;
        }
        TextView textView = this.f9261F0;
        textView.setText(this.f9264I0.size() + "/" + this.f9278h0.size());
        if (this.f9264I0.size() > 0) {
            this.f9262G0.setVisibility(0);
        } else {
            this.f9262G0.setVisibility(8);
        }
    }

    /* renamed from: p3 */
    public void m26792p3(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        if (this.f9274S0 == null) {
            MyLinearLayoutManager myLinearLayoutManager = new MyLinearLayoutManager(this.f9258C0);
            this.f9274S0 = myLinearLayoutManager;
            myLinearLayoutManager.m32114z2(1);
            this.f9276f0.setLayoutManager(this.f9274S0);
            this.f9276f0.setItemAnimator(new C0951c());
            this.f9276f0.setHasFixedSize(true);
            this.f9276f0.setPullRefreshEnabled(false);
        }
        C2225t c2225t = this.f9277g0;
        if (c2225t != null) {
            c2225t.m27835M(list, hashMap);
            return;
        }
        this.f9277g0 = new C2225t(this.f9287q0, this.f9275e0);
        this.f9276f0.setAdapter(new C4568a(this.f9277g0));
        this.f9276f0.setLoadMoreEnabled(false);
        this.f9277g0.m27835M(list, hashMap);
        m26788r3();
    }

    /* renamed from: q3 */
    private void m26790q3(CallLogBean callLogBean) {
        try {
            if (!C3711a1.m24469x2().booleanValue()) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26 && i < 28 && !C3784b.m24142d(this.f9275e0)) {
                    this.f9292v0 = callLogBean;
                    DialogC2588f dialogC2588f = new DialogC2588f(this.f9275e0, R$style.CustomDialog4);
                    dialogC2588f.setCanceledOnTouchOutside(false);
                    dialogC2588f.show();
                }
            }
            C2796b.m26587b(callLogBean.m24880o(), new C2711q(callLogBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: r3 */
    private void m26788r3() {
        this.f9277g0.m27846B(new C2695f());
        this.f9277g0.m27847A(new C2696g());
    }

    /* renamed from: s3 */
    public void m26786s3(AbstractC5796a abstractC5796a) {
        try {
            NativeAdView nativeAdView = (NativeAdView) LayoutInflater.from(this.f9275e0).inflate(R$layout.aad_lxr_dx, (ViewGroup) null);
            C3760d.m24325a(abstractC5796a, nativeAdView);
            this.f9295y0.removeAllViews();
            this.f9295y0.addView(nativeAdView);
            this.f9295y0.setVisibility(0);
            this.f9284n0.setVisibility(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: t3 */
    private void m26784t3() {
        this.f9259D0.setVisibility(8);
        this.f9260E0.setVisibility(0);
        this.f9263H0 = false;
        m26824Z2();
    }

    /* renamed from: u3 */
    public void m26782u3() {
        this.f9259D0.setVisibility(0);
        this.f9260E0.setVisibility(8);
    }

    /* renamed from: v3 */
    public void m26779v3() {
        try {
            ((TextView) ((RelativeLayout) this.f9296z0.inflate()).findViewById(R$id.tv_no_calllog)).setTypeface(this.f9257B0);
        } catch (Exception e) {
            this.f9296z0.setVisibility(0);
        }
    }

    /* renamed from: w3 */
    public void m26777w3() {
        C2780b.m26606a(new C2702j());
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C3767h1.m24281I0(this.f9258C0, EZCallApplication.m26146c().f9914h);
        if (this.f9268M0 == null) {
            View inflate = layoutInflater.inflate(R$layout.contact_record_list, viewGroup, false);
            this.f9268M0 = inflate;
            this.f9284n0 = (LinearLayout) inflate.findViewById(R$id.invis1);
            this.f9295y0 = (FrameLayout) this.f9268M0.findViewById(R$id.fl_junk_admob);
            this.f9296z0 = (ViewStub) this.f9268M0.findViewById(R$id.vs_no_calllog);
            ProgressBar progressBar = (ProgressBar) this.f9268M0.findViewById(R$id.progress_search);
            this.f9285o0 = progressBar;
            if (Build.VERSION.SDK_INT <= 20) {
                progressBar.setVisibility(0);
            }
            this.f9266K0 = C3719c1.m24432a(this.f9258C0, R$attr.color_action, 2131099706);
            this.f9267L0 = true;
            this.f9269N0 = true;
            this.f9276f0 = (LRecyclerView) this.f9268M0.findViewById(R$id.ob_listview);
            this.f9278h0 = new ArrayList();
            if (m32896u() != null && m32896u().getIntent().getBooleanExtra("launchapp", false)) {
                C3810q.m24071b().m24070c("wakeapp_noti_click");
                this.f9288r0 = true;
            }
            m26810g3();
            m26808h3();
            this.f9291u0 = true;
            this.f9276f0.m32015l(new C2703k());
            C3810q.m24071b().m24070c("history_create_num");
            m26806i3(EZCallApplication.m26146c());
        }
        return this.f9268M0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        ViewGroup viewGroup;
        super.mo17304H0();
        try {
            if (this.f9283m0 != null) {
                C1764a.m28939b(this.f9258C0).m28936e(this.f9283m0);
            }
            View view = this.f9268M0;
            if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
                return;
            }
            viewGroup.removeView(this.f9268M0);
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
        View peekDecorView;
        super.mo26766V1(z);
        if (z) {
            try {
                FloatingActionButton floatingActionButton = this.f9286p0;
                if (floatingActionButton != null && floatingActionButton.m22345y()) {
                    this.f9286p0.m22373H(true);
                }
                MainActivity mainActivity = this.f9275e0;
                if (mainActivity == null) {
                    return;
                }
                InputMethodManager inputMethodManager = (InputMethodManager) mainActivity.getSystemService("input_method");
                if (inputMethodManager != null && inputMethodManager.isActive() && this.f9275e0.getWindow() != null && (peekDecorView = this.f9275e0.getWindow().peekDecorView()) != null && peekDecorView.getWindowToken() != null) {
                    inputMethodManager.hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
                }
                C3810q.m24071b().m24070c("in_recent");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
        if (C3711a1.m24615M() && !this.f9288r0) {
            C3711a1.m24498q1(false);
            this.f9288r0 = true;
            m26814e3();
        }
        C2225t c2225t = this.f9277g0;
        if (c2225t != null && EZCallApplication.f9910d) {
            c2225t.m31967i();
            EZCallApplication.f9910d = false;
        }
        if (!C3784b.f12036a || this.f9292v0 == null) {
            return;
        }
        if (C3784b.m24144b(this.f9258C0)) {
            C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
        }
        C3784b.f12036a = false;
        m26790q3(this.f9292v0);
    }

    /* renamed from: a3 */
    public void m26822a3() {
        MainActivity mainActivity;
        try {
            if (!m32917k0() || (mainActivity = this.f9275e0) == null || mainActivity.isFinishing()) {
                return;
            }
            AlertDialog create = new AlertDialog.Builder(this.f9275e0).setMessage(EZCallApplication.m26146c().getResources().getString(R$string.delete_all_call)).setPositiveButton(m32941X().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC2693e()).setNegativeButton(m32941X().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC2692d()).create();
            create.show();
            create.getButton(-1).setTextColor(this.f9266K0);
            create.getButton(-2).setTextColor(m32941X().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e3 */
    public void m26814e3() {
        try {
            if (!C3776a.m24160e(this.f9258C0)) {
                return;
            }
            if (!this.f9267L0) {
                this.f9285o0.setVisibility(0);
                this.f9267L0 = false;
            }
            this.f9272Q0 = C3714b1.m24440r();
            C3772i0.m24190a().f12015b.execute(new RunnableC2688a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f3 */
    public void m26812f3() {
        try {
            List<CallLogBean> list = this.f9279i0;
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.clear();
            for (int i = 0; i < this.f9279i0.size(); i++) {
                CallLogBean callLogBean = this.f9279i0.get(i);
                int i2 = this.f9256A0;
                if (i2 == 0) {
                    arrayList.clear();
                    arrayList.addAll(this.f9279i0);
                } else if (i2 == 1) {
                    if (callLogBean.m24934O() == 1) {
                        arrayList.add(callLogBean);
                    }
                } else if (i2 == 2) {
                    if (callLogBean.m24934O() == 2) {
                        arrayList.add(callLogBean);
                    }
                } else if (i2 == 3 && callLogBean.m24934O() == 3) {
                    arrayList.add(callLogBean);
                }
            }
            if (arrayList.size() <= 0) {
                Toast.makeText(EZCallApplication.m26146c(), EZCallApplication.m26146c().getResources().getString(R$string.no_calllogs), 0).show();
            } else if (this.f9277g0 != null) {
                this.f9278h0.clear();
                this.f9278h0.addAll(arrayList);
                this.f9277g0.m27833O(this.f9278h0);
                this.f9277g0.m31967i();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.iv_select_all /* 2131297041 */:
                try {
                    if (!this.f9265J0) {
                        this.f9265J0 = true;
                        List<CallLogBean> list = this.f9278h0;
                        if (list != null && list.size() > 0) {
                            for (int i = 0; i < this.f9278h0.size(); i++) {
                                this.f9278h0.get(i).m24930Q0(true);
                            }
                            this.f9264I0.clear();
                            this.f9264I0.addAll(this.f9278h0);
                        }
                    } else {
                        this.f9265J0 = false;
                        List<CallLogBean> list2 = this.f9278h0;
                        if (list2 != null && list2.size() > 0) {
                            for (int i2 = 0; i2 < this.f9278h0.size(); i2++) {
                                this.f9278h0.get(i2).m24930Q0(false);
                            }
                        }
                        this.f9264I0.clear();
                    }
                    m26794o3();
                    C2225t c2225t = this.f9277g0;
                    if (c2225t == null) {
                        return;
                    }
                    c2225t.m31967i();
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.iv_select_delete /* 2131297042 */:
                try {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 < 23) {
                        m26820b3();
                        return;
                    } else if (C3776a.m24156i(EZCallApplication.m26146c())) {
                        m26820b3();
                        return;
                    } else {
                        try {
                            if (i3 < 29) {
                                Intent intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                                intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", C3767h1.m24275M(EZCallApplication.m26146c()));
                                startActivityForResult(intent, ErrorCode.ERROR_CODE_PATH_ERROR);
                                return;
                            }
                            RoleManager roleManager = (RoleManager) this.f9258C0.getSystemService(RoleManager.class);
                            if (roleManager == null || !roleManager.isRoleAvailable("android.app.role.DIALER")) {
                                return;
                            }
                            if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("default_dialer", "This app is the default dialer app");
                                }
                                m26820b3();
                                return;
                            }
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("default_dialer", "This app isn't the default dialer app");
                            }
                            startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), ErrorCode.ERROR_CODE_PATH_ERROR);
                            return;
                        } catch (Exception e2) {
                            m26820b3();
                            e2.printStackTrace();
                            return;
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case R$id.select_close /* 2131297585 */:
                m26784t3();
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: v0 */
    public void mo26781v0(Bundle bundle) {
        super.mo26781v0(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: w0 */
    public void mo17298w0(int i, int i2, Intent intent) {
        super.mo17298w0(i, i2, intent);
        if (i != 999 || !C3776a.m24156i(EZCallApplication.m26146c())) {
            return;
        }
        C3810q.m24071b().m24070c("delete_request_default_dialer_enabled");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f9258C0 = context;
        MainActivity mainActivity = (MainActivity) context;
        this.f9275e0 = mainActivity;
        this.f9286p0 = (FloatingActionButton) mainActivity.findViewById(R$id.float_button);
        MainActivity mainActivity2 = this.f9275e0;
        if (mainActivity2 instanceof AbstractC2718s) {
            this.f9290t0 = mainActivity2;
        }
    }
}
