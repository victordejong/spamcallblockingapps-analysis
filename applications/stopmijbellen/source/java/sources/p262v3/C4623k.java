package p262v3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import p087f0.C2695b;
import p134j4.C3260w0;
import p163m0.AbstractC3580m;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: v3.k */
/* loaded from: classes-dex2jar.jar:v3/k.class */
public class C4623k extends FrameLayout {

    /* renamed from: a */
    public Drawable f14288a;

    /* renamed from: b */
    public Rect f14289b;

    /* renamed from: c */
    public Rect f14290c;

    /* renamed from: d */
    public boolean f14291d;

    /* renamed from: e */
    public boolean f14292e;

    /* renamed from: v3.k$a */
    /* loaded from: classes-dex2jar.jar:v3/k$a.class */
    public class C4624a implements AbstractC3580m {
        public C4624a() {
            C4623k.this = r4;
        }

        @Override // p163m0.AbstractC3580m
        /* renamed from: a */
        public C3551b0 mo686a(View view, C3551b0 c3551b0) {
            C4623k c4623k = C4623k.this;
            if (c4623k.f14289b == null) {
                c4623k.f14289b = new Rect();
            }
            C4623k.this.f14289b.set(c3551b0.m2180c(), c3551b0.m2178e(), c3551b0.m2179d(), c3551b0.m2181b());
            C4623k.this.mo695a(c3551b0);
            C4623k c4623k2 = C4623k.this;
            boolean z = true;
            if (!c3551b0.f11720a.mo2156i().equals(C2695b.f9271e)) {
                z = C4623k.this.f14288a == null;
            }
            c4623k2.setWillNotDraw(z);
            C4623k c4623k3 = C4623k.this;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2083k(c4623k3);
            return c3551b0.m2182a();
        }
    }

    public C4623k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4623k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f14290c = new Rect();
        this.f14291d = true;
        this.f14292e = true;
        int[] iArr = C3260w0.f11009C;
        C4634p.m690a(context, attributeSet, i, 2131886889);
        C4634p.m689b(context, attributeSet, iArr, i, 2131886889, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 2131886889);
        this.f14288a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
        C4624a c4624a = new C4624a();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3598i.m2030u(this, c4624a);
    }

    /* renamed from: a */
    public void mo695a(C3551b0 c3551b0) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f14289b == null || this.f14288a == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f14291d) {
            this.f14290c.set(0, 0, width, this.f14289b.top);
            this.f14288a.setBounds(this.f14290c);
            this.f14288a.draw(canvas);
        }
        if (this.f14292e) {
            this.f14290c.set(0, height - this.f14289b.bottom, width, height);
            this.f14288a.setBounds(this.f14290c);
            this.f14288a.draw(canvas);
        }
        Rect rect = this.f14290c;
        Rect rect2 = this.f14289b;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f14288a.setBounds(this.f14290c);
        this.f14288a.draw(canvas);
        Rect rect3 = this.f14290c;
        Rect rect4 = this.f14289b;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.f14288a.setBounds(this.f14290c);
        this.f14288a.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f14288a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f14288a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f14292e = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f14291d = z;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f14288a = drawable;
    }
}
