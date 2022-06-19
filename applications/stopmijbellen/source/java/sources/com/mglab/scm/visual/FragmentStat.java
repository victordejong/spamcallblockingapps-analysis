package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.ActivityC0455o;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0608b;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.OnItemClick;
import butterknife.OnItemLongClick;
import butterknife.Unbinder;
import com.cocosw.bottomsheet.DialogC1599h;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.mglab.scm.telephony.ForegroundService;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.CallItem;
import com.mglab.scm.visual.FragmentDev;
import com.mglab.scm.visual.FragmentStat;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p066d0.C2134a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
import p095f8.C2782j;
import p095f8.DialogInterface$OnClickListenerC2783k;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3043q;
import p149k8.C3385b0;
import p149k8.C3386c;
import p149k8.C3393i;
import p149k8.C3394j;
import p149k8.C3395k;
import p149k8.C3396l;
import p149k8.C3397m;
import p149k8.C3398n;
import p149k8.C3405u;
import p182n8.C3795d;
import p193o8.AbstractC3946d;
import p193o8.C3948e;
import p193o8.C3950f;
import p193o8.C3958k;
import p193o8.C3969v;
import p193o8.C3970w;
import p193o8.DialogInterface$OnClickListenerC3968u;
import p229s2.C4281c;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p293y2.C4989f;
import p293y2.C4999p;
import p303z2.C5056q;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat.class */
public class FragmentStat extends Fragment implements SwipeRefreshLayout.AbstractC0669h {

    /* renamed from: g */
    public static C3948e f7603g = null;

    /* renamed from: h */
    public static List<AbstractC3946d> f7604h = new ArrayList();

    /* renamed from: a */
    public Unbinder f7605a;

    /* renamed from: c */
    public long f7607c;

    /* renamed from: f */
    public C2782j f7610f;
    @BindView
    public FloatingActionButton fab_clear;
    @BindView
    public ImageView filterImageView;
    @BindView
    public ListView mList;
    @BindView
    public ProgressBar progress;
    @BindView
    public SwipeRefreshLayout swipeRefreshLayout;
    @BindView
    public TextView tv_blocked;
    @BindView
    public TextView tv_checked;
    @BindView
    public TextView tv_empty;

    /* renamed from: b */
    public boolean f7606b = true;

    /* renamed from: d */
    public int f7608d = 0;

    /* renamed from: e */
    public boolean f7609e = false;

    @SuppressLint({"StaticFieldLeak"})
    /* renamed from: com.mglab.scm.visual.FragmentStat$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat$a.class */
    public class AsyncTaskC2093a extends AsyncTask<Integer, Void, Void> {

        /* renamed from: b */
        public static final /* synthetic */ int f7611b = 0;

        public AsyncTaskC2093a() {
            FragmentStat.this = r4;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Integer[] numArr) {
            Context applicationContext = FragmentStat.this.requireActivity().getApplicationContext();
            numArr[0].intValue();
            C2779g.m3093v(applicationContext);
            C2779g.m3128E(applicationContext, false);
            C3043q.m2722C(applicationContext);
            new C3043q().m2723B(applicationContext, false);
            C2779g.m3116Q(applicationContext);
            C2779g.m3119N(applicationContext);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r9) {
            super.onPostExecute(r9);
            Context requireContext = FragmentStat.this.requireContext();
            C2779g.m3130C(requireContext);
            if (C2780h.m3052f(requireContext, "rate_100", false) || C2780h.m3054e(requireContext).intValue() < 100 || System.currentTimeMillis() <= C2780h.m3022w(requireContext, "rate_100_last_reminded") + 259200000) {
                return;
            }
            C2780h.m3041k0(requireContext, "rate_100_last_reminded", System.currentTimeMillis());
            boolean m3081H = C2780h.m3081H(requireContext);
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext);
            c2531a.m3464k(2131820958);
            c2531a.m3463l(2131099739);
            c2531a.m3470e(17301618);
            c2531a.m3474a(m3081H ? 2131099793 : 2131099742);
            c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
            FragmentStat fragmentStat = FragmentStat.this;
            c2531a.m3473b(fragmentStat.getString(2131820957, String.valueOf(C2780h.m3054e(fragmentStat.getContext()))));
            c2531a.f8874y = false;
            c2531a.f8875z = false;
            c2531a.m3466i(2131820956);
            c2531a.f8870u = new C3970w(requireContext, 0);
            View$OnClickListenerC2530g.C2531a m3467h = c2531a.m3467h(2131820703);
            m3467h.f8872w = new C5056q(requireContext, 9);
            m3467h.m3468g(2131820654).m3465j();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentStat$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentStat$b.class */
    public static class C2094b implements TextWatcher {

