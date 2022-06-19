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
import com.mglab.scm.visual.FragmentBlackList;
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
import p149k8.C3382a;
import p149k8.C3385b0;
import p149k8.C3404t;
import p160l8.View$OnClickListenerC3533p;
import p160l8.View$OnClickListenerC3534q;
import p182n8.C3795d;
import p193o8.AbstractC3940a;
import p193o8.C3942b;
import p193o8.C3958k;
import p193o8.View$OnClickListenerC3960m;
import p193o8.View$OnClickListenerC3961n;
import p193o8.View$OnClickListenerC3962o;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p293y2.C4999p;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBlackList.class */
public class FragmentBlackList extends Fragment {

    /* renamed from: f */
    public static C3942b f7379f;

    /* renamed from: a */
    public Unbinder f7380a;

    /* renamed from: c */
    public FloatingActionButton f7382c;

    /* renamed from: d */
    public FloatingActionMenu f7383d;
    @BindView
    public TextView emptyTextView;
    @BindView
    public com.google.android.material.floatingactionbutton.FloatingActionButton fab_clear_selected;
    @BindView
    public ListView mList;

    /* renamed from: b */
    public final List<AbstractC3940a> f7381b = new ArrayList();

    /* renamed from: e */
    public final AbstractC2633b f7384e = new C1995a();

    /* renamed from: com.mglab.scm.visual.FragmentBlackList$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBlackList$a.class */
    public class C1995a implements AbstractC2633b {
        public C1995a() {
            FragmentBlackList.this = r4;
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
            new C2107c(FragmentBlackList.this.getContext(), FragmentBlackList.this.getView()).m3925g(2);
        }
    }

