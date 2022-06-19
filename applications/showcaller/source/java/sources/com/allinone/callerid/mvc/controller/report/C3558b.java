package com.allinone.callerid.mvc.controller.report;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.C2191j;
import com.allinone.callerid.p162i.p163a.p193w.AbstractC2986c;
import com.allinone.callerid.p162i.p163a.p193w.C2987d;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.mvc.controller.report.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/b.class */
public class C3558b extends Fragment {

    /* renamed from: e0 */
    private LayoutInflater f11374e0;

    /* renamed from: f0 */
    private ListView f11375f0;

    /* renamed from: i0 */
    private C2191j f11378i0;

    /* renamed from: k0 */
    private ReportListActivity f11380k0;

    /* renamed from: g0 */
    private List<CallLogBean> f11376g0 = new ArrayList();

    /* renamed from: h0 */
    private HashMap<String, Integer> f11377h0 = new HashMap<>();

    /* renamed from: j0 */
    private List<String> f11379j0 = new ArrayList();

    /* renamed from: com.allinone.callerid.mvc.controller.report.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/b$a.class */
    class C3559a implements AdapterView.OnItemClickListener {
        C3559a() {
            C3558b.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (C3558b.this.f11376g0 == null || C3558b.this.f11376g0.size() == 0) {
                return;
            }
            CallLogBean callLogBean = (CallLogBean) C3558b.this.f11376g0.get(i);
            Intent intent = new Intent(C3558b.this.m32896u(), ReportContactActivity.class);
            intent.putExtra("report_number", callLogBean.m24880o());
            C3558b.this.m32942W1(intent);
            C3558b.this.m32896u().overridePendingTransition(R$anim.in_to_down, 0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/b$b.class */
    public class C3560b implements AbstractC2986c {
        C3560b() {
            C3558b.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p193w.AbstractC2986c
        /* renamed from: a */
        public void mo25012a(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
            C3558b.this.m25013g2(list, hashMap);
            C3558b.this.f11378i0.notifyDataSetChanged();
        }
    }

    /* renamed from: d2 */
    private void m25016d2() {
        C2987d.m26305b(m32896u(), this.f11376g0, this.f11379j0, this.f11377h0, new C3560b());
    }

    /* renamed from: e2 */
    private void m25015e2() {
        View inflate = this.f11374e0.inflate(R$layout.view_head_report, (ViewGroup) null);
        ((TextView) inflate.findViewById(R$id.tv_report_list)).setTypeface(C3739f1.m24359b());
        this.f11375f0.addHeaderView(inflate, null, false);
    }

    /* renamed from: f2 */
    public static C3558b m25014f2() {
        return new C3558b();
    }

    /* renamed from: g2 */
    public void m25013g2(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        C2191j c2191j = new C2191j(this.f11380k0, list, hashMap, this.f11375f0, null, null, null);
        this.f11378i0 = c2191j;
        this.f11375f0.setAdapter((ListAdapter) c2191j);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
        this.f11374e0 = layoutInflater;
        return View.inflate(m32896u(), R$layout.fragment_reportlist, null);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
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
        this.f11375f0 = (ListView) view.findViewById(R$id.ob_listview);
        this.f11376g0 = new ArrayList();
        m25015e2();
        m25013g2(this.f11376g0, this.f11377h0);
        this.f11375f0.setOnItemClickListener(new C3559a());
        m25016d2();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f11380k0 = (ReportListActivity) context;
    }
}
