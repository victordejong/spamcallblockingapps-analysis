package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import com.explorestack.iab.vast.view.TextCountdownView;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/e.class */
public final class e extends i<View> {
    public e(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.i
    protected final h a(Context context, h hVar) {
        return (hVar == null || !"text".equals(hVar.g)) ? Assets.defCountDownStyle : Assets.defTextCountDownStyle;
    }

    public final void a(int i, int i2) {
        if (this.f19188a instanceof TextCountdownView) {
            TextCountdownView textCountdownView = (TextCountdownView) this.f19188a;
            if (i2 == 0) {
                textCountdownView.setText("");
            } else {
                textCountdownView.setRemaining(i2);
            }
        } else if (this.f19188a instanceof CircleCountdownView) {
            ((CircleCountdownView) this.f19188a).a(i, i2);
        }
    }

    @Override // com.explorestack.iab.utils.i
    final View b(Context context, h hVar) {
        return "text".equals(hVar.g) ? new TextCountdownView(context) : new CircleCountdownView(context);
    }
}
