package com.allinone.callerid.mvc.controller.recorder;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0951c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.p136b.p139z.C2282g;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p162i.p163a.AbstractC2778c;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3824e;
import com.allinone.callerid.util.recorder.C3826f;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment.class */
public class StrangerRecordFragment extends Fragment implements View.OnClickListener {

    /* renamed from: e0 */
    private final String f11223e0 = "StrangerRecordFragment";

    /* renamed from: f0 */
    private RecorderActivity f11224f0;

    /* renamed from: g0 */
    private View f11225g0;

    /* renamed from: h0 */
    private RecyclerView f11226h0;

    /* renamed from: i0 */
    private LinearLayout f11227i0;

    /* renamed from: j0 */
    private TextView f11228j0;

    /* renamed from: k0 */
    private LinearLayout f11229k0;

    /* renamed from: l0 */
    private LinearLayout f11230l0;

    /* renamed from: m0 */
    private C2282g f11231m0;

    /* renamed from: n0 */
    private UpdateViewReceiver f11232n0;

    /* renamed from: o0 */
    private Context f11233o0;

    /* renamed from: p0 */
    private Timer f11234p0;

    /* renamed from: q0 */
    private TimerTask f11235q0;

    /* renamed from: r0 */
    private boolean f11236r0;

    /* renamed from: s0 */
    private RelativeLayout f11237s0;

    /* renamed from: t0 */
    private TextView f11238t0;

    /* renamed from: u0 */
    private TextView f11239u0;

