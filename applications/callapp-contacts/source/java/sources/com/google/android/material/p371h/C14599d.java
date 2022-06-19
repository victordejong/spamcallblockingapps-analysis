package com.google.android.material.p371h;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import androidx.core.content.res.C0804f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
/* renamed from: com.google.android.material.h.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/d.class */
public final class C14599d {

    /* renamed from: a */
    public final ColorStateList f53221a;

    /* renamed from: b */
    public final ColorStateList f53222b;

    /* renamed from: c */
    public final ColorStateList f53223c;

    /* renamed from: d */
    public final ColorStateList f53224d;

    /* renamed from: e */
    public final String f53225e;

    /* renamed from: f */
    public final int f53226f;

    /* renamed from: g */
    public final int f53227g;

    /* renamed from: h */
    public final boolean f53228h;

    /* renamed from: i */
    public final float f53229i;

    /* renamed from: j */
    public final float f53230j;

    /* renamed from: k */
    public final float f53231k;

    /* renamed from: l */
    public final boolean f53232l;

    /* renamed from: m */
    public final float f53233m;

    /* renamed from: n */
    public float f53234n;

    /* renamed from: o */
    boolean f53235o = false;

    /* renamed from: p */
    Typeface f53236p;

    /* renamed from: q */
    private final int f53237q;

