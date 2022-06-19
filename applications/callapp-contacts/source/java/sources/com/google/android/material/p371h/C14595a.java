package com.google.android.material.p371h;

import android.graphics.Typeface;
/* renamed from: com.google.android.material.h.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/a.class */
public final class C14595a extends AbstractC14603f {

    /* renamed from: a */
    public boolean f53218a;

    /* renamed from: b */
    private final Typeface f53219b;

    /* renamed from: c */
    private final AbstractC14596a f53220c;

    /* renamed from: com.google.android.material.h.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/h/a$a.class */
    public interface AbstractC14596a {
        /* renamed from: a */
        void mo10559a(Typeface typeface);
    }

    public C14595a(AbstractC14596a abstractC14596a, Typeface typeface) {
        this.f53219b = typeface;
        this.f53220c = abstractC14596a;
    }

    /* renamed from: a */
    private void m10659a(Typeface typeface) {
        if (!this.f53218a) {
            this.f53220c.mo10559a(typeface);
        }
    }

    @Override // com.google.android.material.p371h.AbstractC14603f
    /* renamed from: a */
    public final void mo10516a(int i) {
        m10659a(this.f53219b);
    }

    @Override // com.google.android.material.p371h.AbstractC14603f
    /* renamed from: a */
    public final void mo10515a(Typeface typeface, boolean z) {
        m10659a(typeface);
    }
}