    /* renamed from: v0 */
    private PopupWindow f11240v0;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver.class */
    public class UpdateViewReceiver extends BroadcastReceiver {
        public UpdateViewReceiver() {
            StrangerRecordFragment.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.allinone.callerid.UPDATEVIEW".equals(intent.getAction())) {
                StrangerRecordFragment.this.m25118o2();
                StrangerRecordFragment.this.f11231m0.m31967i();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a.class */
    class C3504a extends RecyclerView.AbstractC0929s {

        /* renamed from: a */
        int f11242a = 0;

        C3504a() {
            StrangerRecordFragment.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: a */
        public void mo4985a(RecyclerView recyclerView, int i) {
            super.mo4985a(recyclerView, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: b */
        public void mo4984b(RecyclerView recyclerView, int i, int i2) {
            int m32140Z1;
            super.mo4984b(recyclerView, i, i2);
            try {
                if (!recyclerView.canScrollVertically(-1)) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "顶部");
                    }
                    StrangerRecordFragment.this.f11227i0.setVisibility(8);
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "不是顶部");
                }
                if (StrangerRecordFragment.this.f11227i0.getVisibility() == 8) {
                    StrangerRecordFragment.this.f11227i0.setVisibility(0);
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                    if (linearLayoutManager != null) {
                        int m32140Z12 = linearLayoutManager.m32140Z1();
                        this.f11242a = m32140Z12;
                        ArrayList<RecordCall> m27779C = StrangerRecordFragment.this.f11231m0.m27779C();
                        if (m32140Z12 < m27779C.size() && m32140Z12 >= 0) {
                            if (C3824e.m23998a(m27779C.get(m32140Z12).getStarttime())) {
                                StrangerRecordFragment.this.f11228j0.setText(StrangerRecordFragment.this.m32931d0(R$string.today));
                            } else {
                                StrangerRecordFragment.this.f11228j0.setText(m27779C.get(m32140Z12).getRecordtime());
                            }
                        }
                    }
                }
                LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) recyclerView.getLayoutManager();
                if (linearLayoutManager2 == null || this.f11242a == (m32140Z1 = linearLayoutManager2.m32140Z1())) {
                    return;
                }
                this.f11242a = m32140Z1;
                ArrayList<RecordCall> m27779C2 = StrangerRecordFragment.this.f11231m0.m27779C();
                if (m32140Z1 >= m27779C2.size() || m32140Z1 < 0) {
                    return;
                }
                if (C3824e.m23998a(m27779C2.get(m32140Z1).getStarttime())) {
                    StrangerRecordFragment.this.f11228j0.setText(StrangerRecordFragment.this.m32931d0(R$string.today));
                } else {
                    StrangerRecordFragment.this.f11228j0.setText(m27779C2.get(m32140Z1).getRecordtime());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b.class */
    class C3505b implements C2282g.AbstractC2290g {
        C3505b() {
            StrangerRecordFragment.this = r4;
        }

        @Override // com.allinone.callerid.p136b.p139z.C2282g.AbstractC2290g
        /* renamed from: a */
        public void mo25115a(View view) {
            if (StrangerRecordFragment.this.f11240v0 != null) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                StrangerRecordFragment.this.f11240v0.showAtLocation(view, 0, iArr[0], iArr[1] - StrangerRecordFragment.this.f11240v0.getHeight());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c.class */
    public class View$OnClickListenerC3506c implements View.OnClickListener {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a.class */
        public class C3507a implements AbstractC2778c {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a.class */
            public class C3508a implements AbstractC2778c {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$a$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a.class */
                public class C3509a implements AbstractC2778c {

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$a$a$a$a */
                    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a.class */
                    public class C3510a implements C3776a.AbstractC3783g {

                        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$a$a$a$a$a */
                        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a$a.class */
                        class C3511a implements AbstractC2778c {
                            C3511a() {
                                C3510a.this = r4;
                            }

                            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                            /* renamed from: a */
                            public void mo25101a() {
                                StrangerRecordFragment.this.m25116q2();
                            }

                            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                            /* renamed from: b */
                            public void mo25100b() {
                            }
                        }

                        C3510a() {
                            C3509a.this = r4;
                        }

                        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
                        /* renamed from: a */
                        public void mo23968a() {
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("record", "开启了权限");
                            }
                            C3810q.m24071b().m24070c("permissions_enabled");
                            if (!C3776a.m24158g(StrangerRecordFragment.this.f11224f0)) {
                                C3826f.m23975t(StrangerRecordFragment.this.f11224f0, new C3511a());
                            } else {
                                StrangerRecordFragment.this.m25121l2();
                            }
                        }
                    }

                    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$a$a$a$b */
                    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$b.class */
                    class C3512b implements AbstractC2778c {
                        C3512b() {
                            C3509a.this = r4;
                        }

                        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                        /* renamed from: a */
                        public void mo25101a() {
                            StrangerRecordFragment.this.m25116q2();
                        }

                        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                        /* renamed from: b */
                        public void mo25100b() {
                        }
                    }

                    C3509a() {
                        C3508a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                    /* renamed from: a */
                    public void mo25101a() {
                        if (!C3776a.m24163b(StrangerRecordFragment.this.f11224f0)) {
                            C3810q.m24071b().m24070c("permissions_request");
                            C3776a.m24151n(StrangerRecordFragment.this.f11224f0, new C3510a());
                        } else if (!C3776a.m24158g(StrangerRecordFragment.this.f11224f0)) {
                            C3826f.m23975t(StrangerRecordFragment.this.f11224f0, new C3512b());
                        } else {
                            StrangerRecordFragment.this.m25121l2();
                        }
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                    /* renamed from: b */
                    public void mo25100b() {
                    }
                }

                C3508a() {
                    C3507a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                /* renamed from: a */
                public void mo25101a() {
                    C3826f.m23971x(StrangerRecordFragment.this.f11224f0, new C3509a());
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                /* renamed from: b */
                public void mo25100b() {
                }
            }

            C3507a() {
                View$OnClickListenerC3506c.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
            /* renamed from: a */
            public void mo25101a() {
                C3826f.m23976s(StrangerRecordFragment.this.f11224f0, new C3508a());
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
            /* renamed from: b */
            public void mo25100b() {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$c$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$b.class */
        class DialogInterface$OnDismissListenerC3513b implements DialogInterface.OnDismissListener {
            DialogInterface$OnDismissListenerC3513b() {
                View$OnClickListenerC3506c.this = r4;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                StrangerRecordFragment.this.f11224f0.m25134c0();
                StrangerRecordFragment.this.f11224f0.m25135b0();
            }
        }

        View$OnClickListenerC3506c() {
            StrangerRecordFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C3820b.m24030f()) {
                C3820b.m24019q(true);
            } else if (Build.VERSION.SDK_INT >= 28) {
                C3826f.m23972w(StrangerRecordFragment.this.f11224f0, new C3507a());
            } else {
                AlertDialog m23973v = C3826f.m23973v(StrangerRecordFragment.this.f11224f0, null);
                if (m23973v != null) {
                    m23973v.setOnDismissListener(new DialogInterface$OnDismissListenerC3513b());
                }
            }
            StrangerRecordFragment.this.f11224f0.m25135b0();
            C3810q.m24071b().m24070c("recorder_stranger_permission_open_click");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$d.class */
    public class C3514d extends TimerTask {
        C3514d() {
            StrangerRecordFragment.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            StrangerRecordFragment.this.m25119n2();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e.class */
    public class RunnableC3515e implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$a.class */
        class RunnableC3516a implements Runnable {
            RunnableC3516a() {
                RunnableC3515e.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                StrangerRecordFragment.this.f11231m0.m31967i();
                StrangerRecordFragment.this.f11229k0.setVisibility(8);
                StrangerRecordFragment.this.f11230l0.setVisibility(8);
                StrangerRecordFragment.this.f11226h0.setVisibility(0);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$e$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e$b.class */
        class RunnableC3517b implements Runnable {
            RunnableC3517b() {
                RunnableC3515e.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!C3820b.m24031e()) {
                    StrangerRecordFragment.this.f11229k0.setVisibility(0);
                    StrangerRecordFragment.this.f11230l0.setVisibility(8);
                    StrangerRecordFragment.this.f11226h0.setVisibility(8);
                    return;
                }
                StrangerRecordFragment.this.f11229k0.setVisibility(8);
                StrangerRecordFragment.this.f11230l0.setVisibility(0);
                StrangerRecordFragment.this.f11226h0.setVisibility(8);
            }
        }

        RunnableC3515e() {
            StrangerRecordFragment.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = (ArrayList) C2645b.m26967d().m26963h(100);
            if (arrayList == null || arrayList.size() <= 0) {
                if (StrangerRecordFragment.this.f11224f0 == null) {
                    return;
                }
                StrangerRecordFragment.this.f11224f0.runOnUiThread(new RunnableC3517b());
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss", Locale.ENGLISH);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                RecordCall recordCall = (RecordCall) it.next();
                recordCall.setRecordtime(C3771i.m24207c(new Date(recordCall.getStarttime())));
                recordCall.setRecordtimems(SimpleDateFormat.getTimeInstance(3).format(new Date(recordCall.getStarttime())));
                recordCall.setTimespanstring(simpleDateFormat.format(new Date(recordCall.getTimespan())));
            }
            StrangerRecordFragment.this.f11231m0.m27781A(arrayList, true);
            if (StrangerRecordFragment.this.f11224f0 == null) {
                return;
            }
            StrangerRecordFragment.this.f11224f0.runOnUiThread(new RunnableC3516a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f.class */
    public class RunnableC3518f implements Runnable {

        /* renamed from: d */
        final /* synthetic */ int f11257d;

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$a.class */
        class RunnableC3519a implements Runnable {
            RunnableC3519a() {
                RunnableC3518f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                StrangerRecordFragment.this.f11231m0.m31967i();
                StrangerRecordFragment.this.f11229k0.setVisibility(8);
                StrangerRecordFragment.this.f11230l0.setVisibility(8);
                StrangerRecordFragment.this.f11226h0.setVisibility(0);
                StrangerRecordFragment.this.f11227i0.setVisibility(8);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.StrangerRecordFragment$f$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b.class */
        class RunnableC3520b implements Runnable {
            RunnableC3520b() {
                RunnableC3518f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                StrangerRecordFragment.this.f11229k0.setVisibility(8);
                StrangerRecordFragment.this.f11230l0.setVisibility(0);
                StrangerRecordFragment.this.f11226h0.setVisibility(8);
                StrangerRecordFragment.this.f11227i0.setVisibility(0);
            }
        }

        RunnableC3518f(int i) {
            StrangerRecordFragment.this = r4;
            this.f11257d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = (ArrayList) C2645b.m26967d().m26961j(this.f11257d);
            if (arrayList == null || arrayList.size() <= 0) {
                StrangerRecordFragment.this.f11224f0.runOnUiThread(new RunnableC3520b());
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss", Locale.ENGLISH);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                RecordCall recordCall = (RecordCall) it.next();
                Date date = new Date(recordCall.getStarttime());
                recordCall.setRecordtime(C3771i.m24207c(date));
                recordCall.setRecordtimems(SimpleDateFormat.getTimeInstance(3).format(date));
                recordCall.setTimespanstring(simpleDateFormat.format(new Date(recordCall.getTimespan())));
            }
            StrangerRecordFragment.this.f11231m0.m27781A(arrayList, true);
            StrangerRecordFragment.this.f11224f0.runOnUiThread(new RunnableC3519a());
        }
    }

    /* renamed from: l2 */
    public void m25121l2() {
        if (!C3776a.m24163b(this.f11224f0) || !C3776a.m24158g(this.f11224f0)) {
            return;
        }
        C3820b.m24018r(true);
        C3820b.m24019q(true);
        C3810q.m24071b().m24070c("call_record_enabled");
        this.f11224f0.m25134c0();
        this.f11224f0.m25135b0();
    }

    /* renamed from: m2 */
    private void m25120m2() {
        try {
            View inflate = LayoutInflater.from(this.f11224f0).inflate(R$layout.popuwindow_filter, (ViewGroup) null);
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
            frameLayout4.setVisibility(8);
            ((FrameLayout) inflate.findViewById(R$id.fl_filter_delete)).setVisibility(8);
            PopupWindow popupWindow = new PopupWindow(inflate);
            this.f11240v0 = popupWindow;
            popupWindow.setHeight(-2);
            this.f11240v0.setWidth(-2);
            this.f11240v0.setFocusable(true);
            if (C3767h1.m24250f0(this.f11233o0).booleanValue()) {
                this.f11240v0.setAnimationStyle(R$style.pop_style_rtl);
            } else {
                this.f11240v0.setAnimationStyle(R$style.pop_style);
            }
            this.f11240v0.setBackgroundDrawable(new ColorDrawable(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: n2 */
    public void m25119n2() {
        try {
            if (!C3776a.m24158g(this.f11224f0)) {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("record", "未开启");
                return;
            }
            this.f11235q0.cancel();
            this.f11234p0.cancel();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("record", "开启了");
            }
            this.f11237s0.setVisibility(8);
            C3810q.m24071b().m24070c("permissions_accessibility_enabled");
            C3820b.m24018r(true);
            C3820b.m24019q(true);
            C3810q.m24071b().m24070c("call_record_enabled");
            this.f11224f0.m25134c0();
            this.f11224f0.m25135b0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: p2 */
    private void m25117p2(int i) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3518f(i));
    }

    /* renamed from: q2 */
    public void m25116q2() {
        try {
            C3810q.m24071b().m24070c("permissions_accessibility_request");
            this.f11236r0 = true;
            m32942W1(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
            C3826f.m23996A(this.f11224f0);
            TimerTask timerTask = this.f11235q0;
            if (timerTask != null) {
                timerTask.cancel();
            }
            C3514d c3514d = new C3514d();
            this.f11235q0 = c3514d;
            this.f11234p0.schedule(c3514d, 0L, 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f11225g0 == null) {
            this.f11225g0 = layoutInflater.inflate(R$layout.fragment_record, viewGroup, false);
            Typeface m24359b = C3739f1.m24359b();
            this.f11229k0 = (LinearLayout) this.f11225g0.findViewById(R$id.record_open);
            TextView textView = (TextView) this.f11225g0.findViewById(R$id.record_open_tv);
            Button button = (Button) this.f11225g0.findViewById(R$id.record_open_bt);
            this.f11230l0 = (LinearLayout) this.f11225g0.findViewById(R$id.record_null);
            TextView textView2 = (TextView) this.f11225g0.findViewById(R$id.record_tv);
            this.f11226h0 = (RecyclerView) this.f11225g0.findViewById(R$id.record_rv);
            this.f11227i0 = (LinearLayout) this.f11225g0.findViewById(R$id.adsorb_view);
            this.f11228j0 = (TextView) this.f11225g0.findViewById(R$id.tv_filter);
            ImageView imageView = (ImageView) this.f11225g0.findViewById(R$id.ib_filter);
            textView.setTypeface(m24359b);
            textView2.setTypeface(m24359b);
            this.f11228j0.setTypeface(m24359b);
            imageView.setOnClickListener(this);
            this.f11232n0 = new UpdateViewReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.allinone.callerid.UPDATEVIEW");
            C1764a.m28939b(this.f11233o0).m28938c(this.f11232n0, intentFilter);
            this.f11231m0 = new C2282g(this.f11224f0, new ArrayList());
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(m32896u());
            linearLayoutManager.m32114z2(1);
            this.f11226h0.setLayoutManager(linearLayoutManager);
            this.f11226h0.setItemAnimator(new C0951c());
            this.f11226h0.setAdapter(this.f11231m0);
            this.f11226h0.m32015l(new C3504a());
            m25120m2();
            this.f11231m0.m27725L(new C3505b());
            button.setOnClickListener(new View$OnClickListenerC3506c());
            this.f11234p0 = new Timer();
            this.f11237s0 = (RelativeLayout) this.f11225g0.findViewById(R$id.rl_accessibility);
            this.f11238t0 = (TextView) this.f11225g0.findViewById(R$id.tv_title);
            TextView textView3 = (TextView) this.f11225g0.findViewById(R$id.tv_continue);
            this.f11239u0 = textView3;
            textView3.setOnClickListener(this);
            this.f11238t0.setTypeface(m24359b);
            this.f11239u0.setTypeface(m24359b);
            this.f11239u0.getPaint().setFakeBoldText(true);
            if (C3820b.m24031e() && !C3776a.m24158g(this.f11224f0)) {
                this.f11237s0.setVisibility(0);
            }
        }
        return this.f11225g0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K0 */
    public void mo25114K0() {
        super.mo25114K0();
        try {
            View view = this.f11225g0;
            if (view != null) {
                ((ViewGroup) view.getParent()).removeView(this.f11225g0);
            }
            C1764a.m28939b(this.f11233o0).m28936e(this.f11232n0);
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
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
        if (this.f11236r0) {
            this.f11236r0 = false;
            TimerTask timerTask = this.f11235q0;
            if (timerTask != null) {
                timerTask.cancel();
            }
        }
        m25118o2();
    }

    /* renamed from: o2 */
    public void m25118o2() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3515e());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_filter_all /* 2131296745 */:
                m25118o2();
                PopupWindow popupWindow = this.f11240v0;
                if (popupWindow == null) {
                    return;
                }
                popupWindow.dismiss();
                return;
            case R$id.fl_filter_incoming /* 2131296747 */:
                m25117p2(110);
                PopupWindow popupWindow2 = this.f11240v0;
                if (popupWindow2 == null) {
                    return;
                }
                popupWindow2.dismiss();
                return;
            case R$id.fl_filter_outgoing /* 2131296749 */:
                m25117p2(111);
                PopupWindow popupWindow3 = this.f11240v0;
                if (popupWindow3 == null) {
                    return;
                }
                popupWindow3.dismiss();
                return;
            case R$id.ib_filter /* 2131296864 */:
                if (this.f11240v0 == null) {
                    return;
                }
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                PopupWindow popupWindow4 = this.f11240v0;
                popupWindow4.showAtLocation(view, 0, iArr[0], iArr[1] - popupWindow4.getHeight());
                return;
            case R$id.tv_continue /* 2131297878 */:
                m25116q2();
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f11233o0 = context;
        this.f11224f0 = (RecorderActivity) context;
    }
}
