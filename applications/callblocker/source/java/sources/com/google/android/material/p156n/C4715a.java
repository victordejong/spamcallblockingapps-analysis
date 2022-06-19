package com.google.android.material.p156n;

import android.graphics.Typeface;
/* renamed from: com.google.android.material.n.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/n/a.class */
public final class C4715a extends AbstractC4723f {

    /* renamed from: a */
    private final Typeface f20410a;

    /* renamed from: b */
    private final AbstractC4716a f20411b;

    /* renamed from: c */
    private boolean f20412c;

    /* renamed from: com.google.android.material.n.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/n/a$a.class */
    public interface AbstractC4716a {
        /* renamed from: a */
        void mo2789a(Typeface typeface);
    }

    public C4715a(AbstractC4716a abstractC4716a, Typeface typeface) {
        this.f20410a = typeface;
        this.f20411b = abstractC4716a;
    }

    /* renamed from: a */
    private void m2790a(Typeface typeface) {
        if (!this.f20412c) {
            this.f20411b.mo2789a(typeface);
        }
    }

    /* renamed from: a */
    public void m2791a() {
        this.f20412c = true;
    }

    @Override // com.google.android.material.p156n.AbstractC4723f
    /* renamed from: a */
    public void mo2764a(int i) {
        m2790a(this.f20410a);
    }

    @Override // com.google.android.material.p156n.AbstractC4723f
    /* renamed from: a */
    public void mo2763a(Typeface typeface, boolean z) {
        m2790a(typeface);
    }
}
