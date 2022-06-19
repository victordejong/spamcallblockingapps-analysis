package com.telguarder.features.phoneNumberAnalyzer;

import android.content.Context;
import android.util.AttributeSet;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.p022ui.loadingButton.CircularProgressButton;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberAnalyzer/AnalyzeButton.class */
public class AnalyzeButton extends CircularProgressButton {
    public boolean longClick = false;
    private final float originalCornerRadius = UiHelper.dpToPixel(getContext(), 5.0f);
    private final float animationEndCornerRadius = UiHelper.dpToPixel(getContext(), 50.0f);

    public AnalyzeButton(Context context) {
        super(context);
    }

    public AnalyzeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AnalyzeButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AnalyzeButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.longClick) {
            this.longClick = false;
            return false;
        }
        return super.performClick();
    }

    public void reset() {
        setFinalCornerRadius(this.animationEndCornerRadius);
        setInitialCornerRadius(this.originalCornerRadius);
        revertAnimation();
    }
}
