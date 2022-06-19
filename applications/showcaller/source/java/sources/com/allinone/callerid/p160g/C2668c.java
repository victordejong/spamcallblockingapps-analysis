package com.allinone.callerid.p160g;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.customview.MyListView;
import com.allinone.callerid.customview.NestedScrollingListView;
import com.allinone.callerid.customview.SideBar;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactslist.EditFavActivity;
import com.allinone.callerid.p136b.C2187i;
import com.allinone.callerid.p136b.C2206m;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2956c;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2958e;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2959f;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g;
import com.allinone.callerid.p162i.p163a.p188r.C2942a;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.github.clans.fab.FloatingActionButton;
import com.hzy.lib7z.ErrorCode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.g.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c.class */
public class C2668c extends Fragment {

    /* renamed from: A0 */
    private BaseEditText f9199A0;

    /* renamed from: B0 */
    private ViewStub f9200B0;

    /* renamed from: C0 */
    private Context f9201C0;

    /* renamed from: D0 */
    private TextWatcher f9202D0;

    /* renamed from: F0 */
    private MainActivity f9204F0;

    /* renamed from: G0 */
    private View f9205G0;

    /* renamed from: H0 */
    private boolean f9206H0;

    /* renamed from: K0 */
    private Typeface f9209K0;

    /* renamed from: L0 */
    private Typeface f9210L0;

    /* renamed from: e0 */
    public FloatingActionButton f9211e0;

    /* renamed from: i0 */
    private NestedScrollingListView f9215i0;

    /* renamed from: j0 */
    private int f9216j0;

    /* renamed from: k0 */
    private MyListView f9217k0;

    /* renamed from: l0 */
    private C2206m f9218l0;

    /* renamed from: m0 */
    private C2683m f9219m0;

    /* renamed from: n0 */
    private SideBar f9220n0;

    /* renamed from: o0 */
    private ArrayList<CallLogBean> f9221o0;

    /* renamed from: q0 */
    private C2187i f9223q0;

    /* renamed from: r0 */
    private LinearLayout f9224r0;

    /* renamed from: s0 */
    private TextView f9225s0;

    /* renamed from: u0 */
    private ArrayList<CallLogBean> f9227u0;

    /* renamed from: v0 */
    private ArrayList<CallLogBean> f9228v0;

    /* renamed from: w0 */
    private LinearLayout f9229w0;

    /* renamed from: y0 */
    private FrameLayout f9231y0;

    /* renamed from: z0 */
    private ImageView f9232z0;

    /* renamed from: f0 */
    public List<String> f9212f0 = new ArrayList();

    /* renamed from: g0 */
    public ArrayList<CallLogBean> f9213g0 = new ArrayList<>();

    /* renamed from: h0 */
    public List<CallLogBean> f9214h0 = new ArrayList();

    /* renamed from: p0 */
    private ArrayList<CallLogBean> f9222p0 = new ArrayList<>();

    /* renamed from: t0 */
    private List<String> f9226t0 = new ArrayList();

    /* renamed from: x0 */
    private HandlerC2682l f9230x0 = new HandlerC2682l(this, null);

    /* renamed from: E0 */
    public List<CallLogBean> f9203E0 = new ArrayList();

    /* renamed from: I0 */
    private Handler f9207I0 = new Handler();

    /* renamed from: J0 */
    private Runnable f9208J0 = new RunnableC2672d();

    /* renamed from: com.allinone.callerid.g.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$a.class */
    public class C2669a implements AbstractC2958e {
        C2669a() {
            C2668c.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2958e
        /* renamed from: a */
        public void mo25301a(List<CallLogBean> list) {
            C2668c.this.f9228v0.addAll(list);
            C2668c.this.f9230x0.sendEmptyMessage(ErrorCode.ERROR_CODE_PATH_ERROR);
        }
    }

