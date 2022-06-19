package p078c.p084c.p085a.p096b.p105u;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.content.p007d.C0605f;
import p078c.p084c.p085a.p096b.C1896l;
/* renamed from: c.c.a.b.u.d */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/u/d.class */
public class C1920d {

    /* renamed from: a */
    public final ColorStateList f6850a;

    /* renamed from: b */
    public final ColorStateList f6851b;

    /* renamed from: c */
    public final ColorStateList f6852c;

    /* renamed from: d */
    public final ColorStateList f6853d;

    /* renamed from: e */
    public final String f6854e;

    /* renamed from: f */
    public final int f6855f;

    /* renamed from: g */
    public final int f6856g;

    /* renamed from: h */
    public final boolean f6857h;

    /* renamed from: i */
    public final float f6858i;

    /* renamed from: j */
    public final float f6859j;

    /* renamed from: k */
    public final float f6860k;

    /* renamed from: l */
    public final boolean f6861l;

    /* renamed from: m */
    public final float f6862m;

    /* renamed from: n */
    public float f6863n;

    /* renamed from: o */
    private final int f6864o;

    /* renamed from: p */
    private boolean f6865p = false;

    /* renamed from: q */
    private Typeface f6866q;

    /* renamed from: c.c.a.b.u.d$a */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/u/d$a.class */
    public class C1921a extends C0605f.AbstractC0608c {

        /* renamed from: a */
        final /* synthetic */ AbstractC1924f f6867a;

        C1921a(AbstractC1924f abstractC1924f) {
            C1920d.this = r4;
            this.f6867a = abstractC1924f;
        }

        @Override // androidx.core.content.p007d.C0605f.AbstractC0608c
        /* renamed from: d */
        public void mo28666d(int i) {
            C1920d.this.f6865p = true;
            this.f6867a.mo4476a(i);
        }

        @Override // androidx.core.content.p007d.C0605f.AbstractC0608c
        /* renamed from: e */
        public void mo28665e(Typeface typeface) {
            C1920d c1920d = C1920d.this;
            c1920d.f6866q = Typeface.create(typeface, c1920d.f6855f);
            C1920d.this.f6865p = true;
            this.f6867a.mo4475b(C1920d.this.f6866q, false);
        }
    }

    /* renamed from: c.c.a.b.u.d$b */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/u/d$b.class */
    public class C1922b extends AbstractC1924f {

        /* renamed from: a */
        final /* synthetic */ TextPaint f6869a;

        /* renamed from: b */
        final /* synthetic */ AbstractC1924f f6870b;

        C1922b(TextPaint textPaint, AbstractC1924f abstractC1924f) {
            C1920d.this = r4;
            this.f6869a = textPaint;
            this.f6870b = abstractC1924f;
        }

        @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
        /* renamed from: a */
        public void mo4476a(int i) {
            this.f6870b.mo4476a(i);
        }

        @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
        /* renamed from: b */
        public void mo4475b(Typeface typeface, boolean z) {
            C1920d.this.m28667l(this.f6869a, typeface);
            this.f6870b.mo4475b(typeface, z);
        }
    }

