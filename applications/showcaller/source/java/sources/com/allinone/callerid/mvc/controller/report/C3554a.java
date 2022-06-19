package com.allinone.callerid.mvc.controller.report;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.p136b.C2218r;
import com.allinone.callerid.p162i.p163a.p193w.AbstractC2993e;
import com.allinone.callerid.p162i.p163a.p193w.C2987d;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.List;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.mvc.controller.report.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/a.class */
public class C3554a extends Fragment {

    /* renamed from: e0 */
    private ListView f11352e0;

    /* renamed from: f0 */
    private ArrayList<CallLogBean> f11353f0;

    /* renamed from: g0 */
    private ArrayList<CallLogBean> f11354g0;

    /* renamed from: h0 */
    private C2218r f11355h0;

    /* renamed from: i0 */
    private RelativeLayout f11356i0;

    /* renamed from: j0 */
    public List f11357j0 = new ArrayList();

    /* renamed from: k0 */
    private C3557c f11358k0;

    /* renamed from: l0 */
    private TextView f11359l0;

    /* renamed from: m0 */
    private TextView f11360m0;

    /* renamed from: n0 */
    private LinearLayout f11361n0;

    /* renamed from: o0 */
    private LinearLayout f11362o0;

    /* renamed from: p0 */
    private LinearLayout f11363p0;

    /* renamed from: q0 */
    private int f11364q0;

    /* renamed from: r0 */
    private int f11365r0;

    /* renamed from: s0 */
    private int f11366s0;

    /* renamed from: t0 */
    private TextView f11367t0;

    /* renamed from: u0 */
    private RelativeLayout f11368u0;

    /* renamed from: v0 */
    private Context f11369v0;

    /* renamed from: w0 */
    private ReportListActivity f11370w0;

