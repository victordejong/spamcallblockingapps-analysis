package com.google.android.material.datepicker;

import android.view.View;
/* renamed from: com.google.android.material.datepicker.k */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/k.class */
public class View$OnClickListenerC1749k implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C1740g f6564a;

    public View$OnClickListenerC1749k(C1740g c1740g) {
        this.f6564a = c1740g;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1740g c1740g = this.f6564a;
        int i = c1740g.f6546f;
        if (i == 2) {
            c1740g.m4621f(1);
        } else if (i != 1) {
        } else {
            c1740g.m4621f(2);
        }
    }
}
