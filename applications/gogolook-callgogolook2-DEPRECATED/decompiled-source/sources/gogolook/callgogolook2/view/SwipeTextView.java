package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.TextView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SwipeTextView.class */
public class SwipeTextView extends TextView {

    /* renamed from: d */
    public Paint f13114d;

    /* renamed from: a */
    public C5288b f13111a = null;

    /* renamed from: b */
    public LinearGradient f13112b = null;

    /* renamed from: c */
    public Matrix f13113c = null;

    /* renamed from: e */
    public int f13115e = 0;

    /* renamed from: gogolook.callgogolook2.view.SwipeTextView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SwipeTextView$b.class */
    public final class C5288b extends Animation {

        /* renamed from: a */
        public TextView f13116a;

        public C5288b() {
            this.f13116a = null;
        }

        /* renamed from: a */
        public void m25843a(TextView textView) {
            this.f13116a = textView;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            if (this.f13116a != null) {
                SwipeTextView.this.f13113c.setTranslate(SwipeTextView.this.f13115e * 2 * f, 0.0f);
                SwipeTextView.this.f13112b.setLocalMatrix(SwipeTextView.this.f13113c);
                this.f13116a.invalidate();
            }
        }
    }

    public SwipeTextView(Context context) {
        super(context);
    }

    public SwipeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SwipeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m25848a() {
        if (this.f13111a == null) {
            this.f13111a = new C5288b();
            this.f13111a.setDuration(2000L);
            this.f13111a.setStartOffset(500L);
            this.f13111a.m25843a(this);
            this.f13111a.setRepeatCount(-1);
            this.f13111a.setRepeatMode(1);
            this.f13111a.setInterpolator(new LinearInterpolator());
            startAnimation(this.f13111a);
        }
    }

    /* renamed from: b */
    public final void m25846b() {
        C5288b bVar = this.f13111a;
        if (bVar != null) {
            bVar.cancel();
            clearAnimation();
            this.f13111a = null;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m25848a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onScreenStateChanged(int i) {
        if (i == 0) {
            m25846b();
        } else {
            m25848a();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f13115e != i) {
            this.f13115e = i;
            if (this.f13115e > 0) {
                this.f13114d = getPaint();
                this.f13112b = new LinearGradient(-this.f13115e, 0.0f, 0.0f, 0.0f, new int[]{-11184811, -3355444, -11184811}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
                this.f13114d.setShader(this.f13112b);
                this.f13113c = new Matrix();
            }
        }
    }
}
