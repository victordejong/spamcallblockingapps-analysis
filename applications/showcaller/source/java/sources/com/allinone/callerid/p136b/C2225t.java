package com.allinone.callerid.p136b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.SpamCall;
import com.allinone.callerid.customview.MyListView;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.mvc.controller.recorder.RecordListActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.start.PermissionActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.hzy.lib7z.ErrorCode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.b.t */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t.class */
public class C2225t extends RecyclerView.Adapter {

    /* renamed from: d */
    private final Activity f7807d;

    /* renamed from: e */
    private boolean f7808e;

    /* renamed from: g */
    private LayoutInflater f7810g;

    /* renamed from: h */
    private HashMap<String, Integer> f7811h;

    /* renamed from: i */
    private ArrayList<SpamCall> f7812i;

    /* renamed from: j */
    private Context f7813j;

    /* renamed from: k */
    private boolean f7814k;

    /* renamed from: l */
    private int f7815l;

    /* renamed from: m */
    private int f7816m;

    /* renamed from: n */
    private boolean f7817n;

    /* renamed from: q */
    private String f7820q;

    /* renamed from: r */
    private String f7821r;

    /* renamed from: s */
    private int f7822s;

    /* renamed from: t */
    private int f7823t;

    /* renamed from: u */
    private int f7824u;

    /* renamed from: v */
    private int f7825v;

    /* renamed from: w */
    private String f7826w;

    /* renamed from: x */
    private boolean f7827x;

    /* renamed from: y */
    private AbstractC2240m f7828y;

    /* renamed from: z */
    private AbstractC2239l f7829z;

    /* renamed from: o */
    private final int f7818o = ErrorCode.ERROR_CODE_PATH_ERROR;

    /* renamed from: p */
    private final int f7819p = 1001;

    /* renamed from: f */
    private List<CallLogBean> f7809f = new ArrayList();