    /* renamed from: com.allinone.callerid.mvc.controller.report.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/a$a.class */
    public class C3555a implements AdapterView.OnItemClickListener {
        C3555a() {
            C3554a.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (C3554a.this.f11353f0 == null || C3554a.this.f11353f0.size() == 0) {
                return;
            }
            CallLogBean callLogBean = (CallLogBean) C3554a.this.f11353f0.get(i);
            if (callLogBean.m24918Y()) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_tony", callLogBean);
                intent.putExtras(bundle);
                intent.setClass(C3554a.this.f11370w0, ContactActivity.class);
                C3554a.this.m32942W1(intent);
                C3554a.this.f11370w0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            }
            Intent intent2 = new Intent();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("contact_tony", callLogBean);
            intent2.putExtras(bundle2);
            intent2.setClass(C3554a.this.f11370w0, UnknownContactActivity.class);
            C3554a.this.m32942W1(intent2);
            C3554a.this.f11370w0.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/a$b.class */
    public class C3556b implements AbstractC2993e {
        C3556b() {
            C3554a.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p193w.AbstractC2993e
        /* renamed from: a */
        public void mo25022a(ArrayList<CallLogBean> arrayList, int i, int i2, int i3) {
            C3554a.this.f11354g0 = new ArrayList();
            if (arrayList != null) {
                C3554a.this.f11354g0.addAll(arrayList);
            }
            C3554a.this.f11364q0 = i;
            C3554a.this.f11365r0 = i2;
            C3554a.this.f11366s0 = i3;
            if (C3554a.this.f11354g0 == null || C3554a.this.f11354g0.size() <= 0) {
                C3554a.this.f11356i0.setVisibility(0);
                C3554a.this.f11368u0.setVisibility(8);
                return;
            }
            C3554a.this.f11353f0.clear();
            C3554a.this.f11353f0.addAll(C3554a.this.f11354g0);
            if (C3554a.this.f11353f0 == null || C3554a.this.f11355h0 == null || C3554a.this.f11353f0.size() <= 0) {
                C3554a.this.f11356i0.setVisibility(0);
                C3554a.this.f11368u0.setVisibility(8);
            } else {
                C3554a.this.f11356i0.setVisibility(8);
                C3554a.this.f11355h0.m27850b(C3554a.this.f11353f0);
                C3554a.this.f11368u0.setVisibility(0);
            }
            if (C3554a.this.f11364q0 > 0) {
                C3554a.this.f11361n0.setVisibility(0);
                TextView textView = C3554a.this.f11359l0;
                textView.setText(C3554a.this.f11364q0 + "");
            }
            if (C3554a.this.f11365r0 > 0) {
                C3554a.this.f11362o0.setVisibility(0);
                TextView textView2 = C3554a.this.f11360m0;
                textView2.setText(C3554a.this.f11365r0 + "");
            }
            if (C3554a.this.f11366s0 <= 0) {
                return;
            }
            C3554a.this.f11363p0.setVisibility(0);
            TextView textView3 = C3554a.this.f11367t0;
            textView3.setText(C3554a.this.f11366s0 + "");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/a$c.class */
    private class C3557c extends BroadcastReceiver {
        private C3557c() {
            C3554a.this = r4;
        }

        /* synthetic */ C3557c(C3554a c3554a, C3555a c3555a) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C3554a.this.f11364q0 = 0;
            C3554a.this.f11365r0 = 0;
            C3554a.this.f11366s0 = 0;
            C3554a.this.m25026u2();
        }
    }

    /* renamed from: u2 */
    public void m25026u2() {
        C2987d.m26304c(this.f11364q0, this.f11365r0, this.f11366s0, new C3556b());
    }

    /* renamed from: v2 */
    private void m25025v2() {
        View inflate = LayoutInflater.from(this.f11370w0).inflate(R$layout.myreport_list_head, (ViewGroup) null);
        ((TextView) inflate.findViewById(R$id.tv_reprot_tip)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_scam)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_scam_calls)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_spam)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_spam_calls)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_telemarketing)).setTypeface(C3739f1.m24359b());
        ((TextView) inflate.findViewById(R$id.tv_telemarketing_calls)).setTypeface(C3739f1.m24359b());
        this.f11368u0 = (RelativeLayout) inflate.findViewById(R$id.rl_top);
        this.f11361n0 = (LinearLayout) inflate.findViewById(R$id.ll_scam);
        this.f11359l0 = (TextView) inflate.findViewById(R$id.tv_scam_counts);
        this.f11362o0 = (LinearLayout) inflate.findViewById(R$id.ll_spam);
        this.f11360m0 = (TextView) inflate.findViewById(R$id.tv_spam_counts);
        this.f11363p0 = (LinearLayout) inflate.findViewById(R$id.ll_telemarketing);
        this.f11367t0 = (TextView) inflate.findViewById(R$id.tv_telemarketing_counts);
        this.f11359l0.setTypeface(C3739f1.m24359b());
        this.f11360m0.setTypeface(C3739f1.m24359b());
        this.f11367t0.setTypeface(C3739f1.m24359b());
        this.f11352e0.addHeaderView(inflate, null, false);
    }

    /* renamed from: w2 */
    private void m25024w2(View view) {
        this.f11352e0 = (ListView) view.findViewById(R$id.lv_blocked);
        this.f11356i0 = (RelativeLayout) view.findViewById(R$id.rl_no_block);
        this.f11353f0 = new ArrayList<>();
        m25025v2();
        C2218r c2218r = new C2218r(this.f11370w0, this.f11353f0, this.f11352e0);
        this.f11355h0 = c2218r;
        this.f11352e0.setAdapter((ListAdapter) c2218r);
        this.f11352e0.setOnItemClickListener(new C3555a());
        ((TextView) view.findViewById(R$id.tv_no_block)).setTypeface(C3739f1.m24359b());
    }

    /* renamed from: x2 */
    public static C3554a m25023x2() {
        return new C3554a();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
        View inflate = View.inflate(this.f11369v0, R$layout.fragment_myreport, null);
        this.f11358k0 = new C3557c(this, null);
        C1764a.m28939b(this.f11369v0).m28938c(this.f11358k0, new IntentFilter("com.allinone.callerid.REPROT_NUMBER"));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
        try {
            C1764a.m28939b(this.f11369v0).m28936e(this.f11358k0);
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
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: c1 */
    public void mo25018c1(View view, Bundle bundle) {
        super.mo25018c1(view, bundle);
        m25024w2(view);
        m25026u2();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f11369v0 = context;
        this.f11370w0 = (ReportListActivity) context;
    }
}
