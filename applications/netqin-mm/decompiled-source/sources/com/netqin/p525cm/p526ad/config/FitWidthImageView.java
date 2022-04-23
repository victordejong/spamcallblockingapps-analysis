package com.netqin.p525cm.p526ad.config;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
/* renamed from: com.netqin.cm.ad.config.FitWidthImageView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/config/FitWidthImageView.class */
public class FitWidthImageView extends AppCompatImageView {

    /* renamed from: c */
    public float f35215c;

    /* renamed from: d */
    public AbstractC9017c f35216d;

    /* renamed from: e */
    public final View.OnLayoutChangeListener f35217e;

    /* renamed from: com.netqin.cm.ad.config.FitWidthImageView$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/config/FitWidthImageView$a.class */
    public class RunnableC9015a implements Runnable {
        public RunnableC9015a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FitWidthImageView.this.setVisibility(0);
            FitWidthImageView.this.requestLayout();
        }
    }

    /* renamed from: com.netqin.cm.ad.config.FitWidthImageView$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/config/FitWidthImageView$b.class */
    public class View$OnLayoutChangeListenerC9016b implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC9016b() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            FitWidthImageView.this.getLayoutParams().width = i3 - i;
            FitWidthImageView.this.m3659c();
        }
    }

    /* renamed from: com.netqin.cm.ad.config.FitWidthImageView$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/config/FitWidthImageView$c.class */
    public interface AbstractC9017c {
        /* renamed from: a */
        void m3658a(FitWidthImageView fitWidthImageView, int i);
    }

    public FitWidthImageView(Context context) {
        this(context, null);
    }

    public FitWidthImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35215c = 0.5802469f;
        this.f35217e = new View$OnLayoutChangeListenerC9016b();
        setVisibility(4);
        setAdjustViewBounds(true);
        addOnLayoutChangeListener(this.f35217e);
    }

    /* renamed from: c */
    public final void m3659c() {
        Object tag;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            int i = layoutParams.width;
            int i2 = (int) (i * this.f35215c);
            if (i > 0 && (tag = getTag()) != null) {
                int[] iArr = (int[]) tag;
                int i3 = iArr[0];
                int i4 = iArr[1];
                if (i3 > 0 && i4 > 0) {
                    removeOnLayoutChangeListener(this.f35217e);
                    int i5 = (i * i4) / i3;
                    layoutParams.height = Math.min(i5, i2);
                    if (i5 <= i2) {
                        setScaleType(ImageView.ScaleType.FIT_XY);
                    } else {
                        setScaleType(ImageView.ScaleType.CENTER_CROP);
                        AbstractC9017c cVar = this.f35216d;
                        if (cVar != null) {
                            cVar.m3658a(this, i5 - i2);
                        }
                    }
                    post(new RunnableC9015a());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (drawable != null) {
            setTag(new int[]{drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()});
            m3659c();
        }
    }
}
