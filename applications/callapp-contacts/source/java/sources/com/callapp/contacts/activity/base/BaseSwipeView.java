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
import com.google.android.material.C14376a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseSwipeView.class */
public abstract class BaseSwipeView extends FrameLayout {

    /* renamed from: b */
    protected static Boolean f20335b;

    /* renamed from: a */
    protected final int f20336a;

    /* renamed from: c */
    protected View f20337c;

    /* renamed from: d */
    protected View f20338d;

    /* renamed from: e */
    protected View f20339e;

    /* renamed from: f */
    protected View f20340f;

    /* renamed from: g */
    protected LinearLayout f20341g;

    /* renamed from: h */
    protected int f20342h;

    /* renamed from: i */
    protected int f20343i;

    /* renamed from: j */
    protected GestureDetector f20344j;

    /* renamed from: k */
    protected boolean f20345k;

    /* renamed from: l */
    protected boolean f20346l;

    /* renamed from: m */
    protected float f20347m;

    /* renamed from: n */
    public OnSwipedListener f20348n;

    /* renamed from: o */
    private View.OnClickListener f20349o;

    /* renamed from: p */
    private View.OnClickListener f20350p;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseSwipeView$OnSwipedListener.class */
    public interface OnSwipedListener {
        /* renamed from: a */
        void mo27470a();

        /* renamed from: b */
        void mo27469b();
    }

    public BaseSwipeView(Context context) {
        this(context, null);
    }

