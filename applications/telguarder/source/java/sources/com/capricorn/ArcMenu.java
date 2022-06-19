package com.capricorn;

import android.content.Context;
import android.content.res.TypedArray;
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
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
/* loaded from: classes-dex2jar.jar:com/capricorn/ArcMenu.class */
public class ArcMenu extends RelativeLayout {
    private static final long ANIMATION_DURATION_DEFAULT = 300;
    private ArcLayout mArcLayout;
    private LinearLayout mBackground;
    private int mBackgroundMargin;
    private ImageView mHintView;
    private boolean mIsAnimationInProgress;
    private ViewGroup mMenuCenterControl;
    private LinearLayout mMenuCenterControlBackground;
    private View mRootView;

    /* renamed from: com.capricorn.ArcMenu$4 */
    /* loaded from: classes-dex2jar.jar:com/capricorn/ArcMenu$4.class */
    public class View$OnClickListenerC07934 implements View.OnClickListener {
        final /* synthetic */ View.OnClickListener val$listener;

        View$OnClickListenerC07934(View.OnClickListener onClickListener) {
            ArcMenu.this = r4;
            this.val$listener = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(final View view) {
            ArcMenu.this.bindItemAnimation(view, true, ArcMenu.ANIMATION_DURATION_DEFAULT).setAnimationListener(new Animation.AnimationListener() { // from class: com.capricorn.ArcMenu.4.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    ArcMenu.this.postDelayed(new Runnable() { // from class: com.capricorn.ArcMenu.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ArcMenu.this.itemDidDisappear();
                            if (View$OnClickListenerC07934.this.val$listener != null) {
                                View$OnClickListenerC07934.this.val$listener.onClick(view);
                            }
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
            int childCount = ArcMenu.this.mArcLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ArcMenu.this.mArcLayout.getChildAt(i);
                if (view != childAt) {
                    ArcMenu.this.bindItemAnimation(childAt, false, ArcMenu.ANIMATION_DURATION_DEFAULT);
                }
            }
            ArcMenu.this.mBackground.startAnimation(ArcMenu.createItemDisappearAnimation(ArcMenu.ANIMATION_DURATION_DEFAULT, false, false));
            ArcMenu.this.mMenuCenterControlBackground.startAnimation(ArcMenu.createItemDisappearAnimation(ArcMenu.ANIMATION_DURATION_DEFAULT, false, false));
            ArcMenu.this.mMenuCenterControl.startAnimation(ArcMenu.createItemDisappearAnimation(ArcMenu.ANIMATION_DURATION_DEFAULT, false, false));
            ArcMenu.this.mArcLayout.invalidate();
            ArcMenu.this.mHintView.startAnimation(ArcMenu.createHintSwitchAnimation(true));
        }
    }

    public ArcMenu(Context context) {
        super(context);
        init(context);
    }

    public ArcMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
        applyAttrs(attributeSet);
    }