    public C1920d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1896l.TextAppearance);
        this.f6863n = obtainStyledAttributes.getDimension(C1896l.TextAppearance_android_textSize, 0.0f);
        this.f6850a = C1919c.m28686a(context, obtainStyledAttributes, C1896l.TextAppearance_android_textColor);
        this.f6851b = C1919c.m28686a(context, obtainStyledAttributes, C1896l.TextAppearance_android_textColorHint);
        this.f6852c = C1919c.m28686a(context, obtainStyledAttributes, C1896l.TextAppearance_android_textColorLink);
        this.f6855f = obtainStyledAttributes.getInt(C1896l.TextAppearance_android_textStyle, 0);
        this.f6856g = obtainStyledAttributes.getInt(C1896l.TextAppearance_android_typeface, 1);
        int m28682e = C1919c.m28682e(obtainStyledAttributes, C1896l.TextAppearance_fontFamily, C1896l.TextAppearance_android_fontFamily);
        this.f6864o = obtainStyledAttributes.getResourceId(m28682e, 0);
        this.f6854e = obtainStyledAttributes.getString(m28682e);
        this.f6857h = obtainStyledAttributes.getBoolean(C1896l.TextAppearance_textAllCaps, false);
        this.f6853d = C1919c.m28686a(context, obtainStyledAttributes, C1896l.TextAppearance_android_shadowColor);
        this.f6858i = obtainStyledAttributes.getFloat(C1896l.TextAppearance_android_shadowDx, 0.0f);
        this.f6859j = obtainStyledAttributes.getFloat(C1896l.TextAppearance_android_shadowDy, 0.0f);
        this.f6860k = obtainStyledAttributes.getFloat(C1896l.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.f6861l = false;
            this.f6862m = 0.0f;
            return;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, C1896l.MaterialTextAppearance);
        int i2 = C1896l.MaterialTextAppearance_android_letterSpacing;
        this.f6861l = obtainStyledAttributes2.hasValue(i2);
        this.f6862m = obtainStyledAttributes2.getFloat(i2, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: d */
    private void m28675d() {
        String str;
        if (this.f6866q == null && (str = this.f6854e) != null) {
            this.f6866q = Typeface.create(str, this.f6855f);
        }
        if (this.f6866q == null) {
            int i = this.f6856g;
            if (i == 1) {
                this.f6866q = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f6866q = Typeface.SERIF;
            } else if (i != 3) {
                this.f6866q = Typeface.DEFAULT;
            } else {
                this.f6866q = Typeface.MONOSPACE;
            }
            this.f6866q = Typeface.create(this.f6866q, this.f6855f);
        }
    }

    /* renamed from: i */
    private boolean m28670i(Context context) {
        return C1923e.m28664a();
    }

    /* renamed from: e */
    public Typeface m28674e() {
        m28675d();
        return this.f6866q;
    }

    /* renamed from: f */
    public Typeface m28673f(Context context) {
        if (this.f6865p) {
            return this.f6866q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface m33273e = C0605f.m33273e(context, this.f6864o);
                this.f6866q = m33273e;
                if (m33273e != null) {
                    this.f6866q = Typeface.create(m33273e, this.f6855f);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                Log.d("TextAppearance", "Error loading font " + this.f6854e, e2);
            }
        }
        m28675d();
        this.f6865p = true;
        return this.f6866q;
    }

    /* renamed from: g */
    public void m28672g(Context context, TextPaint textPaint, AbstractC1924f abstractC1924f) {
        m28667l(textPaint, m28674e());
        m28671h(context, new C1922b(textPaint, abstractC1924f));
    }

    /* renamed from: h */
    public void m28671h(Context context, AbstractC1924f abstractC1924f) {
        if (m28670i(context)) {
            m28673f(context);
        } else {
            m28675d();
        }
        int i = this.f6864o;
        if (i == 0) {
            this.f6865p = true;
        }
        if (this.f6865p) {
            abstractC1924f.mo4475b(this.f6866q, true);
            return;
        }
        try {
            C0605f.m33271g(context, i, new C1921a(abstractC1924f), null);
        } catch (Resources.NotFoundException e) {
            this.f6865p = true;
            abstractC1924f.mo4476a(1);
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.f6854e, e2);
            this.f6865p = true;
            abstractC1924f.mo4476a(-3);
        }
    }

    /* renamed from: j */
    public void m28669j(Context context, TextPaint textPaint, AbstractC1924f abstractC1924f) {
        m28668k(context, textPaint, abstractC1924f);
        ColorStateList colorStateList = this.f6850a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.f6860k;
        float f2 = this.f6858i;
        float f3 = this.f6859j;
        ColorStateList colorStateList2 = this.f6853d;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* renamed from: k */
    public void m28668k(Context context, TextPaint textPaint, AbstractC1924f abstractC1924f) {
        if (m28670i(context)) {
            m28667l(textPaint, m28673f(context));
        } else {
            m28672g(context, textPaint, abstractC1924f);
        }
    }

    /* renamed from: l */
    public void m28667l(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f6855f;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f6863n);
        if (Build.VERSION.SDK_INT < 21 || !this.f6861l) {
            return;
        }
        textPaint.setLetterSpacing(this.f6862m);
    }
}
