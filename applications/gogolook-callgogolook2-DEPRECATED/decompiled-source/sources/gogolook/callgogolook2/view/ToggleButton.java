package gogolook.callgogolook2.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import gogolook.callgogolook2.R$drawable;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton.class */
public class ToggleButton extends View {

    /* renamed from: a */
    public Bitmap f13122a;

    /* renamed from: b */
    public Bitmap f13123b;

    /* renamed from: c */
    public Bitmap f13124c;

    /* renamed from: d */
    public Bitmap f13125d;

    /* renamed from: e */
    public AbstractC5295f f13126e;

    /* renamed from: f */
    public boolean f13127f = false;

    /* renamed from: g */
    public RectF f13128g;

    /* renamed from: h */
    public RectF f13129h;

    /* renamed from: i */
    public RectF f13130i;

    /* renamed from: gogolook.callgogolook2.view.ToggleButton$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton$a.class */
    public class RunnableC5290a implements Runnable {
        public RunnableC5290a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ToggleButton.this.f13126e != null) {
                AbstractC5295f fVar = ToggleButton.this.f13126e;
                ToggleButton toggleButton = ToggleButton.this;
                fVar.mo4082a(toggleButton, toggleButton.f13127f);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ToggleButton$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton$b.class */
    public class RunnableC5291b implements Runnable {
        public RunnableC5291b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToggleButton.this.m25840a();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ToggleButton$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton$c.class */
    public class RunnableC5292c implements Runnable {
        public RunnableC5292c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToggleButton.this.m25837b();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ToggleButton$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton$d.class */
    public class RunnableC5293d implements Runnable {
        public RunnableC5293d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToggleButton.this.postInvalidate();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ToggleButton$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton$e.class */
    public class RunnableC5294e implements Runnable {
        public RunnableC5294e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToggleButton.this.postInvalidate();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ToggleButton$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToggleButton$f.class */
    public interface AbstractC5295f {
        /* renamed from: a */
        void mo4082a(View view, boolean z);
    }

    public ToggleButton(Context context) {
        super(context);
        m25830f();
    }

    public ToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25830f();
    }

    public ToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25830f();
    }

    public ToggleButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m25830f();
    }

    /* renamed from: a */
    public final void m25840a() {
        if (!this.f13127f) {
            float width = getWidth() / 25.0f;
            RectF rectF = this.f13130i;
            float f = rectF.left;
            RectF rectF2 = this.f13128g;
            if (f - width > rectF2.left) {
                rectF.left = f - width;
                rectF.right -= width;
                postInvalidate();
                postDelayed(new RunnableC5291b(), 10L);
                return;
            }
            this.f13130i = new RectF(rectF2);
            postInvalidate();
        }
    }

    /* renamed from: a */
    public void m25839a(AbstractC5295f fVar) {
        this.f13126e = fVar;
    }

    /* renamed from: b */
    public final void m25837b() {
        if (this.f13127f) {
            float width = getWidth() / 25.0f;
            RectF rectF = this.f13130i;
            float f = rectF.left;
            RectF rectF2 = this.f13129h;
            if (f + width < rectF2.left) {
                rectF.left = f + width;
                rectF.right += width;
                postInvalidate();
                postDelayed(new RunnableC5292c(), 10L);
                return;
            }
            this.f13130i = new RectF(rectF2);
            postInvalidate();
        }
    }

    /* renamed from: c */
    public void m25835c() {
        this.f13127f = false;
        RectF rectF = this.f13128g;
        if (rectF != null) {
            this.f13130i = new RectF(rectF);
        }
        postDelayed(new RunnableC5294e(), 500L);
    }

    /* renamed from: d */
    public void m25833d() {
        this.f13127f = true;
        RectF rectF = this.f13129h;
        if (rectF != null) {
            this.f13130i = new RectF(rectF);
        }
        postDelayed(new RunnableC5293d(), 500L);
    }

    /* renamed from: e */
    public boolean m25831e() {
        return this.f13127f;
    }

    @TargetApi(11)
    /* renamed from: f */
    public final void m25830f() {
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        this.f13122a = BitmapFactory.decodeResource(getContext().getResources(), R$drawable.switch_green_circle);
        this.f13123b = BitmapFactory.decodeResource(getContext().getResources(), R$drawable.switch_off_circle);
        this.f13124c = BitmapFactory.decodeResource(getContext().getResources(), R$drawable.switch_green_bar);
        this.f13125d = BitmapFactory.decodeResource(getContext().getResources(), R$drawable.switch_off_bar);
    }

    /* renamed from: g */
    public void m25829g() {
        this.f13127f = !this.f13127f;
        if (this.f13127f) {
            m25837b();
        } else {
            m25840a();
        }
        postDelayed(new RunnableC5290a(), 200L);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() != 0 && getHeight() != 0) {
            canvas.drawBitmap(this.f13127f ? this.f13124c : this.f13125d, (Rect) null, new Rect((getWidth() * 3) / 100, 0, (getWidth() * 97) / 100, getHeight()), (Paint) null);
            if (this.f13128g == null) {
                this.f13128g = new RectF(0.0f, 0.0f, (getHeight() * 28) / 32, getHeight());
            }
            if (this.f13129h == null) {
                this.f13129h = new RectF(getWidth() - ((getHeight() * 28) / 32), 0.0f, getWidth(), getHeight());
            }
            if (this.f13130i == null) {
                this.f13130i = this.f13127f ? new RectF(this.f13129h) : new RectF(this.f13128g);
            }
            canvas.drawBitmap(this.f13127f ? this.f13122a : this.f13123b, (Rect) null, this.f13130i, (Paint) null);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f13122a = BitmapFactory.decodeResource(getContext().getResources(), z ? R$drawable.switch_green_circle : R$drawable.switch_off_circle);
        this.f13124c = BitmapFactory.decodeResource(getContext().getResources(), z ? R$drawable.switch_green_bar : R$drawable.switch_off_bar);
    }
}
