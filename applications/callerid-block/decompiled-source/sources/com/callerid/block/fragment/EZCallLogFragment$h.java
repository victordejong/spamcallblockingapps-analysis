package com.callerid.block.fragment;

import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$h.class */
class EZCallLogFragment$h implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ EZCallLogFragment f4341a;

    EZCallLogFragment$h(EZCallLogFragment eZCallLogFragment) {
        this.f4341a = eZCallLogFragment;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (i > EZCallLogFragment.o2(this.f4341a)) {
            if (EZCallLogFragment.K1(this.f4341a) != null && !EZCallLogFragment.K1(this.f4341a).m9405y()) {
                EZCallLogFragment.K1(this.f4341a).m9409u(true);
            }
        } else if (i < EZCallLogFragment.o2(this.f4341a) && EZCallLogFragment.K1(this.f4341a) != null && EZCallLogFragment.K1(this.f4341a).m9405y()) {
            EZCallLogFragment.K1(this.f4341a).m9433H(true);
        }
        EZCallLogFragment.p2(this.f4341a, i);
        EZCallLogFragment.I1(this.f4341a, i2);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0) {
            EZCallLogFragment eZCallLogFragment = this.f4341a;
            EZCallLogFragment.J1(eZCallLogFragment, EZCallLogFragment.o2(eZCallLogFragment), EZCallLogFragment.H1(this.f4341a));
        }
    }
}
