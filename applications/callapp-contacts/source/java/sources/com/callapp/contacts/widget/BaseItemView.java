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
import com.google.android.material.C14376a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BaseItemView.class */
public abstract class BaseItemView extends FrameLayout {

    /* renamed from: e */
    protected static Boolean f28549e = Prefs.f26663t.get();

    /* renamed from: a */
    protected float f28550a;

    /* renamed from: b */
    protected final int f28551b;

    /* renamed from: c */
    protected int f28552c;

    /* renamed from: d */
    protected GestureDetector f28553d;

    /* renamed from: f */
    protected boolean f28554f;

    /* renamed from: g */
    protected boolean f28555g;

    /* renamed from: h */
    protected boolean f28556h;

    /* renamed from: i */
    protected LazyInflatedViews f28557i;

    /* renamed from: j */
    protected CheckableType f28558j;

    /* renamed from: k */
    private View.OnClickListener f28559k;

    /* renamed from: l */
    private View.OnClickListener f28560l;

    /* renamed from: m */
    private View.OnLongClickListener f28561m;

    /* renamed from: n */
    private View.OnLongClickListener f28562n;

    /* renamed from: o */
    private LinearLayout f28563o;

    /* renamed from: p */
    private LinearLayout f28564p;

    /* renamed from: q */
    private FrameLayout f28565q;

    /* renamed from: r */
    private View f28566r;

    /* renamed from: s */
    private View f28567s;

    /* renamed from: t */
    private View f28568t;

    /* renamed from: u */
    private ProfilePictureView f28569u;

    /* renamed from: v */
    private View.OnClickListener f28570v;

    /* renamed from: w */
    private View.OnLongClickListener f28571w;

    /* renamed from: x */
    private View.OnClickListener f28572x;

    /* renamed from: y */
    private View.OnLongClickListener f28573y;

