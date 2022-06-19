package io.bidmachine.nativead.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/view/NativeAdContainer.class */
class NativeAdContainer extends FrameLayout {
    FrameLayout innerContainer;

    public NativeAdContainer(Context context) {
        super(context);
        init(context);
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    private void init(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.innerContainer = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        FrameLayout frameLayout = this.innerContainer;
        if (view != frameLayout) {
            frameLayout.addView(view);
        } else {
            super.addView(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        FrameLayout frameLayout = this.innerContainer;
        if (view != frameLayout) {
            frameLayout.addView(view, i);
        } else {
            super.addView(view, i);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        FrameLayout frameLayout = this.innerContainer;
        if (view != frameLayout) {
            frameLayout.addView(view, i, i2);
        } else {
            super.addView(view, i, i2);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.innerContainer;
        if (view != frameLayout) {
            frameLayout.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.innerContainer;
        if (view != frameLayout) {
            frameLayout.addView(view, layoutParams);
        } else {
            super.addView(view, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        FrameLayout frameLayout = this.innerContainer;
        if (frameLayout != null) {
            frameLayout.bringChildToFront(view);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        FrameLayout frameLayout = this.innerContainer;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        FrameLayout frameLayout = this.innerContainer;
        if (frameLayout != null) {
            frameLayout.removeView(view);
        }
    }
}
