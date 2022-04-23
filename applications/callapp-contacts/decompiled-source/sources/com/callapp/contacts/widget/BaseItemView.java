package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.LazyInflatedViews;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BaseItemView.class */
public abstract class BaseItemView extends FrameLayout {
    protected static Boolean e = Prefs.t.get();

    /* renamed from: a  reason: collision with root package name */
    protected float f16397a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f16398b;

    /* renamed from: c  reason: collision with root package name */
    protected int f16399c;

    /* renamed from: d  reason: collision with root package name */
    protected GestureDetector f16400d;
    protected boolean f;
    protected boolean g;
    protected boolean h;
    protected LazyInflatedViews i;
    protected CheckableType j;
    private View.OnClickListener k;
    private View.OnClickListener l;
    private View.OnLongClickListener m;
    private View.OnLongClickListener n;
    private LinearLayout o;
    private LinearLayout p;
    private FrameLayout q;
    private View r;
    private View s;
    private View t;
    private ProfilePictureView u;
    private View.OnClickListener v;
    private View.OnLongClickListener w;
    private View.OnClickListener x;
    private View.OnLongClickListener y;

    /* renamed from: com.callapp.contacts.widget.BaseItemView$8  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BaseItemView$8.class */
    static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16411a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CheckableType.values().length];
            f16411a = iArr;
            try {
                iArr[CheckableType.CHECK_BOX_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16411a[CheckableType.CHECK_BOX_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f16411a[CheckableType.IMAGE_FLIP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f16411a[CheckableType.SWITCH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BaseItemView$CheckableType.class */
    public enum CheckableType {
        CHECK_BOX_LEFT,
        CHECK_BOX_RIGHT,
        IMAGE_FLIP,
        SWITCH
    }

    public BaseItemView(Context context) {
        this(context, null);
    }

    public BaseItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16398b = 500;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.f = false;
        this.g = false;
        this.h = false;
        this.j = CheckableType.IMAGE_FLIP;
        this.v = new View.OnClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseItemView.e(BaseItemView.this);
                if (BaseItemView.this.l != null) {
                    BaseItemView.this.l.onClick(view);
                }
            }
        };
        this.w = new View.OnLongClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.5
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                BaseItemView.e(BaseItemView.this);
                if (BaseItemView.this.m == null) {
                    return false;
                }
                BaseItemView.this.m.onLongClick(view);
                return true;
            }
        };
        this.x = new View.OnClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseItemView.e(BaseItemView.this);
                if (BaseItemView.this.k != null) {
                    BaseItemView.this.k.onClick(BaseItemView.this.p);
                }
            }
        };
        this.y = new View.OnLongClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.7
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (BaseItemView.this.g) {
                    return false;
                }
                BaseItemView.e(BaseItemView.this);
                if (BaseItemView.this.n != null) {
                    return BaseItemView.this.n.onLongClick(BaseItemView.this.p);
                }
                return true;
            }
        };
        a();
    }

    static /* synthetic */ void e(BaseItemView baseItemView) {
        if (!e.booleanValue()) {
            baseItemView.p.setBackgroundResource(2131232028);
            baseItemView.p.setPressed(true);
            baseItemView.p.setPressed(false);
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.widget.BaseItemView.3
                @Override // java.lang.Runnable
                public void run() {
                    BaseItemView.this.p.setBackgroundColor(ThemeUtils.getColor(2131099686));
                }
            }, 400L);
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r3v7, types: [int[], int[][]] */
    private void setupSwitchButton(View view) {
        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(2131364042);
        ColorStateList colorStateList = new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{ThemeUtils.getColor(2131099890), ThemeUtils.getColor(2131099784)});
        switchCompat.setTrackTintList(new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{ThemeUtils.getColor(2131099891), ThemeUtils.getColor(2131099786)}));
        switchCompat.setThumbTintList(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        inflate(getContext(), 2131559131, this);
        this.o = (LinearLayout) findViewById(a.f.container);
        this.p = (LinearLayout) findViewById(2131362467);
        this.q = (FrameLayout) findViewById(2131362470);
        LayoutInflater.from(getContext()).inflate(getLayoutResId(), (ViewGroup) this.q, true);
        this.i = new LazyInflatedViews();
        b();
        this.f16399c = ThemeUtils.getColor(2131099784);
        setLongClickable(false);
        this.f16397a = getResources().getDimension(2131166068);
        this.p.setBackgroundColor(ThemeUtils.getColor(2131099686));
        this.p.setOnClickListener(this.x);
        this.p.setOnLongClickListener(this.y);
        this.r = findViewById(2131363183);
        this.s = findViewById(2131363683);
        this.t = findViewById(2131362305);
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131363565);
        this.u = profilePictureView;
        profilePictureView.setOnClickListener(this.v);
        this.u.setOnLongClickListener(this.w);
        ViewUtils.a(this.r, ThemeUtils.getDrawable(2131232192));
        ViewUtils.a(this.s, ThemeUtils.getDrawable(2131232194));
        if (e.booleanValue()) {
            this.p.setBackgroundResource(2131232165);
            return;
        }
        View lazyView = getLazyView(2131362195);
        lazyView.setBackgroundColor(ThemeUtils.getColor(2131099891));
        ((ImageView) lazyView.findViewById(2131363903)).setColorFilter(new PorterDuffColorFilter(this.f16399c, PorterDuff.Mode.SRC_ATOP));
        ((ImageView) lazyView.findViewById(2131362214)).setColorFilter(new PorterDuffColorFilter(this.f16399c, PorterDuff.Mode.SRC_ATOP));
        ViewUtils.a(lazyView.findViewById(2131364486), ThemeUtils.getDrawable(2131232220));
        ViewUtils.a(lazyView.findViewById(2131363230), ThemeUtils.getDrawable(2131232217));
        this.f16400d = new GestureDetector(getContext(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.LOW) { // from class: com.callapp.contacts.widget.BaseItemView.1

            /* renamed from: b  reason: collision with root package name */
            private boolean f16402b = false;

            /* renamed from: c  reason: collision with root package name */
            private boolean f16403c = false;

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            protected final boolean a(float f) {
                if (!BaseItemView.this.isSwipeable()) {
                    return true;
                }
                BaseItemView.this.f = true;
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            protected final boolean b(float f) {
                if (!BaseItemView.this.isSwipeable()) {
                    return true;
                }
                BaseItemView.this.f = true;
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
                BaseItemView.this.f = false;
                BaseItemView.this.g = false;
                this.f16402b = false;
                this.f16403c = false;
                return false;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!BaseItemView.this.isSwipeable()) {
                    return true;
                }
                BaseItemView.this.requestDisallowInterceptTouchEvent(true);
                BaseItemView.this.getLazyView(2131362195).setVisibility(0);
                BaseItemView.this.s.setVisibility(0);
                BaseItemView.this.r.setVisibility(0);
                int x = (int) BaseItemView.this.o.getX();
                int screenWidth = Activities.getScreenWidth(1) / 3;
                float f3 = x - f;
                float abs = Math.abs(f3);
                float f4 = screenWidth;
                if (abs < f4) {
                    BaseItemView.this.o.setX(f3);
                } else if (x != screenWidth) {
                    if (x < 0) {
                        BaseItemView.this.o.setX(-screenWidth);
                    } else {
                        BaseItemView.this.o.setX(f4);
                    }
                }
                if (!this.f16402b && !this.f16403c && Math.abs(x) > Activities.getScreenWidth(1) / 6) {
                    Animation loadAnimation = AnimationUtils.loadAnimation(BaseItemView.this.getContext(), 2130772004);
                    loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.widget.BaseItemView.1.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            AnonymousClass1.this.f16403c = false;
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }
                    });
                    BaseItemView.this.findViewById(x < 0 ? 2131363903 : 2131362214).startAnimation(loadAnimation);
                    this.f16402b = true;
                    this.f16403c = true;
                }
                if (Math.abs(x) < Activities.getScreenWidth(1) / 6) {
                    this.f16402b = false;
                }
                BaseItemView.this.g = true;
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        this.i.a(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        a(2131362210);
        a(2131361930);
        a(2131361931);
        a(2131363682);
        a(2131364044);
        a(2131363675);
        a(2131362305);
        a(2131362195);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isSwipeable()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1 && motionEvent.getRawX() <= this.f16397a) {
            return false;
        }
        GestureDetector gestureDetector = this.f16400d;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 && this.g) {
                Math.abs((int) this.o.getX());
                Activities.getScreenWidth(1);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.o, "translationX", (int) this.o.getX(), BitmapDescriptorFactory.HUE_RED);
                ofFloat.setDuration(500L);
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.BaseItemView.2
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        BaseItemView.this.getLazyView(2131362195).setVisibility(8);
                        BaseItemView.this.s.setVisibility(4);
                        BaseItemView.this.r.setVisibility(4);
                        BaseItemView.this.requestDisallowInterceptTouchEvent(false);
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
            } else if (this.g) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    protected abstract int getLayoutResId();

    /* JADX INFO: Access modifiers changed from: protected */
    public View getLazyView(int i) {
        return this.i.a(this, i);
    }

    protected abstract boolean isSwipeable();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isViewInflated(int i) {
        return this.i.isViewInflated(i);
    }

    public void setActionButton1(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131361930).setOnClickListener(onClickListener);
            getLazyView(2131361930).setVisibility(0);
        } else if (isViewInflated(2131361930)) {
            getLazyView(2131361930).setOnClickListener(null);
            getLazyView(2131361930).setVisibility(8);
        }
    }

    public void setActionButton2(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131361931).setOnClickListener(onClickListener);
            getLazyView(2131361931).setVisibility(0);
        } else if (isViewInflated(2131361931)) {
            getLazyView(2131361931).setOnClickListener(null);
            getLazyView(2131361931).setVisibility(8);
        }
    }

    public void setActionRadioButton(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            View findViewById = getLazyView(2131363682).findViewById(2131363622);
            findViewById.setOnClickListener(onClickListener);
            findViewById.setVisibility(0);
        } else if (isViewInflated(2131363682)) {
            getLazyView(2131363682).findViewById(2131363622).setOnClickListener(null);
            getLazyView(2131363682).findViewById(2131363622).setVisibility(8);
        }
    }

    public void setCallButton(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131362210).setOnClickListener(onClickListener);
            getLazyView(2131362210).setVisibility(0);
            ((ImageView) getLazyView(2131362210)).setColorFilter(new PorterDuffColorFilter(this.f16399c, PorterDuff.Mode.SRC_IN));
        } else if (isViewInflated(2131362210)) {
            getLazyView(2131362210).setOnClickListener(null);
            getLazyView(2131362210).setVisibility(8);
        }
    }

    public void setCheckable(boolean z) {
        int i = AnonymousClass8.f16411a[this.j.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 4) {
                    if (z) {
                        View lazyView = getLazyView(2131364044);
                        lazyView.setVisibility(0);
                        setupSwitchButton(lazyView);
                    } else if (isViewInflated(2131364044)) {
                        getLazyView(2131364044).setVisibility(8);
                    }
                }
            } else if (z) {
                getLazyView(2131363675).setVisibility(0);
            } else if (isViewInflated(2131363675)) {
                getLazyView(2131363675).setVisibility(8);
            }
        } else if (z) {
            View view = this.t;
            if (view instanceof ViewStub) {
                this.t = ((ViewStub) view).inflate();
            }
            this.t.setVisibility(0);
        } else {
            View view2 = this.t;
            if (!(view2 instanceof ViewStub)) {
                view2.setVisibility(8);
            }
        }
    }

    public void setCheckableType(CheckableType checkableType) {
        this.j = checkableType;
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.h != z) {
            this.h = z;
            int i = AnonymousClass8.f16411a[this.j.ordinal()];
            if (i == 1) {
                ((Checkable) this.t).setChecked(z);
            } else if (i == 2) {
                ((Checkable) getLazyView(2131363675)).setChecked(z);
            } else if (i == 3) {
                this.u.b(z, z2);
            } else if (i == 4) {
                ((Checkable) getLazyView(2131364044).findViewById(2131364042)).setChecked(z);
            }
        }
    }

    public void setHeight(int i) {
        ViewUtils.g(this.o, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setLazyDrawable$4868d30e(int i, int i2) {
        LazyInflatedViews lazyInflatedViews = this.i;
        if (i != 0 || lazyInflatedViews.isViewInflated(2131363678)) {
            ImageView imageView = (ImageView) lazyInflatedViews.a(this, 2131363678);
            ImageUtils.a(imageView, i, new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_ATOP));
            imageView.setVisibility(i == 0 ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLazyTag(int i, Object obj) {
        this.i.setLazyTag(i, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLazyText(int i, CharSequence charSequence) {
        LazyInflatedViews lazyInflatedViews = this.i;
        if (!StringUtils.a(charSequence) || lazyInflatedViews.isViewInflated(i)) {
            TextView textView = (TextView) lazyInflatedViews.a(this, i);
            textView.setText(charSequence);
            textView.setVisibility(StringUtils.a(charSequence) ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLazyTextColor(int i, int i2) {
        LazyInflatedViews lazyInflatedViews = this.i;
        if (i2 != 0 || lazyInflatedViews.isViewInflated(i)) {
            ((TextView) lazyInflatedViews.a(this, i)).setTextColor(i2);
        }
    }

    public void setOnItemClickListener(View.OnClickListener onClickListener) {
        this.k = onClickListener;
    }

    public void setOnItemLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.n = onLongClickListener;
    }

    public void setOnProfileClickListener(View.OnClickListener onClickListener) {
        this.l = onClickListener;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.q.setTag(obj);
        this.p.setTag(obj);
        this.o.setTag(obj);
        setLazyTag(2131362210, obj);
        setLazyTag(2131361930, obj);
        setLazyTag(2131361931, obj);
        setLazyTag(2131363675, obj);
        setLazyTag(2131363682, obj);
        setLazyTag(2131364044, obj);
    }
}
