package com.callapp.contacts.activity.base;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseSwipeView.class */
public abstract class BaseSwipeView extends FrameLayout {

    /* renamed from: b  reason: collision with root package name */
    protected static Boolean f11141b;

    /* renamed from: a  reason: collision with root package name */
    protected final int f11142a;

    /* renamed from: c  reason: collision with root package name */
    protected View f11143c;

    /* renamed from: d  reason: collision with root package name */
    protected View f11144d;
    protected View e;
    protected View f;
    protected LinearLayout g;
    protected int h;
    protected int i;
    protected GestureDetector j;
    protected boolean k;
    protected boolean l;
    protected float m;
    public OnSwipedListener n;
    private View.OnClickListener o;
    private View.OnClickListener p;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener.class */
    public interface OnSwipedListener {
        void a();

        void b();
    }

    public BaseSwipeView(Context context) {
        this(context, null);
    }

    public BaseSwipeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseSwipeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11142a = 500;
        this.k = false;
        this.l = false;
        this.p = new View.OnClickListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BaseSwipeView.this.o != null) {
                    if (BaseSwipeView.this.isSwipeable()) {
                        BaseSwipeView.this.b();
                    }
                    BaseSwipeView.this.o.onClick(BaseSwipeView.this.g);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.g.setPressed(false);
        b();
    }

    public static boolean isPageSwipeEnabled() {
        if (f11141b == null) {
            f11141b = Prefs.t.get();
        }
        return f11141b.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        inflate(getContext(), 2131559149, this);
        this.h = ThemeUtils.getColor(2131099891);
        this.i = ThemeUtils.getColor(2131099784);
        setLongClickable(false);
        setBackgroundColor(ThemeUtils.getColor(2131099686));
        LinearLayout linearLayout = (LinearLayout) findViewById(2131362343);
        this.g = linearLayout;
        linearLayout.setBackgroundColor(ThemeUtils.getColor(2131099686));
        this.g.setOnClickListener(this.p);
        LayoutInflater.from(getContext()).inflate(getLayoutResId(), (ViewGroup) this.g, true);
        this.f = findViewById(a.f.container);
        this.f11144d = findViewById(2131363183);
        this.e = findViewById(2131363683);
        this.m = getResources().getDimension(2131166068);
        ViewUtils.a(this.f11144d, ThemeUtils.getDrawable(2131232192));
        ViewUtils.a(this.e, ThemeUtils.getDrawable(2131232194));
        if (isSwipeable()) {
            this.g.setBackgroundColor(ThemeUtils.getColor(2131099686));
            View findViewById = findViewById(2131364041);
            this.f11143c = findViewById;
            ((ImageView) findViewById.findViewById(2131363903)).setColorFilter(this.i);
            ((ImageView) this.f11143c.findViewById(2131362214)).setColorFilter(this.i);
            ViewUtils.a(this.f11143c.findViewById(2131364486), ThemeUtils.getDrawable(2131232220));
            ViewUtils.a(this.f11143c.findViewById(2131363230), ThemeUtils.getDrawable(2131232217));
            this.j = new GestureDetector(getContext(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.LOW) { // from class: com.callapp.contacts.activity.base.BaseSwipeView.2

                /* renamed from: b  reason: collision with root package name */
                private boolean f11147b = false;

                /* renamed from: c  reason: collision with root package name */
                private boolean f11148c = false;

                @Override // com.callapp.contacts.widget.SwipeGestureListener
                public final boolean a(float f) {
                    if (!BaseSwipeView.this.isSwipeable()) {
                        return true;
                    }
                    BaseSwipeView.this.k = true;
                    if (BaseSwipeView.this.n == null) {
                        return true;
                    }
                    BaseSwipeView.this.n.a();
                    return true;
                }

                @Override // com.callapp.contacts.widget.SwipeGestureListener
                public final boolean b(float f) {
                    if (!BaseSwipeView.this.isSwipeable()) {
                        return true;
                    }
                    BaseSwipeView.this.k = true;
                    if (BaseSwipeView.this.n == null) {
                        return true;
                    }
                    BaseSwipeView.this.n.b();
                    return true;
                }

                @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onDoubleTap(MotionEvent motionEvent) {
                    return false;
                }

                @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                    return false;
                }

                @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent motionEvent) {
                    BaseSwipeView.this.k = false;
                    BaseSwipeView.this.l = false;
                    this.f11147b = false;
                    this.f11148c = false;
                    if (!StoreItemAssetManager.isSuperSkinEnabled()) {
                        return false;
                    }
                    BaseSwipeView.this.findViewById(2131363903).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    BaseSwipeView.this.findViewById(2131362214).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    return false;
                }

                @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    if (!BaseSwipeView.this.isSwipeable()) {
                        return true;
                    }
                    BaseSwipeView.this.requestDisallowInterceptTouchEvent(true);
                    BaseSwipeView.this.f11143c.setVisibility(0);
                    BaseSwipeView.this.e.setVisibility(0);
                    BaseSwipeView.this.f11144d.setVisibility(0);
                    int x = (int) BaseSwipeView.this.f.getX();
                    int screenWidth = Activities.getScreenWidth(1) / 3;
                    float f3 = x - f;
                    float abs = Math.abs(f3);
                    float f4 = screenWidth;
                    if (abs < f4) {
                        BaseSwipeView.this.f.setX(f3);
                    } else if (x != screenWidth) {
                        if (x < 0) {
                            BaseSwipeView.this.f.setX(-screenWidth);
                        } else {
                            BaseSwipeView.this.f.setX(f4);
                        }
                    }
                    int i = 2131363903;
                    if (StoreItemAssetManager.isSuperSkinEnabled()) {
                        BaseSwipeView.this.findViewById(x < 0 ? 2131363903 : 2131362214).setAlpha(Math.abs(f3) / f4);
                    }
                    if (!this.f11147b && !this.f11148c && Math.abs(x) > Activities.getScreenWidth(1) / 6) {
                        Animation loadAnimation = AnimationUtils.loadAnimation(BaseSwipeView.this.getContext(), 2130772004);
                        loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.2.1
                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationEnd(Animation animation) {
                                AnonymousClass2.this.f11148c = false;
                            }

                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationRepeat(Animation animation) {
                            }

                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationStart(Animation animation) {
                            }
                        });
                        BaseSwipeView baseSwipeView = BaseSwipeView.this;
                        if (x >= 0) {
                            i = 2131362214;
                        }
                        baseSwipeView.findViewById(i).startAnimation(loadAnimation);
                        this.f11147b = true;
                        this.f11148c = true;
                    }
                    if (Math.abs(x) < Activities.getScreenWidth(1) / 6) {
                        this.f11147b = false;
                    }
                    BaseSwipeView.this.l = true;
                    return true;
                }

                @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                    return false;
                }
            });
            return;
        }
        this.g.setBackgroundResource(2131232165);
    }

    public final void b() {
        if (isSwipeable()) {
            this.g.setBackgroundResource(2131232028);
            this.g.setPressed(true);
            this.g.setPressed(false);
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.5
                @Override // java.lang.Runnable
                public void run() {
                    BaseSwipeView.this.g.setBackgroundColor(ThemeUtils.getColor(2131099686));
                }
            }, 400L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isSwipeable()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1 && motionEvent.getRawX() <= this.m) {
            return false;
        }
        GestureDetector gestureDetector = this.j;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 && this.l) {
                int x = (int) this.f.getX();
                if (Math.abs(x) <= Activities.getScreenWidth(1) / 4) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base._$$Lambda$BaseSwipeView$QECcIcwTB2D_8S_IyumURNppDkk
                        @Override // java.lang.Runnable
                        public final void run() {
                            BaseSwipeView.this.c();
                        }
                    });
                } else if (!this.k) {
                    if (x < 0) {
                        OnSwipedListener onSwipedListener = this.n;
                        if (onSwipedListener != null) {
                            onSwipedListener.a();
                        }
                    } else {
                        OnSwipedListener onSwipedListener2 = this.n;
                        if (onSwipedListener2 != null) {
                            onSwipedListener2.b();
                        }
                    }
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f, View.TRANSLATION_X, (int) this.f.getX(), BitmapDescriptorFactory.HUE_RED);
                ofFloat.setDuration(500L);
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        BaseSwipeView.this.f11143c.setVisibility(4);
                        BaseSwipeView.this.e.setVisibility(4);
                        BaseSwipeView.this.f11144d.setVisibility(4);
                        BaseSwipeView.this.requestDisallowInterceptTouchEvent(true);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
                ofFloat.setInterpolator(new OvershootInterpolator(2.0f));
                ofFloat.start();
                return true;
            } else if (this.l) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract int getLayoutResId();

    public abstract boolean isSwipeable();

    public void setOnContainerClickListener(View.OnClickListener onClickListener) {
        this.o = onClickListener;
    }

    public void setOnContainerLongClickListener(final View.OnLongClickListener onLongClickListener) {
        this.g.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                if (BaseSwipeView.this.l || (onLongClickListener2 = onLongClickListener) == null) {
                    return false;
                }
                onLongClickListener2.onLongClick(view);
                return true;
            }
        });
    }

    public void setOnSwipeListener(OnSwipedListener onSwipedListener) {
        this.n = onSwipedListener;
    }
}
