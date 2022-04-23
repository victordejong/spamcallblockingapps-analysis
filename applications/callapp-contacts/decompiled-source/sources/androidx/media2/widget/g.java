package androidx.media2.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import androidx.media2.widget.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/g.class */
abstract class g extends ViewGroup implements p.c {

    /* renamed from: a  reason: collision with root package name */
    private CaptioningManager f5241a;

    /* renamed from: b  reason: collision with root package name */
    private CaptioningManager.CaptioningChangeListener f5242b;

    /* renamed from: c  reason: collision with root package name */
    protected b f5243c;

    /* renamed from: d  reason: collision with root package name */
    protected p.c.a f5244d;
    protected a e;
    private boolean f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/g$a.class */
    interface a {
        void a(float f);

        void a(b bVar);
    }

    g(Context context) {
        this(context, null);
    }

    g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float f;
        setLayerType(1, null);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f5242b = new CaptioningManager.CaptioningChangeListener() { // from class: androidx.media2.widget.g.1
                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onFontScaleChanged(float f2) {
                    g.this.e.a(f2);
                }

                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
                    g.this.f5243c = new b(captionStyle);
                    g.this.e.a(g.this.f5243c);
                }
            };
            CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
            this.f5241a = captioningManager;
            this.f5243c = new b(captioningManager.getUserStyle());
            f = this.f5241a.getFontScale();
        } else {
            this.f5243c = b.f5158a;
            f = 1.0f;
        }
        a a2 = a(context);
        this.e = a2;
        a2.a(this.f5243c);
        this.e.a(f);
        addView((ViewGroup) this.e, -1, -1);
        requestLayout();
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 19) {
            boolean z = isAttachedToWindow() && getVisibility() == 0;
            if (this.f != z) {
                this.f = z;
                if (z) {
                    this.f5241a.addCaptioningChangeListener(this.f5242b);
                } else {
                    this.f5241a.removeCaptioningChangeListener(this.f5242b);
                }
            }
        }
    }

    public abstract a a(Context context);

    @Override // androidx.media2.widget.p.c
    public final void a(int i, int i2) {
        measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        layout(0, 0, i, i2);
    }

    @Override // androidx.media2.widget.p.c
    public final void a(p.c.a aVar) {
        this.f5244d = aVar;
    }

    @Override // androidx.media2.widget.p.c
    public final void a(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        a();
    }

    @Override // android.view.ViewGroup, android.view.View, androidx.media2.widget.p.c
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.view.ViewGroup, android.view.View, androidx.media2.widget.p.c
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((ViewGroup) this.e).layout(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ((ViewGroup) this.e).measure(i, i2);
    }
}
