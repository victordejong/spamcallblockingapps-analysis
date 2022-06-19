package androidx.media2.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import androidx.media2.widget.AbstractC2595p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/g.class */
public abstract class AbstractC2565g extends ViewGroup implements AbstractC2595p.AbstractC2598c {

    /* renamed from: a */
    private CaptioningManager f9752a;

    /* renamed from: b */
    private CaptioningManager.CaptioningChangeListener f9753b;

    /* renamed from: c */
    protected C2531b f9754c;

    /* renamed from: d */
    protected AbstractC2595p.AbstractC2598c.AbstractC2599a f9755d;

    /* renamed from: e */
    protected AbstractC2567a f9756e;

    /* renamed from: f */
    private boolean f9757f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/g$a.class */
    public interface AbstractC2567a {
        /* renamed from: a */
        void mo40663a(float f);

        /* renamed from: a */
        void mo40662a(C2531b c2531b);
    }

    AbstractC2565g(Context context) {
        this(context, null);
    }

    AbstractC2565g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC2565g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float f;
        setLayerType(1, null);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f9753b = new CaptioningManager.CaptioningChangeListener() { // from class: androidx.media2.widget.g.1
                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onFontScaleChanged(float f2) {
                    AbstractC2565g.this.f9756e.mo40663a(f2);
                }

                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
                    AbstractC2565g.this.f9754c = new C2531b(captionStyle);
                    AbstractC2565g.this.f9756e.mo40662a(AbstractC2565g.this.f9754c);
                }
            };
            CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
            this.f9752a = captioningManager;
            this.f9754c = new C2531b(captioningManager.getUserStyle());
            f = this.f9752a.getFontScale();
        } else {
            this.f9754c = C2531b.f9610a;
            f = 1.0f;
        }
        AbstractC2567a mo40664a = mo40664a(context);
        this.f9756e = mo40664a;
        mo40664a.mo40662a(this.f9754c);
        this.f9756e.mo40663a(f);
        addView((ViewGroup) this.f9756e, -1, -1);
        requestLayout();
    }

    /* renamed from: a */
    private void m40665a() {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        boolean z = isAttachedToWindow() && getVisibility() == 0;
        if (this.f9757f == z) {
            return;
        }
        this.f9757f = z;
        if (z) {
            this.f9752a.addCaptioningChangeListener(this.f9753b);
        } else {
            this.f9752a.removeCaptioningChangeListener(this.f9753b);
        }
    }

    /* renamed from: a */
    public abstract AbstractC2567a mo40664a(Context context);

    @Override // androidx.media2.widget.AbstractC2595p.AbstractC2598c
    /* renamed from: a */
    public final void mo40580a(int i, int i2) {
        measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        layout(0, 0, i, i2);
    }

    @Override // androidx.media2.widget.AbstractC2595p.AbstractC2598c
    /* renamed from: a */
    public final void mo40579a(AbstractC2595p.AbstractC2598c.AbstractC2599a abstractC2599a) {
        this.f9755d = abstractC2599a;
    }

    @Override // androidx.media2.widget.AbstractC2595p.AbstractC2598c
    /* renamed from: a */
    public final void mo40578a(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        m40665a();
    }

    @Override // android.view.ViewGroup, android.view.View, androidx.media2.widget.AbstractC2595p.AbstractC2598c
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m40665a();
    }

    @Override // android.view.ViewGroup, android.view.View, androidx.media2.widget.AbstractC2595p.AbstractC2598c
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m40665a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((ViewGroup) this.f9756e).layout(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ((ViewGroup) this.f9756e).measure(i, i2);
    }
}
