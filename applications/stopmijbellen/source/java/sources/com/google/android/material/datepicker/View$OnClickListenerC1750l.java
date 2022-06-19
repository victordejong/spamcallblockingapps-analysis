package com.google.android.material.datepicker;

import android.view.View;
/* renamed from: com.google.android.material.datepicker.l */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/l.class */
public class View$OnClickListenerC1750l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C1765v f6565a;

    /* renamed from: b */
    public final /* synthetic */ C1740g f6566b;

    public View$OnClickListenerC1750l(C1740g c1740g, C1765v c1765v) {
        this.f6566b = c1740g;
        this.f6565a = c1765v;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int m7948U0 = this.f6566b.m4624c().m7948U0() + 1;
        if (m7948U0 < this.f6566b.f6549i.getAdapter().mo705a()) {
            this.f6566b.m4622e(this.f6565a.m4595g(m7948U0));
        }
    }
}
