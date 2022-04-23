package com.rey.material.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.rey.material.C1686R;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.drawable.ToolbarRippleDrawable;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/RippleManager.class */
public final class RippleManager implements View.OnClickListener {
    private View.OnClickListener mClickListener;
    private boolean mClickScheduled = false;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/RippleManager$ClickRunnable.class */
    class ClickRunnable implements Runnable {
        View mView;

        public ClickRunnable(View view) {
            this.mView = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            RippleManager.this.mClickScheduled = false;
            RippleManager.this.dispatchClickEvent(this.mView);
        }
    }

    public static void cancelRipple(View view) {
        Drawable background = view.getBackground();
        if (background instanceof RippleDrawable) {
            ((RippleDrawable) background).cancel();
        } else if (background instanceof ToolbarRippleDrawable) {
            ((ToolbarRippleDrawable) background).cancel();
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                cancelRipple(viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchClickEvent(View view) {
        if (this.mClickListener != null) {
            this.mClickListener.onClick(view);
        }
    }

    private Drawable getBackground(View view) {
        Drawable background = view.getBackground();
        if (background == null) {
            return null;
        }
        return background instanceof RippleDrawable ? ((RippleDrawable) background).getBackgroundDrawable() : background;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long j;
        Drawable background = view.getBackground();
        if (background != null) {
            if (background instanceof RippleDrawable) {
                j = ((RippleDrawable) background).getClickDelayTime();
            } else if (background instanceof ToolbarRippleDrawable) {
                j = ((ToolbarRippleDrawable) background).getClickDelayTime();
            }
            if (j > 0 || view.getHandler() == null) {
                dispatchClickEvent(view);
            } else if (!this.mClickScheduled) {
                this.mClickScheduled = true;
                view.getHandler().postDelayed(new ClickRunnable(view), j);
                return;
            } else {
                return;
            }
        }
        j = 0;
        if (j > 0) {
        }
        dispatchClickEvent(view);
    }

    public void onCreate(View view, Context context, AttributeSet attributeSet, int i, int i2) {
        if (!view.isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.RippleView, i, i2);
            int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.RippleView_rd_style, 0);
            RippleDrawable rippleDrawable = null;
            if (resourceId != 0) {
                rippleDrawable = new RippleDrawable.Builder(context, resourceId).backgroundDrawable(getBackground(view)).build();
            } else if (obtainStyledAttributes.getBoolean(C1686R.styleable.RippleView_rd_enable, false)) {
                rippleDrawable = new RippleDrawable.Builder(context, attributeSet, i, i2).backgroundDrawable(getBackground(view)).build();
            }
            obtainStyledAttributes.recycle();
            if (rippleDrawable != null) {
                ViewUtil.setBackground(view, rippleDrawable);
            }
        }
    }

    public boolean onTouchEvent(View view, MotionEvent motionEvent) {
        Drawable background = view.getBackground();
        return background != null && (background instanceof RippleDrawable) && ((RippleDrawable) background).onTouch(view, motionEvent);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mClickListener = onClickListener;
    }
}
