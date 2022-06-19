package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import com.explorestack.iab.vast.view.TextCountdownView;
/* renamed from: com.explorestack.iab.utils.e */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/e.class */
public final class C9590e extends AbstractC9594i<View> {
    public C9590e(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    protected final C9593h mo24036a(Context context, C9593h c9593h) {
        return (c9593h == null || !"text".equals(c9593h.f32589g)) ? Assets.defCountDownStyle : Assets.defTextCountDownStyle;
    }

    /* renamed from: a */
    public final void m24074a(int i, int i2) {
        if (!(this.f32606a instanceof TextCountdownView)) {
            if (!(this.f32606a instanceof CircleCountdownView)) {
                return;
            }
            ((CircleCountdownView) this.f32606a).m23827a(i, i2);
            return;
        }
        TextCountdownView textCountdownView = (TextCountdownView) this.f32606a;
        if (i2 == 0) {
            textCountdownView.setText("");
        } else {
            textCountdownView.setRemaining(i2);
        }
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: b */
    final View mo24035b(Context context, C9593h c9593h) {
        return "text".equals(c9593h.f32589g) ? new TextCountdownView(context) : new CircleCountdownView(context);
    }
}
