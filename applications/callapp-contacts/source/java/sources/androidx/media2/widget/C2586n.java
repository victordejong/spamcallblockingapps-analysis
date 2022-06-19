package androidx.media2.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.C0926v;
import androidx.media2.widget.AbstractC2595p;
import androidx.media2.widget.C2588o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/n.class */
public final class C2586n extends View implements C2588o.AbstractC2591a {

    /* renamed from: a */
    private AbstractC2595p.AbstractC2598c f9784a;

    /* renamed from: b */
    private AbstractC2595p.AbstractC2598c.AbstractC2599a f9785b;

    public C2586n(Context context) {
        this(context, null);
    }

    C2586n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    C2586n(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.media2.widget.C2588o.AbstractC2591a
    /* renamed from: a */
    public final Looper mo40594a() {
        return Looper.getMainLooper();
    }

    @Override // androidx.media2.widget.C2588o.AbstractC2591a
    /* renamed from: a */
    public final void mo40593a(AbstractC2595p.AbstractC2598c abstractC2598c) {
        if (this.f9784a == abstractC2598c) {
            return;
        }
        boolean m44154E = C0926v.m44154E(this);
        AbstractC2595p.AbstractC2598c abstractC2598c2 = this.f9784a;
        if (abstractC2598c2 != null) {
            if (m44154E) {
                abstractC2598c2.onDetachedFromWindow();
            }
            this.f9784a.mo40579a((AbstractC2595p.AbstractC2598c.AbstractC2599a) null);
        }
        this.f9784a = abstractC2598c;
        if (abstractC2598c != null) {
            if (this.f9785b == null) {
                this.f9785b = new AbstractC2595p.AbstractC2598c.AbstractC2599a() { // from class: androidx.media2.widget.n.1
                    @Override // androidx.media2.widget.AbstractC2595p.AbstractC2598c.AbstractC2599a
                    /* renamed from: a */
                    public final void mo40577a() {
                        C2586n.this.invalidate();
                    }
                };
            }
            setWillNotDraw(false);
            abstractC2598c.mo40579a(this.f9785b);
            if (m44154E) {
                abstractC2598c.onAttachedToWindow();
                requestLayout();
            }
        } else {
            setWillNotDraw(true);
        }
        invalidate();
    }

    @Override // android.view.View
    public final CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.SubtitleAnchorView";
    }

    @Override // android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC2595p.AbstractC2598c abstractC2598c = this.f9784a;
        if (abstractC2598c != null) {
            abstractC2598c.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC2595p.AbstractC2598c abstractC2598c = this.f9784a;
        if (abstractC2598c != null) {
            abstractC2598c.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f9784a != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            this.f9784a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f9784a != null) {
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = getHeight();
            int paddingTop = getPaddingTop();
            this.f9784a.mo40580a((width - paddingLeft) - paddingRight, (height - paddingTop) - getPaddingBottom());
        }
    }
}