    /* renamed from: com.callapp.contacts.widget.BaseItemView$8 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/BaseItemView$8.class */
    static /* synthetic */ class C80458 {

        /* renamed from: a */
        static final /* synthetic */ int[] f28584a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CheckableType.values().length];
            f28584a = iArr;
            try {
                iArr[CheckableType.CHECK_BOX_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28584a[CheckableType.CHECK_BOX_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f28584a[CheckableType.IMAGE_FLIP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f28584a[CheckableType.SWITCH.ordinal()] = 4;
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
        this.f28551b = 500;
        this.f28559k = null;
        this.f28560l = null;
        this.f28561m = null;
        this.f28562n = null;
        this.f28554f = false;
        this.f28555g = false;
        this.f28556h = false;
        this.f28558j = CheckableType.IMAGE_FLIP;
        this.f28570v = new View.OnClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseItemView.m26838e(BaseItemView.this);
                if (BaseItemView.this.f28560l != null) {
                    BaseItemView.this.f28560l.onClick(view);
                }
            }
        };
        this.f28571w = new View.OnLongClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.5
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                BaseItemView.m26838e(BaseItemView.this);
                if (BaseItemView.this.f28561m != null) {
                    BaseItemView.this.f28561m.onLongClick(view);
                    return true;
                }
                return false;
            }
        };
        this.f28572x = new View.OnClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseItemView.m26838e(BaseItemView.this);
                if (BaseItemView.this.f28559k != null) {
                    BaseItemView.this.f28559k.onClick(BaseItemView.this.f28564p);
                }
            }
        };
        this.f28573y = new View.OnLongClickListener() { // from class: com.callapp.contacts.widget.BaseItemView.7
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (BaseItemView.this.f28555g) {
                    return false;
                }
                BaseItemView.m26838e(BaseItemView.this);
                if (BaseItemView.this.f28562n == null) {
                    return true;
                }
                return BaseItemView.this.f28562n.onLongClick(BaseItemView.this.f28564p);
            }
        };
        mo26767a();
    }

    /* renamed from: e */
    static /* synthetic */ void m26838e(BaseItemView baseItemView) {
        if (!f28549e.booleanValue()) {
            baseItemView.f28564p.setBackgroundResource(2131232028);
            baseItemView.f28564p.setPressed(true);
            baseItemView.f28564p.setPressed(false);
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.widget.BaseItemView.3
                @Override // java.lang.Runnable
                public void run() {
                    BaseItemView.this.f28564p.setBackgroundColor(ThemeUtils.getColor(2131099686));
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

    /* renamed from: a */
    public void mo26767a() {
        inflate(getContext(), 2131559131, this);
        this.f28563o = (LinearLayout) findViewById(C14376a.C14382f.container);
        this.f28564p = (LinearLayout) findViewById(2131362467);
        this.f28565q = (FrameLayout) findViewById(2131362470);
        LayoutInflater.from(getContext()).inflate(getLayoutResId(), (ViewGroup) this.f28565q, true);
        this.f28557i = new LazyInflatedViews();
        mo26766b();
        this.f28552c = ThemeUtils.getColor(2131099784);
        setLongClickable(false);
        this.f28550a = getResources().getDimension(2131166068);
        this.f28564p.setBackgroundColor(ThemeUtils.getColor(2131099686));
        this.f28564p.setOnClickListener(this.f28572x);
        this.f28564p.setOnLongClickListener(this.f28573y);
        this.f28566r = findViewById(2131363183);
        this.f28567s = findViewById(2131363683);
        this.f28568t = findViewById(2131362305);
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131363565);
        this.f28569u = profilePictureView;
        profilePictureView.setOnClickListener(this.f28570v);
        this.f28569u.setOnLongClickListener(this.f28571w);
        ViewUtils.m27320a(this.f28566r, ThemeUtils.getDrawable(2131232192));
        ViewUtils.m27320a(this.f28567s, ThemeUtils.getDrawable(2131232194));
        if (f28549e.booleanValue()) {
            this.f28564p.setBackgroundResource(2131232165);
            return;
        }
        View lazyView = getLazyView(2131362195);
        lazyView.setBackgroundColor(ThemeUtils.getColor(2131099891));
        ((ImageView) lazyView.findViewById(2131363903)).setColorFilter(new PorterDuffColorFilter(this.f28552c, PorterDuff.Mode.SRC_ATOP));
        ((ImageView) lazyView.findViewById(2131362214)).setColorFilter(new PorterDuffColorFilter(this.f28552c, PorterDuff.Mode.SRC_ATOP));
        ViewUtils.m27320a(lazyView.findViewById(2131364486), ThemeUtils.getDrawable(2131232220));
        ViewUtils.m27320a(lazyView.findViewById(2131363230), ThemeUtils.getDrawable(2131232217));
        this.f28553d = new GestureDetector(getContext(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.LOW) { // from class: com.callapp.contacts.widget.BaseItemView.1

            /* renamed from: b */
            private boolean f28575b = false;

            /* renamed from: c */
            private boolean f28576c = false;

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: a */
            protected final boolean mo26556a(float f) {
                if (BaseItemView.this.isSwipeable()) {
                    BaseItemView.this.f28554f = true;
                    return true;
                }
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: b */
            protected final boolean mo26554b(float f) {
                if (BaseItemView.this.isSwipeable()) {
                    BaseItemView.this.f28554f = true;
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
                BaseItemView.this.f28554f = false;
                BaseItemView.this.f28555g = false;
                this.f28575b = false;
                this.f28576c = false;
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
                BaseItemView.this.f28567s.setVisibility(0);
                BaseItemView.this.f28566r.setVisibility(0);
                int x = (int) BaseItemView.this.f28563o.getX();
                int screenWidth = Activities.getScreenWidth(1) / 3;
                float f3 = x - f;
                float abs = Math.abs(f3);
                float f4 = screenWidth;
                if (abs < f4) {
                    BaseItemView.this.f28563o.setX(f3);
                } else if (x != screenWidth) {
                    if (x < 0) {
                        BaseItemView.this.f28563o.setX(-screenWidth);
                    } else {
                        BaseItemView.this.f28563o.setX(f4);
                    }
                }
                if (!this.f28575b && !this.f28576c && Math.abs(x) > Activities.getScreenWidth(1) / 6) {
                    Animation loadAnimation = AnimationUtils.loadAnimation(BaseItemView.this.getContext(), 2130772004);
                    loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.widget.BaseItemView.1.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            C80371.this.f28576c = false;
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }
                    });
                    BaseItemView.this.findViewById(x < 0 ? 2131363903 : 2131362214).startAnimation(loadAnimation);
                    this.f28575b = true;
                    this.f28576c = true;
                }
                if (Math.abs(x) < Activities.getScreenWidth(1) / 6) {
                    this.f28575b = false;
                }
                BaseItemView.this.f28555g = true;
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return false;
            }
        });
    }

    /* renamed from: a */
    public final void m26843a(int i) {
        this.f28557i.m27491a(i);
    }

    /* renamed from: b */
    public void mo26766b() {
        m26843a(2131362210);
        m26843a(2131361930);
        m26843a(2131361931);
        m26843a(2131363682);
        m26843a(2131364044);
        m26843a(2131363675);
        m26843a(2131362305);
        m26843a(2131362195);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isSwipeable()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1 && motionEvent.getRawX() <= this.f28550a) {
            return false;
        }
        GestureDetector gestureDetector = this.f28553d;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 && this.f28555g) {
                Math.abs((int) this.f28563o.getX());
                Activities.getScreenWidth(1);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f28563o, "translationX", (int) this.f28563o.getX(), BitmapDescriptorFactory.HUE_RED);
                ofFloat.setDuration(500L);
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.widget.BaseItemView.2
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        BaseItemView.this.getLazyView(2131362195).setVisibility(8);
                        BaseItemView.this.f28567s.setVisibility(4);
                        BaseItemView.this.f28566r.setVisibility(4);
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
            } else if (this.f28555g) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    protected abstract int getLayoutResId();

    public View getLazyView(int i) {
        return this.f28557i.m27490a(this, i);
    }

    protected abstract boolean isSwipeable();

    public boolean isViewInflated(int i) {
        return this.f28557i.isViewInflated(i);
    }

    public void setActionButton1(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131361930).setOnClickListener(onClickListener);
            getLazyView(2131361930).setVisibility(0);
        } else if (!isViewInflated(2131361930)) {
        } else {
            getLazyView(2131361930).setOnClickListener(null);
            getLazyView(2131361930).setVisibility(8);
        }
    }

    public void setActionButton2(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131361931).setOnClickListener(onClickListener);
            getLazyView(2131361931).setVisibility(0);
        } else if (!isViewInflated(2131361931)) {
        } else {
            getLazyView(2131361931).setOnClickListener(null);
            getLazyView(2131361931).setVisibility(8);
        }
    }

    public void setActionRadioButton(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            View findViewById = getLazyView(2131363682).findViewById(2131363622);
            findViewById.setOnClickListener(onClickListener);
            findViewById.setVisibility(0);
        } else if (!isViewInflated(2131363682)) {
        } else {
            getLazyView(2131363682).findViewById(2131363622).setOnClickListener(null);
            getLazyView(2131363682).findViewById(2131363622).setVisibility(8);
        }
    }

    public void setCallButton(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            getLazyView(2131362210).setOnClickListener(onClickListener);
            getLazyView(2131362210).setVisibility(0);
            ((ImageView) getLazyView(2131362210)).setColorFilter(new PorterDuffColorFilter(this.f28552c, PorterDuff.Mode.SRC_IN));
        } else if (!isViewInflated(2131362210)) {
        } else {
            getLazyView(2131362210).setOnClickListener(null);
            getLazyView(2131362210).setVisibility(8);
        }
    }

    public void setCheckable(boolean z) {
        int i = C80458.f28584a[this.f28558j.ordinal()];
        if (i == 1) {
            if (z) {
                View view = this.f28568t;
                if (view instanceof ViewStub) {
                    this.f28568t = ((ViewStub) view).inflate();
                }
                this.f28568t.setVisibility(0);
                return;
            }
            View view2 = this.f28568t;
            if (view2 instanceof ViewStub) {
                return;
            }
            view2.setVisibility(8);
        } else if (i == 2) {
            if (z) {
                getLazyView(2131363675).setVisibility(0);
            } else if (!isViewInflated(2131363675)) {
            } else {
                getLazyView(2131363675).setVisibility(8);
            }
        } else if (i != 4) {
        } else {
            if (z) {
                View lazyView = getLazyView(2131364044);
                lazyView.setVisibility(0);
                setupSwitchButton(lazyView);
            } else if (!isViewInflated(2131364044)) {
            } else {
                getLazyView(2131364044).setVisibility(8);
            }
        }
    }

    public void setCheckableType(CheckableType checkableType) {
        this.f28558j = checkableType;
    }

    public void setChecked(boolean z, boolean z2) {
        if (this.f28556h != z) {
            this.f28556h = z;
            int i = C80458.f28584a[this.f28558j.ordinal()];
            if (i == 1) {
                ((Checkable) this.f28568t).setChecked(z);
            } else if (i == 2) {
                ((Checkable) getLazyView(2131363675)).setChecked(z);
            } else if (i == 3) {
                this.f28569u.m26679b(z, z2);
            } else if (i != 4) {
            } else {
                ((Checkable) getLazyView(2131364044).findViewById(2131364042)).setChecked(z);
            }
        }
    }

    public void setHeight(int i) {
        ViewUtils.m27287g(this.f28563o, i);
    }

    public final void setLazyDrawable$4868d30e(int i, int i2) {
        LazyInflatedViews lazyInflatedViews = this.f28557i;
        if (i != 0 || lazyInflatedViews.isViewInflated(2131363678)) {
            ImageView imageView = (ImageView) lazyInflatedViews.m27490a(this, 2131363678);
            ImageUtils.m27529a(imageView, i, new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_ATOP));
            imageView.setVisibility(i == 0 ? 8 : 0);
        }
    }

    public void setLazyTag(int i, Object obj) {
        this.f28557i.setLazyTag(i, obj);
    }

    public void setLazyText(int i, CharSequence charSequence) {
        LazyInflatedViews lazyInflatedViews = this.f28557i;
        if (!StringUtils.m26059a(charSequence) || lazyInflatedViews.isViewInflated(i)) {
            TextView textView = (TextView) lazyInflatedViews.m27490a(this, i);
            textView.setText(charSequence);
            textView.setVisibility(StringUtils.m26059a(charSequence) ? 8 : 0);
        }
    }

    public void setLazyTextColor(int i, int i2) {
        LazyInflatedViews lazyInflatedViews = this.f28557i;
        if (i2 != 0 || lazyInflatedViews.isViewInflated(i)) {
            ((TextView) lazyInflatedViews.m27490a(this, i)).setTextColor(i2);
        }
    }

    public void setOnItemClickListener(View.OnClickListener onClickListener) {
        this.f28559k = onClickListener;
    }

    public void setOnItemLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f28562n = onLongClickListener;
    }

    public void setOnProfileClickListener(View.OnClickListener onClickListener) {
        this.f28560l = onClickListener;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.f28565q.setTag(obj);
        this.f28564p.setTag(obj);
        this.f28563o.setTag(obj);
        setLazyTag(2131362210, obj);
        setLazyTag(2131361930, obj);
        setLazyTag(2131361931, obj);
        setLazyTag(2131363675, obj);
        setLazyTag(2131363682, obj);
        setLazyTag(2131364044, obj);
    }
}
