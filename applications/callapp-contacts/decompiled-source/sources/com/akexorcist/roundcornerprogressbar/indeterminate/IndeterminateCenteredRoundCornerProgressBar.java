package com.akexorcist.roundcornerprogressbar.indeterminate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.akexorcist.roundcornerprogressbar.CenteredRoundCornerProgressBar;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/indeterminate/IndeterminateCenteredRoundCornerProgressBar.class */
public class IndeterminateCenteredRoundCornerProgressBar extends CenteredRoundCornerProgressBar {
    public IndeterminateCenteredRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public IndeterminateCenteredRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public IndeterminateCenteredRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    private void a() {
        disableAnimation();
        setProgress(0);
        enableAnimation();
        setProgress(100);
    }

    @Override // com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initView() {
        super.initView();
        setMax(100.0f);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar
    public void onProgressChangeAnimationEnd(LinearLayout linearLayout) {
        if (isShown()) {
            a();
        }
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar
    public void onProgressChangeAnimationUpdate(LinearLayout linearLayout, float f, float f2) {
        super.onProgressChangeAnimationUpdate(linearLayout, f, f2);
        if (!isShown()) {
            super.stopProgressAnimationImmediately();
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            a();
        }
    }
}
