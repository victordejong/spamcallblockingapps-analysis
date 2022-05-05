package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/resources/CancelableFontCallback.class */
public final class CancelableFontCallback extends TextAppearanceFontCallback {

    /* renamed from: a */
    private final Typeface f10982a;

    /* renamed from: b */
    private final ApplyFont f10983b;

    /* renamed from: c */
    private boolean f10984c;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/resources/CancelableFontCallback$ApplyFont.class */
    public interface ApplyFont {
        /* renamed from: a */
        void mo9399a(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.f10982a = typeface;
        this.f10983b = applyFont;
    }

    /* renamed from: d */
    private void m9400d(Typeface typeface) {
        if (!this.f10984c) {
            this.f10983b.mo9399a(typeface);
        }
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    /* renamed from: a */
    public void mo9374a(int i) {
        m9400d(this.f10982a);
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    /* renamed from: b */
    public void mo9373b(Typeface typeface, boolean z) {
        m9400d(typeface);
    }

    /* renamed from: c */
    public void m9401c() {
        this.f10984c = true;
    }
}
