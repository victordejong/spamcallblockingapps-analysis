package com.allinone.callerid.mvc.controller.recorder;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.p136b.p139z.C2260c;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.p162i.p163a.AbstractC2778c;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3826f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import org.xutils.p343db.table.DbModel;
/* renamed from: com.allinone.callerid.mvc.controller.recorder.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a.class */
public class C3521a extends Fragment {

    /* renamed from: e0 */
    private final String f11261e0 = "ContactRecordFragment";

    /* renamed from: f0 */
    private RecorderActivity f11262f0;

    /* renamed from: g0 */
    private View f11263g0;

    /* renamed from: h0 */
    private RecyclerView f11264h0;

    /* renamed from: i0 */
    private C2260c f11265i0;

    /* renamed from: j0 */
    private LinearLayout f11266j0;

    /* renamed from: k0 */
    private LinearLayout f11267k0;

    /* renamed from: l0 */
    private Timer f11268l0;

    /* renamed from: m0 */
    private TimerTask f11269m0;

    /* renamed from: n0 */
    private boolean f11270n0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a.class */
    public class View$OnClickListenerC3522a implements View.OnClickListener {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$a.class */
        public class C3523a implements AbstractC2778c {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$a$a.class */
            public class C3524a implements AbstractC2778c {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$a$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$a$a$a.class */
                public class C3525a implements AbstractC2778c {

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$a$a$a$a */
                    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$a$a$a$a.class */
                    public class C3526a implements C3776a.AbstractC3783g {

                        /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$a$a$a$a$a */
                        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$a$a$a$a$a.class */
                        class C3527a implements AbstractC2778c {
                            C3527a() {
                                C3526a.this = r4;
                            }

                            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                            /* renamed from: a */
                            public void mo25101a() {
                                C3521a.this.m25102l2();
                            }

                            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                            /* renamed from: b */
                            public void mo25100b() {
                            }
                        }

                        C3526a() {
                            C3525a.this = r4;
                        }

                        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
                        /* renamed from: a */
                        public void mo23968a() {
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("record", "开启了权限");
                            }
                            C3810q.m24071b().m24070c("permissions_enabled");
                            if (!C3776a.m24158g(C3521a.this.f11262f0)) {
                                C3826f.m23975t(C3521a.this.f11262f0, new C3527a());
                            } else {
                                C3521a.this.m25105i2();
                            }
                        }
                    }

                    /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$a$a$a$b */
                    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$a$a$a$b.class */
                    class C3528b implements AbstractC2778c {
                        C3528b() {
                            C3525a.this = r4;
                        }

                        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                        /* renamed from: a */
                        public void mo25101a() {
                            C3521a.this.m25102l2();
                        }

                        @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                        /* renamed from: b */
                        public void mo25100b() {
                        }
                    }

