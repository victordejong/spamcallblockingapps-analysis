package com.google.android.exoplayer2.p260ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.text.AbstractC5326j;
import com.google.android.exoplayer2.text.C5316a;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.ui.SubtitleView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView.class */
public final class SubtitleView extends View implements AbstractC5326j {

    /* renamed from: d */
    private final List<C5443l> f17534d;

    /* renamed from: e */
    private List<C5317b> f17535e;

    /* renamed from: f */
    private int f17536f;

    /* renamed from: g */
    private float f17537g;

    /* renamed from: h */
    private boolean f17538h;

    /* renamed from: i */
    private boolean f17539i;

    /* renamed from: j */
    private C5316a f17540j;

    /* renamed from: k */
    private float f17541k;

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17534d = new ArrayList();
        this.f17536f = 0;
        this.f17537g = 0.0533f;
        this.f17538h = true;
        this.f17539i = true;
        this.f17540j = C5316a.f16896a;
        this.f17541k = 0.08f;
    }

    @TargetApi(19)
    /* renamed from: a */
    private boolean m19125a() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).isEnabled();
    }

    /* renamed from: b */
    private float m19124b(C5317b c5317b, int i, int i2) {
        int i3 = c5317b.f16916q;
        if (i3 != Integer.MIN_VALUE) {
            float f = c5317b.f16917r;
            if (f != -3.4028235E38f) {
                return Math.max(m19123c(i3, f, i, i2), 0.0f);
            }
            return 0.0f;
        }
        return 0.0f;
    }

    /* renamed from: c */
    private float m19123c(int i, float f, int i2, int i3) {
        float f2;
        if (i == 0) {
            f2 = i3;
        } else if (i != 1) {
            if (i == 2) {
                return f;
            }
            return -3.4028235E38f;
        } else {
            f2 = i2;
        }
        return f * f2;
    }

    /* renamed from: d */
    private void m19122d(int i, float f) {
        if (this.f17536f == i && this.f17537g == f) {
            return;
        }
        this.f17536f = i;
        this.f17537g = f;
        invalidate();
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private C5316a getUserCaptionStyleV19() {
        return C5316a.m19692a(((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle());
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<C5317b> list = this.f17535e;
        if (list == null || list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i = paddingBottom - paddingTop;
        float m19123c = m19123c(this.f17536f, this.f17537g, height, i);
        if (m19123c <= 0.0f) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            C5317b c5317b = list.get(i2);
            this.f17534d.get(i2).m19099b(c5317b, this.f17538h, this.f17539i, this.f17540j, m19123c, m19124b(c5317b, height, i), this.f17541k, canvas, paddingLeft, paddingTop, width, paddingBottom);
        }
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5326j
    /* renamed from: h */
    public void mo18392h(List<C5317b> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.f17539i == z) {
            return;
        }
        this.f17539i = z;
        invalidate();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.f17538h == z && this.f17539i == z) {
            return;
        }
        this.f17538h = z;
        this.f17539i = z;
        invalidate();
    }

    public void setBottomPaddingFraction(float f) {
        if (this.f17541k == f) {
            return;
        }
        this.f17541k = f;
        invalidate();
    }

    public void setCues(List<C5317b> list) {
        if (this.f17535e == list) {
            return;
        }
        this.f17535e = list;
        int size = list == null ? 0 : list.size();
        while (this.f17534d.size() < size) {
            this.f17534d.add(new C5443l(getContext()));
        }
        invalidate();
    }

    public void setFixedTextSize(int i, float f) {
        Context context = getContext();
        m19122d(2, TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f) {
        setFractionalTextSize(f, false);
    }

    public void setFractionalTextSize(float f, boolean z) {
        m19122d(z ? 1 : 0, f);
    }

    public void setStyle(C5316a c5316a) {
        if (this.f17540j == c5316a) {
            return;
        }
        this.f17540j = c5316a;
        invalidate();
    }

    public void setUserDefaultStyle() {
        setStyle((C5515h0.f17876a < 19 || !m19125a() || isInEditMode()) ? C5316a.f16896a : getUserCaptionStyleV19());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(((C5515h0.f17876a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }
}
