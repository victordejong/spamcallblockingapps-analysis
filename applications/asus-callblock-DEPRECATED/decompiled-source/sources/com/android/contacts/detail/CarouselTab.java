package com.android.contacts.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import com.android.contacts.widget.FrameLayoutWithOverlay;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/CarouselTab.class */
public class CarouselTab extends FrameLayoutWithOverlay {
    private static final long FADE_TRANSITION_TIME = 150;
    private static final String TAG = CarouselTab.class.getSimpleName();
    private View mAlphaLayer;
    private View mLabelBackgroundView;
    private TextView mLabelView;

    public CarouselTab(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void fadeInLabelViewAnimator(int i, boolean z) {
        ViewPropertyAnimator animate = this.mLabelView.animate();
        this.mLabelView.setAlpha(0.0f);
        animate.alpha(1.0f);
        animate.setStartDelay(i);
        animate.setDuration(FADE_TRANSITION_TIME);
        if (z) {
            ViewPropertyAnimator animate2 = this.mLabelBackgroundView.animate();
            this.mLabelBackgroundView.setAlpha(0.0f);
            animate2.alpha(1.0f);
            animate2.setStartDelay(i);
            animate2.setDuration(FADE_TRANSITION_TIME);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mLabelView = (TextView) findViewById(2131296982);
        this.mLabelBackgroundView = findViewById(2131296983);
        this.mAlphaLayer = findViewById(2131296338);
        setAlphaLayer(this.mAlphaLayer);
    }

    public void setLabel(String str) {
        this.mLabelView.setText(str);
    }

    public void showDeselectedState() {
        this.mLabelView.setSelected(false);
    }

    public void showSelectedState() {
        this.mLabelView.setSelected(true);
    }
}
