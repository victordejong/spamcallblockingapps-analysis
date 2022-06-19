package com.capricorn;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: classes-dex2jar.jar:com/capricorn/RayMenu.class */
public class RayMenu extends RelativeLayout {
    private ImageView mHintView;
    private RayLayout mRayLayout;

    /* renamed from: com.capricorn.RayMenu$2 */
    /* loaded from: classes-dex2jar.jar:com/capricorn/RayMenu$2.class */
    public class View$OnClickListenerC08022 implements View.OnClickListener {
        final /* synthetic */ View.OnClickListener val$listener;

        View$OnClickListenerC08022(View.OnClickListener onClickListener) {
            RayMenu.this = r4;
            this.val$listener = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RayMenu.this.bindItemAnimation(view, true, 400L).setAnimationListener(new Animation.AnimationListener() { // from class: com.capricorn.RayMenu.2.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    RayMenu.this.postDelayed(new Runnable() { // from class: com.capricorn.RayMenu.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RayMenu.this.itemDidDisappear();
                        }
                    }, 0L);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            int childCount = RayMenu.this.mRayLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = RayMenu.this.mRayLayout.getChildAt(i);
                if (view != childAt) {
                    RayMenu.this.bindItemAnimation(childAt, false, 300L);
                }
            }
            RayMenu.this.mRayLayout.invalidate();
            RayMenu.this.mHintView.startAnimation(RayMenu.createHintSwitchAnimation(true));
            View.OnClickListener onClickListener = this.val$listener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public RayMenu(Context context) {
        super(context);
        init(context);
    }

    public RayMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public Animation bindItemAnimation(View view, boolean z, long j) {
        Animation createItemDisapperAnimation = createItemDisapperAnimation(j, z);
        view.setAnimation(createItemDisapperAnimation);
        return createItemDisapperAnimation;
    }

    public static Animation createHintSwitchAnimation(boolean z) {
        RotateAnimation rotateAnimation = new RotateAnimation(z ? 45.0f : 0.0f, z ? 0.0f : 45.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setStartOffset(0L);
        rotateAnimation.setDuration(100L);
        rotateAnimation.setInterpolator(new DecelerateInterpolator());
        rotateAnimation.setFillAfter(true);
        return rotateAnimation;
    }

    private static Animation createItemDisapperAnimation(long j, boolean z) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(new ScaleAnimation(1.0f, z ? 2.0f : 0.0f, 1.0f, z ? 2.0f : 0.0f, 1, 0.5f, 1, 0.5f));
        animationSet.addAnimation(new AlphaAnimation(1.0f, 0.0f));
        animationSet.setDuration(j);
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setFillAfter(true);
        return animationSet;
    }

    private View.OnClickListener getItemClickListener(View.OnClickListener onClickListener) {
        return new View$OnClickListenerC08022(onClickListener);
    }

    private void init(Context context) {
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        setClipChildren(false);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(C0796R.layout.ray_menu, this);
        this.mRayLayout = (RayLayout) findViewById(C0796R.C0798id.item_layout);
        ViewGroup viewGroup = (ViewGroup) findViewById(C0796R.C0798id.control_layout);
        viewGroup.setClickable(true);
        viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.capricorn.RayMenu.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    RayMenu.this.mHintView.startAnimation(RayMenu.createHintSwitchAnimation(RayMenu.this.mRayLayout.isExpanded()));
                    RayMenu.this.mRayLayout.switchState(true);
                    return false;
                }
                return false;
            }
        });
        this.mHintView = (ImageView) findViewById(C0796R.C0798id.control_hint);
    }

    public void itemDidDisappear() {
        int childCount = this.mRayLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.mRayLayout.getChildAt(i).clearAnimation();
        }
        this.mRayLayout.switchState(false);
    }

    public void addItem(View view, View.OnClickListener onClickListener) {
        this.mRayLayout.addView(view);
        view.setOnClickListener(getItemClickListener(onClickListener));
    }
}
