package com.google.android.material.p156n;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.p017a.p018a.C0449f;
import com.google.android.material.C4492a;
/* renamed from: com.google.android.material.n.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/n/d.class */
public class C4719d {

    /* renamed from: a */
    public final float f20413a;

    /* renamed from: b */
    public final ColorStateList f20414b;

    /* renamed from: c */
    public final ColorStateList f20415c;

    /* renamed from: d */
    public final ColorStateList f20416d;

    /* renamed from: e */
    public final int f20417e;

    /* renamed from: f */
    public final int f20418f;

    /* renamed from: g */
    public final String f20419g;

    /* renamed from: h */
    public final boolean f20420h;

    /* renamed from: i */
    public final ColorStateList f20421i;

    /* renamed from: j */
    public final float f20422j;

    /* renamed from: k */
    public final float f20423k;

    /* renamed from: l */
    public final float f20424l;

    /* renamed from: m */
    private final int f20425m;

    /* renamed from: n */
    private boolean f20426n = false;

    /* renamed from: o */
    private Typeface f20427o;

    public C4719d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C4492a.C4504l.TextAppearance);
        this.f20413a = obtainStyledAttributes.getDimension(C4492a.C4504l.TextAppearance_android_textSize, 0.0f);
        this.f20414b = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.TextAppearance_android_textColor);
        this.f20415c = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.TextAppearance_android_textColorHint);
        this.f20416d = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.TextAppearance_android_textColorLink);
        this.f20417e = obtainStyledAttributes.getInt(C4492a.C4504l.TextAppearance_android_textStyle, 0);
        this.f20418f = obtainStyledAttributes.getInt(C4492a.C4504l.TextAppearance_android_typeface, 1);
        int m2781a = C4718c.m2781a(obtainStyledAttributes, C4492a.C4504l.TextAppearance_fontFamily, C4492a.C4504l.TextAppearance_android_fontFamily);
        this.f20425m = obtainStyledAttributes.getResourceId(m2781a, 0);
        this.f20419g = obtainStyledAttributes.getString(m2781a);
        this.f20420h = obtainStyledAttributes.getBoolean(C4492a.C4504l.TextAppearance_textAllCaps, false);
        this.f20421i = C4718c.m2784a(context, obtainStyledAttributes, C4492a.C4504l.TextAppearance_android_shadowColor);
        this.f20422j = obtainStyledAttributes.getFloat(C4492a.C4504l.TextAppearance_android_shadowDx, 0.0f);
        this.f20423k = obtainStyledAttributes.getFloat(C4492a.C4504l.TextAppearance_android_shadowDy, 0.0f);
        this.f20424l = obtainStyledAttributes.getFloat(C4492a.C4504l.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    private void m2770b() {
        if (this.f20427o == null && this.f20419g != null) {
            this.f20427o = Typeface.create(this.f20419g, this.f20417e);
        }
        if (this.f20427o == null) {
            switch (this.f20418f) {
                case 1:
                    this.f20427o = Typeface.SANS_SERIF;
                    break;
                case 2:
                    this.f20427o = Typeface.SERIF;
                    break;
                case 3:
                    this.f20427o = Typeface.MONOSPACE;
                    break;
                default:
                    this.f20427o = Typeface.DEFAULT;
                    break;
            }
            this.f20427o = Typeface.create(this.f20427o, this.f20417e);
        }
    }

    /* renamed from: a */
    public Typeface m2778a() {
        m2770b();
        return this.f20427o;
    }

    /* renamed from: a */
    public Typeface m2777a(Context context) {
        Typeface typeface;
        if (this.f20426n) {
            typeface = this.f20427o;
        } else {
            if (!context.isRestricted()) {
                try {
                    this.f20427o = C0449f.m20848a(context, this.f20425m);
                    if (this.f20427o != null) {
                        this.f20427o = Typeface.create(this.f20427o, this.f20417e);
                    }
                } catch (Resources.NotFoundException e) {
                } catch (UnsupportedOperationException e2) {
                } catch (Exception e3) {
                    Log.d("TextAppearance", "Error loading font " + this.f20419g, e3);
                }
            }
            m2770b();
            this.f20426n = true;
            typeface = this.f20427o;
        }
        return typeface;
    }

    /* renamed from: a */
    public void m2776a(Context context, final TextPaint textPaint, final AbstractC4723f abstractC4723f) {
        m2774a(textPaint, m2778a());
        m2775a(context, new AbstractC4723f() { // from class: com.google.android.material.n.d.2
            @Override // com.google.android.material.p156n.AbstractC4723f
            /* renamed from: a */
            public void mo2764a(int i) {
                abstractC4723f.mo2764a(i);
            }

            @Override // com.google.android.material.p156n.AbstractC4723f
            /* renamed from: a */
            public void mo2763a(Typeface typeface, boolean z) {
                C4719d.this.m2774a(textPaint, typeface);
                abstractC4723f.mo2763a(typeface, z);
            }
        });
    }

    /* renamed from: a */
    public void m2775a(Context context, final AbstractC4723f abstractC4723f) {
        if (C4722e.m2765a()) {
            m2777a(context);
        } else {
            m2770b();
        }
        if (this.f20425m == 0) {
            this.f20426n = true;
        }
        if (this.f20426n) {
            abstractC4723f.mo2763a(this.f20427o, true);
            return;
        }
        try {
            C0449f.m20845a(context, this.f20425m, new C0449f.AbstractC0450a() { // from class: com.google.android.material.n.d.1
                @Override // androidx.core.p017a.p018a.C0449f.AbstractC0450a
                /* renamed from: a */
                public void mo2767a(int i) {
                    C4719d.this.f20426n = true;
                    abstractC4723f.mo2764a(i);
                }

                @Override // androidx.core.p017a.p018a.C0449f.AbstractC0450a
                /* renamed from: a */
                public void mo2766a(Typeface typeface) {
                    C4719d.this.f20427o = Typeface.create(typeface, C4719d.this.f20417e);
                    C4719d.this.f20426n = true;
                    abstractC4723f.mo2763a(C4719d.this.f20427o, false);
                }
            }, null);
        } catch (Resources.NotFoundException e) {
            this.f20426n = true;
            abstractC4723f.mo2764a(1);
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.f20419g, e2);
            this.f20426n = true;
            abstractC4723f.mo2764a(-3);
        }
    }

    /* renamed from: a */
    public void m2774a(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f20417e;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f20413a);
    }

    /* renamed from: b */
    public void m2769b(Context context, TextPaint textPaint, AbstractC4723f abstractC4723f) {
        m2768c(context, textPaint, abstractC4723f);
        textPaint.setColor(this.f20414b != null ? this.f20414b.getColorForState(textPaint.drawableState, this.f20414b.getDefaultColor()) : -16777216);
        textPaint.setShadowLayer(this.f20424l, this.f20422j, this.f20423k, this.f20421i != null ? this.f20421i.getColorForState(textPaint.drawableState, this.f20421i.getDefaultColor()) : 0);
    }

    /* renamed from: c */
    public void m2768c(Context context, TextPaint textPaint, AbstractC4723f abstractC4723f) {
        if (C4722e.m2765a()) {
            m2774a(textPaint, m2777a(context));
        } else {
            m2776a(context, textPaint, abstractC4723f);
        }
    }
}
