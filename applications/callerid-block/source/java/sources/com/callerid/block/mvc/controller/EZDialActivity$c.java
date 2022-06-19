package com.callerid.block.mvc.controller;

import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZDialActivity$c.class */
class EZDialActivity$c implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ EZDialActivity f4619a;

    EZDialActivity$c(EZDialActivity eZDialActivity) {
        this.f4619a = eZDialActivity;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 2) {
            try {
                if (!EZDialActivity.e0() || EZDialActivity.T(this.f4619a).getVisibility() != 0) {
                    return;
                }
                EZDialActivity.v0(this.f4619a).setImageResource(EZDialActivity.g0(this.f4619a));
                EZDialActivity.i0(this.f4619a, false);
                if (EZDialActivity.j0(this.f4619a) != null) {
                    EZDialActivity.j0(this.f4619a).setVisibility(8);
                }
                if (EZDialActivity.k0(this.f4619a) != null) {
                    EZDialActivity.k0(this.f4619a).setVisibility(8);
                }
                if (EZDialActivity.l0(this.f4619a) == null) {
                    return;
                }
                EZDialActivity.l0(this.f4619a).setVisibility(8);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
