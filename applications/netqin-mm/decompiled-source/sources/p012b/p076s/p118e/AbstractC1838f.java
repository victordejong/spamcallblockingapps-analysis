package p012b.p076s.p118e;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import p012b.p076s.p118e.AbstractC1866t;
/* renamed from: b.s.e.f */
/* loaded from: classes-dex2jar.jar:b/s/e/f.class */
public abstract class AbstractC1838f extends ViewGroup implements AbstractC1866t.AbstractC1869c {

    /* renamed from: a */
    public final CaptioningManager f7352a;

    /* renamed from: b */
    public CaptioningManager.CaptionStyle f7353b;

    /* renamed from: c */
    public AbstractC1866t.AbstractC1869c.AbstractC1870a f7354c;

    /* renamed from: d */
    public AbstractC1840b f7355d;

    /* renamed from: e */
    public boolean f7356e;

    /* renamed from: f */
    public final CaptioningManager.CaptioningChangeListener f7357f = new C1839a();

    /* renamed from: b.s.e.f$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/f$a.class */
    public class C1839a extends CaptioningManager.CaptioningChangeListener {
        public C1839a() {
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onFontScaleChanged(float f) {
            AbstractC1838f.this.f7355d.mo31949a(f);
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
            AbstractC1838f fVar = AbstractC1838f.this;
            fVar.f7353b = captionStyle;
            fVar.f7355d.mo31948a(captionStyle);
        }
    }

    /* renamed from: b.s.e.f$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/f$b.class */
    public interface AbstractC1840b {
        /* renamed from: a */
        void mo31949a(float f);

        /* renamed from: a */
        void mo31948a(CaptioningManager.CaptionStyle captionStyle);
    }

    public AbstractC1838f(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayerType(1, null);
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
        this.f7352a = captioningManager;
        this.f7353b = captioningManager.getUserStyle();
        AbstractC1840b a = mo31951a(context);
        this.f7355d = a;
        a.mo31948a(this.f7353b);
        this.f7355d.mo31949a(this.f7352a.getFontScale());
        addView((ViewGroup) this.f7355d, -1, -1);
        requestLayout();
    }

    /* renamed from: a */
    public abstract AbstractC1840b mo31951a(Context context);

    @Override // p012b.p076s.p118e.AbstractC1866t.AbstractC1869c
    /* renamed from: a */
    public void mo31861a(int i, int i2) {
        measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        layout(0, 0, i, i2);
    }

    @Override // p012b.p076s.p118e.AbstractC1866t.AbstractC1869c
    /* renamed from: a */
    public void mo31860a(AbstractC1866t.AbstractC1869c.AbstractC1870a aVar) {
        this.f7354c = aVar;
    }

    /* renamed from: b */
    public final void m31950b() {
        boolean z = isAttachedToWindow() && getVisibility() == 0;
        if (this.f7356e != z) {
            this.f7356e = z;
            if (z) {
                this.f7352a.addCaptioningChangeListener(this.f7357f);
            } else {
                this.f7352a.removeCaptioningChangeListener(this.f7357f);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View, p012b.p076s.p118e.AbstractC1866t.AbstractC1869c
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m31950b();
    }

    @Override // android.view.ViewGroup, android.view.View, p012b.p076s.p118e.AbstractC1866t.AbstractC1869c
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m31950b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((ViewGroup) this.f7355d).layout(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ((ViewGroup) this.f7355d).measure(i, i2);
    }

    @Override // p012b.p076s.p118e.AbstractC1866t.AbstractC1869c
    public void setVisible(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        m31950b();
    }
}
