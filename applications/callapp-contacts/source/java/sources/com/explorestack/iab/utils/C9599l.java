package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import com.explorestack.iab.vast.view.LinearCountdownView;
import com.explorestack.iab.vast.view.TextCountdownView;
/* renamed from: com.explorestack.iab.utils.l */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/l.class */
public final class C9599l extends AbstractC9594i<View> {
    public C9599l(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    protected final C9593h mo24036a(Context context, C9593h c9593h) {
        if (c9593h != null) {
            if ("text".equals(c9593h.f32589g) || "text-reverse".equals(c9593h.f32589g)) {
                return Assets.defTextProgressStyle;
            }
            if ("circular".equals(c9593h.f32589g) || "circular-reverse".equals(c9593h.f32589g)) {
                return Assets.defCountDownProgressStyle;
            }
        }
        return Assets.defLinearProgressStyle;
    }

    /* renamed from: a */
    public final void m24038a(float f, int i, int i2) {
        if (this.f32607b == null) {
            return;
        }
        boolean z = this.f32607b.f32589g != null && this.f32607b.f32589g.endsWith("reverse");
        if (this.f32606a instanceof TextCountdownView) {
            TextCountdownView textCountdownView = (TextCountdownView) this.f32606a;
            if (i2 == 0) {
                textCountdownView.setText("");
                return;
            }
            int i3 = i;
            if (z) {
                i3 = i2 - i;
            }
            textCountdownView.setRemaining(Math.max(1, i3));
        } else if (this.f32606a instanceof CircleCountdownView) {
            CircleCountdownView circleCountdownView = (CircleCountdownView) this.f32606a;
            if (!z) {
                circleCountdownView.m23827a(100.0f - f, i);
                return;
            }
            int i4 = 0;
            if (i2 != 0) {
                i4 = Math.max(1, i2 - i);
            }
            circleCountdownView.m23827a(f, i4);
        } else if (!(this.f32606a instanceof LinearCountdownView)) {
        } else {
            LinearCountdownView linearCountdownView = (LinearCountdownView) this.f32606a;
            float f2 = f;
            if (z) {
                f2 = 100.0f - f;
            }
            linearCountdownView.f32874a = f2;
            linearCountdownView.postInvalidate();
        }
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: b */
    final View mo24035b(Context context, C9593h c9593h) {
        return ("text".equals(c9593h.f32589g) || "text-reverse".equals(c9593h.f32589g)) ? new TextCountdownView(context) : ("circular".equals(c9593h.f32589g) || "circular-reverse".equals(c9593h.f32589g)) ? new CircleCountdownView(context) : new LinearCountdownView(context);
    }
}
