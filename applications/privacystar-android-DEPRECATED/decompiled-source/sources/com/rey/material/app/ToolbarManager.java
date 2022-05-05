package com.rey.material.app;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.widget.DrawerLayout;
import android.support.p004v7.app.AppCompatDelegate;
import android.support.p004v7.widget.ActionMenuView;
import android.support.p004v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.NavigationDrawerDrawable;
import com.rey.material.drawable.ToolbarRippleDrawable;
import com.rey.material.util.ViewUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager.class */
public class ToolbarManager {
    private ArrayList<Animation> mAnimations;
    private Animator mAnimator;
    private AppCompatDelegate mAppCompatDelegate;
    private ToolbarRippleDrawable.Builder mBuilder;
    private int mCurrentGroup;
    private boolean mGroupChanged;
    private ArrayList<OnToolbarGroupChangedListener> mListeners;
    private boolean mMenuDataChanged;
    private ActionMenuView mMenuView;
    private NavigationManager mNavigationManager;
    private ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    private Animation.AnimationListener mOutAnimationEndListener;
    private int mRippleStyle;
    private Toolbar mToolbar;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$Animator.class */
    public interface Animator {
        Animation getInAnimation(View view, int i);

        Animation getOutAnimation(View view, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$BaseNavigationManager.class */
    public static class BaseNavigationManager extends NavigationManager {
        protected DrawerLayout mDrawerLayout;
        protected FragmentManager mFragmentManager;

        public BaseNavigationManager(int i, FragmentManager fragmentManager, Toolbar toolbar, DrawerLayout drawerLayout) {
            super(new NavigationDrawerDrawable.Builder(toolbar.getContext(), i).build(), toolbar);
            this.mDrawerLayout = drawerLayout;
            this.mFragmentManager = fragmentManager;
            if (this.mDrawerLayout != null) {
                this.mDrawerLayout.setDrawerListener(new DrawerLayout.DrawerListener() { // from class: com.rey.material.app.ToolbarManager.BaseNavigationManager.1
                    @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
                    public void onDrawerClosed(View view) {
                        BaseNavigationManager.this.onDrawerClosed(view);
                    }

                    @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
                    public void onDrawerOpened(View view) {
                        BaseNavigationManager.this.onDrawerOpened(view);
                    }

                    @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
                    public void onDrawerSlide(View view, float f) {
                        BaseNavigationManager.this.onDrawerSlide(view, f);
                    }

                    @Override // android.support.p001v4.widget.DrawerLayout.DrawerListener
                    public void onDrawerStateChanged(int i2) {
                        BaseNavigationManager.this.onDrawerStateChanged(i2);
                    }
                });
            }
            this.mFragmentManager.addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: com.rey.material.app.ToolbarManager.BaseNavigationManager.2
                @Override // android.support.p001v4.app.FragmentManager.OnBackStackChangedListener
                public void onBackStackChanged() {
                    BaseNavigationManager.this.onFragmentChanged();
                }
            });
        }

        @Override // com.rey.material.app.ToolbarManager.NavigationManager
        public boolean isBackState() {
            boolean z = true;
            if (this.mFragmentManager.getBackStackEntryCount() <= 1) {
                z = this.mDrawerLayout != null && this.mDrawerLayout.isDrawerOpen(GravityCompat.START);
            }
            return z;
        }

        protected void onDrawerClosed(View view) {
        }

        protected void onDrawerOpened(View view) {
        }

        protected void onDrawerSlide(View view, float f) {
            if (!shouldSyncDrawerSlidingProgress()) {
                notifyStateInvalidated();
            } else if (this.mDrawerLayout.isDrawerOpen(GravityCompat.START)) {
                notifyStateProgressChanged(false, 1.0f - f);
            } else {
                notifyStateProgressChanged(true, f);
            }
        }

        protected void onDrawerStateChanged(int i) {
        }

        protected void onFragmentChanged() {
            notifyStateChanged();
        }

        @Override // com.rey.material.app.ToolbarManager.NavigationManager
        public void onNavigationClick() {
        }

