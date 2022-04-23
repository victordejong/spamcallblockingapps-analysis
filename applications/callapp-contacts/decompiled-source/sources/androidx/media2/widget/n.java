package androidx.media2.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.v;
import androidx.media2.widget.o;
import androidx.media2.widget.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/n.class */
final class n extends View implements o.a {

    /* renamed from: a  reason: collision with root package name */
    private p.c f5261a;

    /* renamed from: b  reason: collision with root package name */
    private p.c.a f5262b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Context context) {
        this(context, null);
    }

    n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    n(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.media2.widget.o.a
    public final Looper a() {
        return Looper.getMainLooper();
    }

    @Override // androidx.media2.widget.o.a
    public final void a(p.c cVar) {
        if (this.f5261a != cVar) {
            boolean E = v.E(this);
            p.c cVar2 = this.f5261a;
            if (cVar2 != null) {
                if (E) {
                    cVar2.onDetachedFromWindow();
                }
                this.f5261a.a((p.c.a) null);
            }
            this.f5261a = cVar;
            if (cVar != null) {
                if (this.f5262b == null) {
                    this.f5262b = new p.c.a() { // from class: androidx.media2.widget.n.1
                        @Override // androidx.media2.widget.p.c.a
                        public final void a() {
                            n.this.invalidate();
                        }
                    };
                }
                setWillNotDraw(false);
                cVar.a(this.f5262b);
                if (E) {
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
    public final CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.SubtitleAnchorView";
    }

    @Override // android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        p.c cVar = this.f5261a;
        if (cVar != null) {
            cVar.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        p.c cVar = this.f5261a;
        if (cVar != null) {
            cVar.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f5261a != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            this.f5261a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f5261a != null) {
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = getHeight();
            int paddingTop = getPaddingTop();
            this.f5261a.a((width - paddingLeft) - paddingRight, (height - paddingTop) - getPaddingBottom());
        }
    }
}