    private void applyAttrs(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0796R.styleable.ArcLayout, 0, 0);
            this.mArcLayout.setArc(obtainStyledAttributes.getFloat(C0796R.styleable.ArcLayout_fromDegrees, 270.0f), obtainStyledAttributes.getFloat(C0796R.styleable.ArcLayout_toDegrees, 360.0f));
            this.mArcLayout.setChildSize(obtainStyledAttributes.getDimensionPixelSize(C0796R.styleable.ArcLayout_childSize, this.mArcLayout.getChildSize()));
            obtainStyledAttributes.recycle();
        }
    }

    public Animation bindItemAnimation(View view, boolean z, long j) {
        Animation createItemDisappearAnimation = createItemDisappearAnimation(j, z, false);
        view.setAnimation(createItemDisappearAnimation);
        return createItemDisappearAnimation;
    }

    public static Animation createHintSwitchAnimation(boolean z) {
        RotateAnimation rotateAnimation = new RotateAnimation(z ? 45.0f : 0.0f, z ? 0.0f : 45.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setStartOffset(0L);
        rotateAnimation.setDuration(ANIMATION_DURATION_DEFAULT);
        rotateAnimation.setInterpolator(new DecelerateInterpolator());
        rotateAnimation.setFillAfter(true);
        return rotateAnimation;
    }

    private static Animation createItemAppearAnimation(long j, boolean z) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.5f));
        if (z) {
            animationSet.addAnimation(new AlphaAnimation(0.0f, 1.0f));
        }
        animationSet.setDuration(j);
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setFillAfter(true);
        return animationSet;
    }

    public static Animation createItemDisappearAnimation(long j, boolean z, boolean z2) {
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(new ScaleAnimation(1.0f, z ? 1.1f : 0.0f, 1.0f, z ? 1.1f : 0.0f, 1, 0.5f, 1, 0.5f));
        if (z2) {
            animationSet.addAnimation(new AlphaAnimation(1.0f, 0.0f));
        }
        animationSet.setDuration(j);
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setFillAfter(true);
        return animationSet;
    }

    private View.OnClickListener getItemClickListener(View.OnClickListener onClickListener) {
        return new View$OnClickListenerC07934(onClickListener);
    }

    private void init(Context context) {
        this.mRootView = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(C0796R.layout.arc_menu, this);
        this.mArcLayout = (ArcLayout) findViewById(C0796R.C0798id.item_layout);
        this.mBackground = (LinearLayout) findViewById(C0796R.C0798id.arc_menu_background);
        this.mMenuCenterControlBackground = (LinearLayout) findViewById(C0796R.C0798id.control_layout_background);
        this.mMenuCenterControl = (ViewGroup) findViewById(C0796R.C0798id.control_layout);
        this.mMenuCenterControlBackground.setVisibility(4);
        this.mBackground.setVisibility(4);
        this.mMenuCenterControl.setClickable(true);
        this.mMenuCenterControl.setOnTouchListener(new View.OnTouchListener() { // from class: com.capricorn.ArcMenu.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (ArcMenu.this.isMenuOpen()) {
                        ArcMenu.this.closeArcMenu(true);
                        return false;
                    }
                    ArcMenu.this.openArcMenu(true);
                    return false;
                }
                return false;
            }
        });
        this.mHintView = (ImageView) findViewById(C0796R.C0798id.control_hint);
    }

    public void itemDidDisappear() {
        int childCount = this.mArcLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.mArcLayout.getChildAt(i).clearAnimation();
        }
        this.mArcLayout.switchState(false, null);
    }

    private void resizeMenuBackground() {
        this.mArcLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mBackground.getLayoutParams();
        layoutParams.width = this.mArcLayout.getMeasuredWidth() - this.mBackgroundMargin;
        layoutParams.height = this.mArcLayout.getMeasuredHeight() - this.mBackgroundMargin;
        this.mBackground.setLayoutParams(layoutParams);
    }

    public void addItem(View view, View.OnClickListener onClickListener) {
        this.mArcLayout.addView(view);
        view.setOnClickListener(getItemClickListener(onClickListener));
        resizeMenuBackground();
    }

    public void closeArcMenu(boolean z) {
        this.mIsAnimationInProgress = true;
        this.mHintView.startAnimation(createHintSwitchAnimation(true));
        this.mBackground.startAnimation(createItemDisappearAnimation(ANIMATION_DURATION_DEFAULT, false, false));
        this.mArcLayout.switchState(z, new Animation.AnimationListener() { // from class: com.capricorn.ArcMenu.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ArcMenu.this.mIsAnimationInProgress = false;
                ArcMenu.this.mRootView.setVisibility(4);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                ArcMenu.this.mIsAnimationInProgress = true;
            }
        });
    }

    public ArcLayout getArcLayout() {
        return this.mArcLayout;
    }

    public LinearLayout getBackgroundLayout() {
        return this.mBackground;
    }

    public LinearLayout getMenuCenterControlBackground() {
        return this.mMenuCenterControlBackground;
    }

    public ViewGroup getMenuCenterControlLayout() {
        return this.mMenuCenterControl;
    }

    public ImageView getMenuCenterHint() {
        return this.mHintView;
    }

    public boolean isAnimationInProgress() {
        return this.mIsAnimationInProgress;
    }

    public boolean isMenuOpen() {
        return this.mArcLayout.isExpanded();
    }

    public boolean isMenuVisible() {
        return this.mRootView.getVisibility() == 0;
    }

    public void openArcMenu(boolean z) {
        this.mIsAnimationInProgress = true;
        this.mHintView.startAnimation(createHintSwitchAnimation(false));
        this.mBackground.setVisibility(0);
        this.mMenuCenterControlBackground.setVisibility(0);
        this.mBackground.startAnimation(createItemAppearAnimation(ANIMATION_DURATION_DEFAULT, false));
        this.mMenuCenterControlBackground.startAnimation(createItemAppearAnimation(ANIMATION_DURATION_DEFAULT, false));
        this.mArcLayout.switchState(z, new Animation.AnimationListener() { // from class: com.capricorn.ArcMenu.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ArcMenu.this.mIsAnimationInProgress = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                ArcMenu.this.mIsAnimationInProgress = true;
            }
        });
    }

    public void setArc(float f, float f2) {
        this.mArcLayout.setArc(f, f2);
    }

    public void setBackgroundSideMargins(int i) {
        this.mBackgroundMargin = i;
    }

    public void setMenuItemSize(int i) {
        this.mArcLayout.setChildSize(i);
    }
}