        protected boolean shouldSyncDrawerSlidingProgress() {
            return this.mFragmentManager.getBackStackEntryCount() <= 1;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$NavigationManager.class */
    public static abstract class NavigationManager {
        private long mAnimTime;
        protected long mAnimationDuration;
        protected NavigationDrawerDrawable mNavigationIcon;
        protected Toolbar mToolbar;
        protected boolean mNavigationVisible = true;
        private List<Object> mAnimations = new ArrayList();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.rey.material.app.ToolbarManager$NavigationManager$2 */
        /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$NavigationManager$2.class */
        public class C17132 extends AnimRunnable {
            C17132(long j) {
                super(j);
            }

            @Override // com.rey.material.app.ToolbarManager.NavigationManager.AnimRunnable
            void doWork() {
                final ViewData viewData = new ViewData(NavigationManager.this.mToolbar);
                NavigationManager.this.mToolbar.setNavigationIcon(NavigationManager.this.mNavigationIcon);
                NavigationManager.this.doOnPreDraw(NavigationManager.this.mToolbar, new AnimRunnable(this.mTime) { // from class: com.rey.material.app.ToolbarManager.NavigationManager.2.1
                    {
                        NavigationManager navigationManager = NavigationManager.this;
                    }

                    @Override // com.rey.material.app.ToolbarManager.NavigationManager.AnimRunnable
                    void doWork() {
                        int childCount = NavigationManager.this.mToolbar.getChildCount();
                        boolean z = true;
                        for (int i = 0; i < childCount; i++) {
                            View childAt = NavigationManager.this.mToolbar.getChildAt(i);
                            z = z;
                            if (!(childAt instanceof ActionMenuView)) {
                                int left = viewData.getLeft(childAt);
                                int i2 = left;
                                if (left < 0) {
                                    i2 = (-childAt.getLeft()) - childAt.getWidth();
                                }
                                if (z) {
                                    NavigationManager.this.animateViewOut(childAt, i2, new Runnable() { // from class: com.rey.material.app.ToolbarManager.NavigationManager.2.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            NavigationManager.this.mToolbar.setNavigationIcon((Drawable) null);
                                            NavigationManager.this.mNavigationIcon.cancel();
                                        }
                                    });
                                    z = false;
                                } else {
                                    NavigationManager.this.animateViewOut(childAt, i2, null);
                                    z = z;
                                }
                            }
                        }
                        if (z) {
                            NavigationManager.this.mToolbar.setNavigationIcon((Drawable) null);
                        }
                    }
                });
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$NavigationManager$AnimRunnable.class */
        abstract class AnimRunnable implements Runnable {
            long mTime;

            public AnimRunnable(long j) {
                this.mTime = j;
            }

            abstract void doWork();

            @Override // java.lang.Runnable
            public void run() {
                if (this.mTime == NavigationManager.this.mAnimTime) {
                    doWork();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$NavigationManager$ViewData.class */
        static class ViewData {
            List<Integer> lefts;
            List<View> views;

            public ViewData(Toolbar toolbar) {
                int childCount = toolbar.getChildCount();
                this.views = new ArrayList(childCount);
                this.lefts = new ArrayList(childCount);
                for (int i = 0; i < childCount; i++) {
                    View childAt = toolbar.getChildAt(i);
                    if (!(childAt instanceof ActionMenuView)) {
                        this.views.add(childAt);
                        this.lefts.add(Integer.valueOf(childAt.getLeft()));
                    }
                }
            }

            public int getLeft(View view) {
                int size = this.views.size();
                for (int i = 0; i < size; i++) {
                    if (this.views.get(i) == view) {
                        return this.lefts.get(i).intValue();
                    }
                }
                return -1;
            }
        }

        public NavigationManager(NavigationDrawerDrawable navigationDrawerDrawable, Toolbar toolbar) {
            this.mToolbar = toolbar;
            this.mNavigationIcon = navigationDrawerDrawable;
            this.mToolbar.setNavigationIcon(this.mNavigationVisible ? this.mNavigationIcon : null);
            this.mToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.rey.material.app.ToolbarManager.NavigationManager.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NavigationManager.this.onNavigationClick();
                }
            });
            this.mAnimationDuration = toolbar.getResources().getInteger(17694720);
        }

        private void animateNavigationIn(long j) {
            this.mAnimTime = j;
            cancelAllAnimations();
            this.mToolbar.setNavigationIcon((Drawable) null);
            doOnPreDraw(this.mToolbar, new AnimRunnable(j) { // from class: com.rey.material.app.ToolbarManager.NavigationManager.5
                @Override // com.rey.material.app.ToolbarManager.NavigationManager.AnimRunnable
                void doWork() {
                    final ViewData viewData = new ViewData(NavigationManager.this.mToolbar);
                    NavigationManager.this.mToolbar.setNavigationIcon(NavigationManager.this.mNavigationIcon);
                    NavigationManager.this.doOnPreDraw(NavigationManager.this.mToolbar, new AnimRunnable(this.mTime) { // from class: com.rey.material.app.ToolbarManager.NavigationManager.5.1
                        {
                            NavigationManager navigationManager = NavigationManager.this;
                        }

                        @Override // com.rey.material.app.ToolbarManager.NavigationManager.AnimRunnable
                        void doWork() {
                            int childCount = NavigationManager.this.mToolbar.getChildCount();
                            for (int i = 0; i < childCount; i++) {
                                View childAt = NavigationManager.this.mToolbar.getChildAt(i);
                                if (!(childAt instanceof ActionMenuView)) {
                                    int left = viewData.getLeft(childAt);
                                    int i2 = left;
                                    if (left < 0) {
                                        i2 = (-childAt.getLeft()) - childAt.getWidth();
                                    }
                                    NavigationManager.this.animateViewIn(childAt, i2);
                                }
                            }
                        }
                    });
                }
            });
        }

        private void animateNavigationOut(long j) {
            this.mAnimTime = j;
            cancelAllAnimations();
            this.mToolbar.setNavigationIcon((Drawable) null);
            doOnPreDraw(this.mToolbar, new C17132(j));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void animateViewIn(View view, int i) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0, i - view.getLeft(), 0, 0.0f, 0, 0.0f, 0, 0.0f);
            translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.rey.material.app.ToolbarManager.NavigationManager.6
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    NavigationManager.this.mAnimations.remove(animation);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            translateAnimation.setInterpolator(getInterpolator(true));
            translateAnimation.setDuration(this.mAnimationDuration);
            view.startAnimation(translateAnimation);
            this.mAnimations.add(translateAnimation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void animateViewOut(final View view, final int i, final Runnable runnable) {
            final Interpolator interpolator = getInterpolator(false);
            final int left = view.getLeft();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(this.mAnimationDuration);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.rey.material.app.ToolbarManager.NavigationManager.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float interpolation = interpolator.getInterpolation(valueAnimator.getAnimatedFraction());
                    view.offsetLeftAndRight((int) ((left + ((i - left) * interpolation)) - view.getLeft()));
                    if (valueAnimator.getAnimatedFraction() == 1.0f && runnable != null) {
                        runnable.run();
                    }
                }
            });
            ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.rey.material.app.ToolbarManager.NavigationManager.4
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(android.animation.Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(android.animation.Animator animator) {
                    NavigationManager.this.mAnimations.remove(animator);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(android.animation.Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(android.animation.Animator animator) {
                }
            });
            ofFloat.start();
            this.mAnimations.add(ofFloat);
        }

        private void cancelAllAnimations() {
            for (Object obj : this.mAnimations) {
                if (obj instanceof Animation) {
                    ((Animation) obj).cancel();
                } else if (obj instanceof ValueAnimator) {
                    ((ValueAnimator) obj).cancel();
                }
            }
            this.mAnimations.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doOnPreDraw(final View view, final Runnable runnable) {
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.rey.material.app.ToolbarManager.NavigationManager.7
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    runnable.run();
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
        }

        protected Interpolator getInterpolator(boolean z) {
            return new DecelerateInterpolator();
        }

        public abstract boolean isBackState();

        public boolean isNavigationVisible() {
            return this.mNavigationVisible;
        }

        public void notifyStateChanged() {
            NavigationDrawerDrawable navigationDrawerDrawable = this.mNavigationIcon;
            boolean isBackState = isBackState();
            navigationDrawerDrawable.switchIconState(isBackState ? 1 : 0, this.mNavigationVisible);
        }

        public void notifyStateInvalidated() {
            this.mNavigationIcon.switchIconState(isBackState() ? 1 : 0, false);
        }

        public void notifyStateProgressChanged(boolean z, float f) {
            this.mNavigationIcon.setIconState(z ? 1 : 0, f);
        }

        public abstract void onNavigationClick();

        public void setNavigationVisible(boolean z, boolean z2) {
            if (this.mNavigationVisible != z) {
                this.mNavigationVisible = z;
                long uptimeMillis = SystemClock.uptimeMillis();
                if (!z2) {
                    this.mToolbar.setNavigationIcon(this.mNavigationVisible ? this.mNavigationIcon : null);
                    this.mAnimTime = uptimeMillis;
                    if (!this.mNavigationVisible) {
                        this.mNavigationIcon.cancel();
                    }
                } else if (this.mNavigationVisible) {
                    animateNavigationIn(uptimeMillis);
                } else {
                    animateNavigationOut(uptimeMillis);
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$OnToolbarGroupChangedListener.class */
    public interface OnToolbarGroupChangedListener {
        void onToolbarGroupChanged(int i, int i2);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$SimpleAnimator.class */
    private static class SimpleAnimator implements Animator {
        private int mAnimationIn;
        private int mAnimationOut;

        public SimpleAnimator(int i, int i2) {
            this.mAnimationIn = i;
            this.mAnimationOut = i2;
        }

        @Override // com.rey.material.app.ToolbarManager.Animator
        public Animation getInAnimation(View view, int i) {
            return this.mAnimationIn == 0 ? null : AnimationUtils.loadAnimation(view.getContext(), this.mAnimationIn);
        }

        @Override // com.rey.material.app.ToolbarManager.Animator
        public Animation getOutAnimation(View view, int i) {
            return this.mAnimationOut == 0 ? null : AnimationUtils.loadAnimation(view.getContext(), this.mAnimationOut);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ToolbarManager$ThemableNavigationManager.class */
    public static class ThemableNavigationManager extends BaseNavigationManager implements ThemeManager.OnThemeChangedListener {
        private int mCurrentStyle;
        private int mStyleId;

        public ThemableNavigationManager(int i, FragmentManager fragmentManager, Toolbar toolbar, DrawerLayout drawerLayout) {
            super(ThemeManager.getInstance().getCurrentStyle(i), fragmentManager, toolbar, drawerLayout);
            this.mStyleId = i;
            this.mCurrentStyle = ThemeManager.getInstance().getCurrentStyle(i);
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
        }

        @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
        public void onThemeChanged(@Nullable ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
            int currentStyle = ThemeManager.getInstance().getCurrentStyle(this.mStyleId);
            if (this.mCurrentStyle != currentStyle) {
                this.mCurrentStyle = currentStyle;
                NavigationDrawerDrawable build = new NavigationDrawerDrawable.Builder(this.mToolbar.getContext(), this.mCurrentStyle).build();
                build.switchIconState(this.mNavigationIcon.getIconState(), false);
                this.mNavigationIcon = build;
                this.mToolbar.setNavigationIcon(this.mNavigationVisible ? this.mNavigationIcon : null);
            }
        }
    }

    public ToolbarManager(AppCompatDelegate appCompatDelegate, Toolbar toolbar, int i, int i2, int i3, int i4) {
        this(appCompatDelegate, toolbar, i, i2, new SimpleAnimator(i3, i4));
    }

    public ToolbarManager(AppCompatDelegate appCompatDelegate, Toolbar toolbar, int i, int i2, Animator animator) {
        this.mCurrentGroup = 0;
        this.mGroupChanged = false;
        this.mMenuDataChanged = true;
        this.mListeners = new ArrayList<>();
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.rey.material.app.ToolbarManager.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ToolbarManager.this.onGlobalLayout();
            }
        };
        this.mAnimations = new ArrayList<>();
        this.mOutAnimationEndListener = new Animation.AnimationListener() { // from class: com.rey.material.app.ToolbarManager.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (ToolbarManager.this.mAppCompatDelegate != null) {
                    ToolbarManager.this.mAppCompatDelegate.invalidateOptionsMenu();
                } else {
                    ToolbarManager.this.onPrepareMenu();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.mAppCompatDelegate = appCompatDelegate;
        this.mToolbar = toolbar;
        this.mCurrentGroup = i;
        this.mRippleStyle = i2;
        this.mAnimator = animator;
        this.mAppCompatDelegate.setSupportActionBar(toolbar);
    }

    private void animateIn() {
        ActionMenuView menuView = getMenuView();
        int childCount = menuView == null ? 0 : menuView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = menuView.getChildAt(i);
            Animation inAnimation = this.mAnimator.getInAnimation(childAt, i);
            if (inAnimation != null) {
                childAt.startAnimation(inAnimation);
            }
        }
    }

    private void animateOut() {
        ActionMenuView menuView = getMenuView();
        int childCount = menuView == null ? 0 : menuView.getChildCount();
        this.mAnimations.clear();
        this.mAnimations.ensureCapacity(childCount);
        Animation animation = null;
        for (int i = 0; i < childCount; i++) {
            Animation outAnimation = this.mAnimator.getOutAnimation(menuView.getChildAt(i), i);
            this.mAnimations.add(outAnimation);
            animation = animation;
            if (outAnimation != null) {
                if (animation != null) {
                    animation = animation;
                    if (animation.getStartOffset() + animation.getDuration() >= outAnimation.getStartOffset() + outAnimation.getDuration()) {
                    }
                }
                animation = outAnimation;
            }
        }
        if (animation == null) {
            this.mOutAnimationEndListener.onAnimationEnd(null);
        } else {
            animation.setAnimationListener(this.mOutAnimationEndListener);
            for (int i2 = 0; i2 < childCount; i2++) {
                Animation animation2 = this.mAnimations.get(i2);
                if (animation2 != null) {
                    menuView.getChildAt(i2).startAnimation(animation2);
                }
            }
        }
        this.mAnimations.clear();
    }

    private void dispatchOnToolbarGroupChanged(int i, int i2) {
        Iterator<OnToolbarGroupChangedListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onToolbarGroupChanged(i, i2);
        }
    }

    private ToolbarRippleDrawable getBackground() {
        if (this.mBuilder == null) {
            this.mBuilder = new ToolbarRippleDrawable.Builder(this.mToolbar.getContext(), this.mRippleStyle);
        }
        return this.mBuilder.build();
    }

    private ActionMenuView getMenuView() {
        if (this.mMenuView == null) {
            int i = 0;
            while (true) {
                if (i >= this.mToolbar.getChildCount()) {
                    break;
                }
                View childAt = this.mToolbar.getChildAt(i);
                if (childAt instanceof ActionMenuView) {
                    this.mMenuView = (ActionMenuView) childAt;
                    break;
                }
                i++;
            }
        }
        return this.mMenuView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGlobalLayout() {
        if (Build.VERSION.SDK_INT >= 16) {
            this.mToolbar.getViewTreeObserver().removeOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        } else {
            this.mToolbar.getViewTreeObserver().removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
        }
        ActionMenuView menuView = getMenuView();
        int childCount = menuView == null ? 0 : menuView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = menuView.getChildAt(i);
            if (this.mRippleStyle != 0 && (childAt.getBackground() == null || !(childAt.getBackground() instanceof ToolbarRippleDrawable))) {
                ViewUtil.setBackground(childAt, getBackground());
            }
        }
        if (this.mGroupChanged) {
            animateIn();
            this.mGroupChanged = false;
        }
    }

    public void createMenu(int i) {
        this.mToolbar.inflateMenu(i);
        this.mMenuDataChanged = true;
        if (this.mAppCompatDelegate == null) {
            onPrepareMenu();
        }
    }

    public int getCurrentGroup() {
        return this.mCurrentGroup;
    }

    public boolean isNavigationBackState() {
        return this.mNavigationManager != null && this.mNavigationManager.isBackState();
    }

    public boolean isNavigationVisisble() {
        return this.mNavigationManager != null && this.mNavigationManager.isNavigationVisible();
    }

    public void notifyNavigationStateChanged() {
        if (this.mNavigationManager != null) {
            this.mNavigationManager.notifyStateChanged();
        }
    }

    public void notifyNavigationStateInvalidated() {
        if (this.mNavigationManager != null) {
            this.mNavigationManager.notifyStateInvalidated();
        }
    }

    public void notifyNavigationStateProgressChanged(boolean z, float f) {
        if (this.mNavigationManager != null) {
            this.mNavigationManager.notifyStateProgressChanged(z, f);
        }
    }

    public void onPrepareMenu() {
        if (this.mGroupChanged || this.mMenuDataChanged) {
            this.mToolbar.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
            Menu menu = this.mToolbar.getMenu();
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = menu.getItem(i);
                item.setVisible(item.getGroupId() == this.mCurrentGroup || item.getGroupId() == 0);
            }
            this.mMenuDataChanged = false;
        }
    }

    public void registerOnToolbarGroupChangedListener(OnToolbarGroupChangedListener onToolbarGroupChangedListener) {
        if (!this.mListeners.contains(onToolbarGroupChangedListener)) {
            this.mListeners.add(onToolbarGroupChangedListener);
        }
    }

    public void setCurrentGroup(int i) {
        if (this.mCurrentGroup != i) {
            int i2 = this.mCurrentGroup;
            this.mCurrentGroup = i;
            this.mGroupChanged = true;
            dispatchOnToolbarGroupChanged(i2, this.mCurrentGroup);
            animateOut();
        }
    }

    public void setNavigationManager(NavigationManager navigationManager) {
        this.mNavigationManager = navigationManager;
        notifyNavigationStateInvalidated();
    }

    public void setNavigationVisisble(boolean z, boolean z2) {
        if (this.mNavigationManager != null) {
            this.mNavigationManager.setNavigationVisible(z, z2);
        }
    }

    public void unregisterOnToolbarGroupChangedListener(OnToolbarGroupChangedListener onToolbarGroupChangedListener) {
        this.mListeners.remove(onToolbarGroupChangedListener);
    }
}