    public BaseSwipeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseSwipeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20336a = 500;
        this.f20345k = false;
        this.f20346l = false;
        this.f20350p = new View.OnClickListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BaseSwipeView.this.f20349o != null) {
                    if (BaseSwipeView.this.isSwipeable()) {
                        BaseSwipeView.this.m31479b();
                    }
                    BaseSwipeView.this.f20349o.onClick(BaseSwipeView.this.f20341g);
                }
            }
        };
    }

    /* renamed from: c */
    public /* synthetic */ void m31478c() {
        this.f20341g.setPressed(false);
        m31479b();
    }

    public static boolean isPageSwipeEnabled() {
        if (f20335b == null) {
            f20335b = Prefs.f26663t.get();
        }
        return f20335b.booleanValue();
    }

    /* renamed from: a */
    public final void m31481a() {
        inflate(getContext(), 2131559149, this);
        this.f20342h = ThemeUtils.getColor(2131099891);
        this.f20343i = ThemeUtils.getColor(2131099784);
        setLongClickable(false);
        setBackgroundColor(ThemeUtils.getColor(2131099686));
        LinearLayout linearLayout = (LinearLayout) findViewById(2131362343);
        this.f20341g = linearLayout;
        linearLayout.setBackgroundColor(ThemeUtils.getColor(2131099686));
        this.f20341g.setOnClickListener(this.f20350p);
        LayoutInflater.from(getContext()).inflate(getLayoutResId(), (ViewGroup) this.f20341g, true);
        this.f20340f = findViewById(C14376a.C14382f.container);
        this.f20338d = findViewById(2131363183);
        this.f20339e = findViewById(2131363683);
        this.f20347m = getResources().getDimension(2131166068);
        ViewUtils.m27320a(this.f20338d, ThemeUtils.getDrawable(2131232192));
        ViewUtils.m27320a(this.f20339e, ThemeUtils.getDrawable(2131232194));
        if (!isSwipeable()) {
            this.f20341g.setBackgroundResource(2131232165);
            return;
        }
        this.f20341g.setBackgroundColor(ThemeUtils.getColor(2131099686));
        View findViewById = findViewById(2131364041);
        this.f20337c = findViewById;
        ((ImageView) findViewById.findViewById(2131363903)).setColorFilter(this.f20343i);
        ((ImageView) this.f20337c.findViewById(2131362214)).setColorFilter(this.f20343i);
        ViewUtils.m27320a(this.f20337c.findViewById(2131364486), ThemeUtils.getDrawable(2131232220));
        ViewUtils.m27320a(this.f20337c.findViewById(2131363230), ThemeUtils.getDrawable(2131232217));
        this.f20344j = new GestureDetector(getContext(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.LOW) { // from class: com.callapp.contacts.activity.base.BaseSwipeView.2

            /* renamed from: b */
            private boolean f20353b = false;

            /* renamed from: c */
            private boolean f20354c = false;

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: a */
            public final boolean mo26556a(float f) {
                if (BaseSwipeView.this.isSwipeable()) {
                    BaseSwipeView.this.f20345k = true;
                    if (BaseSwipeView.this.f20348n == null) {
                        return true;
                    }
                    BaseSwipeView.this.f20348n.mo27470a();
                    return true;
                }
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: b */
            public final boolean mo26554b(float f) {
                if (BaseSwipeView.this.isSwipeable()) {
                    BaseSwipeView.this.f20345k = true;
                    if (BaseSwipeView.this.f20348n == null) {
                        return true;
                    }
                    BaseSwipeView.this.f20348n.mo27469b();
                    return true;
                }
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
                BaseSwipeView.this.f20345k = false;
                BaseSwipeView.this.f20346l = false;
                this.f20353b = false;
                this.f20354c = false;
                if (StoreItemAssetManager.isSuperSkinEnabled()) {
                    BaseSwipeView.this.findViewById(2131363903).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    BaseSwipeView.this.findViewById(2131362214).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    return false;
                }
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
                BaseSwipeView.this.f20337c.setVisibility(0);
                BaseSwipeView.this.f20339e.setVisibility(0);
                BaseSwipeView.this.f20338d.setVisibility(0);
                int x = (int) BaseSwipeView.this.f20340f.getX();
                int screenWidth = Activities.getScreenWidth(1) / 3;
                float f3 = x - f;
                float abs = Math.abs(f3);
                float f4 = screenWidth;
                if (abs < f4) {
                    BaseSwipeView.this.f20340f.setX(f3);
                } else if (x != screenWidth) {
                    if (x < 0) {
                        BaseSwipeView.this.f20340f.setX(-screenWidth);
                    } else {
                        BaseSwipeView.this.f20340f.setX(f4);
                    }
                }
                if (StoreItemAssetManager.isSuperSkinEnabled()) {
                    BaseSwipeView.this.findViewById(x < 0 ? 2131363903 : 2131362214).setAlpha(Math.abs(f3) / f4);
                }
                if (!this.f20353b && !this.f20354c && Math.abs(x) > Activities.getScreenWidth(1) / 6) {
                    Animation loadAnimation = AnimationUtils.loadAnimation(BaseSwipeView.this.getContext(), 2130772004);
                    loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.2.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            C58112.this.f20354c = false;
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }
                    });
                    BaseSwipeView.this.findViewById(x < 0 ? 2131363903 : 2131362214).startAnimation(loadAnimation);
                    this.f20353b = true;
                    this.f20354c = true;
                }
                if (Math.abs(x) < Activities.getScreenWidth(1) / 6) {
                    this.f20353b = false;
                }
                BaseSwipeView.this.f20346l = true;
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return false;
            }
        });
    }

    /* renamed from: b */
    public final void m31479b() {
        if (!isSwipeable()) {
            return;
        }
        this.f20341g.setBackgroundResource(2131232028);
        this.f20341g.setPressed(true);
        this.f20341g.setPressed(false);
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.5
            @Override // java.lang.Runnable
            public void run() {
                BaseSwipeView.this.f20341g.setBackgroundColor(ThemeUtils.getColor(2131099686));
            }
        }, 400L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isSwipeable()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1 && motionEvent.getRawX() <= this.f20347m) {
            return false;
        }
        GestureDetector gestureDetector = this.f20344j;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 && this.f20346l) {
                int x = (int) this.f20340f.getX();
                if (Math.abs(x) <= Activities.getScreenWidth(1) / 4) {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base._$$Lambda$BaseSwipeView$QECcIcwTB2D_8S_IyumURNppDkk
                        @Override // java.lang.Runnable
                        public final void run() {
                            BaseSwipeView.this.m31478c();
                        }
                    });
                } else if (!this.f20345k) {
                    if (x < 0) {
                        OnSwipedListener onSwipedListener = this.f20348n;
                        if (onSwipedListener != null) {
                            onSwipedListener.mo27470a();
                        }
                    } else {
                        OnSwipedListener onSwipedListener2 = this.f20348n;
                        if (onSwipedListener2 != null) {
                            onSwipedListener2.mo27469b();
                        }
                    }
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f20340f, View.TRANSLATION_X, (int) this.f20340f.getX(), BitmapDescriptorFactory.HUE_RED);
                ofFloat.setDuration(500L);
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        BaseSwipeView.this.f20337c.setVisibility(4);
                        BaseSwipeView.this.f20339e.setVisibility(4);
                        BaseSwipeView.this.f20338d.setVisibility(4);
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
            } else if (this.f20346l) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract int getLayoutResId();

    public abstract boolean isSwipeable();

    public void setOnContainerClickListener(View.OnClickListener onClickListener) {
        this.f20349o = onClickListener;
    }

    public void setOnContainerLongClickListener(final View.OnLongClickListener onLongClickListener) {
        this.f20341g.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.base.BaseSwipeView.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                View.OnLongClickListener onLongClickListener2;
                if (!BaseSwipeView.this.f20346l && (onLongClickListener2 = onLongClickListener) != null) {
                    onLongClickListener2.onLongClick(view);
                    return true;
                }
                return false;
            }
        });
    }

    public void setOnSwipeListener(OnSwipedListener onSwipedListener) {
        this.f20348n = onSwipedListener;
    }
}