    /* renamed from: a */
    public final int m3952a() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < this.f7381b.size()) {
                int i4 = i3;
                if (this.f7381b.get(i).getClass().equals(BWLItem.class)) {
                    i4 = i3;
                    if (((BWLItem) this.f7381b.get(i)).f7338d) {
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
    public final List<AbstractC3940a> m3951c(List<AbstractC3940a> list) {
        list.clear();
        C4791r<TModel> m477n = new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class).m477n(C3027d.f10159j, true);
        m477n.m453o(C3027d.f10157h, true);
        Iterator it2 = m477n.mo456l().iterator();
        int i = -12345;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                C3026c c3026c = (C3026c) it2.next();
                int i3 = c3026c.f10153f;
                int i4 = i2;
                if (i2 != i3) {
                    list.add(new BWLHeader(C3795d.m1791b(getContext(), i3)));
                    i4 = i3;
                }
                list.add(new BWLItem(c3026c, null));
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
        View inflate = layoutInflater.inflate(2131492951, viewGroup, false);
        this.f7383d = (FloatingActionMenu) inflate.findViewById(2131296608);
        FloatingActionButton floatingActionButton = (FloatingActionButton) inflate.findViewById(2131296599);
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) inflate.findViewById(2131296602);
        this.f7382c = (FloatingActionButton) inflate.findViewById(2131296600);
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) inflate.findViewById(2131296607);
        FloatingActionButton floatingActionButton4 = (FloatingActionButton) inflate.findViewById(2131296609);
        this.f7383d.setClosedOnTouchOutside(true);
        this.f7383d.setOnMenuToggleListener(new C4999p(this));
        floatingActionButton3.setOnClickListener(new View$OnClickListenerC3960m(this, 0));
        floatingActionButton4.setOnClickListener(new View$OnClickListenerC3961n(this, 0));
        floatingActionButton.setOnClickListener(new View$OnClickListenerC3962o(this, 0));
        floatingActionButton2.setOnClickListener(new View$OnClickListenerC3534q(this, 2));
        this.f7382c.setOnClickListener(new View$OnClickListenerC3533p(this, 1));
        this.f7380a = ButterKnife.m7385a(this, inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7380a.mo3937a();
    }

    @OnClick
    public void onFabClearSelectedClick() {
        int m3952a = m3952a();
        if (m3952a != 0) {
            C4782k.C4784b m469j = new C4782k(C3027d.f10155f.f15050b).m469j(0, new Object[0]);
            for (int i = 0; i < this.f7381b.size(); i++) {
                if (this.f7381b.get(i).getClass().equals(BWLItem.class) && ((BWLItem) this.f7381b.get(i)).f7338d) {
                    m469j.f14707f.add(Integer.valueOf(((BWLItem) this.f7381b.get(i)).m3960c()));
                }
            }
            new C2107c(getContext(), getView()).m3923i(2, m3952a, m469j);
        }
    }

    @OnItemClick
    public void onListItemClick(View view, int i) {
        final BWLItem bWLItem = (BWLItem) this.f7381b.get(i);
        if (C2780h.m3060b(getContext())) {
            bWLItem.m3957f(!bWLItem.f7338d);
            f7379f.notifyDataSetChanged();
            com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = this.fab_clear_selected;
            int i2 = 8;
            if (C2780h.m3060b(getContext())) {
                i2 = 8;
                if (m3952a() != 0) {
                    i2 = 0;
                }
            }
            floatingActionButton.setVisibility(i2);
            return;
        }
        ActivityC0455o requireActivity = requireActivity();
        DialogC1599h.C1602c c1602c = new DialogC1599h.C1602c(requireActivity);
        c1602c.f5946d = ((TextView) view.findViewById(2131297176)).getText();
        c1602c.f5947e = new DialogInterface.OnClickListener() { // from class: o8.l
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                FragmentBlackList fragmentBlackList = FragmentBlackList.this;
                BWLItem bWLItem2 = bWLItem;
                C3942b c3942b = FragmentBlackList.f7379f;
                Objects.requireNonNull(fragmentBlackList);
                if (i3 == 6) {
                    C0748b.m7409b().m7404g(new C3385b0(bWLItem2.m3959d(), false));
                } else if (i3 == 7) {
                    new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3920l(bWLItem2);
                } else if (i3 != 8) {
                } else {
                    new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3919m(bWLItem2);
                }
            }
        };
        Context requireContext = requireContext();
        Object obj = C2134a.f7832a;
        Drawable m3841b = C2134a.C2136b.m3841b(requireContext, 2131230973);
        Objects.requireNonNull(m3841b);
        c1602c.m4855a(8, m3841b, getString(2131820606));
        if (!bWLItem.m3958e()) {
            Context context = getContext();
            C3026c c3026c = bWLItem.f7336b;
            c1602c.f5948f = new C3958k(context, c3026c != null ? c3026c.f10152e : bWLItem.f7337c.f10377e, 1, 100, C2134a.m3845b(requireContext(), 2131099737)).m1586b();
            Drawable m3841b2 = C2134a.C2136b.m3841b(requireContext(), 2131230955);
            Objects.requireNonNull(m3841b2);
            c1602c.m4855a(6, m3841b2, getString(2131820609));
        } else {
            c1602c.f5948f = requireActivity.getResources().getDrawable(2131230968);
        }
        Drawable m3841b3 = C2134a.C2136b.m3841b(requireContext(), 2131230972);
        Objects.requireNonNull(m3841b3);
        c1602c.m4855a(7, m3841b3, getString(2131820605));
        if (C2780h.m3081H(getContext())) {
            c1602c.f5945c = 2131886364;
        }
        c1602c.m4854b();
    }

    @OnItemLongClick
    public void onListItemLongClick(int i) {
        C2780h.m3027r0(getContext());
        if (C2780h.m3060b(getContext())) {
            ((BWLItem) this.f7381b.get(i)).m3957f(true);
        } else {
            for (int i2 = 0; i2 < this.f7381b.size(); i2++) {
                if (this.f7381b.get(i2).getClass().equals(BWLItem.class)) {
                    ((BWLItem) this.f7381b.get(i2)).m3957f(false);
                }
            }
        }
        this.fab_clear_selected.setVisibility((!C2780h.m3060b(getContext()) || m3952a() == 0) ? 8 : 0);
        C3942b c3942b = new C3942b(getContext(), this.f7381b);
        f7379f = c3942b;
        this.mList.setAdapter((ListAdapter) c3942b);
        this.emptyTextView.setVisibility(this.mList.getCount() > 0 ? 8 : 0);
        this.fab_clear_selected.setVisibility((!C2780h.m3060b(getContext()) || m3952a() == 0) ? 8 : 0);
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C3382a c3382a) {
        m3951c(this.f7381b);
        f7379f.notifyDataSetChanged();
        this.emptyTextView.setVisibility(this.mList.getCount() > 0 ? 8 : 0);
        if (C2780h.m3060b(getContext())) {
            C2780h.m3027r0(getContext());
        }
        com.google.android.material.floatingactionbutton.FloatingActionButton floatingActionButton = this.fab_clear_selected;
        int i = 8;
        if (C2780h.m3060b(getContext())) {
            i = 8;
            if (m3952a() != 0) {
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
        requireActivity().setTitle(2131820574);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820574);
        }
        Context context = getContext();
        List<AbstractC3940a> list = this.f7381b;
        m3951c(list);
        C3942b c3942b = new C3942b(context, list);
        f7379f = c3942b;
        this.mList.setAdapter((ListAdapter) c3942b);
        this.emptyTextView.setVisibility(this.mList.getCount() > 0 ? 8 : 0);
        this.fab_clear_selected.setVisibility((!C2780h.m3060b(getContext()) || m3952a() == 0) ? 8 : 0);
        C0748b.m7409b().m7404g(new C3404t());
    }
}
