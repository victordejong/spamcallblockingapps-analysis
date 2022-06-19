package com.telguarder.helpers.p022ui.loadingButton;
/* renamed from: com.telguarder.helpers.ui.loadingButton.AnimatedButton */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/AnimatedButton.class */
public interface AnimatedButton {
    void dispose();

    void resetProgress();

    void revertAnimation();

    void revertAnimation(OnAnimationEndListener onAnimationEndListener);

    void setProgress(int i);

    void startAnimation();
}