    public C14599d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C14376a.C14388l.TextAppearance);
        this.f53234n = obtainStyledAttributes.getDimension(C14376a.C14388l.TextAppearance_android_textSize, BitmapDescriptorFactory.HUE_RED);
        this.f53221a = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.TextAppearance_android_textColor);
        this.f53222b = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.TextAppearance_android_textColorHint);
        this.f53223c = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.TextAppearance_android_textColorLink);
        this.f53226f = obtainStyledAttributes.getInt(C14376a.C14388l.TextAppearance_android_textStyle, 0);
        this.f53227g = obtainStyledAttributes.getInt(C14376a.C14388l.TextAppearance_android_typeface, 1);
        int i2 = C14376a.C14388l.TextAppearance_fontFamily;
        int i3 = obtainStyledAttributes.hasValue(i2) ? i2 : C14376a.C14388l.TextAppearance_android_fontFamily;
        this.f53237q = obtainStyledAttributes.getResourceId(i3, 0);
        this.f53225e = obtainStyledAttributes.getString(i3);
        this.f53228h = obtainStyledAttributes.getBoolean(C14376a.C14388l.TextAppearance_textAllCaps, false);
        this.f53224d = C14598c.m10653a(context, obtainStyledAttributes, C14376a.C14388l.TextAppearance_android_shadowColor);
        this.f53229i = obtainStyledAttributes.getFloat(C14376a.C14388l.TextAppearance_android_shadowDx, BitmapDescriptorFactory.HUE_RED);
        this.f53230j = obtainStyledAttributes.getFloat(C14376a.C14388l.TextAppearance_android_shadowDy, BitmapDescriptorFactory.HUE_RED);
        this.f53231k = obtainStyledAttributes.getFloat(C14376a.C14388l.TextAppearance_android_shadowRadius, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.f53232l = false;
            this.f53233m = BitmapDescriptorFactory.HUE_RED;
            return;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, C14376a.C14388l.MaterialTextAppearance);
        this.f53232l = obtainStyledAttributes2.hasValue(C14376a.C14388l.MaterialTextAppearance_android_letterSpacing);
        this.f53233m = obtainStyledAttributes2.getFloat(C14376a.C14388l.MaterialTextAppearance_android_letterSpacing, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: a */
    private Typeface m10646a(Context context) {
        if (this.f53235o) {
            return this.f53236p;
        }
        if (!context.isRestricted()) {
            try {
                Typeface m44468a = C0804f.m44468a(context, this.f53237q);
                this.f53236p = m44468a;
                if (m44468a != null) {
                    this.f53236p = Typeface.create(m44468a, this.f53226f);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                new StringBuilder("Error loading font ").append(this.f53225e);
            }
        }
        m10642b();
        this.f53235o = true;
        return this.f53236p;
    }

    /* renamed from: b */
    private void m10642b() {
        String str;
        if (this.f53236p == null && (str = this.f53225e) != null) {
            this.f53236p = Typeface.create(str, this.f53226f);
        }
        if (this.f53236p == null) {
            int i = this.f53227g;
            if (i == 1) {
                this.f53236p = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f53236p = Typeface.SERIF;
            } else if (i != 3) {
                this.f53236p = Typeface.DEFAULT;
            } else {
                this.f53236p = Typeface.MONOSPACE;
            }
            this.f53236p = Typeface.create(this.f53236p, this.f53226f);
        }
    }

    /* renamed from: c */
    private void m10640c(Context context, final TextPaint textPaint, final AbstractC14603f abstractC14603f) {
        m10643a(textPaint, m10647a());
        m10644a(context, new AbstractC14603f() { // from class: com.google.android.material.h.d.2
            @Override // com.google.android.material.p371h.AbstractC14603f
            /* renamed from: a */
            public final void mo10516a(int i) {
                abstractC14603f.mo10516a(i);
            }

            @Override // com.google.android.material.p371h.AbstractC14603f
            /* renamed from: a */
            public final void mo10515a(Typeface typeface, boolean z) {
                C14599d.this.m10643a(textPaint, typeface);
                abstractC14603f.mo10515a(typeface, z);
            }
        });
    }

    /* renamed from: a */
    public final Typeface m10647a() {
        m10642b();
        return this.f53236p;
    }

    /* renamed from: a */
    public final void m10645a(Context context, TextPaint textPaint, AbstractC14603f abstractC14603f) {
        m10641b(context, textPaint, abstractC14603f);
        ColorStateList colorStateList = this.f53221a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, this.f53221a.getDefaultColor()) : -16777216);
        float f = this.f53231k;
        float f2 = this.f53229i;
        float f3 = this.f53230j;
        ColorStateList colorStateList2 = this.f53224d;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, this.f53224d.getDefaultColor()) : 0);
    }

    /* renamed from: a */
    public final void m10644a(Context context, final AbstractC14603f abstractC14603f) {
        if (C14602e.f53243a) {
            m10646a(context);
        } else {
            m10642b();
        }
        int i = this.f53237q;
        if (i == 0) {
            this.f53235o = true;
        }
        if (this.f53235o) {
            abstractC14603f.mo10515a(this.f53236p, true);
            return;
        }
        try {
            C0804f.m44465a(context, i, new C0804f.AbstractC0805a() { // from class: com.google.android.material.h.d.1
                @Override // androidx.core.content.res.C0804f.AbstractC0805a
                /* renamed from: a */
                public final void mo10639a(int i2) {
                    C14599d.this.f53235o = true;
                    abstractC14603f.mo10516a(i2);
                }

                @Override // androidx.core.content.res.C0804f.AbstractC0805a
                /* renamed from: a */
                public final void mo10638a(Typeface typeface) {
                    C14599d c14599d = C14599d.this;
                    c14599d.f53236p = Typeface.create(typeface, c14599d.f53226f);
                    C14599d.this.f53235o = true;
                    abstractC14603f.mo10515a(C14599d.this.f53236p, false);
                }
            });
        } catch (Resources.NotFoundException e) {
            this.f53235o = true;
            abstractC14603f.mo10516a(1);
        } catch (Exception e2) {
            new StringBuilder("Error loading font ").append(this.f53225e);
            this.f53235o = true;
            abstractC14603f.mo10516a(-3);
        }
    }

    /* renamed from: a */
    public final void m10643a(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f53226f;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f53234n);
        if (Build.VERSION.SDK_INT < 21 || !this.f53232l) {
            return;
        }
        textPaint.setLetterSpacing(this.f53233m);
    }

    /* renamed from: b */
    public final void m10641b(Context context, TextPaint textPaint, AbstractC14603f abstractC14603f) {
        if (C14602e.f53243a) {
            m10643a(textPaint, m10646a(context));
        } else {
            m10640c(context, textPaint, abstractC14603f);
        }
    }
}
