package com.apptentive.android.sdk.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import com.apptentive.android.sdk.C0724R;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/view/ApptentiveMaterialIndeterminateProgressBar.class */
public class ApptentiveMaterialIndeterminateProgressBar extends ApptentiveMaterialDeterminateProgressBar {
    public ApptentiveMaterialIndeterminateProgressBar(Context context) {
        super(context);
    }

    public ApptentiveMaterialIndeterminateProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ApptentiveMaterialIndeterminateProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void start() {
        post(new Runnable() { // from class: com.apptentive.android.sdk.view.ApptentiveMaterialIndeterminateProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                ApptentiveMaterialIndeterminateProgressBar.this.setProgress(50);
                ApptentiveMaterialIndeterminateProgressBar.this.bar.startAnimation(AnimationUtils.loadAnimation(ApptentiveMaterialIndeterminateProgressBar.this.getContext(), C0724R.anim.apptentive_material_inndeterminate_progress_bar));
            }
        });
    }

    public void stop() {
        post(new Runnable() { // from class: com.apptentive.android.sdk.view.ApptentiveMaterialIndeterminateProgressBar.2
            @Override // java.lang.Runnable
            public void run() {
                ApptentiveMaterialIndeterminateProgressBar.this.setProgress(0);
                ApptentiveMaterialIndeterminateProgressBar.this.bar.clearAnimation();
            }
        });
    }
}