    /* renamed from: com.allinone.callerid.b.t$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$a.class */
    class View$OnClickListenerC2226a implements View.OnClickListener {
        View$OnClickListenerC2226a() {
            C2225t.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3810q.m24071b().m24070c("permission_guide_click");
            Intent intent = new Intent();
            intent.setClass(EZCallApplication.m26146c(), PermissionActivity.class);
            C2225t.this.f7813j.startActivity(intent);
            if (C2225t.this.f7807d != null) {
                C2225t.this.f7807d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.t$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$b.class */
    class View$OnClickListenerC2227b implements View.OnClickListener {
        View$OnClickListenerC2227b() {
            C2225t.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3810q.m24071b().m24070c("permission_guide_click");
            Intent intent = new Intent();
            intent.setClass(EZCallApplication.m26146c(), PermissionActivity.class);
            C2225t.this.f7813j.startActivity(intent);
            if (C2225t.this.f7807d != null) {
                C2225t.this.f7807d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.t$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$c.class */
    public class View$OnClickListenerC2228c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C2238k f7832d;

        /* renamed from: com.allinone.callerid.b.t$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$c$a.class */
        class animationAnimation$AnimationListenerC2229a implements Animation.AnimationListener {
            animationAnimation$AnimationListenerC2229a() {
                View$OnClickListenerC2228c.this = r4;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                View$OnClickListenerC2228c.this.f7832d.f7869u.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        View$OnClickListenerC2228c(C2238k c2238k) {
            C2225t.this = r4;
            this.f7832d = c2238k;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2225t.this.f7827x = true;
            C3810q.m24071b().m24070c("find_spamcall_click");
            if (C2225t.this.f7829z != null) {
                C2225t.this.f7829z.mo26771a();
            }
            Animation loadAnimation = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_shouqi);
            loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC2229a());
            this.f7832d.f7869u.startAnimation(loadAnimation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.t$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$d.class */
    public class View$OnClickListenerC2230d implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C2238k f7835d;

        /* renamed from: com.allinone.callerid.b.t$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$d$a.class */
        class animationAnimation$AnimationListenerC2231a implements Animation.AnimationListener {
            animationAnimation$AnimationListenerC2231a() {
                View$OnClickListenerC2230d.this = r4;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                View$OnClickListenerC2230d.this.f7835d.f7869u.setVisibility(8);
                if (C3767h1.m24260a0()) {
                    View$OnClickListenerC2230d.this.f7835d.f7873y.setVisibility(0);
                    if (C2225t.this.f7808e) {
                        return;
                    }
                    C3810q.m24071b().m24070c("permission_guide_show");
                    C2225t.this.f7808e = true;
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        View$OnClickListenerC2230d(C2238k c2238k) {
            C2225t.this = r4;
            this.f7835d = c2238k;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2225t.this.f7827x = true;
            C3810q.m24071b().m24070c("find_spamcall_close");
            Animation loadAnimation = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_shouqi);
            loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC2231a());
            this.f7835d.f7869u.startAnimation(loadAnimation);
        }
    }

    /* renamed from: com.allinone.callerid.b.t$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$e.class */
    class View$OnClickListenerC2232e implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7838d;

        View$OnClickListenerC2232e(int i) {
            C2225t.this = r4;
            this.f7838d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2225t.this.f7828y != null) {
                C2225t.this.f7828y.mo26772b(view, this.f7838d - 1);
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.t$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$f.class */
    class View$OnLongClickListenerC2233f implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7840d;

        View$OnLongClickListenerC2233f(int i) {
            C2225t.this = r4;
            this.f7840d = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (C2225t.this.f7828y != null) {
                C2225t.this.f7828y.mo26773a(view, this.f7840d - 1);
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.allinone.callerid.b.t$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$g.class */
    class View$OnClickListenerC2234g implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7842d;

        View$OnClickListenerC2234g(CallLogBean callLogBean) {
            C2225t.this = r4;
            this.f7842d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3810q.m24071b().m24070c("record_icon_click");
            Intent intent = new Intent(C2225t.this.f7813j, RecordListActivity.class);
            intent.putExtra("recordnumber", this.f7842d.m24880o());
            intent.putExtra("recordname", this.f7842d.m24884m());
            intent.addFlags(268435456);
            C2225t.this.f7813j.startActivity(intent);
            if (C2225t.this.f7807d != null) {
                C2225t.this.f7807d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.t$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$h.class */
    class View$OnClickListenerC2235h implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7844d;

        View$OnClickListenerC2235h(CallLogBean callLogBean) {
            C2225t.this = r4;
            this.f7844d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3810q.m24071b().m24070c("comment_icon_click");
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_tony", this.f7844d);
            bundle.putBoolean("is_to_comment", true);
            intent.putExtras(bundle);
            intent.setClass(C2225t.this.f7813j, UnknownContactActivity.class);
            C2225t.this.f7813j.startActivity(intent);
            if (C2225t.this.f7807d != null) {
                C2225t.this.f7807d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.t$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$i.class */
    public class View$OnClickListenerC2236i implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7846d;

        View$OnClickListenerC2236i(CallLogBean callLogBean) {
            C2225t.this = r4;
            this.f7846d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                String m24880o = this.f7846d.m24880o();
                if (m24880o != null) {
                    if (!"".equals(m24880o) && !"-1".equals(m24880o) && !"-2".equals(m24880o) && !"-3".equals(m24880o)) {
                        if (!C2225t.this.f7814k) {
                            C3809p0.m24078a(C2225t.this.f7813j, m24880o);
                        } else if (C3711a1.m24639G()) {
                            C3714b1.m24454d(C2225t.this.f7813j, C3711a1.m24504p(), m24880o);
                        } else if (Build.VERSION.SDK_INT >= 22) {
                            C3714b1.m24439s(C2225t.this.f7813j, m24880o);
                        } else {
                            C3809p0.m24078a(C2225t.this.f7813j, m24880o);
                        }
                    }
                    Toast.makeText(C2225t.this.f7813j, C2225t.this.f7813j.getResources().getString(R$string.unknow_call), 1).show();
                }
            } catch (Exception e) {
                Toast.makeText(C2225t.this.f7813j, C2225t.this.f7813j.getResources().getString(R$string.no_phone_related), 1).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.t$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$j.class */
    private static class C2237j extends RecyclerView.AbstractC0905b0 {

        /* renamed from: A */
        private TextView f7848A;

        /* renamed from: B */
        private TextView f7849B;

        /* renamed from: C */
        private TextView f7850C;

        /* renamed from: D */
        private TextView f7851D;

        /* renamed from: E */
        private TextView f7852E;

        /* renamed from: F */
        private ImageView f7853F;

        /* renamed from: G */
        private FrameLayout f7854G;

        /* renamed from: H */
        private ImageView f7855H;

        /* renamed from: I */
        private ImageView f7856I;

        /* renamed from: J */
        private ImageView f7857J;

        /* renamed from: K */
        private ImageView f7858K;

        /* renamed from: L */
        private LinearLayout f7859L;

        /* renamed from: M */
        private LinearLayout f7860M;

        /* renamed from: N */
        private LinearLayout f7861N;

        /* renamed from: u */
        private TextView f7862u;

        /* renamed from: v */
        private ImageView f7863v;

        /* renamed from: w */
        private ImageView f7864w;

        /* renamed from: x */
        private TextView f7865x;

        /* renamed from: y */
        private TextView f7866y;

        /* renamed from: z */
        private TextView f7867z;

        C2237j(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            Typeface m24360a = C3739f1.m24360a();
            this.f7862u = (TextView) view.findViewById(R$id.tv_date);
            this.f7864w = (ImageView) view.findViewById(R$id.record_photo);
            this.f7863v = (ImageView) view.findViewById(R$id.call_type);
            this.f7858K = (ImageView) view.findViewById(R$id.iv_comment);
            this.f7857J = (ImageView) view.findViewById(R$id.iv_record);
            this.f7859L = (LinearLayout) view.findViewById(R$id.ll_record);
            this.f7860M = (LinearLayout) view.findViewById(R$id.ll_comment);
            this.f7861N = (LinearLayout) view.findViewById(R$id.ll_comment_record);
            this.f7865x = (TextView) view.findViewById(R$id.name);
            this.f7850C = (TextView) view.findViewById(R$id.tv_comment_count);
            this.f7851D = (TextView) view.findViewById(R$id.tv_record_count);
            this.f7866y = (TextView) view.findViewById(2131297757);
            this.f7867z = (TextView) view.findViewById(R$id.tv_spam);
            this.f7848A = (TextView) view.findViewById(R$id.tv_counts);
            this.f7849B = (TextView) view.findViewById(R$id.tv_number_type);
            this.f7852E = (TextView) view.findViewById(R$id.belong_area);
            this.f7853F = (ImageView) view.findViewById(R$id.call_btn_dial);
            this.f7854G = (FrameLayout) view.findViewById(R$id.ripple_bg);
            this.f7855H = (ImageView) view.findViewById(R$id.iv_sim1);
            this.f7856I = (ImageView) view.findViewById(R$id.iv_sim2);
            this.f7865x.setTypeface(m24359b);
            this.f7848A.setTypeface(m24359b);
            this.f7866y.setTypeface(m24359b);
            this.f7849B.setTypeface(m24359b);
            this.f7851D.setTypeface(m24359b);
            this.f7850C.setTypeface(m24359b);
            this.f7867z.setTypeface(m24359b);
            this.f7862u.setTypeface(m24360a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.b.t$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$k.class */
    public static class C2238k extends RecyclerView.AbstractC0905b0 {

        /* renamed from: A */
        private ImageView f7868A;

        /* renamed from: u */
        private RelativeLayout f7869u;

        /* renamed from: v */
        private ImageView f7870v;

        /* renamed from: w */
        private TextView f7871w;

        /* renamed from: x */
        private FrameLayout f7872x;

        /* renamed from: y */
        private FrameLayout f7873y;

        /* renamed from: z */
        private C2244w f7874z;

        C2238k(Activity activity, View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            MyListView myListView = (MyListView) view.findViewById(R$id.lv_spamcalls);
            C2244w c2244w = new C2244w(activity);
            this.f7874z = c2244w;
            myListView.setAdapter((ListAdapter) c2244w);
            this.f7873y = (FrameLayout) view.findViewById(R$id.rl_permission_tip);
            this.f7869u = (RelativeLayout) view.findViewById(R$id.rl_spamcall);
            this.f7870v = (ImageView) view.findViewById(R$id.lib_close_spamcall);
            TextView textView = (TextView) view.findViewById(R$id.tv_spamcall_tip);
            this.f7871w = textView;
            textView.setTypeface(m24359b);
            ((TextView) view.findViewById(R$id.tv_block_all)).setTypeface(m24359b);
            this.f7872x = (FrameLayout) view.findViewById(R$id.fl_block_all);
            this.f7868A = (ImageView) view.findViewById(R$id.tv_top_record_ok);
            ((TextView) view.findViewById(R$id.record_tip_tv)).setTypeface(m24359b);
            ((TextView) view.findViewById(R$id.record_tip_tv2)).setTypeface(m24359b);
        }
    }

    /* renamed from: com.allinone.callerid.b.t$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$l.class */
    public interface AbstractC2239l {
        /* renamed from: a */
        void mo26771a();
    }

    /* renamed from: com.allinone.callerid.b.t$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/t$m.class */
    public interface AbstractC2240m {
        /* renamed from: a */
        void mo26773a(View view, int i);

        /* renamed from: b */
        void mo26772b(View view, int i);
    }

    public C2225t(ArrayList<SpamCall> arrayList, Activity activity) {
        this.f7813j = activity;
        ArrayList<SpamCall> arrayList2 = new ArrayList<>();
        this.f7812i = arrayList2;
        arrayList2.addAll(arrayList);
        this.f7810g = LayoutInflater.from(this.f7813j);
        this.f7807d = activity;
        this.f7814k = C3714b1.m24448j(this.f7813j.getApplicationContext());
        m27834N();
    }

    /* renamed from: L */
    private void m27836L(View view, CallLogBean callLogBean) {
        view.setOnClickListener(new View$OnClickListenerC2236i(callLogBean));
    }

    /* renamed from: N */
    private void m27834N() {
        this.f7822s = C3719c1.m24432a(this.f7813j, R$attr.color_333333, R$color.color_333333);
        this.f7823t = C3719c1.m24432a(this.f7813j, R$attr.color_weak, R$color.color_999999);
        this.f7824u = C3719c1.m24432a(this.f7813j, R$attr.color_FF0000, R$color.color_FF0000);
        this.f7825v = C3719c1.m24432a(this.f7813j, R$attr.color_333333, R$color.color_333333);
        this.f7815l = C3719c1.m24431b(this.f7813j, R$attr.bg_tag, R$drawable.bg_tag);
        this.f7816m = C3719c1.m24431b(this.f7813j, R$attr.bg_tag_identified, R$drawable.bg_tag_identified);
        this.f7826w = this.f7813j.getResources().getString(R$string.unknow_call);
    }

    /* renamed from: A */
    public void m27847A(AbstractC2239l abstractC2239l) {
        this.f7829z = abstractC2239l;
    }

    /* renamed from: B */
    public void m27846B(AbstractC2240m abstractC2240m) {
        this.f7828y = abstractC2240m;
    }

    /* renamed from: K */
    public void m27837K(List<SpamCall> list, boolean z) {
        if (z) {
            this.f7812i.clear();
        }
        this.f7812i.addAll(list);
    }

    /* renamed from: M */
    public void m27835M(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        List<CallLogBean> list2 = this.f7809f;
        if (list2 != null) {
            list2.clear();
            this.f7809f.addAll(list);
        }
        this.f7811h = hashMap;
    }

    /* renamed from: O */
    public void m27833O(List<CallLogBean> list) {
        List<CallLogBean> list2 = this.f7809f;
        if (list2 != null) {
            list2.clear();
            this.f7809f.addAll(list);
        }
    }

    /* renamed from: P */
    public void m27832P(boolean z) {
        this.f7817n = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        return this.f7809f.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        if (i == 0) {
            return ErrorCode.ERROR_CODE_PATH_ERROR;
        }
        return 1001;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x04cb A[Catch: Exception -> 0x0801, TRY_ENTER, TryCatch #2 {Exception -> 0x0801, blocks: (B:6:0x0017, B:8:0x0034, B:9:0x004a, B:11:0x0055, B:13:0x005e, B:25:0x014f, B:26:0x0157, B:28:0x016c, B:31:0x018d, B:35:0x019b, B:37:0x01ba, B:39:0x01c5, B:41:0x01cf, B:42:0x01e6, B:44:0x0205, B:46:0x020f, B:48:0x021c, B:49:0x0256, B:51:0x026c, B:53:0x0282, B:57:0x0292, B:59:0x029d, B:61:0x02a4, B:62:0x030e, B:63:0x031b, B:65:0x0326, B:67:0x0331, B:70:0x0343, B:72:0x034e, B:73:0x0387, B:75:0x03aa, B:77:0x03c6, B:80:0x03d4, B:83:0x03e6, B:85:0x03f1, B:90:0x0408, B:92:0x0413, B:95:0x0425, B:97:0x0430, B:98:0x043d, B:100:0x0447, B:101:0x0456, B:103:0x0461, B:114:0x0485, B:115:0x0493, B:116:0x04a1, B:117:0x04af, B:118:0x04bd, B:119:0x04cb, B:121:0x04d7, B:123:0x04e1, B:125:0x04e9, B:127:0x04fe, B:130:0x050b, B:133:0x051e, B:135:0x055d, B:137:0x0563, B:140:0x0571, B:143:0x0579, B:144:0x0583, B:146:0x058e, B:148:0x0594, B:150:0x059b, B:152:0x05a8, B:153:0x05fd, B:155:0x0612, B:157:0x0618, B:159:0x0625, B:160:0x063d, B:162:0x0644, B:164:0x0651, B:165:0x0669, B:167:0x0680, B:169:0x06cf, B:173:0x06f9, B:179:0x070d, B:181:0x0718, B:183:0x0727, B:185:0x0739, B:193:0x07ae, B:194:0x07b6, B:196:0x07cc, B:15:0x00e9, B:17:0x00f0, B:19:0x00fd, B:20:0x0113, B:22:0x0120, B:23:0x0136, B:187:0x0743, B:189:0x075c, B:191:0x0769), top: B:227:0x0017, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x050b A[Catch: Exception -> 0x0801, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0801, blocks: (B:6:0x0017, B:8:0x0034, B:9:0x004a, B:11:0x0055, B:13:0x005e, B:25:0x014f, B:26:0x0157, B:28:0x016c, B:31:0x018d, B:35:0x019b, B:37:0x01ba, B:39:0x01c5, B:41:0x01cf, B:42:0x01e6, B:44:0x0205, B:46:0x020f, B:48:0x021c, B:49:0x0256, B:51:0x026c, B:53:0x0282, B:57:0x0292, B:59:0x029d, B:61:0x02a4, B:62:0x030e, B:63:0x031b, B:65:0x0326, B:67:0x0331, B:70:0x0343, B:72:0x034e, B:73:0x0387, B:75:0x03aa, B:77:0x03c6, B:80:0x03d4, B:83:0x03e6, B:85:0x03f1, B:90:0x0408, B:92:0x0413, B:95:0x0425, B:97:0x0430, B:98:0x043d, B:100:0x0447, B:101:0x0456, B:103:0x0461, B:114:0x0485, B:115:0x0493, B:116:0x04a1, B:117:0x04af, B:118:0x04bd, B:119:0x04cb, B:121:0x04d7, B:123:0x04e1, B:125:0x04e9, B:127:0x04fe, B:130:0x050b, B:133:0x051e, B:135:0x055d, B:137:0x0563, B:140:0x0571, B:143:0x0579, B:144:0x0583, B:146:0x058e, B:148:0x0594, B:150:0x059b, B:152:0x05a8, B:153:0x05fd, B:155:0x0612, B:157:0x0618, B:159:0x0625, B:160:0x063d, B:162:0x0644, B:164:0x0651, B:165:0x0669, B:167:0x0680, B:169:0x06cf, B:173:0x06f9, B:179:0x070d, B:181:0x0718, B:183:0x0727, B:185:0x0739, B:193:0x07ae, B:194:0x07b6, B:196:0x07cc, B:15:0x00e9, B:17:0x00f0, B:19:0x00fd, B:20:0x0113, B:22:0x0120, B:23:0x0136, B:187:0x0743, B:189:0x075c, B:191:0x0769), top: B:227:0x0017, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0594 A[Catch: Exception -> 0x0801, TryCatch #2 {Exception -> 0x0801, blocks: (B:6:0x0017, B:8:0x0034, B:9:0x004a, B:11:0x0055, B:13:0x005e, B:25:0x014f, B:26:0x0157, B:28:0x016c, B:31:0x018d, B:35:0x019b, B:37:0x01ba, B:39:0x01c5, B:41:0x01cf, B:42:0x01e6, B:44:0x0205, B:46:0x020f, B:48:0x021c, B:49:0x0256, B:51:0x026c, B:53:0x0282, B:57:0x0292, B:59:0x029d, B:61:0x02a4, B:62:0x030e, B:63:0x031b, B:65:0x0326, B:67:0x0331, B:70:0x0343, B:72:0x034e, B:73:0x0387, B:75:0x03aa, B:77:0x03c6, B:80:0x03d4, B:83:0x03e6, B:85:0x03f1, B:90:0x0408, B:92:0x0413, B:95:0x0425, B:97:0x0430, B:98:0x043d, B:100:0x0447, B:101:0x0456, B:103:0x0461, B:114:0x0485, B:115:0x0493, B:116:0x04a1, B:117:0x04af, B:118:0x04bd, B:119:0x04cb, B:121:0x04d7, B:123:0x04e1, B:125:0x04e9, B:127:0x04fe, B:130:0x050b, B:133:0x051e, B:135:0x055d, B:137:0x0563, B:140:0x0571, B:143:0x0579, B:144:0x0583, B:146:0x058e, B:148:0x0594, B:150:0x059b, B:152:0x05a8, B:153:0x05fd, B:155:0x0612, B:157:0x0618, B:159:0x0625, B:160:0x063d, B:162:0x0644, B:164:0x0651, B:165:0x0669, B:167:0x0680, B:169:0x06cf, B:173:0x06f9, B:179:0x070d, B:181:0x0718, B:183:0x0727, B:185:0x0739, B:193:0x07ae, B:194:0x07b6, B:196:0x07cc, B:15:0x00e9, B:17:0x00f0, B:19:0x00fd, B:20:0x0113, B:22:0x0120, B:23:0x0136, B:187:0x0743, B:189:0x075c, B:191:0x0769), top: B:227:0x0017, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x06cf A[Catch: Exception -> 0x0801, TRY_LEAVE, TryCatch #2 {Exception -> 0x0801, blocks: (B:6:0x0017, B:8:0x0034, B:9:0x004a, B:11:0x0055, B:13:0x005e, B:25:0x014f, B:26:0x0157, B:28:0x016c, B:31:0x018d, B:35:0x019b, B:37:0x01ba, B:39:0x01c5, B:41:0x01cf, B:42:0x01e6, B:44:0x0205, B:46:0x020f, B:48:0x021c, B:49:0x0256, B:51:0x026c, B:53:0x0282, B:57:0x0292, B:59:0x029d, B:61:0x02a4, B:62:0x030e, B:63:0x031b, B:65:0x0326, B:67:0x0331, B:70:0x0343, B:72:0x034e, B:73:0x0387, B:75:0x03aa, B:77:0x03c6, B:80:0x03d4, B:83:0x03e6, B:85:0x03f1, B:90:0x0408, B:92:0x0413, B:95:0x0425, B:97:0x0430, B:98:0x043d, B:100:0x0447, B:101:0x0456, B:103:0x0461, B:114:0x0485, B:115:0x0493, B:116:0x04a1, B:117:0x04af, B:118:0x04bd, B:119:0x04cb, B:121:0x04d7, B:123:0x04e1, B:125:0x04e9, B:127:0x04fe, B:130:0x050b, B:133:0x051e, B:135:0x055d, B:137:0x0563, B:140:0x0571, B:143:0x0579, B:144:0x0583, B:146:0x058e, B:148:0x0594, B:150:0x059b, B:152:0x05a8, B:153:0x05fd, B:155:0x0612, B:157:0x0618, B:159:0x0625, B:160:0x063d, B:162:0x0644, B:164:0x0651, B:165:0x0669, B:167:0x0680, B:169:0x06cf, B:173:0x06f9, B:179:0x070d, B:181:0x0718, B:183:0x0727, B:185:0x0739, B:193:0x07ae, B:194:0x07b6, B:196:0x07cc, B:15:0x00e9, B:17:0x00f0, B:19:0x00fd, B:20:0x0113, B:22:0x0120, B:23:0x0136, B:187:0x0743, B:189:0x075c, B:191:0x0769), top: B:227:0x0017, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x07b6 A[Catch: Exception -> 0x0801, TRY_ENTER, TryCatch #2 {Exception -> 0x0801, blocks: (B:6:0x0017, B:8:0x0034, B:9:0x004a, B:11:0x0055, B:13:0x005e, B:25:0x014f, B:26:0x0157, B:28:0x016c, B:31:0x018d, B:35:0x019b, B:37:0x01ba, B:39:0x01c5, B:41:0x01cf, B:42:0x01e6, B:44:0x0205, B:46:0x020f, B:48:0x021c, B:49:0x0256, B:51:0x026c, B:53:0x0282, B:57:0x0292, B:59:0x029d, B:61:0x02a4, B:62:0x030e, B:63:0x031b, B:65:0x0326, B:67:0x0331, B:70:0x0343, B:72:0x034e, B:73:0x0387, B:75:0x03aa, B:77:0x03c6, B:80:0x03d4, B:83:0x03e6, B:85:0x03f1, B:90:0x0408, B:92:0x0413, B:95:0x0425, B:97:0x0430, B:98:0x043d, B:100:0x0447, B:101:0x0456, B:103:0x0461, B:114:0x0485, B:115:0x0493, B:116:0x04a1, B:117:0x04af, B:118:0x04bd, B:119:0x04cb, B:121:0x04d7, B:123:0x04e1, B:125:0x04e9, B:127:0x04fe, B:130:0x050b, B:133:0x051e, B:135:0x055d, B:137:0x0563, B:140:0x0571, B:143:0x0579, B:144:0x0583, B:146:0x058e, B:148:0x0594, B:150:0x059b, B:152:0x05a8, B:153:0x05fd, B:155:0x0612, B:157:0x0618, B:159:0x0625, B:160:0x063d, B:162:0x0644, B:164:0x0651, B:165:0x0669, B:167:0x0680, B:169:0x06cf, B:173:0x06f9, B:179:0x070d, B:181:0x0718, B:183:0x0727, B:185:0x0739, B:193:0x07ae, B:194:0x07b6, B:196:0x07cc, B:15:0x00e9, B:17:0x00f0, B:19:0x00fd, B:20:0x0113, B:22:0x0120, B:23:0x0136, B:187:0x0743, B:189:0x075c, B:191:0x0769), top: B:227:0x0017, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0743 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4498p(androidx.recyclerview.widget.RecyclerView.AbstractC0905b0 r7, int r8) {
        /*
            Method dump skipped, instructions count: 2371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2225t.mo4498p(androidx.recyclerview.widget.RecyclerView$b0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        if (i != 999) {
            if (i == 1001) {
                return new C2237j(this.f7810g.inflate(R$layout.contact_record_list_item_recycleview, viewGroup, false));
            }
            return null;
        }
        return new C2238k(this.f7807d, this.f7810g.inflate(R$layout.view_head_share, viewGroup, false));
    }
}
