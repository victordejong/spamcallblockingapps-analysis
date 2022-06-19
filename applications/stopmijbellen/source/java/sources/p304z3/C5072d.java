package p304z3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.p012v4.media.AbstractC0081a;
import android.text.TextPaint;
import android.util.TypedValue;
import p076e0.C2511f;
import p134j4.C3260w0;
/* renamed from: z3.d */
/* loaded from: classes-dex2jar.jar:z3/d.class */
public class C5072d {

    /* renamed from: a */
    public final ColorStateList f15380a;

    /* renamed from: b */
    public final String f15381b;

    /* renamed from: c */
    public final int f15382c;

    /* renamed from: d */
    public final int f15383d;

    /* renamed from: e */
    public final float f15384e;

    /* renamed from: f */
    public final float f15385f;

    /* renamed from: g */
    public final float f15386g;

    /* renamed from: h */
    public final boolean f15387h;

    /* renamed from: i */
    public final float f15388i;

    /* renamed from: j */
    public ColorStateList f15389j;

    /* renamed from: k */
    public float f15390k;

    /* renamed from: l */
    public final int f15391l;

    /* renamed from: m */
    public boolean f15392m = false;

    /* renamed from: n */
    public Typeface f15393n;

    /* renamed from: z3.d$a */
    /* loaded from: classes-dex2jar.jar:z3/d$a.class */
    public class C5073a extends C2511f.AbstractC2514c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0081a f15394a;

        public C5073a(AbstractC0081a abstractC0081a) {
            C5072d.this = r4;
            this.f15394a = abstractC0081a;
        }

        @Override // p076e0.C2511f.AbstractC2514c
        /* renamed from: d */
        public void mo60d(int i) {
            C5072d.this.f15392m = true;
            this.f15394a.mo58A(i);
        }

        @Override // p076e0.C2511f.AbstractC2514c
        /* renamed from: e */
        public void mo59e(Typeface typeface) {
            C5072d c5072d = C5072d.this;
            c5072d.f15393n = Typeface.create(typeface, c5072d.f15382c);
            C5072d c5072d2 = C5072d.this;
            c5072d2.f15392m = true;
            this.f15394a.mo57B(c5072d2.f15393n, false);
        }
    }

    public C5072d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C3260w0.f11013G);
        this.f15390k = obtainStyledAttributes.getDimension(0, 0.0f);
        this.f15389j = C5071c.m72a(context, obtainStyledAttributes, 3);
        C5071c.m72a(context, obtainStyledAttributes, 4);
        C5071c.m72a(context, obtainStyledAttributes, 5);
        this.f15382c = obtainStyledAttributes.getInt(2, 0);
        this.f15383d = obtainStyledAttributes.getInt(1, 1);
        int i2 = !obtainStyledAttributes.hasValue(12) ? 10 : 12;
        this.f15391l = obtainStyledAttributes.getResourceId(i2, 0);
        this.f15381b = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.f15380a = C5071c.m72a(context, obtainStyledAttributes, 6);
        this.f15384e = obtainStyledAttributes.getFloat(7, 0.0f);
        this.f15385f = obtainStyledAttributes.getFloat(8, 0.0f);
        this.f15386g = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, C3260w0.f11043x);
        this.f15387h = obtainStyledAttributes2.hasValue(0);
        this.f15388i = obtainStyledAttributes2.getFloat(0, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: a */
    public final void m67a() {
        String str;
        if (this.f15393n == null && (str = this.f15381b) != null) {
            this.f15393n = Typeface.create(str, this.f15382c);
        }
        if (this.f15393n == null) {
            int i = this.f15383d;
            if (i == 1) {
                this.f15393n = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f15393n = Typeface.SERIF;
            } else if (i != 3) {
                this.f15393n = Typeface.DEFAULT;
            } else {
                this.f15393n = Typeface.MONOSPACE;
            }
            this.f15393n = Typeface.create(this.f15393n, this.f15382c);
        }
    }

    /* renamed from: b */
    public Typeface m66b(Context context) {
        if (this.f15392m) {
            return this.f15393n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface m3495a = C2511f.m3495a(context, this.f15391l);
                this.f15393n = m3495a;
                if (m3495a != null) {
                    this.f15393n = Typeface.create(m3495a, this.f15382c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException | Exception e) {
            }
        }
        m67a();
        this.f15392m = true;
        return this.f15393n;
    }

    /* renamed from: c */
    public void m65c(Context context, AbstractC0081a abstractC0081a) {
        if (m64d(context)) {
            m66b(context);
        } else {
            m67a();
        }
        int i = this.f15391l;
        if (i == 0) {
            this.f15392m = true;
        }
        if (this.f15392m) {
            abstractC0081a.mo57B(this.f15393n, true);
            return;
        }
        try {
            C5073a c5073a = new C5073a(abstractC0081a);
            ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
            if (context.isRestricted()) {
                c5073a.m3493a(-4, null);
            } else {
                C2511f.m3494b(context, i, new TypedValue(), 0, c5073a, null, false, false);
            }
        } catch (Resources.NotFoundException e) {
            this.f15392m = true;
            abstractC0081a.mo58A(1);
        } catch (Exception e2) {
            this.f15392m = true;
            abstractC0081a.mo58A(-3);
        }
    }

    /* renamed from: d */
    public final boolean m64d(Context context) {
        int i = this.f15391l;
        Typeface typeface = null;
        if (i != 0) {
            ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
            typeface = context.isRestricted() ? null : C2511f.m3494b(context, i, new TypedValue(), 0, null, null, false, true);
        }
        return typeface != null;
    }

    /* renamed from: e */
    public void m63e(Context context, TextPaint textPaint, AbstractC0081a abstractC0081a) {
        m62f(context, textPaint, abstractC0081a);
        ColorStateList colorStateList = this.f15389j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.f15386g;
        float f2 = this.f15384e;
        float f3 = this.f15385f;
        ColorStateList colorStateList2 = this.f15380a;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* renamed from: f */
    public void m62f(Context context, TextPaint textPaint, AbstractC0081a abstractC0081a) {
        if (m64d(context)) {
            m61g(textPaint, m66b(context));
            return;
        }
        m67a();
        m61g(textPaint, this.f15393n);
        m65c(context, new C5074e(this, textPaint, abstractC0081a));
    }

    /* renamed from: g */
    public void m61g(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f15382c;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f15390k);
        if (this.f15387h) {
            textPaint.setLetterSpacing(this.f15388i);
        }
    }
}
