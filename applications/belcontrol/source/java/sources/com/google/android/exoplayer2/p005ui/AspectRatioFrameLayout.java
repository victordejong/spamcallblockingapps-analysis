package com.google.android.exoplayer2.p005ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout.class */
public final class AspectRatioFrameLayout extends FrameLayout {
    private static final float MAX_ASPECT_RATIO_DEFORMATION_FRACTION = 0.01f;
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;
    private AspectRatioListener aspectRatioListener;
    private final AspectRatioUpdateDispatcher aspectRatioUpdateDispatcher;
    private int resizeMode;
    private float videoAspectRatio;

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioListener */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener.class */
    public interface AspectRatioListener {
        void onAspectRatioUpdated(float f, float f2, boolean z);
    }

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioUpdateDispatcher */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher.class */
    public final class AspectRatioUpdateDispatcher implements Runnable {
        private boolean aspectRatioMismatch;
        private boolean isScheduled;
        private float naturalAspectRatio;
        private float targetAspectRatio;

        private AspectRatioUpdateDispatcher() {
            AspectRatioFrameLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.isScheduled = false;
            if (AspectRatioFrameLayout.this.aspectRatioListener == null) {
                return;
            }
            AspectRatioFrameLayout.this.aspectRatioListener.onAspectRatioUpdated(this.targetAspectRatio, this.naturalAspectRatio, this.aspectRatioMismatch);
        }

        public void scheduleUpdate(float f, float f2, boolean z) {
            this.targetAspectRatio = f;
            this.naturalAspectRatio = f2;
            this.aspectRatioMismatch = z;
            if (!this.isScheduled) {
                this.isScheduled = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$ResizeMode */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode.class */
    public @interface ResizeMode {
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resizeMode = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0577R.styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.resizeMode = obtainStyledAttributes.getInt(C0577R.styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.aspectRatioUpdateDispatcher = new AspectRatioUpdateDispatcher();
    }

    public int getResizeMode() {
        return this.resizeMode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        if (r0 > 0.0f) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008e, code lost:
        if (r0 > 0.0f) goto L20;
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            super.onMeasure(r1, r2)
            r0 = r5
            float r0 = r0.videoAspectRatio
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L10
            return
        L10:
            r0 = r5
            int r0 = r0.getMeasuredWidth()
            r7 = r0
            r0 = r5
            int r0 = r0.getMeasuredHeight()
            r6 = r0
            r0 = r7
            float r0 = (float) r0
            r8 = r0
            r0 = r6
            float r0 = (float) r0
            r9 = r0
            r0 = r8
            r1 = r9
            float r0 = r0 / r1
            r10 = r0
            r0 = r5
            float r0 = r0.videoAspectRatio
            r1 = r10
            float r0 = r0 / r1
            r1 = 1065353216(0x3f800000, float:1.0)
            float r0 = r0 - r1
            r11 = r0
            r0 = r11
            float r0 = java.lang.Math.abs(r0)
            r1 = 1008981770(0x3c23d70a, float:0.01)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L4c
            r0 = r5
            com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioUpdateDispatcher r0 = r0.aspectRatioUpdateDispatcher
            r1 = r5
            float r1 = r1.videoAspectRatio
            r2 = r10
            r3 = 0
            r0.scheduleUpdate(r1, r2, r3)
            return
        L4c:
            r0 = r5
            int r0 = r0.resizeMode
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L8a
            r0 = r12
            r1 = 1
            if (r0 == r1) goto L7f
            r0 = r12
            r1 = 2
            if (r0 == r1) goto L73
            r0 = r12
            r1 = 4
            if (r0 == r1) goto L6c
            goto L94
        L6c:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L7f
        L73:
            r0 = r9
            r1 = r5
            float r1 = r1.videoAspectRatio
            float r0 = r0 * r1
            int r0 = (int) r0
            r7 = r0
            goto L94
        L7f:
            r0 = r8
            r1 = r5
            float r1 = r1.videoAspectRatio
            float r0 = r0 / r1
            int r0 = (int) r0
            r6 = r0
            goto L94
        L8a:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L73
            goto L7f
        L94:
            r0 = r5
            com.google.android.exoplayer2.ui.AspectRatioFrameLayout$AspectRatioUpdateDispatcher r0 = r0.aspectRatioUpdateDispatcher
            r1 = r5
            float r1 = r1.videoAspectRatio
            r2 = r10
            r3 = 1
            r0.scheduleUpdate(r1, r2, r3)
            r0 = r5
            r1 = r7
            r2 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r2)
            r2 = r6
            r3 = 1073741824(0x40000000, float:2.0)
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r3)
            super.onMeasure(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p005ui.AspectRatioFrameLayout.onMeasure(int, int):void");
    }

    public void setAspectRatio(float f) {
        if (this.videoAspectRatio != f) {
            this.videoAspectRatio = f;
            requestLayout();
        }
    }

    public void setAspectRatioListener(AspectRatioListener aspectRatioListener) {
        this.aspectRatioListener = aspectRatioListener;
    }

    public void setResizeMode(int i) {
        if (this.resizeMode != i) {
            this.resizeMode = i;
            requestLayout();
        }
    }
}