        /* renamed from: a */
        public final View$OnClickListenerC2530g f7613a;

        /* renamed from: b */
        public final MaterialEditText f7614b;

        public C2094b(View$OnClickListenerC2530g view$OnClickListenerC2530g) {
            this.f7613a = view$OnClickListenerC2530g;
            this.f7614b = (MaterialEditText) view$OnClickListenerC2530g.f8822c.f8864o.findViewById(2131296921);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f7613a.m3481c(EnumC2524b.POSITIVE).setEnabled(String.valueOf(this.f7614b.getText()).equals("0709"));
        }
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: a */
    public final void m3943a() {
        ((ArrayList) f7604h).size();
        m3942c();
        C2779g.m3126G(getContext(), getResources());
        TextView textView = this.tv_blocked;
        textView.setText(C2780h.m3056d(getContext()) + " / " + C2780h.m3054e(getContext()));
        TextView textView2 = this.tv_checked;
        textView2.setText(C2780h.m3050g(getContext()) + " / " + C2780h.m3048h(getContext()));
        m3940e();
        this.mList.setVisibility(((ArrayList) f7604h).size() > 0 ? 0 : 8);
        this.tv_empty.setVisibility((((ArrayList) f7604h).size() > 0 || this.progress.getVisibility() == 0) ? 8 : 0);
        this.fab_clear.setVisibility((((ArrayList) f7604h).size() <= 0 || this.progress.getVisibility() == 0 || C2780h.m3076M(getContext())) ? 8 : 0);
        C3948e c3948e = f7603g;
        if (c3948e != null) {
            c3948e.notifyDataSetChanged();
        }
    }

    /* renamed from: c */
    public final void m3942c() {
        requireActivity().setTitle(2131820591);
        AbstractC2635a m3365s = ((ActivityC2651j) getActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820591);
        }
    }

