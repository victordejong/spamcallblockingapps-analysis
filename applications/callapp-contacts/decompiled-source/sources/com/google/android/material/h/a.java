package com.google.android.material.h;

import android.graphics.Typeface;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    public boolean f30559a;

    /* renamed from: b  reason: collision with root package name */
    private final Typeface f30560b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractC0489a f30561c;

    /* renamed from: com.google.android.material.h.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/h/a$a.class */
    public interface AbstractC0489a {
        void a(Typeface typeface);
    }

    public a(AbstractC0489a aVar, Typeface typeface) {
        this.f30560b = typeface;
        this.f30561c = aVar;
    }

    private void a(Typeface typeface) {
        if (!this.f30559a) {
            this.f30561c.a(typeface);
        }
    }

    @Override // com.google.android.material.h.f
    public final void a(int i) {
        a(this.f30560b);
    }

    @Override // com.google.android.material.h.f
    public final void a(Typeface typeface, boolean z) {
        a(typeface);
    }
}
