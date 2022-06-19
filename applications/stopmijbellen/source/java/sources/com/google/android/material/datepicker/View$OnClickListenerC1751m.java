package com.google.android.material.datepicker;

import android.view.View;
/* renamed from: com.google.android.material.datepicker.m */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/m.class */
public class View$OnClickListenerC1751m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C1765v f6567a;

    /* renamed from: b */
    public final /* synthetic */ C1740g f6568b;

    public View$OnClickListenerC1751m(C1740g c1740g, C1765v c1765v) {
        this.f6568b = c1740g;
        this.f6567a = c1765v;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int m7946W0 = this.f6568b.m4624c().m7946W0() - 1;
        if (m7946W0 >= 0) {
            this.f6568b.m4622e(this.f6567a.m4595g(m7946W0));
        }
    }
}