                    C3525a() {
                        C3524a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                    /* renamed from: a */
                    public void mo25101a() {
                        if (!C3776a.m24163b(C3521a.this.f11262f0)) {
                            C3810q.m24071b().m24070c("permissions_request");
                            C3776a.m24151n(C3521a.this.f11262f0, new C3526a());
                        } else if (!C3776a.m24158g(C3521a.this.f11262f0)) {
                            C3826f.m23975t(C3521a.this.f11262f0, new C3528b());
                        } else {
                            C3521a.this.m25105i2();
                        }
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                    /* renamed from: b */
                    public void mo25100b() {
                    }
                }

                C3524a() {
                    C3523a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                /* renamed from: a */
                public void mo25101a() {
                    C3826f.m23971x(C3521a.this.f11262f0, new C3525a());
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
                /* renamed from: b */
                public void mo25100b() {
                }
            }

            C3523a() {
                View$OnClickListenerC3522a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
            /* renamed from: a */
            public void mo25101a() {
                C3826f.m23976s(C3521a.this.f11262f0, new C3524a());
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2778c
            /* renamed from: b */
            public void mo25100b() {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$a$b.class */
        class DialogInterface$OnDismissListenerC3529b implements DialogInterface.OnDismissListener {
            DialogInterface$OnDismissListenerC3529b() {
                View$OnClickListenerC3522a.this = r4;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                C3521a.this.f11262f0.m25134c0();
                C3521a.this.f11262f0.m25135b0();
            }
        }

        View$OnClickListenerC3522a() {
            C3521a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C3820b.m24030f()) {
                C3820b.m24019q(true);
            } else if (Build.VERSION.SDK_INT >= 28) {
                C3826f.m23972w(C3521a.this.f11262f0, new C3523a());
            } else {
                AlertDialog m23973v = C3826f.m23973v(C3521a.this.f11262f0, null);
                if (m23973v != null) {
                    m23973v.setOnDismissListener(new DialogInterface$OnDismissListenerC3529b());
                }
            }
            C3521a.this.f11262f0.m25135b0();
            C3810q.m24071b().m24070c("recorder_contacts_permission_open_click");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$b.class */
    public class C3530b extends TimerTask {
        C3530b() {
            C3521a.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C3521a.this.m25104j2();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$c.class */
    public class RunnableC3531c implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$c$a.class */
        class RunnableC3532a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ ArrayList f11281d;

            RunnableC3532a(ArrayList arrayList) {
                RunnableC3531c.this = r4;
                this.f11281d = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f11281d.size() > 0) {
                    C3521a.this.f11265i0.m27781A(this.f11281d, true);
                    C3521a.this.f11265i0.m31967i();
                    C3521a.this.f11266j0.setVisibility(8);
                    C3521a.this.f11267k0.setVisibility(8);
                    C3521a.this.f11264h0.setVisibility(0);
                } else if (!C3820b.m24031e()) {
                    C3521a.this.f11266j0.setVisibility(0);
                    C3521a.this.f11267k0.setVisibility(8);
                    C3521a.this.f11264h0.setVisibility(8);
                } else {
                    C3521a.this.f11266j0.setVisibility(8);
                    C3521a.this.f11267k0.setVisibility(0);
                    C3521a.this.f11264h0.setVisibility(8);
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.a$c$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/a$c$b.class */
        class RunnableC3533b implements Runnable {
            RunnableC3533b() {
                RunnableC3531c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!C3820b.m24031e()) {
                    C3521a.this.f11266j0.setVisibility(0);
                    C3521a.this.f11267k0.setVisibility(8);
                    C3521a.this.f11264h0.setVisibility(8);
                    return;
                }
                C3521a.this.f11266j0.setVisibility(8);
                C3521a.this.f11267k0.setVisibility(0);
                C3521a.this.f11264h0.setVisibility(8);
            }
        }

        RunnableC3531c() {
            C3521a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = (ArrayList) C2645b.m26967d().m26962i();
            if (arrayList == null || arrayList.size() <= 0) {
                if (C3521a.this.f11262f0 == null) {
                    return;
                }
                C3521a.this.f11262f0.runOnUiThread(new RunnableC3533b());
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                DbModel dbModel = (DbModel) it.next();
                RecordCall recordCall = new RecordCall();
                String string = dbModel.getString(ShortCut.NUMBER);
                String m26964g = C2645b.m26967d().m26964g(string);
                recordCall.setRecordcount(C2645b.m26967d().m26966e(string));
                recordCall.setName(m26964g);
                recordCall.setNumber(string);
                arrayList2.add(recordCall);
            }
            if (C3521a.this.f11262f0 == null) {
                return;
            }
            C3521a.this.f11262f0.runOnUiThread(new RunnableC3532a(arrayList2));
        }
    }

    /* renamed from: i2 */
    public void m25105i2() {
        if (!C3776a.m24163b(this.f11262f0) || !C3776a.m24158g(this.f11262f0)) {
            return;
        }
        C3820b.m24018r(true);
        C3820b.m24019q(true);
        C3810q.m24071b().m24070c("call_record_enabled");
        this.f11262f0.m25134c0();
        this.f11262f0.m25135b0();
    }

    /* renamed from: j2 */
    public void m25104j2() {
        try {
            if (!C3776a.m24158g(this.f11262f0)) {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("record", "未开启");
                return;
            }
            this.f11269m0.cancel();
            this.f11268l0.cancel();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("record", "开启了");
            }
            C3810q.m24071b().m24070c("permissions_accessibility_enabled");
            C3820b.m24018r(true);
            C3820b.m24019q(true);
            C3810q.m24071b().m24070c("call_record_enabled");
            this.f11262f0.m25134c0();
            this.f11262f0.m25135b0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l2 */
    public void m25102l2() {
        try {
            C3810q.m24071b().m24070c("permissions_accessibility_request");
            this.f11270n0 = true;
            m32942W1(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
            C3826f.m23996A(this.f11262f0);
            TimerTask timerTask = this.f11269m0;
            if (timerTask != null) {
                timerTask.cancel();
            }
            C3530b c3530b = new C3530b();
            this.f11269m0 = c3530b;
            this.f11268l0.schedule(c3530b, 0L, 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f11263g0 == null) {
            this.f11263g0 = layoutInflater.inflate(R$layout.fragment_record, viewGroup, false);
            Typeface m24359b = C3739f1.m24359b();
            this.f11266j0 = (LinearLayout) this.f11263g0.findViewById(R$id.record_open);
            TextView textView = (TextView) this.f11263g0.findViewById(R$id.record_open_tv);
            Button button = (Button) this.f11263g0.findViewById(R$id.record_open_bt);
            this.f11267k0 = (LinearLayout) this.f11263g0.findViewById(R$id.record_null);
            TextView textView2 = (TextView) this.f11263g0.findViewById(R$id.record_tv);
            this.f11264h0 = (RecyclerView) this.f11263g0.findViewById(R$id.record_rv);
            ((LinearLayout) this.f11263g0.findViewById(R$id.adsorb_view)).setVisibility(8);
            textView.setTypeface(m24359b);
            textView2.setTypeface(m24359b);
            this.f11265i0 = new C2260c(this.f11262f0, new ArrayList());
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(m32896u());
            linearLayoutManager.m32114z2(1);
            this.f11264h0.setLayoutManager(linearLayoutManager);
            this.f11264h0.setAdapter(this.f11265i0);
            button.setOnClickListener(new View$OnClickListenerC3522a());
        }
        this.f11268l0 = new Timer();
        return this.f11263g0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K0 */
    public void mo25114K0() {
        super.mo25114K0();
        try {
            View view = this.f11263g0;
            if (view == null) {
                return;
            }
            ((ViewGroup) view.getParent()).removeView(this.f11263g0);
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
        if (this.f11270n0) {
            this.f11270n0 = false;
            TimerTask timerTask = this.f11269m0;
            if (timerTask != null) {
                timerTask.cancel();
            }
        }
        m25103k2();
    }

    /* renamed from: k2 */
    public void m25103k2() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3531c());
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f11262f0 = (RecorderActivity) context;
    }
}
