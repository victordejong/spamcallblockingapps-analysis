package com.google.android.material.datepicker;

import android.view.View;
/* renamed from: com.google.android.material.datepicker.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/b0.class */
public class View$OnClickListenerC1732b0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f6524a;

    /* renamed from: b */
    public final /* synthetic */ C1734c0 f6525b;

    public View$OnClickListenerC1732b0(C1734c0 c1734c0, int i) {
        this.f6525b = c1734c0;
        this.f6524a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1761s c1761s;
        C1761s m4607b = C1761s.m4607b(this.f6524a, this.f6525b.f6534c.f6545e.f6596b);
        C1726a c1726a = this.f6525b.f6534c.f6544d;
        if (m4607b.compareTo(c1726a.f6505a) < 0) {
            c1761s = c1726a.f6505a;
        } else {
            c1761s = m4607b;
            if (m4607b.compareTo(c1726a.f6506b) > 0) {
                c1761s = c1726a.f6506b;
            }
        }
        this.f6525b.f6534c.m4622e(c1761s);
        this.f6525b.f6534c.m4621f(1);
    }
}
