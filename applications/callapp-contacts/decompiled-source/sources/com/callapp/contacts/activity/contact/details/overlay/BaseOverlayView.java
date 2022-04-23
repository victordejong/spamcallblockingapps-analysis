package com.callapp.contacts.activity.contact.details.overlay;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.MainThreadTimer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/BaseOverlayView.class */
public abstract class BaseOverlayView extends RelativeLayout {
    protected OverlayViewListener closePusherListener;
    private GestureDetector gestureDetector;
    private WindowManager.LayoutParams layoutParams;
    private final boolean moveHorizontal;
    private final boolean moveVertical;
    private boolean gestureOnScrollDetected = false;
    private boolean gestureOnSwipeDetected = false;
    private boolean gestureOnScrollVerticalDetected = false;
    private final Object heightLocker = new Object();
    private FrameLayout fullFrameLayout = null;
    private int fullFrameLayoutHeight = -1;
    private int screenHeight = Activities.getDisplayMetrics().heightPixels;
    private AtomicBoolean isFinishing = new AtomicBoolean(false);
    private MainThreadTimer finishTask = new MainThreadTimer(new MainThreadTimer.DelaytedTaskEvents() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.1
        @Override // com.callapp.contacts.manager.MainThreadTimer.DelaytedTaskEvents
        public final void a() {
            BaseOverlayView.this.finishViewContainer(true);
        }
    });
    private WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
    private View animationContainer = findViewById(2131362013);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2.class */
    public class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ObjectAnimator c2 = CallappAnimationUtils.c(BaseOverlayView.this.getAnimationContainer(), 400, 0);
            if (c2 != null) {
                c2.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.2.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                BaseOverlayView.this.setVisibility(8);
                                BaseOverlayView.this.onDestroy();
                            }
                        });
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
                c2.start();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener.class */
    public interface OverlayViewListener {
        void a();

        void b();
    }

    public BaseOverlayView(Context context, boolean z, boolean z2, OverlayViewListener overlayViewListener) {
        super(context);
        context.setTheme(ThemeUtils.getThemeStyleResource());
        this.moveVertical = z;
        this.moveHorizontal = z2;
        this.closePusherListener = overlayViewListener;
        createLayoutForOverlay((LayoutInflater) getContext().getSystemService("layout_inflater"));
    }

    private boolean isHorizontallyScrollableViewTouched(float f, float f2) {
        return isTouchedInViews(getHorizontallyScrollableViews(), f, f2);
    }

    private boolean isTouchedInViews(List<View> list, float f, float f2) {
        if (!CollectionUtils.b(list)) {
            return false;
        }
        for (View view : list) {
            if (ViewUtils.a(view, f, f2)) {
                return true;
            }
        }
        return false;
    }

    private boolean isVerticallyScrollableViewTouched(float f, float f2) {
        return isTouchedInViews(getVerticallyScrollableViews(), f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void overlayCloseClick(View view) {
        AndroidUtils.a(view, 1);
        CLog.a(getClass().getSimpleName());
        finishViewContainer(true);
        OverlayViewListener overlayViewListener = this.closePusherListener;
        if (overlayViewListener != null) {
            overlayViewListener.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean scrollShouldBeConsumedByChildren(boolean z, float f, float f2) {
        return z ? isHorizontallyScrollableViewTouched(f, f2) : isVerticallyScrollableViewTouched(f, f2);
    }

    protected void addView() {
        WindowManager.LayoutParams layoutParams;
        this.layoutParams = setLayoutParams();
        if (needsKeyboard()) {
            FrameLayout frameLayout = new FrameLayout(CallAppApplication.get());
            this.fullFrameLayout = frameLayout;
            frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.4
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    BaseOverlayView baseOverlayView = BaseOverlayView.this;
                    baseOverlayView.screenHeight = baseOverlayView.fullFrameLayout.getHeight();
                    if (BaseOverlayView.this.fullFrameLayoutHeight < 0) {
                        BaseOverlayView baseOverlayView2 = BaseOverlayView.this;
                        baseOverlayView2.fullFrameLayoutHeight = baseOverlayView2.screenHeight;
                    }
                    if (BaseOverlayView.this.fullFrameLayoutHeight != BaseOverlayView.this.screenHeight) {
                        BaseOverlayView baseOverlayView3 = BaseOverlayView.this;
                        baseOverlayView3.fullFrameLayoutHeight = baseOverlayView3.screenHeight;
                        if (BaseOverlayView.this.getWindowY() + BaseOverlayView.this.getWindowHeight() > BaseOverlayView.this.fullFrameLayoutHeight) {
                            BaseOverlayView baseOverlayView4 = BaseOverlayView.this;
                            baseOverlayView4.repositionOverlayVertically(baseOverlayView4.getWindowY());
                        }
                    }
                }
            });
            layoutParams = new WindowManager.LayoutParams(1, -1, Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.CACHE_ERROR_CODE, 32, -3);
        } else {
            layoutParams = null;
        }
        if (getContext() instanceof BaseActivity) {
            if (this.fullFrameLayout != null) {
                ((BaseActivity) getContext()).getWindow().addContentView(this.fullFrameLayout, layoutParams);
            }
            ((BaseActivity) getContext()).getWindow().addContentView(this, this.layoutParams);
            return;
        }
        FrameLayout frameLayout2 = this.fullFrameLayout;
        if (frameLayout2 != null) {
            this.windowManager.addView(frameLayout2, layoutParams);
        }
        this.windowManager.addView(this, this.layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createLayoutForOverlay(LayoutInflater layoutInflater) {
        layoutInflater.inflate(getLayoutResId(), this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.finishTask.a();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void finishViewContainer(boolean z) {
        if (!this.isFinishing.getAndSet(true)) {
            if (!z) {
                setVisibility(8);
                onDestroy();
                return;
            }
            CallAppApplication.get().d(new AnonymousClass2());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finishWithDelay(int i) {
        this.finishTask.a(i, false);
    }

    protected void finishWithSlideOut(boolean z, float f) {
        float x = this.animationContainer.getX();
        int screenWidth = z ? -getWidth() : Activities.getScreenWidth(1);
        CallappAnimationUtils.a(this.animationContainer, x, screenWidth, f, new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseOverlayView.this.finishViewContainer(false);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    public View getAnimationContainer() {
        return this.animationContainer;
    }

    protected List<View> getHorizontallyScrollableViews() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getLayoutResId();

    protected GestureDetector getOverlayGestureBehaviour() {
        return new GestureDetector(getContext(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.LOW) { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.5

            /* renamed from: b  reason: collision with root package name */
            private float f12225b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f12226c = false;

            /* renamed from: d  reason: collision with root package name */
            private boolean f12227d = false;

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            public final boolean a(float f) {
                if (!BaseOverlayView.this.moveHorizontal || !this.f12227d || !this.f12226c) {
                    return true;
                }
                BaseOverlayView.this.gestureOnSwipeDetected = true;
                AnalyticsManager.get().a(BaseOverlayView.this.getTrackEventCategory(), "Dismiss using swipe ", "left");
                BaseOverlayView.this.finishWithSlideOut(true, f);
                if (BaseOverlayView.this.closePusherListener == null) {
                    return true;
                }
                BaseOverlayView.this.closePusherListener.b();
                BaseOverlayView.this.closePusherListener.a();
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            public final boolean b(float f) {
                if (!BaseOverlayView.this.moveHorizontal || !this.f12227d || !this.f12226c) {
                    return true;
                }
                BaseOverlayView.this.gestureOnSwipeDetected = true;
                AnalyticsManager.get().a(BaseOverlayView.this.getTrackEventCategory(), "Dismiss using swipe ", "right");
                BaseOverlayView.this.finishWithSlideOut(false, f);
                if (BaseOverlayView.this.closePusherListener == null) {
                    return true;
                }
                BaseOverlayView.this.closePusherListener.b();
                BaseOverlayView.this.closePusherListener.a();
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                this.f12225b = motionEvent.getRawY();
                this.f12227d = false;
                this.f12226c = false;
                BaseOverlayView.this.gestureOnScrollDetected = false;
                BaseOverlayView.this.gestureOnSwipeDetected = false;
                BaseOverlayView.this.gestureOnScrollVerticalDetected = false;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                boolean z = Math.abs(f) > Math.abs(motionEvent2.getRawY() - this.f12225b);
                if (!BaseOverlayView.this.gestureOnScrollDetected && BaseOverlayView.this.scrollShouldBeConsumedByChildren(z, motionEvent2.getRawX(), motionEvent2.getRawY())) {
                    return false;
                }
                if (!this.f12227d) {
                    this.f12227d = true;
                    this.f12226c = z;
                    BaseOverlayView.this.gestureOnScrollVerticalDetected = !z;
                }
                if (!this.f12226c) {
                    if (BaseOverlayView.this.moveVertical) {
                        BaseOverlayView.this.repositionOverlayVertically(BaseOverlayView.this.getWindowY() + ((int) (motionEvent2.getRawY() - this.f12225b)));
                        this.f12225b = motionEvent2.getRawY();
                        AnalyticsManager.get().a(BaseOverlayView.this.getTrackEventCategory(), "Dragged up/down (unique per user)", (String) null, 0L);
                    }
                } else if (BaseOverlayView.this.moveHorizontal && !BaseOverlayView.this.gestureOnSwipeDetected) {
                    float x = BaseOverlayView.this.getAnimationContainer().getX() - f;
                    BaseOverlayView.this.getAnimationContainer().setAlpha(0.95f - (Math.abs(x) / Activities.getScreenWidth(1)));
                    BaseOverlayView.this.getAnimationContainer().setX(x);
                    AnalyticsManager.get().a(BaseOverlayView.this.getTrackEventCategory(), "Scrolled right/left (unique per user)", (String) null, 0L);
                }
                BaseOverlayView.this.gestureOnScrollDetected = true;
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return super.onSingleTapUp(motionEvent);
            }
        });
    }

    protected abstract int getOverlayInitHeight();

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStartYposition() {
        return ((int) CallAppApplication.get().getResources().getDimension(2131166008)) - (((int) getResources().getDimension(2131165995)) * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getTrackEventCategory();

    protected List<View> getVerticallyScrollableViews() {
        return null;
    }

    protected int getWindowFlags() {
        return !needsKeyboard() ? 4751400 : 6848544;
    }

    public int getWindowHeight() {
        int i;
        synchronized (this.heightLocker) {
            i = this.layoutParams.height;
        }
        return i;
    }

    protected int getWindowType() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2010;
    }

    public int getWindowY() {
        return this.layoutParams.y;
    }

    protected boolean needsKeyboard() {
        return false;
    }

    public void onCreate() {
        this.gestureDetector = getOverlayGestureBehaviour();
        addView();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ((ViewGroup) findViewById(2131362470)).getLayoutParams();
        int dimension = (int) getResources().getDimension(2131165995);
        marginLayoutParams.setMargins(dimension, dimension, dimension, dimension);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 2130772016);
        loadAnimation.setDuration(200L);
        this.animationContainer.startAnimation(loadAnimation);
    }

    public void onDestroy() {
        this.finishTask.a();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.gestureDetector.onTouchEvent(motionEvent);
        return this.gestureOnScrollDetected;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.gestureDetector.onTouchEvent(motionEvent);
        if ((motionEvent.getAction() != 3 && motionEvent.getAction() != 1) || !this.gestureOnScrollDetected || this.gestureOnSwipeDetected) {
            return true;
        }
        if (this.gestureOnScrollVerticalDetected) {
            onVerticalScrollEnded(this.layoutParams.y);
        }
        int translationX = (int) this.animationContainer.getTranslationX();
        boolean z = false;
        if (Math.abs(translationX) > Activities.getScreenWidth(1) / 2) {
            if (translationX < 0) {
                z = true;
            }
            finishWithSlideOut(z, BitmapDescriptorFactory.HUE_RED);
            return true;
        }
        this.animationContainer.setAlpha(1.0f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.animationContainer, "translationX", translationX, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setDuration(300L);
        ofFloat.start();
        return true;
    }

    protected void onVerticalScrollEnded(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeView() {
        if (getContext() instanceof BaseActivity) {
            removeAllViews();
            return;
        }
        try {
            this.windowManager.removeViewImmediate(this);
            FrameLayout frameLayout = this.fullFrameLayout;
            if (frameLayout != null) {
                this.windowManager.removeViewImmediate(frameLayout);
            }
        } catch (IllegalArgumentException e) {
            String trackEventCategory = getTrackEventCategory();
            new StringBuilder("removeView failed. e:").append(e.toString());
            CLog.a(trackEventCategory);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void repositionOverlayVertically(int i) {
        int windowHeight = this.screenHeight - getWindowHeight();
        if (i > windowHeight) {
            i = getWindowY() > i ? 0 : windowHeight;
        }
        setWindowY(i);
        updateWindowLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCloseButtonListenerInOverlay(int i, int i2, boolean z) {
        ImageView imageView = (ImageView) findViewById(i);
        FrameLayout frameLayout = (FrameLayout) findViewById(2131362373);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseOverlayView.this.overlayCloseClick(view);
                }
            });
            if (z) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
            }
        }
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseOverlayView.this.overlayCloseClick(view);
                }
            });
            if (z) {
                frameLayout.setVisibility(0);
            } else {
                frameLayout.setVisibility(8);
            }
        }
    }

    protected WindowManager.LayoutParams setLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, getOverlayInitHeight(), 0, getStartYposition(), getWindowType(), getWindowFlags(), -3);
        layoutParams.gravity = 51;
        return layoutParams;
    }

    public void setWindowHeight(int i) {
        synchronized (this.heightLocker) {
            this.layoutParams.height = i;
        }
    }

    public void setWindowY(int i) {
        this.layoutParams.y = i;
    }

    public void updateWindowLayout() {
        try {
            this.windowManager.updateViewLayout(this, this.layoutParams);
        } catch (IllegalArgumentException e) {
        }
    }
}
