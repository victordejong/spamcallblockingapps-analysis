package com.github.jdsjlzx.progressindicator.indicators;

import android.animation.Animator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController.class */
public abstract class BaseIndicatorController {
    private List<Animator> mAnimators;
    private View mTarget;

    /* renamed from: com.github.jdsjlzx.progressindicator.indicators.BaseIndicatorController$1 */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$1.class */
    static /* synthetic */ class C45421 {

        /* renamed from: $SwitchMap$com$github$jdsjlzx$progressindicator$indicators$BaseIndicatorController$AnimStatus */
        static final /* synthetic */ int[] f13824xd47b4fc2;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AnimStatus.values().length];
            f13824xd47b4fc2 = iArr;
            try {
                iArr[AnimStatus.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13824xd47b4fc2[AnimStatus.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13824xd47b4fc2[AnimStatus.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus.class */
    public enum AnimStatus {
        START,
        END,
        CANCEL
    }

    public abstract List<Animator> createAnimation();

    public abstract void draw(Canvas canvas, Paint paint);

    public int getHeight() {
        return this.mTarget.getHeight();
    }

    public View getTarget() {
        return this.mTarget;
    }

    public int getWidth() {
        return this.mTarget.getWidth();
    }

    public void initAnimation() {
        this.mAnimators = createAnimation();
    }

    public void postInvalidate() {
        this.mTarget.postInvalidate();
    }

    public void setAnimationStatus(AnimStatus animStatus) {
        List<Animator> list = this.mAnimators;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = this.mAnimators.get(i);
            boolean isRunning = animator.isRunning();
            int i2 = C45421.f13824xd47b4fc2[animStatus.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3 && isRunning) {
                        animator.cancel();
                    }
                } else if (isRunning) {
                    animator.end();
                }
            } else if (!isRunning) {
                animator.start();
            }
        }
    }

    public void setTarget(View view) {
        this.mTarget = view;
    }
}
