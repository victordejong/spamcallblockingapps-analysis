package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.ActivityC0455o;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.OnItemClick;
import butterknife.OnItemLongClick;
import butterknife.Unbinder;
import com.cocosw.bottomsheet.DialogC1599h;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import com.mglab.scm.visual.BWLItem;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentWhiteList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p066d0.C2134a;
import p085ea.AbstractC2633b;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2780h;
import p117h8.C3026c;
import p117h8.C3027d;
import p117h8.C3050w;
import p117h8.C3051x;
import p149k8.C3387c0;
import p149k8.C3404t;
import p160l8.View$OnClickListenerC3533p;
import p182n8.C3795d;
import p193o8.AbstractC3940a;
import p193o8.C3942b;
import p193o8.C3958k;
import p193o8.View$OnClickListenerC3960m;
import p193o8.View$OnClickListenerC3961n;
import p193o8.View$OnClickListenerC3962o;
import p229s2.C4280b;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentWhiteList.class */
public class FragmentWhiteList extends Fragment {

    /* renamed from: g */
    public static final /* synthetic */ int f7627g = 0;

    /* renamed from: a */
    public Unbinder f7628a;

    /* renamed from: b */
    public C3942b f7629b;

    /* renamed from: d */
    public FloatingActionButton f7631d;

    /* renamed from: e */
    public FloatingActionMenu f7632e;
    @BindView
    public TextView emptyTextView;
    @BindView
    public com.google.android.material.floatingactionbutton.FloatingActionButton fab_clear_selected;
    @BindView
    public ListView mList;

    /* renamed from: c */
    public final List<AbstractC3940a> f7630c = new ArrayList();

    /* renamed from: f */
    public final AbstractC2633b f7633f = new C2101a();

    /* renamed from: com.mglab.scm.visual.FragmentWhiteList$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentWhiteList$a.class */
    public class C2101a implements AbstractC2633b {
        public C2101a() {
            FragmentWhiteList.this = r4;
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
            new C2107c(FragmentWhiteList.this.getContext(), FragmentWhiteList.this.getView()).m3925g(1);
        }
    }

