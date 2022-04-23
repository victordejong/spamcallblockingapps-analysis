package p012b.p076s.p118e;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import p012b.p076s.p118e.AbstractC1866t;
import p012b.p076s.p118e.C1859s;
/* renamed from: b.s.e.r */
/* loaded from: classes-dex2jar.jar:b/s/e/r.class */
public class C1857r extends View implements C1859s.AbstractC1862c {

    /* renamed from: a */
    public AbstractC1866t.AbstractC1869c f7374a;

    /* renamed from: b */
    public AbstractC1866t.AbstractC1869c.AbstractC1870a f7375b;

    /* renamed from: b.s.e.r$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/r$a.class */
    public class C1858a implements AbstractC1866t.AbstractC1869c.AbstractC1870a {
        public C1858a() {
        }

        @Override // p012b.p076s.p118e.AbstractC1866t.AbstractC1869c.AbstractC1870a
        /* renamed from: a */
        public void mo31859a(AbstractC1866t.AbstractC1869c cVar) {
            C1857r.this.invalidate();
        }
    }

    public C1857r(Context context) {
        this(context, null);
    }

    public C1857r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C1857r(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // p012b.p076s.p118e.C1859s.AbstractC1862c
    /* renamed from: a */
    public Looper mo31880a() {
        return Looper.getMainLooper();
    }

    @Override // p012b.p076s.p118e.C1859s.AbstractC1862c
    /* renamed from: a */
    public void mo31879a(AbstractC1866t.AbstractC1869c cVar) {
        if (this.f7374a != cVar) {
            boolean isAttachedToWindow = isAttachedToWindow();
            AbstractC1866t.AbstractC1869c cVar2 = this.f7374a;
            if (cVar2 != null) {
                if (isAttachedToWindow) {
                    cVar2.onDetachedFromWindow();
                }
                this.f7374a.mo31860a(null);
            }
            this.f7374a = cVar;
            if (cVar != null) {
                if (this.f7375b == null) {
                    this.f7375b = new C1858a();
                }
                setWillNotDraw(false);
                cVar.mo31860a(this.f7375b);
                if (isAttachedToWindow) {
                    cVar.onAttachedToWindow();
                    requestLayout();
                }
            } else {
                setWillNotDraw(true);
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.SubtitleAnchorView";
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC1866t.AbstractC1869c cVar = this.f7374a;
        if (cVar != null) {
            cVar.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC1866t.AbstractC1869c cVar = this.f7374a;
        if (cVar != null) {
            cVar.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f7374a != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            this.f7374a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f7374a != null) {
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = getHeight();
            int paddingTop = getPaddingTop();
            this.f7374a.mo31861a((width - paddingLeft) - paddingRight, (height - paddingTop) - getPaddingBottom());
        }
    }
}
