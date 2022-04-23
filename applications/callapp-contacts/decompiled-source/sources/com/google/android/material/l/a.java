package com.google.android.material.l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.h.b;
import com.google.android.material.h.c;
import com.google.android.material.internal.i;
import com.google.android.material.internal.l;
import com.google.android.material.k.f;
import com.google.android.material.k.g;
import com.google.android.material.k.h;
import com.google.android.material.k.j;
import com.google.android.material.k.m;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/l/a.class */
public class a extends h implements i.a {
    private static final int e = a.k.Widget_MaterialComponents_Tooltip;
    private static final int f = a.b.tooltipStyle;
    private CharSequence g;
    private final Context h;
    private final i j;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private final Paint.FontMetrics i = new Paint.FontMetrics();
    private final View.OnLayoutChangeListener k = new View.OnLayoutChangeListener() { // from class: com.google.android.material.l.a.1
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            a.this.c(view);
        }
    };
    private final Rect l = new Rect();

    /* renamed from: a  reason: collision with root package name */
    public float f30726a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    public float f30727b = 1.0f;
    private final float s = 0.5f;

    /* renamed from: c  reason: collision with root package name */
    public float f30728c = 0.5f;

    /* renamed from: d  reason: collision with root package name */
    public float f30729d = 1.0f;

    private a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        i iVar = new i(this);
        this.j = iVar;
        this.h = context;
        iVar.f30641a.density = context.getResources().getDisplayMetrics().density;
        iVar.f30641a.setTextAlign(Paint.Align.CENTER);
    }

    private float a() {
        float f2;
        int i;
        if (((this.l.right - getBounds().right) - this.r) - this.p < 0) {
            i = ((this.l.right - getBounds().right) - this.r) - this.p;
        } else if (((this.l.left - getBounds().left) - this.r) + this.p > 0) {
            i = ((this.l.left - getBounds().left) - this.r) + this.p;
        } else {
            f2 = BitmapDescriptorFactory.HUE_RED;
            return f2;
        }
        f2 = i;
        return f2;
    }

    public static a a(Context context, int i) {
        a aVar = new a(context, null, 0, i);
        TypedArray a2 = l.a(aVar.h, null, a.l.Tooltip, 0, i, new int[0]);
        aVar.q = aVar.h.getResources().getDimensionPixelSize(a.d.mtrl_tooltip_arrowSize);
        m.a b2 = aVar.t.f30683a.b();
        b2.k = aVar.c();
        aVar.setShapeAppearanceModel(b2.a());
        aVar.a(a2.getText(a.l.Tooltip_android_text));
        aVar.j.a(c.c(aVar.h, a2, a.l.Tooltip_android_textAppearance), aVar.h);
        int a3 = b.a(aVar.h, a.b.colorOnBackground, a.class.getCanonicalName());
        aVar.g(ColorStateList.valueOf(a2.getColor(a.l.Tooltip_backgroundTint, androidx.core.graphics.a.a(androidx.core.graphics.a.b(a3, 153), androidx.core.graphics.a.b(b.a(aVar.h, 16842801, a.class.getCanonicalName()), 229)))));
        aVar.h(ColorStateList.valueOf(b.a(aVar.h, a.b.colorSurface, a.class.getCanonicalName())));
        aVar.m = a2.getDimensionPixelSize(a.l.Tooltip_android_padding, 0);
        aVar.n = a2.getDimensionPixelSize(a.l.Tooltip_android_minWidth, 0);
        aVar.o = a2.getDimensionPixelSize(a.l.Tooltip_android_minHeight, 0);
        aVar.p = a2.getDimensionPixelSize(a.l.Tooltip_android_layout_margin, 0);
        a2.recycle();
        return aVar;
    }

    private f c() {
        float f2 = -a();
        float width = ((float) (getBounds().width() - (this.q * Math.sqrt(2.0d)))) / 2.0f;
        return new j(new g(this.q), Math.min(Math.max(f2, -width), width));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.r = iArr[0];
        view.getWindowVisibleDisplayFrame(this.l);
    }

    public final void a(View view) {
        if (view != null) {
            c(view);
            view.addOnLayoutChangeListener(this.k);
        }
    }

    public final void a(CharSequence charSequence) {
        if (!TextUtils.equals(this.g, charSequence)) {
            this.g = charSequence;
            this.j.f30642b = true;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.internal.i.a
    public final void b() {
        invalidateSelf();
    }

    public final void b(View view) {
        if (view != null) {
            view.removeOnLayoutChangeListener(this.k);
        }
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds;
        canvas.save();
        canvas.scale(this.f30726a, this.f30727b, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f30728c));
        canvas.translate(a(), (float) (-((this.q * Math.sqrt(2.0d)) - this.q)));
        super.draw(canvas);
        if (this.g != null) {
            float centerY = getBounds().centerY();
            this.j.f30641a.getFontMetrics(this.i);
            int i = (int) (centerY - ((this.i.descent + this.i.ascent) / 2.0f));
            if (this.j.f30644d != null) {
                this.j.f30641a.drawableState = getState();
                this.j.a(this.h);
                this.j.f30641a.setAlpha((int) (this.f30729d * 255.0f));
            }
            CharSequence charSequence = this.g;
            canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), i, this.j.f30641a);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.j.f30641a.getTextSize(), this.o);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        float f2 = this.m * 2;
        CharSequence charSequence = this.g;
        return (int) Math.max(f2 + (charSequence == null ? BitmapDescriptorFactory.HUE_RED : this.j.a(charSequence.toString())), this.n);
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m.a b2 = this.t.f30683a.b();
        b2.k = c();
        setShapeAppearanceModel(b2.a());
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable, com.google.android.material.internal.i.a
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }
}
