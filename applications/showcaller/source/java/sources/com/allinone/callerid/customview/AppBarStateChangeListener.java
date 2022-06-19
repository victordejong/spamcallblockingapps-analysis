package com.allinone.callerid.customview;

import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/AppBarStateChangeListener.class */
public abstract class AppBarStateChangeListener implements AppBarLayout.AbstractC7995d {

    /* renamed from: a */
    private State f8440a = State.IDLE;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/AppBarStateChangeListener$State.class */
    public enum State {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    @Override // com.google.android.material.appbar.AppBarLayout.AbstractC7994c
    /* renamed from: a */
    public final void mo5693a(AppBarLayout appBarLayout, int i) {
        if (i == 0) {
            State state = this.f8440a;
            State state2 = State.EXPANDED;
            if (state != state2) {
                mo25359b(appBarLayout, state2);
            }
            this.f8440a = state2;
        } else if (Math.abs(i) >= appBarLayout.getTotalScrollRange()) {
            State state3 = this.f8440a;
            State state4 = State.COLLAPSED;
            if (state3 != state4) {
                mo25359b(appBarLayout, state4);
            }
            this.f8440a = state4;
        } else {
            State state5 = this.f8440a;
            State state6 = State.IDLE;
            if (state5 != state6) {
                mo25359b(appBarLayout, state6);
            }
            this.f8440a = state6;
        }
    }

    /* renamed from: b */
    public abstract void mo25359b(AppBarLayout appBarLayout, State state);
}