    /* renamed from: com.allinone.callerid.g.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$b.class */
    public class C2670b implements AbstractC2956c {
        C2670b() {
            C2668c.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2956c
        /* renamed from: a */
        public void mo25309a(List<String> list, List<String> list2, List<CallLogBean> list3) {
            C2668c.this.f9226t0 = list2;
            C2668c c2668c = C2668c.this;
            c2668c.f9212f0 = list;
            c2668c.f9214h0 = list3;
            c2668c.f9230x0.sendEmptyMessage(2222);
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2956c
        /* renamed from: b */
        public void mo25308b() {
            C2668c.this.f9230x0.sendEmptyMessage(3333);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$c.class */
    public class RunnableC2671c implements Runnable {
        RunnableC2671c() {
            C2668c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2668c.this.m26885P2();
            C2668c c2668c = C2668c.this;
            c2668c.m26882S2(c2668c.f9205G0);
            C2668c.this.m26886O2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.c$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$d.class */
    public class RunnableC2672d implements Runnable {

        /* renamed from: com.allinone.callerid.g.c$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$d$a.class */
        class C2673a implements AdapterView.OnItemClickListener {
            C2673a() {
                RunnableC2672d.this = r4;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    if (C2668c.this.f9222p0 != null && C2668c.this.f9222p0.size() > 0) {
                        CallLogBean callLogBean = (CallLogBean) C2668c.this.f9222p0.get(i);
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("contact_tony", callLogBean);
                        intent.putExtras(bundle);
                        intent.setClass(C2668c.this.f9204F0, ContactActivity.class);
                        C2668c.this.m32942W1(intent);
                        C2668c.this.f9204F0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    } else if (C2668c.this.f9221o0 == null || C2668c.this.f9221o0.size() <= 0) {
                    } else {
                        CallLogBean callLogBean2 = (CallLogBean) C2668c.this.f9221o0.get(i);
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("favtest", "contact:" + callLogBean2.toString());
                        }
                        Intent intent2 = new Intent();
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("contact_tony", callLogBean2);
                        intent2.putExtras(bundle2);
                        intent2.setClass(C2668c.this.f9204F0, ContactActivity.class);
                        C2668c.this.m32942W1(intent2);
                        C2668c.this.f9204F0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.g.c$d$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$d$b.class */
        class C2674b implements AbsListView.OnScrollListener {
            C2674b() {
                RunnableC2672d.this = r4;
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                FloatingActionButton floatingActionButton;
                if (i > C2668c.this.f9216j0) {
                    FloatingActionButton floatingActionButton2 = C2668c.this.f9211e0;
                    if (floatingActionButton2 != null && !floatingActionButton2.m22345y()) {
                        C2668c.this.f9211e0.m22349u(true);
                    }
                    try {
                        ((InputMethodManager) absListView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(absListView.getWindowToken(), 0);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (i < C2668c.this.f9216j0 && (floatingActionButton = C2668c.this.f9211e0) != null && floatingActionButton.m22345y()) {
                    C2668c.this.f9211e0.m22373H(true);
                }
                C2668c.this.f9216j0 = i;
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (C2668c.this.f9199A0 == null || !C2668c.this.f9199A0.isCursorVisible()) {
                    return;
                }
                C2668c.this.f9199A0.setCursorVisible(false);
            }
        }

        RunnableC2672d() {
            C2668c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2668c.this.m26884Q2();
            C2668c.this.m26883R2();
            C2668c.this.f9215i0.setOnItemClickListener(new C2673a());
            C2668c.this.f9215i0.setOnScrollListener(new C2674b());
            try {
                C2668c.this.f9219m0 = new C2683m(C2668c.this, null);
                C1764a.m28939b(C2668c.this.f9201C0).m28938c(C2668c.this.f9219m0, new IntentFilter("com.allinone.callerid.STARRED_DATA"));
                C3767h1.m24285G0(C2668c.this.f9204F0);
                C2668c.this.m26887N2();
                C2668c.this.m26881T2(false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.c$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$e.class */
    public class RunnableC2675e implements Runnable {
        RunnableC2675e() {
            C2668c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2668c.this.f9207I0.post(C2668c.this.f9208J0);
        }
    }

    /* renamed from: com.allinone.callerid.g.c$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$f.class */
    public class C2676f implements AbstractC2960g {
        C2676f() {
            C2668c.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g
        /* renamed from: a */
        public void mo25307a(ArrayList<CallLogBean> arrayList) {
            C2668c.this.f9227u0 = new ArrayList();
            C2668c.this.f9227u0.addAll(arrayList);
            C2668c.this.f9230x0.sendEmptyMessage(777);
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g
        /* renamed from: b */
        public void mo25306b() {
            try {
                C2668c.this.m26877X2();
                C2668c.this.f9224r0.setVisibility(8);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.c$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$g.class */
    public class View$OnClickListenerC2677g implements View.OnClickListener {
        View$OnClickListenerC2677g() {
            C2668c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C2668c.this.f9199A0.setText("");
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.c$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$h.class */
    public class C2678h implements TextWatcher {
        C2678h() {
            C2668c.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                String obj = C2668c.this.f9199A0.getText().toString();
                if ("".equals(obj)) {
                    C2668c.this.f9232z0.setVisibility(4);
                } else {
                    C2668c.this.f9232z0.setVisibility(0);
                }
                if (obj.length() > 0) {
                    C2668c c2668c = C2668c.this;
                    c2668c.f9222p0 = (ArrayList) c2668c.m26879V2(obj);
                    C2668c.this.f9224r0.setVisibility(8);
                    C2668c.this.f9223q0.m27869c(C2668c.this.f9222p0, obj);
                    C3810q.m24071b().m24070c("contact_search");
                } else {
                    C2668c.this.f9222p0.clear();
                    C2668c.this.f9224r0.setVisibility(0);
                    C2668c.this.f9223q0.m27869c(C2668c.this.f9221o0, "");
                    C2668c.this.f9199A0.setCursorVisible(false);
                }
                C2668c.this.f9215i0.setSelection(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.allinone.callerid.g.c$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$i.class */
    public class View$OnTouchListenerC2679i implements View.OnTouchListener {
        View$OnTouchListenerC2679i() {
            C2668c.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                C2668c.this.f9199A0.setCursorVisible(true);
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.g.c$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$j.class */
    public class C2680j implements SideBar.AbstractC2441a {
        C2680j() {
            C2668c.this = r4;
        }

        @Override // com.allinone.callerid.customview.SideBar.AbstractC2441a
        /* renamed from: a */
        public void mo25305a(String str) {
            int positionForSection = C2668c.this.f9223q0.getPositionForSection(str.charAt(0));
            if (positionForSection == -1) {
                C2668c.this.f9215i0.setSelection(positionForSection);
            } else if (positionForSection == 0) {
                C2668c.this.f9215i0.setSelection(positionForSection);
            } else {
                C2668c.this.f9215i0.setSelection(positionForSection + 1);
            }
            if (str.equals("☆")) {
                C2668c.this.f9215i0.setSelection(0);
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.c$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$k.class */
    public class View$OnClickListenerC2681k implements View.OnClickListener {
        View$OnClickListenerC2681k() {
            C2668c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2668c.this.m32942W1(new Intent(C2668c.this.f9204F0, EditFavActivity.class));
            C2668c.this.f9204F0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            C3810q.m24071b().m24070c("tv_edit");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.g.c$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$l.class */
    public static class HandlerC2682l extends Handler {

        /* renamed from: a */
        private WeakReference<C2668c> f9246a;

        private HandlerC2682l(C2668c c2668c) {
            this.f9246a = new WeakReference<>(c2668c);
        }

        /* synthetic */ HandlerC2682l(C2668c c2668c, RunnableC2671c runnableC2671c) {
            this(c2668c);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            C2668c c2668c = this.f9246a.get();
            if (c2668c != null) {
                int i = message.what;
                if (i == 666) {
                    try {
                        c2668c.m26877X2();
                        c2668c.f9224r0.setVisibility(8);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (i == 777) {
                    try {
                        if (c2668c.f9227u0 != null && c2668c.f9227u0.size() > 0) {
                            c2668c.f9200B0.setVisibility(8);
                            c2668c.f9224r0.setVisibility(0);
                            c2668c.f9221o0.clear();
                            c2668c.f9221o0.addAll(c2668c.f9227u0);
                        }
                        c2668c.f9223q0.m27870b(c2668c.f9221o0);
                        if (c2668c.f9215i0.getVisibility() != 8) {
                            return;
                        }
                        c2668c.f9231y0.setVisibility(0);
                        c2668c.f9215i0.setVisibility(0);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else if (i == 999) {
                    try {
                        if (c2668c.f9228v0 == null || c2668c.f9228v0.size() <= 0) {
                            c2668c.m26880U2();
                        } else {
                            c2668c.f9225s0.setVisibility(8);
                            c2668c.f9229w0.setVisibility(8);
                            c2668c.f9213g0.clear();
                            c2668c.f9213g0.addAll(c2668c.f9228v0);
                            if (c2668c.f9218l0 != null) {
                                c2668c.f9218l0.m27855b(c2668c.f9213g0);
                            } else {
                                c2668c.f9218l0 = new C2206m(c2668c.f9204F0, c2668c.f9213g0);
                                c2668c.f9217k0.setAdapter((ListAdapter) c2668c.f9218l0);
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } else if (i != 2222) {
                    if (i != 3333) {
                        return;
                    }
                    try {
                        c2668c.f9217k0.setVisibility(8);
                        c2668c.f9229w0.setVisibility(0);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    try {
                        List<CallLogBean> list = c2668c.f9214h0;
                        if (list == null || list.size() <= 0) {
                            c2668c.f9217k0.setVisibility(8);
                            c2668c.f9229w0.setVisibility(0);
                            return;
                        }
                        c2668c.f9214h0.get(0).m24877q0(0);
                        c2668c.f9213g0.clear();
                        c2668c.f9213g0.add(c2668c.f9214h0.get(0));
                        if (c2668c.f9218l0 != null) {
                            c2668c.f9218l0.m27855b(c2668c.f9213g0);
                        } else {
                            c2668c.f9218l0 = new C2206m(c2668c.f9204F0, c2668c.f9213g0);
                            c2668c.f9217k0.setAdapter((ListAdapter) c2668c.f9218l0);
                        }
                        if (c2668c.f9213g0.size() != 0) {
                            c2668c.f9225s0.setVisibility(0);
                            c2668c.f9229w0.setVisibility(8);
                            c2668c.f9217k0.setVisibility(0);
                            return;
                        }
                        c2668c.f9225s0.setVisibility(8);
                        c2668c.f9217k0.setVisibility(8);
                        c2668c.f9229w0.setVisibility(0);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.g.c$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$m.class */
    public class C2683m extends BroadcastReceiver {

        /* renamed from: com.allinone.callerid.g.c$m$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/c$m$a.class */
        class C2684a implements AbstractC2959f {
            C2684a() {
                C2683m.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2959f
            /* renamed from: a */
            public void mo25304a(boolean z) {
                if (!z) {
                    C2668c.this.m26880U2();
                    return;
                }
                C2668c.this.f9225s0.setVisibility(8);
                C2668c.this.m26887N2();
            }
        }

        private C2683m() {
            C2668c.this = r4;
        }

        /* synthetic */ C2683m(C2668c c2668c, RunnableC2671c runnableC2671c) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.allinone.callerid.STARRED_DATA".equals(intent.getAction())) {
                C2942a.m26375f(new C2684a());
            }
        }
    }

    /* renamed from: N2 */
    public void m26887N2() {
        this.f9228v0 = new ArrayList<>();
        C2942a.m26374g(this.f9204F0, new C2669a());
    }

    /* renamed from: O2 */
    public void m26886O2() {
        MainActivity mainActivity = this.f9204F0;
        if (mainActivity != null) {
            mainActivity.getWindow().getDecorView().post(new RunnableC2675e());
        }
    }

    /* renamed from: P2 */
    public void m26885P2() {
        View inflate = LayoutInflater.from(this.f9204F0).inflate(R$layout.contact_list_head, (ViewGroup) null);
        this.f9224r0 = (LinearLayout) inflate.findViewById(R$id.ll_headview);
        m26878W2(inflate);
        this.f9215i0.addHeaderView(inflate, null, false);
    }

    /* renamed from: Q2 */
    public void m26884Q2() {
        this.f9220n0.setOnTouchingLetterChangedListener(new C2680j());
    }

    /* renamed from: R2 */
    public void m26883R2() {
        this.f9232z0.setOnClickListener(new View$OnClickListenerC2677g());
        C2678h c2678h = new C2678h();
        this.f9202D0 = c2678h;
        this.f9199A0.addTextChangedListener(c2678h);
        this.f9199A0.setOnTouchListener(new View$OnTouchListenerC2679i());
    }

    /* renamed from: S2 */
    public void m26882S2(View view) {
        this.f9209K0 = C3739f1.m24360a();
        this.f9210L0 = C3739f1.m24359b();
        this.f9231y0 = (FrameLayout) view.findViewById(R$id.fl_search);
        this.f9232z0 = (ImageView) view.findViewById(R$id.ivClearText_top);
        this.f9199A0 = (BaseEditText) view.findViewById(R$id.et_search_top);
        this.f9220n0 = (SideBar) view.findViewById(R$id.sidrbar);
        this.f9220n0.setTextView((TextView) view.findViewById(R$id.dialog));
        this.f9221o0 = new ArrayList<>();
        C2187i c2187i = new C2187i(this.f9204F0, this.f9221o0, this.f9215i0);
        this.f9223q0 = c2187i;
        this.f9215i0.setAdapter((ListAdapter) c2187i);
    }

    /* renamed from: T2 */
    public void m26881T2(boolean z) {
        C2942a.m26373h(this.f9204F0, z, new C2676f());
    }

    /* renamed from: U2 */
    public void m26880U2() {
        C2942a.m26370k(this.f9212f0, this.f9226t0, this.f9214h0, new C2670b());
    }

    /* renamed from: V2 */
    public List<CallLogBean> m26879V2(String str) {
        String str2;
        String str3;
        String str4;
        ArrayList arrayList = new ArrayList();
        try {
            if (str.matches("^([0-9]|[/+]).*")) {
                String replaceAll = str.replaceAll("\\-|\\s", "");
                Iterator<CallLogBean> it = this.f9221o0.iterator();
                while (it.hasNext()) {
                    CallLogBean next = it.next();
                    if (next.m24880o() != null && next.m24884m() != null && (next.m24880o().replaceAll("\\-|\\s", "").contains(replaceAll) || next.m24884m().contains(str))) {
                        if (!arrayList.contains(next)) {
                            arrayList.add(next);
                        }
                    }
                }
            } else {
                Iterator<CallLogBean> it2 = this.f9221o0.iterator();
                while (it2.hasNext()) {
                    CallLogBean next2 = it2.next();
                    if (next2.m24880o() != null && next2.m24884m() != null && (next2.m24884m().toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE)) || (((str2 = next2.f11533u) != null && str2.toLowerCase(Locale.CHINESE).replace(" ", "").contains(str.toLowerCase(Locale.CHINESE))) || (((str3 = next2.f11516h0.f8654d) != null && str3.toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE))) || ((str4 = next2.f11516h0.f8655e) != null && str4.toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE))))))) {
                        if (!arrayList.contains(next2)) {
                            arrayList.add(next2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: W2 */
    private void m26878W2(View view) {
        TextView textView = (TextView) view.findViewById(R$id.tv_your_fav);
        this.f9225s0 = (TextView) view.findViewById(R$id.tv_fav_tip);
        this.f9229w0 = (LinearLayout) view.findViewById(R$id.ll_no_fav_tip);
        ((TextView) view.findViewById(R$id.tv_no_fav_tip1)).setTypeface(this.f9210L0);
        ((TextView) view.findViewById(R$id.tv_no_fav_tip2)).setTypeface(this.f9209K0);
        ((TextView) view.findViewById(R$id.tv_no_fav_tip3)).setTypeface(this.f9210L0);
        TextView textView2 = (TextView) view.findViewById(R$id.tv_edit);
        textView.setTypeface(this.f9209K0);
        this.f9225s0.setTypeface(this.f9210L0);
        textView2.setTypeface(this.f9209K0);
        this.f9217k0 = (MyListView) view.findViewById(R$id.list_contact_fav);
        C2206m c2206m = new C2206m(this.f9204F0, this.f9213g0);
        this.f9218l0 = c2206m;
        this.f9217k0.setAdapter((ListAdapter) c2206m);
        textView2.setOnClickListener(new View$OnClickListenerC2681k());
    }

    /* renamed from: X2 */
    public void m26877X2() {
        try {
            ((TextView) ((RelativeLayout) this.f9200B0.inflate()).findViewById(R$id.tv_no_contacts)).setTypeface(C3739f1.m24359b());
        } catch (Exception e) {
            this.f9200B0.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
        if (this.f9205G0 == null) {
            try {
                View inflate = layoutInflater.inflate(R$layout.fragment_callphone, viewGroup, false);
                this.f9205G0 = inflate;
                this.f9200B0 = (ViewStub) inflate.findViewById(R$id.vs_no_contacts);
                this.f9215i0 = (NestedScrollingListView) this.f9205G0.findViewById(R$id.ob_listview);
                this.f9206H0 = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.f9205G0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        ViewGroup viewGroup;
        super.mo17304H0();
        try {
            if (this.f9219m0 != null) {
                C1764a.m28939b(this.f9201C0).m28936e(this.f9219m0);
            }
            this.f9230x0.removeCallbacksAndMessages(null);
            try {
                View view = this.f9205G0;
                if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                    viewGroup.removeView(this.f9205G0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.f9199A0.removeTextChangedListener(this.f9202D0);
            this.f9202D0 = null;
            this.f9199A0.setOnEditorActionListener(null);
        } catch (Exception e2) {
            e2.printStackTrace();
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
        try {
            if (!z) {
                BaseEditText baseEditText = this.f9199A0;
                if (baseEditText == null) {
                    return;
                }
                baseEditText.setCursorVisible(false);
                return;
            }
            if (this.f9206H0) {
                this.f9206H0 = false;
                new Handler().postDelayed(new RunnableC2671c(), 600L);
            }
            C3810q.m24071b().m24070c("in_speeddial");
            FloatingActionButton floatingActionButton = this.f9211e0;
            if (floatingActionButton == null || !floatingActionButton.m22345y()) {
                return;
            }
            this.f9211e0.m22373H(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f9201C0 = context;
        MainActivity mainActivity = (MainActivity) context;
        this.f9204F0 = mainActivity;
        this.f9211e0 = (FloatingActionButton) mainActivity.findViewById(R$id.float_button);
    }
}
