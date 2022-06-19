package com.google.android.material.datepicker;

import android.view.View;
/* renamed from: com.google.android.material.datepicker.p */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/p.class */
public class View$OnClickListenerC1757p implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C1753o f6590a;

    public View$OnClickListenerC1757p(C1753o c1753o) {
        this.f6590a = c1753o;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1753o c1753o = this.f6590a;
        c1753o.f6586q.setEnabled(c1753o.m4616a().m4626s());
        this.f6590a.f6584o.toggle();
        C1753o c1753o2 = this.f6590a;
        c1753o2.m4610h(c1753o2.f6584o);
        this.f6590a.m4612f();
    }
}
