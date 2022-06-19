package com.google.android.material.datepicker;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
/* renamed from: com.google.android.material.datepicker.j */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/j.class */
public class C1748j extends RecyclerView.AbstractC0581q {

    /* renamed from: a */
    public final /* synthetic */ C1765v f6561a;

    /* renamed from: b */
    public final /* synthetic */ MaterialButton f6562b;

    /* renamed from: c */
    public final /* synthetic */ C1740g f6563c;

    public C1748j(C1740g c1740g, C1765v c1765v, MaterialButton materialButton) {
        this.f6563c = c1740g;
        this.f6561a = c1765v;
        this.f6562b = materialButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0581q
    /* renamed from: a */
    public void mo4618a(RecyclerView recyclerView, int i) {
        if (i == 0) {
            recyclerView.announceForAccessibility(this.f6562b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0581q
    /* renamed from: b */
    public void mo4617b(RecyclerView recyclerView, int i, int i2) {
        int m7948U0 = i < 0 ? this.f6563c.m4624c().m7948U0() : this.f6563c.m4624c().m7946W0();
        this.f6563c.f6545e = this.f6561a.m4595g(m7948U0);
        MaterialButton materialButton = this.f6562b;
        C1765v c1765v = this.f6561a;
        materialButton.setText(c1765v.f6611d.f6505a.m4603g(m7948U0).m4604f(c1765v.f6610c));
    }
}
