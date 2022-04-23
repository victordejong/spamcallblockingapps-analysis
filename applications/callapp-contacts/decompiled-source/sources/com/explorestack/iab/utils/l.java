package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import com.explorestack.iab.vast.view.LinearCountdownView;
import com.explorestack.iab.vast.view.TextCountdownView;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/l.class */
public final class l extends i<View> {
    public l(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.i
    protected final h a(Context context, h hVar) {
        if (hVar != null) {
            if ("text".equals(hVar.g) || "text-reverse".equals(hVar.g)) {
                return Assets.defTextProgressStyle;
            }
            if ("circular".equals(hVar.g) || "circular-reverse".equals(hVar.g)) {
                return Assets.defCountDownProgressStyle;
            }
        }
        return Assets.defLinearProgressStyle;
    }

    public final void a(float f, int i, int i2) {
        if (this.f19189b != null) {
            int i3 = 0;
            boolean z = this.f19189b.g != null && this.f19189b.g.endsWith("reverse");
            if (this.f19188a instanceof TextCountdownView) {
                TextCountdownView textCountdownView = (TextCountdownView) this.f19188a;
                if (i2 == 0) {
                    textCountdownView.setText("");
                    return;
                }
                int i4 = i;
                if (z) {
                    i4 = i2 - i;
                }
                textCountdownView.setRemaining(Math.max(1, i4));
            } else if (this.f19188a instanceof CircleCountdownView) {
                CircleCountdownView circleCountdownView = (CircleCountdownView) this.f19188a;
                if (z) {
                    if (i2 != 0) {
                        i3 = Math.max(1, i2 - i);
                    }
                    circleCountdownView.a(f, i3);
                    return;
                }
                circleCountdownView.a(100.0f - f, i);
            } else if (this.f19188a instanceof LinearCountdownView) {
                LinearCountdownView linearCountdownView = (LinearCountdownView) this.f19188a;
                float f2 = f;
                if (z) {
                    f2 = 100.0f - f;
                }
                linearCountdownView.f19335a = f2;
                linearCountdownView.postInvalidate();
            }
        }
    }

    @Override // com.explorestack.iab.utils.i
    final View b(Context context, h hVar) {
        return ("text".equals(hVar.g) || "text-reverse".equals(hVar.g)) ? new TextCountdownView(context) : ("circular".equals(hVar.g) || "circular-reverse".equals(hVar.g)) ? new CircleCountdownView(context) : new LinearCountdownView(context);
    }
}
