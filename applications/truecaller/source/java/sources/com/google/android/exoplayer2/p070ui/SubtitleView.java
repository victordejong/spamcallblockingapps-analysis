package com.google.android.exoplayer2.p070ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24561a;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1632o1.C24657e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: com.google.android.exoplayer2.ui.SubtitleView */
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/SubtitleView.class */
public final class SubtitleView extends View implements AbstractC24572k {

    /* renamed from: b */
    public List<C24562b> f5185b;

    /* renamed from: a */
    public final List<C24657e> f5184a = new ArrayList();

    /* renamed from: c */
    public int f5186c = 0;

    /* renamed from: d */
    public float f5187d = 0.0533f;

    /* renamed from: e */
    public boolean f5188e = true;

    /* renamed from: f */
    public boolean f5189f = true;

    /* renamed from: g */
    public C24561a f5190g = C24561a.f68651g;

    /* renamed from: h */
    public float f5191h = 0.08f;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    private C24561a getUserCaptionStyleV19() {
        C24561a c24561a;
        CaptioningManager.CaptionStyle userStyle = ((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle();
        if (C24773d0.f69427a >= 21) {
            int i = -1;
            int i2 = userStyle.hasForegroundColor() ? userStyle.foregroundColor : -1;
            int i3 = userStyle.hasBackgroundColor() ? userStyle.backgroundColor : -16777216;
            int i4 = 0;
            int i5 = userStyle.hasWindowColor() ? userStyle.windowColor : 0;
            if (userStyle.hasEdgeType()) {
                i4 = userStyle.edgeType;
            }
            if (userStyle.hasEdgeColor()) {
                i = userStyle.edgeColor;
            }
            c24561a = new C24561a(i2, i3, i5, i4, i, userStyle.getTypeface());
        } else {
            c24561a = new C24561a(userStyle.foregroundColor, userStyle.backgroundColor, 0, userStyle.edgeType, userStyle.edgeColor, userStyle.getTypeface());
        }
        return c24561a;
    }

    /* renamed from: a */
    public final float m39191a(int i, float f, int i2, int i3) {
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

    /* renamed from: b */
    public void m39190b() {
        setStyle((C24773d0.f69427a < 19 || !((CaptioningManager) getContext().getSystemService("captioning")).isEnabled() || isInEditMode()) ? C24561a.f68651g : getUserCaptionStyleV19());
    }

    /* renamed from: c */
    public void m39189c() {
        setFractionalTextSize(((C24773d0.f69427a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0830  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0838  */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v6 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatchDraw(android.graphics.Canvas r12) {
        /*
            Method dump skipped, instructions count: 2181
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.SubtitleView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k
    /* renamed from: j */
    public void mo4905j(List<C24562b> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.f5189f == z) {
            return;
        }
        this.f5189f = z;
        invalidate();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.f5188e == z && this.f5189f == z) {
            return;
        }
        this.f5188e = z;
        this.f5189f = z;
        invalidate();
    }

    public void setBottomPaddingFraction(float f) {
        if (this.f5191h == f) {
            return;
        }
        this.f5191h = f;
        invalidate();
    }

    public void setCues(List<C24562b> list) {
        if (this.f5185b == list) {
            return;
        }
        this.f5185b = list;
        int size = list == null ? 0 : list.size();
        while (this.f5184a.size() < size) {
            this.f5184a.add(new C24657e(getContext()));
        }
        invalidate();
    }

    public void setFractionalTextSize(float f) {
        if (this.f5186c == 0 && this.f5187d == f) {
            return;
        }
        this.f5186c = 0;
        this.f5187d = f;
        invalidate();
    }

    public void setStyle(C24561a c24561a) {
        if (this.f5190g == c24561a) {
            return;
        }
        this.f5190g = c24561a;
        invalidate();
    }
}
