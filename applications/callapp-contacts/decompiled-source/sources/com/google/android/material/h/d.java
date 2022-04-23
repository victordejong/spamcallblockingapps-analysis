package com.google.android.material.h;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import androidx.core.content.res.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final ColorStateList f30562a;

    /* renamed from: b  reason: collision with root package name */
    public final ColorStateList f30563b;

    /* renamed from: c  reason: collision with root package name */
    public final ColorStateList f30564c;

    /* renamed from: d  reason: collision with root package name */
    public final ColorStateList f30565d;
    public final String e;
    public final int f;
    public final int g;
    public final boolean h;
    public final float i;
    public final float j;
    public final float k;
    public final boolean l;
    public final float m;
    public float n;
    boolean o = false;
    Typeface p;
    private final int q;

    public d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, a.l.TextAppearance);
        this.n = obtainStyledAttributes.getDimension(a.l.TextAppearance_android_textSize, BitmapDescriptorFactory.HUE_RED);
        this.f30562a = c.a(context, obtainStyledAttributes, a.l.TextAppearance_android_textColor);
        this.f30563b = c.a(context, obtainStyledAttributes, a.l.TextAppearance_android_textColorHint);
        this.f30564c = c.a(context, obtainStyledAttributes, a.l.TextAppearance_android_textColorLink);
        this.f = obtainStyledAttributes.getInt(a.l.TextAppearance_android_textStyle, 0);
        this.g = obtainStyledAttributes.getInt(a.l.TextAppearance_android_typeface, 1);
        int i2 = a.l.TextAppearance_fontFamily;
        int i3 = obtainStyledAttributes.hasValue(i2) ? i2 : a.l.TextAppearance_android_fontFamily;
        this.q = obtainStyledAttributes.getResourceId(i3, 0);
        this.e = obtainStyledAttributes.getString(i3);
        this.h = obtainStyledAttributes.getBoolean(a.l.TextAppearance_textAllCaps, false);
        this.f30565d = c.a(context, obtainStyledAttributes, a.l.TextAppearance_android_shadowColor);
        this.i = obtainStyledAttributes.getFloat(a.l.TextAppearance_android_shadowDx, BitmapDescriptorFactory.HUE_RED);
        this.j = obtainStyledAttributes.getFloat(a.l.TextAppearance_android_shadowDy, BitmapDescriptorFactory.HUE_RED);
        this.k = obtainStyledAttributes.getFloat(a.l.TextAppearance_android_shadowRadius, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, a.l.MaterialTextAppearance);
            this.l = obtainStyledAttributes2.hasValue(a.l.MaterialTextAppearance_android_letterSpacing);
            this.m = obtainStyledAttributes2.getFloat(a.l.MaterialTextAppearance_android_letterSpacing, BitmapDescriptorFactory.HUE_RED);
            obtainStyledAttributes2.recycle();
            return;
        }
        this.l = false;
        this.m = BitmapDescriptorFactory.HUE_RED;
    }

    private Typeface a(Context context) {
        if (this.o) {
            return this.p;
        }
        if (!context.isRestricted()) {
            try {
                Typeface a2 = f.a(context, this.q);
                this.p = a2;
                if (a2 != null) {
                    this.p = Typeface.create(a2, this.f);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                new StringBuilder("Error loading font ").append(this.e);
            }
        }
        b();
        this.o = true;
        return this.p;
    }

    private void b() {
        String str;
        if (this.p == null && (str = this.e) != null) {
            this.p = Typeface.create(str, this.f);
        }
        if (this.p == null) {
            int i = this.g;
            if (i == 1) {
                this.p = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.p = Typeface.SERIF;
            } else if (i != 3) {
                this.p = Typeface.DEFAULT;
            } else {
                this.p = Typeface.MONOSPACE;
            }
            this.p = Typeface.create(this.p, this.f);
        }
    }

    private void c(Context context, final TextPaint textPaint, final f fVar) {
        a(textPaint, a());
        a(context, new f() { // from class: com.google.android.material.h.d.2
            @Override // com.google.android.material.h.f
            public final void a(int i) {
                fVar.a(i);
            }

            @Override // com.google.android.material.h.f
            public final void a(Typeface typeface, boolean z) {
                d.this.a(textPaint, typeface);
                fVar.a(typeface, z);
            }
        });
    }

    public final Typeface a() {
        b();
        return this.p;
    }

    public final void a(Context context, TextPaint textPaint, f fVar) {
        b(context, textPaint, fVar);
        ColorStateList colorStateList = this.f30562a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, this.f30562a.getDefaultColor()) : -16777216);
        float f = this.k;
        float f2 = this.i;
        float f3 = this.j;
        ColorStateList colorStateList2 = this.f30565d;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, this.f30565d.getDefaultColor()) : 0);
    }

    public final void a(Context context, final f fVar) {
        if (e.f30571a) {
            a(context);
        } else {
            b();
        }
        int i = this.q;
        if (i == 0) {
            this.o = true;
        }
        if (this.o) {
            fVar.a(this.p, true);
            return;
        }
        try {
            f.a(context, i, new f.a() { // from class: com.google.android.material.h.d.1
                @Override // androidx.core.content.res.f.a
                public final void a(int i2) {
                    d.this.o = true;
                    fVar.a(i2);
                }

                @Override // androidx.core.content.res.f.a
                public final void a(Typeface typeface) {
                    d dVar = d.this;
                    dVar.p = Typeface.create(typeface, dVar.f);
                    d.this.o = true;
                    fVar.a(d.this.p, false);
                }
            });
        } catch (Resources.NotFoundException e) {
            this.o = true;
            fVar.a(1);
        } catch (Exception e2) {
            new StringBuilder("Error loading font ").append(this.e);
            this.o = true;
            fVar.a(-3);
        }
    }

    public final void a(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : BitmapDescriptorFactory.HUE_RED);
        textPaint.setTextSize(this.n);
        if (Build.VERSION.SDK_INT >= 21 && this.l) {
            textPaint.setLetterSpacing(this.m);
        }
    }

    public final void b(Context context, TextPaint textPaint, f fVar) {
        if (e.f30571a) {
            a(textPaint, a(context));
        } else {
            c(context, textPaint, fVar);
        }
    }
}