    /* renamed from: d */
    public final void m3941d() {
        List<C3036l> list;
        this.progress.setVisibility(0);
        Context context = getContext();
        ArrayList arrayList = (ArrayList) f7604h;
        arrayList.clear();
        int m3061a0 = C2780h.m3061a0(getContext());
        if (m3061a0 == 1) {
            C4791r c4791r = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10289i.m237d(0), C3037m.f10294n.m231j(1));
            c4791r.m453o(C3037m.f10290j, false);
            list = c4791r.mo456l();
        } else if (m3061a0 != 2) {
            C4791r c4791r2 = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10294n.m231j(1));
            c4791r2.m453o(C3037m.f10290j, false);
            list = c4791r2.mo456l();
        } else {
            C4791r c4791r3 = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10289i.m232i(0), C3037m.f10294n.m231j(1));
            c4791r3.m453o(C3037m.f10290j, false);
            list = c4791r3.mo456l();
        }
        String str = "";
        for (C3036l c3036l : list) {
            if (c3036l.f10265g == null || c3036l.f10268j.intValue() != 2) {
                String str2 = str;
                if (!str.equals(C2779g.m3096s(getContext(), c3036l.f10263e))) {
                    str2 = C2779g.m3096s(getContext(), c3036l.f10263e);
                    if (DateUtils.isToday(c3036l.f10263e.getTime())) {
                        arrayList.add(new C3950f(getString(2131821064)));
                    } else if (DateUtils.isToday(c3036l.f10263e.getTime() + 86400000)) {
                        arrayList.add(new C3950f(getString(2131821074)));
                    } else {
                        arrayList.add(new C3950f(str2));
                    }
                }
                arrayList.add(new CallItem(c3036l));
                str = str2;
            }
        }
        arrayList.size();
        C3948e c3948e = new C3948e(context, arrayList);
        f7603g = c3948e;
        this.mList.setAdapter((ListAdapter) c3948e);
        this.progress.setVisibility(8);
        m3943a();
    }

    /* renamed from: e */
    public final void m3940e() {
        int m3061a0 = C2780h.m3061a0(getContext());
        if (m3061a0 == 1) {
            this.filterImageView.setImageResource(2131230953);
        } else if (m3061a0 != 2) {
            this.filterImageView.setImageResource(2131230952);
        } else {
            this.filterImageView.setImageResource(2131230954);
        }
    }

    @OnClick
    public void filterClick(View view) {
        Context context = getContext();
        int m3061a0 = C2780h.m3061a0(context) + 1;
        int i = m3061a0;
        if (m3061a0 > 2) {
            i = 0;
        }
        C2780h.m3043j0(context, "show_filter", Integer.valueOf(i));
        m3940e();
        int m3061a02 = C2780h.m3061a0(getContext());
        C2779g.m3122K(getContext(), getView(), m3061a02 != 1 ? m3061a02 != 2 ? 2131820757 : 2131820756 : 2131820755);
        m3941d();
    }

    @OnClick
    public void onBlockedTextViewClick() {
        boolean m3081H = C2780h.m3081H(getContext());
        if (this.f7607c + 2000 > System.currentTimeMillis()) {
            int i = this.f7608d + 1;
            this.f7608d = i;
            if (i >= 10 && !this.f7609e) {
                this.f7609e = true;
                View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
                c2531a.f8851b = "Debug code entry";
                c2531a.m3463l(2131099739);
                c2531a.m3474a(m3081H ? 2131099793 : 2131099742);
                c2531a.f8840E = C2779g.m3125H(C2134a.C2136b.m3841b(requireContext(), 2131230991), C2134a.m3845b(requireContext(), 2131099739));
                c2531a.m3469f(m3081H ? 2131099739 : 2131099699);
                c2531a.m3472c(2131099739);
                c2531a.f8874y = false;
                c2531a.f8875z = false;
                c2531a.m3471d(2131492946, false);
                c2531a.m3466i(2131820943);
                c2531a.f8870u = new C3969v(this, 0);
                c2531a.f8871v = C4281c.f13432h;
                c2531a.m3468g(2131820654);
                View$OnClickListenerC2530g m3465j = c2531a.m3465j();
                View view = m3465j.f8822c.f8864o;
                m3465j.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
                ((MaterialEditText) view.findViewById(2131296921)).addTextChangedListener(new C2094b(m3465j));
            }
        } else {
            this.f7608d = 0;
            this.f7609e = false;
        }
        this.f7607c = System.currentTimeMillis();
    }

    @OnClick
    public void onClearClick() {
        new C2107c(getContext(), getView()).m3924h(5);
    }

    @OnClick
    @SuppressLint({"SetTextI18n"})
    public void onClearStatClick() {
        boolean m3081H = C2780h.m3081H(getContext());
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
        c2531a.f8851b = getString(2131820590);
        c2531a.m3463l(2131099739);
        c2531a.m3474a(m3081H ? 2131099793 : 2131099742);
        c2531a.m3472c(m3081H ? 2131099742 : 2131099699);
        c2531a.m3470e(2131230950);
        c2531a.f8874y = true;
        c2531a.f8875z = true;
        c2531a.m3466i(2131820943);
        View$OnClickListenerC2530g.C2531a m3468g = c2531a.m3468g(2131820654);
        m3468g.f8870u = new C4999p(this);
        m3468g.m3465j();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            bundle.toString();
        }
        View inflate = layoutInflater.inflate(2131492961, viewGroup, false);
        this.f7605a = ButterKnife.m7385a(this, inflate);
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.swipeRefreshLayout.setColorSchemeResources(2131099739, 2131099739, 2131099739, 2131099739);
        this.progress.setVisibility(0);
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
        if (this.f7606b) {
            new AsyncTaskC2093a().execute(0);
            this.f7606b = false;
        } else {
            m3941d();
        }
        ActivityC0455o activity = getActivity();
        C2782j c2782j = new C2782j(activity);
        this.f7610f = c2782j;
        Map<Class<?>, Constructor<? extends Unbinder>> map = ButterKnife.f2883a;
        c2782j.f9500d = ButterKnife.m7385a(activity, activity.getWindow().getDecorView());
        try {
            c2782j.m3018a();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onDestroyView();
        this.f7605a.mo3937a();
        C2782j c2782j = this.f7610f;
        c2782j.f9500d.mo3937a();
        try {
            c2782j.m3017b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnItemClick
    public void onItemClick(View view, int i) {
        final Context context = getContext();
        final CallItem callItem = (CallItem) ((ArrayList) f7604h).get(i);
        boolean m3081H = C2780h.m3081H(context);
        DialogC1599h.C1602c c1602c = new DialogC1599h.C1602c(requireActivity());
        c1602c.f5946d = ((TextView) view.findViewById(2131297176)).getText();
        C3036l c3036l = callItem.f7343d;
        c1602c.f5948f = new C3958k(context, c3036l == null ? callItem.f7350k : c3036l.f10280v, 1, 100, C2134a.m3845b(context, 2131099737)).m1586b();
        c1602c.f5947e = new DialogInterface.OnClickListener() { // from class: o8.s
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                FragmentStat fragmentStat = FragmentStat.this;
                CallItem callItem2 = callItem;
                Context context2 = context;
                C3948e c3948e = FragmentStat.f7603g;
                Objects.requireNonNull(fragmentStat);
                switch (i2) {
                    case 1:
                        String m3954e = callItem2.m3954e();
                        Intent intent = new Intent("android.intent.action.CALL");
                        intent.setFlags(268435456);
                        intent.setData(Uri.parse("tel:" + m3954e));
                        fragmentStat.startActivity(intent);
                        return;
                    case 2:
                        if (!C3043q.m2719c(callItem2.m3954e())) {
                            new C2107c(context2, fragmentStat.getView()).m3928d(2, callItem2);
                            return;
                        } else {
                            new C2107c(context2, fragmentStat.getView()).m3922j(2, callItem2);
                            return;
                        }
                    case 3:
                        if (!C3043q.m2713i(callItem2.m3954e())) {
                            new C2107c(context2, fragmentStat.getView()).m3928d(1, callItem2);
                            return;
                        } else {
                            new C2107c(context2, fragmentStat.getView()).m3922j(1, callItem2);
                            return;
                        }
                    case 4:
                        C2107c c2107c = new C2107c(fragmentStat.getContext(), fragmentStat.getView());
                        StringBuilder sb = new StringBuilder();
                        sb.append("*** CALL INFO ***\n");
                        Objects.requireNonNull(callItem2);
                        StringBuilder m8752j = C0082b.m8752j("NUMBER: ");
                        m8752j.append(callItem2.f7343d.f10261c);
                        StringBuilder m7624k = C0608b.m7624k(m8752j.toString(), "\nID: ");
                        m7624k.append(callItem2.f7343d.f10260b);
                        String sb2 = m7624k.toString();
                        String str = sb2;
                        if (callItem2.f7341b) {
                            StringBuilder m7624k2 = C0608b.m7624k(sb2, "\n\nCALL_LOG\nID: ");
                            m7624k2.append(callItem2.f7343d.f10265g);
                            m7624k2.append("");
                            m7624k2.append("\nDATE: ");
                            m7624k2.append(C2779g.m3103l(callItem2.f7343d.f10267i));
                            m7624k2.append(" ");
                            m7624k2.append(C2779g.m3100o(callItem2.f7343d.f10267i));
                            m7624k2.append("\nCOUNTRY_ISO: ");
                            m7624k2.append(callItem2.f7343d.f10270l);
                            str = m7624k2.toString();
                        }
                        String str2 = str;
                        if (callItem2.f7342c) {
                            StringBuilder m7624k3 = C0608b.m7624k(str, "\n\nRECEIVER\nSIMNO: ");
                            m7624k3.append(callItem2.f7343d.f10264f);
                            m7624k3.append("\nPRESET: ");
                            m7624k3.append(callItem2.f7343d.f10246G);
                            m7624k3.append("\nRESULT: ");
                            m7624k3.append(C3795d.m1788e(callItem2.f7343d.f10262d.intValue()));
                            m7624k3.append("\nRESULT_CODE: ");
                            m7624k3.append(callItem2.f7343d.f10262d);
                            m7624k3.append("\nDATE: ");
                            m7624k3.append(C2779g.m3103l(callItem2.f7343d.f10263e));
                            m7624k3.append(" ");
                            m7624k3.append(C2779g.m3100o(callItem2.f7343d.f10263e));
                            m7624k3.append("\nCHECK_TIME: ");
                            m7624k3.append(callItem2.f7343d.f10281w);
                            m7624k3.append(" ms\nMEMORY_CHECK: ");
                            m7624k3.append(callItem2.f7343d.f10282x ? "true" : "false");
                            m7624k3.append("\n\nENDCALL_RESULT: ");
                            m7624k3.append(callItem2.f7343d.f10243D);
                            m7624k3.append("\nBLOCK_METHOD: ");
                            m7624k3.append(callItem2.f7343d.f10251L);
                            m7624k3.append("\nUSE_DB: ");
                            m7624k3.append(callItem2.f7343d.f10272n);
                            m7624k3.append("\nUSE_BL: ");
                            m7624k3.append(callItem2.f7343d.f10273o);
                            m7624k3.append("\nUSE_WL: ");
                            m7624k3.append(callItem2.f7343d.f10274p);
                            m7624k3.append("\nUSE_FOREIGN: ");
                            m7624k3.append(callItem2.f7343d.f10275q);
                            m7624k3.append("\nUSE_CONTACTS: ");
                            m7624k3.append(callItem2.f7343d.f10276r);
                            m7624k3.append("\nUSE_FOREGROUND: ");
                            m7624k3.append(callItem2.f7343d.f10278t);
                            m7624k3.append("\nDEFAULT_PHONE_APP (SETTINGS): ");
                            m7624k3.append(callItem2.f7343d.f10258S);
                            m7624k3.append("\nIS_DEFAULT_PHONE_APP (SYSTEM): ");
                            m7624k3.append(callItem2.f7343d.f10257R);
                            m7624k3.append("\nDND: ");
                            m7624k3.append(callItem2.f7343d.f10252M ? "true" : "false");
                            m7624k3.append("\nSYSTEM_VIBRATE: ");
                            m7624k3.append(callItem2.f7343d.f10253N ? "true" : "false");
                            m7624k3.append("\nSECOND_CALL: ");
                            m7624k3.append(callItem2.f7343d.f10254O ? "true" : "false");
                            m7624k3.append("\nUSE_CALENDAR: ");
                            m7624k3.append(callItem2.f7343d.f10247H ? "true" : "false");
                            m7624k3.append("\nCALENDAR: ");
                            m7624k3.append(callItem2.f7343d.f10248I);
                            m7624k3.append("\nDEBUG: ");
                            m7624k3.append(callItem2.f7343d.f10283y);
                            str2 = m7624k3.toString();
                        }
                        String str3 = str2;
                        if (callItem2.f7341b) {
                            str3 = str2;
                            if (callItem2.f7342c) {
                                StringBuilder m7624k4 = C0608b.m7624k(str2, "\n\nCL_TIME_DIFF: ");
                                m7624k4.append(Math.abs((callItem2.f7343d.f10263e.getTime() - callItem2.f7343d.f10267i.getTime()) / 1000));
                                m7624k4.append(" sec");
                                str3 = m7624k4.toString();
                            }
                        }
                        sb.append(str3);
                        sb.append("\n\n*** USER CALL INFO ***\n");
                        sb.append(callItem2.m3956c(true));
                        sb.append("\n\n");
                        sb.append(FragmentDev.m3949a(fragmentStat.requireContext(), true));
                        String sb3 = sb.toString();
                        boolean m3081H2 = C2780h.m3081H(c2107c.f7646a);
                        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(c2107c.f7646a);
                        c2531a.m3464k(2131820720);
                        c2531a.m3463l(2131099739);
                        c2531a.f8840E = C2779g.m3125H(C2134a.C2136b.m3841b(c2107c.f7646a, 2131230993), C2134a.m3845b(c2107c.f7646a, 2131099739));
                        c2531a.m3474a(m3081H2 ? 2131099793 : 2131099742);
                        c2531a.m3472c(m3081H2 ? 2131099742 : 2131099699);
                        c2531a.f8874y = true;
                        c2531a.f8875z = true;
                        c2531a.m3471d(2131492941, true);
                        c2531a.m3466i(2131820721);
                        c2531a.f8870u = new C4989f(c2107c, sb3);
                        c2531a.m3468g(2131820654);
                        View$OnClickListenerC2530g m3465j = c2531a.m3465j();
                        C2107c.f7645k = m3465j;
                        View view2 = m3465j.f8822c.f8864o;
                        ((TextView) view2.findViewById(2131296522)).setText(sb3);
                        MaterialEditText materialEditText = (MaterialEditText) view2.findViewById(2131296521);
                        C2107c.f7645k.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
                        materialEditText.addTextChangedListener(new C3951f0(c2107c));
                        return;
                    case 5:
                        String m3954e2 = callItem2.m3954e();
                        Intent intent2 = new Intent(context2, ForegroundService.class);
                        intent2.putExtra("EXTRA_CHECK_NUMBER", m3954e2);
                        if (Build.VERSION.SDK_INT >= 26) {
                            context2.startForegroundService(intent2);
                            return;
                        } else {
                            context2.startService(intent2);
                            return;
                        }
                    case 6:
                        C0748b.m7409b().m7404g(new C3385b0(callItem2.m3954e(), false));
                        return;
                    case 7:
                        new C2107c(context2, fragmentStat.getView()).m3922j(5, callItem2);
                        return;
                    case 8:
                        AlertDialog.Builder builder = new AlertDialog.Builder(fragmentStat.getContext(), C2780h.m3081H(fragmentStat.getContext()) ? 2131886382 : 2131886090);
                        builder.setTitle(2131820603).setMessage(callItem2.m3956c(false)).setIcon(callItem2.m3953f()).setCancelable(true).setPositiveButton(2131820723, DialogInterface$OnClickListenerC2783k.f9502c).setNegativeButton(2131820670, DialogInterface$OnClickListenerC3967t.f12473a);
                        builder.create().show();
                        return;
                    default:
                        return;
                }
            }
        };
        if (!C3795d.m1789d(callItem.m3954e())) {
            Drawable m3841b = C2134a.C2136b.m3841b(context, 2131231012);
            Objects.requireNonNull(m3841b);
            c1602c.m4855a(1, m3841b, getString(2131820602) + " " + callItem.m3954e());
            Drawable m3841b2 = C2134a.C2136b.m3841b(context, 2131230955);
            Objects.requireNonNull(m3841b2);
            c1602c.m4855a(6, m3841b2, getString(2131820609));
            if (!C3043q.m2719c(callItem.m3954e())) {
                Drawable m3841b3 = C2134a.C2136b.m3841b(context, 2131230922);
                Objects.requireNonNull(m3841b3);
                c1602c.m4855a(2, m3841b3, getString(2131820599));
            } else {
                Drawable m3841b4 = C2134a.C2136b.m3841b(context, 2131230923);
                Objects.requireNonNull(m3841b4);
                c1602c.m4855a(2, m3841b4, getString(2131820607));
            }
            if (!C3043q.m2713i(callItem.m3954e())) {
                Drawable m3841b5 = C2134a.C2136b.m3841b(context, 2131231015);
                Objects.requireNonNull(m3841b5);
                c1602c.m4855a(3, m3841b5, getString(2131820600));
            } else {
                Drawable m3841b6 = C2134a.C2136b.m3841b(context, 2131231016);
                Objects.requireNonNull(m3841b6);
                c1602c.m4855a(3, m3841b6, getString(2131820608));
            }
        }
        Drawable m3841b7 = C2134a.C2136b.m3841b(context, 2131231017);
        Objects.requireNonNull(m3841b7);
        c1602c.m4855a(8, m3841b7, getString(2131820603));
        boolean m3079J = C2780h.m3079J(context);
        boolean m3080I = C2780h.m3080I(context);
        if (!C3795d.m1789d(callItem.m3954e()) && (m3079J || m3080I)) {
            Drawable m3125H = C2779g.m3125H(C2134a.C2136b.m3841b(context, 2131230993), C2134a.m3845b(context, 2131099739));
            StringBuilder m8752j = C0082b.m8752j("Debug: ");
            m8752j.append(getString(2131820603));
            c1602c.m4855a(4, m3125H, m8752j.toString());
        }
        if (m3079J) {
            Drawable m3125H2 = C2779g.m3125H(C2134a.C2136b.m3841b(context, 17301568), C2134a.m3845b(context, 2131099739));
            StringBuilder m8752j2 = C0082b.m8752j("Dev: ");
            m8752j2.append(getString(2131820604));
            c1602c.m4855a(5, m3125H2, m8752j2.toString());
        }
        Drawable m3841b8 = C2134a.C2136b.m3841b(context, 2131230972);
        Objects.requireNonNull(m3841b8);
        c1602c.m4855a(7, m3841b8, getString(2131820605));
        if (m3081H) {
            c1602c.f5945c = 2131886364;
        }
        c1602c.m4854b();
    }

    @OnItemLongClick
    public boolean onItemLongClick(int i) {
        CallItem callItem = (CallItem) ((ArrayList) f7604h).get(i);
        boolean z = false;
        if (C3795d.m1789d(callItem.f7345f ? callItem.f7346g : callItem.f7343d.f10261c)) {
            return false;
        }
        Context requireContext = requireContext();
        String m3954e = callItem.m3954e();
        ClipboardManager clipboardManager = (ClipboardManager) requireContext.getSystemService("clipboard");
        ClipData newPlainText = ClipData.newPlainText(null, m3954e);
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(newPlainText);
            z = true;
        }
        if (!z) {
            return true;
        }
        C2779g.m3121L(getContext(), getView(), getString(2131820933));
        return true;
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventCheckNumber(C3386c c3386c) {
        String str = c3386c.f11433a;
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), C2780h.m3081H(getContext()) ? 2131886382 : 2131886090);
        builder.setTitle(2131820604).setMessage(str).setIcon(requireContext().getResources().getIdentifier("android:drawable/ic_menu_help", null, null)).setCancelable(false).setNegativeButton("Ok", DialogInterface$OnClickListenerC3968u.f12474a);
        builder.create().show();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventFragmentRefresh(C3395k c3395k) {
        Objects.requireNonNull(c3395k);
        throw null;
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventFragmentStatAddCall(C3393i c3393i) {
        try {
            CallItem callItem = c3393i.f11438a;
            int i = callItem.f7343d.f10260b;
            callItem.m3954e();
            if (((ArrayList) f7604h).size() == 0 || (((AbstractC3946d) ((ArrayList) f7604h).get(0)).getClass().getName().equals(C3950f.class.getName()) && !((C3950f) ((ArrayList) f7604h).get(0)).f12443a.equals(getString(2131821064)))) {
                ((ArrayList) f7604h).add(0, new C3950f(getString(2131821064)));
            }
            ((ArrayList) f7604h).add(1, c3393i.f11438a);
            boolean z = c3393i.f11438a.f7341b;
            f7603g.notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
        m3943a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventFragmentStatDeleteCall(C3394j c3394j) {
        int i = 0;
        while (true) {
            if (i >= ((ArrayList) f7604h).size()) {
                break;
            } else if (!((AbstractC3946d) ((ArrayList) f7604h).get(i)).getClass().getName().equals(CallItem.class.getName()) || ((CallItem) ((ArrayList) f7604h).get(i)).f7343d.f10260b != c3394j.f11439a.f7343d.f10260b) {
                i++;
            } else {
                ((ArrayList) f7604h).remove(i);
                int i2 = i - 1;
                if (((AbstractC3946d) ((ArrayList) f7604h).get(i2)).getClass().getName().equals(C3950f.class.getName()) && (i == ((ArrayList) f7604h).size() || ((AbstractC3946d) ((ArrayList) f7604h).get(i)).getClass().getName().equals(C3950f.class.getName()))) {
                    ((ArrayList) f7604h).remove(i2);
                }
            }
        }
        f7603g.notifyDataSetChanged();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventFragmentStatUpdateCall(C3397m c3397m) {
        int i = 0;
        while (true) {
            try {
                if (i < ((ArrayList) f7604h).size()) {
                    if (((AbstractC3946d) ((ArrayList) f7604h).get(i)).getClass().getName().equals(CallItem.class.getName()) && ((CallItem) ((ArrayList) f7604h).get(i)).f7343d.f10260b == c3397m.f11441a.f7343d.f10260b) {
                        ((ArrayList) f7604h).remove(i);
                        ((ArrayList) f7604h).add(i, c3397m.f11441a);
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        f7603g.notifyDataSetChanged();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventFragmentStatUpdateCalls(C3398n c3398n) {
        Objects.requireNonNull(c3398n);
        Iterator it2 = ((ArrayList) f7604h).iterator();
        while (it2.hasNext()) {
            AbstractC3946d abstractC3946d = (AbstractC3946d) it2.next();
            if (abstractC3946d.getClass().getName().equals(CallItem.class.getName())) {
                CallItem callItem = (CallItem) abstractC3946d;
                C3036l c3036l = (C3036l) new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10287g.m239a(Integer.valueOf(callItem.f7343d.f10260b))).m452p();
                if (c3036l != null) {
                    String str = c3036l.f10266h;
                    if (callItem.f7345f) {
                        callItem.f7347h = str;
                    } else {
                        callItem.f7343d.f10266h = str;
                    }
                    String str2 = c3036l.f10280v;
                    C3036l c3036l2 = callItem.f7343d;
                    if (c3036l2 != null) {
                        c3036l2.f10280v = str2;
                    }
                    callItem.f7350k = str2;
                }
            }
        }
        C3948e c3948e = f7603g;
        if (c3948e != null) {
            c3948e.notifyDataSetChanged();
        }
        m3943a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventSimIconColorChanged(C3405u c3405u) {
        f7603g.notifyDataSetChanged();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventragmentStatReloadCalls(C3396l c3396l) {
        String str = c3396l.f11440a;
        m3941d();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0264  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 1417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mglab.scm.visual.FragmentStat.onResume():void");
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m3942c();
    }
}