    /* renamed from: a */
    public final int m3939a() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < this.f7630c.size()) {
                int i4 = i3;
                if (this.f7630c.get(i).getClass().equals(BWLItem.class)) {
                    i4 = i3;
                    if (((BWLItem) this.f7630c.get(i)).f7338d) {
                        i4 = i3 + 1;
                    }
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: c */
    public final List<AbstractC3940a> m3938c(List<AbstractC3940a> list) {
        list.clear();
        C4791r<TModel> m477n = new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class).m477n(C3051x.f10383j, true);
        m477n.m453o(C3051x.f10381h, true);
        Iterator it2 = m477n.mo456l().iterator();
        int i = -12345;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                C3050w c3050w = (C3050w) it2.next();
                int i3 = c3050w.f10378f;
                int i4 = i2;
                if (i2 != i3) {
                    list.add(new BWLHeader(C3795d.m1791b(getContext(), i3)));
                    i4 = i3;
                }
                list.add(new BWLItem(null, c3050w));
                i = i4;
            } else {
                return list;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // androidx.fragment.app.Fragment
    @SuppressLint({"IntentReset"})
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492962, viewGroup, false);
        this.f7632e = (FloatingActionMenu) inflate.findViewById(2131296608);
        FloatingActionButton floatingActionButton = (FloatingActionButton) inflate.findViewById(2131296599);
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) inflate.findViewById(2131296602);
        this.f7631d = (FloatingActionButton) inflate.findViewById(2131296600);
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) inflate.findViewById(2131296607);
        this.f7632e.setClosedOnTouchOutside(true);
        this.f7632e.setOnMenuToggleListener(new C4280b(this));
        floatingActionButton.setOnClickListener(new View$OnClickListenerC3533p(this, 2));
        floatingActionButton2.setOnClickListener(new View$OnClickListenerC3960m(this, 1));
        this.f7631d.setOnClickListener(new View$OnClickListenerC3961n(this, 1));
        floatingActionButton3.setOnClickListener(new View$OnClickListenerC3962o(this, 1));
        this.f7628a = ButterKnife.m7385a(this, inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7628a.mo3937a();
    }

    @OnClick
    public void onFabClearSelectedClick() {
        int m3939a = m3939a();
        if (m3939a != 0) {
            C4782k.C4784b m469j = new C4782k(C3027d.f10155f.f15050b).m469j(0, new Object[0]);
            for (int i = 0; i < this.f7630c.size(); i++) {
                if (this.f7630c.get(i).getClass().equals(BWLItem.class) && ((BWLItem) this.f7630c.get(i)).f7338d) {
                    m469j.f14707f.add(Integer.valueOf(((BWLItem) this.f7630c.get(i)).m3960c()));
                }
            }
            new C2107c(getContext(), getView()).m3923i(1, m3939a, m469j);
        }
    }

    @OnItemClick
    public void onItemClick(View view, int i) {
        final Context context = getContext();
        final BWLItem bWLItem = (BWLItem) this.f7630c.get(i);
        if (C2780h.m3060b(context)) {
            bWLItem.m3957f(!bWLItem.f7338d);
            this.f7629b.notifyDataSetChanged();
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = this.fab_clear_selected;
            int i2 = 8;
            if (C2780h.m3060b(context)) {
                i2 = 8;
                if (m3939a() != 0) {
                    i2 = 0;
                }
            }
            floatingActionButton.setVisibility(i2);
            return;
        }
        ActivityC0455o requireActivity = requireActivity();
        DialogC1599h.C1602c c1602c = new DialogC1599h.C1602c(requireActivity);
        c1602c.f5946d = ((TextView) view.findViewById(2131297176)).getText();
        c1602c.f5947e = new DialogInterface.OnClickListener() { // from class: o8.x
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                FragmentWhiteList fragmentWhiteList = FragmentWhiteList.this;
                Context context2 = context;
                BWLItem bWLItem2 = bWLItem;
                int i4 = FragmentWhiteList.f7627g;
                Objects.requireNonNull(fragmentWhiteList);
                if (i3 == 7) {
                    new C2107c(context2, fragmentWhiteList.getView()).m3920l(bWLItem2);
                } else if (i3 != 8) {
                } else {
                    new C2107c(context2, fragmentWhiteList.getView()).m3919m(bWLItem2);
                }
            }
        };
        Objects.requireNonNull(context);
        Object obj = C2134a.f7832a;
        Drawable m3841b = C2134a.C2136b.m3841b(context, 2131230973);
        Objects.requireNonNull(m3841b);
        c1602c.m4855a(8, m3841b, getString(2131820606));
        if (!bWLItem.m3958e()) {
            C3026c c3026c = bWLItem.f7336b;
            c1602c.f5948f = new C3958k(context, c3026c != null ? c3026c.f10152e : bWLItem.f7337c.f10377e, 1, 100, C2134a.m3845b(context, 2131099737)).m1586b();
        } else {
            c1602c.f5948f = requireActivity.getResources().getDrawable(2131230968);
        }
        Drawable m3841b2 = C2134a.C2136b.m3841b(context, 2131230972);
        Objects.requireNonNull(m3841b2);
        c1602c.m4855a(7, m3841b2, getString(2131820605));
        if (C2780h.m3081H(context)) {
            c1602c.f5945c = 2131886364;
        }
        c1602c.m4854b();
    }

    @OnItemLongClick
    public void onListItemLongClick(int i) {
        C2780h.m3027r0(getContext());
        if (C2780h.m3060b(getContext())) {
            ((BWLItem) this.f7630c.get(i)).m3957f(true);
        } else {
            for (int i2 = 0; i2 < this.f7630c.size(); i2++) {
                if (this.f7630c.get(i2).getClass().equals(BWLItem.class)) {
                    ((BWLItem) this.f7630c.get(i2)).m3957f(false);
                }
            }
        }
        this.fab_clear_selected.setVisibility((!C2780h.m3060b(getContext()) || m3939a() == 0) ? 8 : 0);
        C3942b c3942b = new C3942b(getContext(), this.f7630c);
        this.f7629b = c3942b;
        this.mList.setAdapter((ListAdapter) c3942b);
        this.emptyTextView.setVisibility(this.mList.getCount() > 0 ? 8 : 0);
        this.fab_clear_selected.setVisibility((!C2780h.m3060b(getContext()) || m3939a() == 0) ? 8 : 0);
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C3387c0 c3387c0) {
        m3938c(this.f7630c);
        this.f7629b.notifyDataSetChanged();
        this.emptyTextView.setVisibility(this.mList.getCount() > 0 ? 8 : 0);
        if (C2780h.m3060b(getContext())) {
            C2780h.m3027r0(getContext());
        }
        com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = this.fab_clear_selected;
        int i = 8;
        if (C2780h.m3060b(getContext())) {
            i = 8;
            if (m3939a() != 0) {
                i = 0;
            }
        }
        floatingActionButton.setVisibility(i);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        C2780h.m3049g0(getContext(), "bwlmultiselectenabled", false);
        requireActivity().setTitle(2131820583);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820583);
        }
        Context context = getContext();
        List<AbstractC3940a> list = this.f7630c;
        m3938c(list);
        C3942b c3942b = new C3942b(context, list);
        this.f7629b = c3942b;
        this.mList.setAdapter((ListAdapter) c3942b);
        this.emptyTextView.setVisibility(this.mList.getCount() > 0 ? 8 : 0);
        this.fab_clear_selected.setVisibility((!C2780h.m3060b(getContext()) || m3939a() == 0) ? 8 : 0);
        C0748b.m7409b().m7404g(new C3404t());
    }
}
