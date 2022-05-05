package io.github.douglasjunior.androidSimpleTooltip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.StringRes;
/* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/SimpleTooltip.class */
public class SimpleTooltip implements PopupWindow.OnDismissListener {

    /* renamed from: X */
    private static final String f14986X = SimpleTooltip.class.getSimpleName();

    /* renamed from: Y */
    private static final int f14987Y = C2102R.style.simpletooltip_default;

    /* renamed from: Z */
    private static final int f14988Z = C2102R.C2103color.simpletooltip_background;

    /* renamed from: a0 */
    private static final int f14989a0 = C2102R.C2103color.simpletooltip_text;

    /* renamed from: b0 */
    private static final int f14990b0 = C2102R.C2103color.simpletooltip_arrow;

    /* renamed from: c0 */
    private static final int f14991c0 = C2102R.dimen.simpletooltip_margin;

    /* renamed from: d0 */
    private static final int f14992d0 = C2102R.dimen.simpletooltip_padding;

    /* renamed from: e0 */
    private static final int f14993e0 = C2102R.dimen.simpletooltip_animation_padding;

    /* renamed from: f0 */
    private static final int f14994f0 = C2102R.integer.simpletooltip_animation_duration;

    /* renamed from: g0 */
    private static final int f14995g0 = C2102R.dimen.simpletooltip_arrow_width;

    /* renamed from: h0 */
    private static final int f14996h0 = C2102R.dimen.simpletooltip_arrow_height;

    /* renamed from: i0 */
    private static final int f14997i0 = C2102R.dimen.simpletooltip_overlay_offset;

    /* renamed from: A */
    private final boolean f14998A;

    /* renamed from: B */
    private ImageView f14999B;

    /* renamed from: C */
    private final Drawable f15000C;

    /* renamed from: D */
    private final boolean f15001D;

    /* renamed from: E */
    private AnimatorSet f15002E;

    /* renamed from: F */
    private final float f15003F;

    /* renamed from: G */
    private final float f15004G;

    /* renamed from: H */
    private final float f15005H;

    /* renamed from: I */
    private final long f15006I;

    /* renamed from: J */
    private final float f15007J;

    /* renamed from: K */
    private final float f15008K;

    /* renamed from: L */
    private final boolean f15009L;

    /* renamed from: M */
    private boolean f15010M;

    /* renamed from: N */
    private int f15011N;

    /* renamed from: O */
    private int f15012O;

    /* renamed from: P */
    private int f15013P;

    /* renamed from: Q */
    private boolean f15014Q;

    /* renamed from: R */
    private final View.OnTouchListener f15015R;

    /* renamed from: S */
    private final ViewTreeObserver.OnGlobalLayoutListener f15016S;

    /* renamed from: T */
    private final ViewTreeObserver.OnGlobalLayoutListener f15017T;

    /* renamed from: U */
    private final ViewTreeObserver.OnGlobalLayoutListener f15018U;

    /* renamed from: V */
    private final ViewTreeObserver.OnGlobalLayoutListener f15019V;

    /* renamed from: W */
    private final ViewTreeObserver.OnGlobalLayoutListener f15020W;

    /* renamed from: f */
    private final Context f15021f;

    /* renamed from: g */
    private OnDismissListener f15022g;

    /* renamed from: h */
    private OnShowListener f15023h;

    /* renamed from: i */
    private PopupWindow f15024i;

    /* renamed from: j */
    private final int f15025j;

    /* renamed from: k */
    private final int f15026k;

    /* renamed from: l */
    private final boolean f15027l;

    /* renamed from: m */
    private final boolean f15028m;

    /* renamed from: n */
    private final boolean f15029n;

    /* renamed from: o */
    private final View f15030o;

    /* renamed from: p */
    private View f15031p;
    @IdRes

    /* renamed from: q */
    private final int f15032q;

    /* renamed from: r */
    private final int f15033r;

    /* renamed from: s */
    private final CharSequence f15034s;

    /* renamed from: t */
    private final View f15035t;

    /* renamed from: u */
    private final boolean f15036u;

    /* renamed from: v */
    private final float f15037v;

    /* renamed from: w */
    private final boolean f15038w;

    /* renamed from: x */
    private final float f15039x;

    /* renamed from: y */
    private View f15040y;

    /* renamed from: z */
    private ViewGroup f15041z;

    /* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/SimpleTooltip$Builder.class */
    public static class Builder {

        /* renamed from: A */
        private float f15051A;

        /* renamed from: B */
        private float f15052B;

        /* renamed from: C */
        private boolean f15053C;

        /* renamed from: a */
        private final Context f15059a;

        /* renamed from: e */
        private View f15063e;

        /* renamed from: h */
        private View f15066h;

        /* renamed from: n */
        private float f15072n;

        /* renamed from: p */
        private Drawable f15074p;

        /* renamed from: u */
        private OnDismissListener f15079u;

        /* renamed from: v */
        private OnShowListener f15080v;

        /* renamed from: w */
        private long f15081w;

        /* renamed from: x */
        private int f15082x;

        /* renamed from: y */
        private int f15083y;

        /* renamed from: z */
        private int f15084z;

        /* renamed from: b */
        private boolean f15060b = true;

        /* renamed from: c */
        private boolean f15061c = true;

        /* renamed from: d */
        private boolean f15062d = false;
        @IdRes

        /* renamed from: f */
        private int f15064f = 16908308;

        /* renamed from: g */
        private CharSequence f15065g = "";

        /* renamed from: i */
        private int f15067i = 4;

        /* renamed from: j */
        private int f15068j = 80;

        /* renamed from: k */
        private boolean f15069k = true;

        /* renamed from: l */
        private float f15070l = -1.0f;

        /* renamed from: m */
        private boolean f15071m = true;

        /* renamed from: o */
        private boolean f15073o = true;

        /* renamed from: q */
        private boolean f15075q = false;

        /* renamed from: r */
        private float f15076r = -1.0f;

        /* renamed from: s */
        private float f15077s = -1.0f;

        /* renamed from: t */
        private float f15078t = -1.0f;

        /* renamed from: D */
        private int f15054D = 0;

        /* renamed from: E */
        private int f15055E = -2;

        /* renamed from: F */
        private int f15056F = -2;

        /* renamed from: G */
        private boolean f15057G = false;

        /* renamed from: H */
        private int f15058H = 0;

        public Builder(Context context) {
            this.f15059a = context;
        }

        /* renamed from: L */
        private void m4561L() throws IllegalArgumentException {
            if (this.f15059a == null) {
                throw new IllegalArgumentException("Context not specified.");
            } else if (this.f15066h == null) {
                throw new IllegalArgumentException("Anchor view not specified.");
            }
        }

        /* renamed from: F */
        public Builder m4567F(View view) {
            this.f15066h = view;
            return this;
        }

        /* renamed from: G */
        public SimpleTooltip m4566G() throws IllegalArgumentException {
            m4561L();
            if (this.f15082x == 0) {
                this.f15082x = SimpleTooltipUtils.m4529d(this.f15059a, SimpleTooltip.f14988Z);
            }
            if (this.f15058H == 0) {
                this.f15058H = -16777216;
            }
            if (this.f15083y == 0) {
                this.f15083y = SimpleTooltipUtils.m4529d(this.f15059a, SimpleTooltip.f14989a0);
            }
            if (this.f15063e == null) {
                TextView textView = new TextView(this.f15059a);
                SimpleTooltipUtils.m4525h(textView, SimpleTooltip.f14987Y);
                textView.setBackgroundColor(this.f15082x);
                textView.setTextColor(this.f15083y);
                this.f15063e = textView;
            }
            if (this.f15084z == 0) {
                this.f15084z = SimpleTooltipUtils.m4529d(this.f15059a, SimpleTooltip.f14990b0);
            }
            if (this.f15076r < 0.0f) {
                this.f15076r = this.f15059a.getResources().getDimension(SimpleTooltip.f14991c0);
            }
            if (this.f15077s < 0.0f) {
                this.f15077s = this.f15059a.getResources().getDimension(SimpleTooltip.f14992d0);
            }
            if (this.f15078t < 0.0f) {
                this.f15078t = this.f15059a.getResources().getDimension(SimpleTooltip.f14993e0);
            }
            if (this.f15081w == 0) {
                this.f15081w = this.f15059a.getResources().getInteger(SimpleTooltip.f14994f0);
            }
            if (Build.VERSION.SDK_INT < 11) {
                this.f15075q = false;
            }
            if (this.f15073o) {
                if (this.f15067i == 4) {
                    this.f15067i = SimpleTooltipUtils.m4521l(this.f15068j);
                }
                if (this.f15074p == null) {
                    this.f15074p = new ArrowDrawable(this.f15084z, this.f15067i);
                }
                if (this.f15052B == 0.0f) {
                    this.f15052B = this.f15059a.getResources().getDimension(SimpleTooltip.f14995g0);
                }
                if (this.f15051A == 0.0f) {
                    this.f15051A = this.f15059a.getResources().getDimension(SimpleTooltip.f14996h0);
                }
            }
            int i = this.f15054D;
            if (i < 0 || i > 1) {
                this.f15054D = 0;
            }
            if (this.f15070l < 0.0f) {
                this.f15070l = this.f15059a.getResources().getDimension(SimpleTooltip.f14997i0);
            }
            return new SimpleTooltip(this);
        }

        /* renamed from: H */
        public Builder m4565H(@LayoutRes int i) {
            this.f15063e = ((LayoutInflater) this.f15059a.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null, false);
            this.f15064f = 0;
            return this;
        }

        /* renamed from: I */
        public Builder m4564I(boolean z) {
            this.f15060b = z;
            return this;
        }

        /* renamed from: J */
        public Builder m4563J(OnDismissListener onDismissListener) {
            this.f15079u = onDismissListener;
            return this;
        }

        /* renamed from: K */
        public Builder m4562K(@StringRes int i) {
            this.f15065g = this.f15059a.getString(i);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/SimpleTooltip$OnDismissListener.class */
    public interface OnDismissListener {
        /* renamed from: a */
        void mo4534a(SimpleTooltip simpleTooltip);
    }

    /* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/SimpleTooltip$OnShowListener.class */
    public interface OnShowListener {
        /* renamed from: a */
        void m4533a(SimpleTooltip simpleTooltip);
    }

    private SimpleTooltip(Builder builder) {
        this.f15010M = false;
        this.f15015R = new View.OnTouchListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return SimpleTooltip.this.f15029n;
            }
        };
        this.f15016S = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                PopupWindow popupWindow = SimpleTooltip.this.f15024i;
                if (popupWindow != null && !SimpleTooltip.this.f15010M) {
                    if (SimpleTooltip.this.f15039x <= 0.0f || SimpleTooltip.this.f15030o.getWidth() <= SimpleTooltip.this.f15039x) {
                        SimpleTooltipUtils.m4526g(popupWindow.getContentView(), this);
                        popupWindow.getContentView().getViewTreeObserver().addOnGlobalLayoutListener(SimpleTooltip.this.f15017T);
                        PointF I = SimpleTooltip.this.m4609I();
                        popupWindow.setClippingEnabled(true);
                        popupWindow.update((int) I.x, (int) I.y, popupWindow.getWidth(), popupWindow.getHeight());
                        popupWindow.getContentView().requestLayout();
                        SimpleTooltip.this.m4606L();
                        return;
                    }
                    SimpleTooltipUtils.m4524i(SimpleTooltip.this.f15030o, SimpleTooltip.this.f15039x);
                    popupWindow.update(-2, -2);
                }
            }
        };
        this.f15017T = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.5
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                float f;
                float f2;
                PopupWindow popupWindow = SimpleTooltip.this.f15024i;
                if (popupWindow != null && !SimpleTooltip.this.f15010M) {
                    SimpleTooltipUtils.m4526g(popupWindow.getContentView(), this);
                    popupWindow.getContentView().getViewTreeObserver().addOnGlobalLayoutListener(SimpleTooltip.this.f15019V);
                    popupWindow.getContentView().getViewTreeObserver().addOnGlobalLayoutListener(SimpleTooltip.this.f15018U);
                    if (SimpleTooltip.this.f14998A) {
                        RectF b = SimpleTooltipUtils.m4531b(SimpleTooltip.this.f15035t);
                        RectF b2 = SimpleTooltipUtils.m4531b(SimpleTooltip.this.f15031p);
                        int i = -1;
                        if (SimpleTooltip.this.f15026k == 1 || SimpleTooltip.this.f15026k == 3) {
                            f2 = SimpleTooltip.this.f15031p.getPaddingLeft() + SimpleTooltipUtils.m4527f(2.0f);
                            float width = ((b2.width() / 2.0f) - (SimpleTooltip.this.f14999B.getWidth() / 2.0f)) - (b2.centerX() - b.centerX());
                            if (width > f2) {
                                f2 = (((float) SimpleTooltip.this.f14999B.getWidth()) + width) + f2 > b2.width() ? (b2.width() - SimpleTooltip.this.f14999B.getWidth()) - f2 : width;
                            }
                            float top = SimpleTooltip.this.f14999B.getTop();
                            if (SimpleTooltip.this.f15026k != 3) {
                                i = 1;
                            }
                            f = i + top;
                        } else {
                            float paddingTop = SimpleTooltip.this.f15031p.getPaddingTop() + SimpleTooltipUtils.m4527f(2.0f);
                            float height = ((b2.height() / 2.0f) - (SimpleTooltip.this.f14999B.getHeight() / 2.0f)) - (b2.centerY() - b.centerY());
                            f = paddingTop;
                            if (height > paddingTop) {
                                f = (((float) SimpleTooltip.this.f14999B.getHeight()) + height) + paddingTop > b2.height() ? (b2.height() - SimpleTooltip.this.f14999B.getHeight()) - paddingTop : height;
                            }
                            float left = SimpleTooltip.this.f14999B.getLeft();
                            if (SimpleTooltip.this.f15026k != 2) {
                                i = 1;
                            }
                            f2 = left + i;
                        }
                        SimpleTooltipUtils.m4523j(SimpleTooltip.this.f14999B, (int) f2);
                        SimpleTooltipUtils.m4522k(SimpleTooltip.this.f14999B, (int) f);
                    }
                    popupWindow.getContentView().requestLayout();
                }
            }
        };
        this.f15018U = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                PopupWindow popupWindow = SimpleTooltip.this.f15024i;
                if (popupWindow != null && !SimpleTooltip.this.f15010M) {
                    SimpleTooltipUtils.m4526g(popupWindow.getContentView(), this);
                    if (SimpleTooltip.this.f15023h != null) {
                        SimpleTooltip.this.f15023h.m4533a(SimpleTooltip.this);
                    }
                    SimpleTooltip.this.f15023h = null;
                    SimpleTooltip.this.f15031p.setVisibility(0);
                }
            }
        };
        this.f15019V = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.7
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                PopupWindow popupWindow = SimpleTooltip.this.f15024i;
                if (popupWindow != null && !SimpleTooltip.this.f15010M) {
                    SimpleTooltipUtils.m4526g(popupWindow.getContentView(), this);
                    if (SimpleTooltip.this.f15001D) {
                        SimpleTooltip.this.m4600R();
                    }
                    popupWindow.getContentView().requestLayout();
                }
            }
        };
        this.f15020W = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (SimpleTooltip.this.f15024i != null && !SimpleTooltip.this.f15010M && !SimpleTooltip.this.f15041z.isShown()) {
                    SimpleTooltip.this.m4605M();
                }
            }
        };
        this.f15021f = builder.f15059a;
        this.f15025j = builder.f15068j;
        this.f15033r = builder.f15058H;
        this.f15026k = builder.f15067i;
        this.f15027l = builder.f15060b;
        this.f15028m = builder.f15061c;
        this.f15029n = builder.f15062d;
        this.f15030o = builder.f15063e;
        this.f15032q = builder.f15064f;
        this.f15034s = builder.f15065g;
        this.f15035t = builder.f15066h;
        this.f15036u = builder.f15069k;
        this.f15037v = builder.f15070l;
        this.f15038w = builder.f15071m;
        this.f15039x = builder.f15072n;
        this.f14998A = builder.f15073o;
        this.f15007J = builder.f15052B;
        this.f15008K = builder.f15051A;
        this.f15000C = builder.f15074p;
        this.f15001D = builder.f15075q;
        this.f15003F = builder.f15076r;
        this.f15004G = builder.f15077s;
        this.f15005H = builder.f15078t;
        this.f15006I = builder.f15081w;
        this.f15022g = builder.f15079u;
        this.f15023h = builder.f15080v;
        this.f15009L = builder.f15053C;
        this.f15041z = SimpleTooltipUtils.m4530c(this.f15035t);
        this.f15011N = builder.f15054D;
        this.f15014Q = builder.f15057G;
        this.f15012O = builder.f15055E;
        this.f15013P = builder.f15056F;
        m4603O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public PointF m4609I() {
        PointF pointF = new PointF();
        RectF a = SimpleTooltipUtils.m4532a(this.f15035t);
        PointF pointF2 = new PointF(a.centerX(), a.centerY());
        int i = this.f15025j;
        if (i == 17) {
            pointF.x = pointF2.x - (this.f15024i.getContentView().getWidth() / 2.0f);
            pointF.y = pointF2.y - (this.f15024i.getContentView().getHeight() / 2.0f);
        } else if (i == 48) {
            pointF.x = pointF2.x - (this.f15024i.getContentView().getWidth() / 2.0f);
            pointF.y = (a.top - this.f15024i.getContentView().getHeight()) - this.f15003F;
        } else if (i == 80) {
            pointF.x = pointF2.x - (this.f15024i.getContentView().getWidth() / 2.0f);
            pointF.y = a.bottom + this.f15003F;
        } else if (i == 8388611) {
            pointF.x = (a.left - this.f15024i.getContentView().getWidth()) - this.f15003F;
            pointF.y = pointF2.y - (this.f15024i.getContentView().getHeight() / 2.0f);
        } else if (i == 8388613) {
            pointF.x = a.right + this.f15003F;
            pointF.y = pointF2.y - (this.f15024i.getContentView().getHeight() / 2.0f);
        } else {
            throw new IllegalArgumentException("Gravity must have be CENTER, START, END, TOP or BOTTOM.");
        }
        return pointF;
    }

    /* renamed from: J */
    private void m4608J() {
        View view = this.f15030o;
        if (view instanceof TextView) {
            ((TextView) view).setText(this.f15034s);
        } else {
            TextView textView = (TextView) view.findViewById(this.f15032q);
            if (textView != null) {
                textView.setText(this.f15034s);
            }
        }
        View view2 = this.f15030o;
        float f = this.f15004G;
        view2.setPadding((int) f, (int) f, (int) f, (int) f);
        LinearLayout linearLayout = new LinearLayout(this.f15021f);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        int i = this.f15026k;
        linearLayout.setOrientation((i == 0 || i == 2) ? 0 : 1);
        int i2 = (int) (this.f15001D ? this.f15005H : 0.0f);
        linearLayout.setPadding(i2, i2, i2, i2);
        if (this.f14998A) {
            ImageView imageView = new ImageView(this.f15021f);
            this.f14999B = imageView;
            imageView.setImageDrawable(this.f15000C);
            int i3 = this.f15026k;
            LinearLayout.LayoutParams layoutParams = (i3 == 1 || i3 == 3) ? new LinearLayout.LayoutParams((int) this.f15007J, (int) this.f15008K, 0.0f) : new LinearLayout.LayoutParams((int) this.f15008K, (int) this.f15007J, 0.0f);
            layoutParams.gravity = 17;
            this.f14999B.setLayoutParams(layoutParams);
            int i4 = this.f15026k;
            if (i4 == 3 || i4 == 2) {
                linearLayout.addView(this.f15030o);
                linearLayout.addView(this.f14999B);
            } else {
                linearLayout.addView(this.f14999B);
                linearLayout.addView(this.f15030o);
            }
        } else {
            linearLayout.addView(this.f15030o);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.f15012O, this.f15013P, 0.0f);
        layoutParams2.gravity = 17;
        this.f15030o.setLayoutParams(layoutParams2);
        this.f15031p = linearLayout;
        linearLayout.setVisibility(4);
        this.f15024i.setContentView(this.f15031p);
    }

    /* renamed from: K */
    private void m4607K() {
        PopupWindow popupWindow = new PopupWindow(this.f15021f, (AttributeSet) null, 16842870);
        this.f15024i = popupWindow;
        popupWindow.setOnDismissListener(this);
        this.f15024i.setWidth(this.f15012O);
        this.f15024i.setHeight(this.f15013P);
        this.f15024i.setBackgroundDrawable(new ColorDrawable(0));
        this.f15024i.setOutsideTouchable(true);
        this.f15024i.setTouchable(true);
        this.f15024i.setTouchInterceptor(new View.OnTouchListener() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (!SimpleTooltip.this.f15028m && motionEvent.getAction() == 0 && (x < 0 || x >= SimpleTooltip.this.f15031p.getMeasuredWidth() || y < 0 || y >= SimpleTooltip.this.f15031p.getMeasuredHeight())) {
                    return true;
                }
                if (!SimpleTooltip.this.f15028m && motionEvent.getAction() == 4) {
                    return true;
                }
                if (motionEvent.getAction() != 0 || !SimpleTooltip.this.f15027l) {
                    return false;
                }
                SimpleTooltip.this.m4605M();
                return true;
            }
        });
        this.f15024i.setClippingEnabled(false);
        this.f15024i.setFocusable(this.f15009L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m4606L() {
        if (!this.f15014Q) {
            View view = this.f15036u ? new View(this.f15021f) : new OverlayView(this.f15021f, this.f15035t, this.f15011N, this.f15037v, this.f15033r);
            this.f15040y = view;
            if (this.f15038w) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            } else {
                view.setLayoutParams(new ViewGroup.LayoutParams(this.f15041z.getWidth(), this.f15041z.getHeight()));
            }
            this.f15040y.setOnTouchListener(this.f15015R);
            this.f15041z.addView(this.f15040y);
        }
    }

    /* renamed from: O */
    private void m4603O() {
        m4607K();
        m4608J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* renamed from: R */
    public void m4600R() {
        int i = this.f15025j;
        String str = (i == 48 || i == 80) ? "translationY" : "translationX";
        View view = this.f15031p;
        float f = this.f15005H;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, str, -f, f);
        ofFloat.setDuration(this.f15006I);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        View view2 = this.f15031p;
        float f2 = this.f15005H;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, str, f2, -f2);
        ofFloat2.setDuration(this.f15006I);
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        this.f15002E = animatorSet;
        animatorSet.playSequentially(ofFloat, ofFloat2);
        this.f15002E.addListener(new AnimatorListenerAdapter() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!SimpleTooltip.this.f15010M && SimpleTooltip.this.m4602P()) {
                    animator.start();
                }
            }
        });
        this.f15002E.start();
    }

    /* renamed from: S */
    private void m4599S() {
        if (this.f15010M) {
            throw new IllegalArgumentException("Tooltip has been dismissed.");
        }
    }

    /* renamed from: M */
    public void m4605M() {
        if (!this.f15010M) {
            this.f15010M = true;
            PopupWindow popupWindow = this.f15024i;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        }
    }

    /* renamed from: N */
    public <T extends View> T m4604N(int i) {
        return (T) this.f15031p.findViewById(i);
    }

    /* renamed from: P */
    public boolean m4602P() {
        PopupWindow popupWindow = this.f15024i;
        return popupWindow != null && popupWindow.isShowing();
    }

    /* renamed from: Q */
    public void m4601Q() {
        m4599S();
        this.f15031p.getViewTreeObserver().addOnGlobalLayoutListener(this.f15016S);
        this.f15031p.getViewTreeObserver().addOnGlobalLayoutListener(this.f15020W);
        this.f15041z.post(new Runnable() { // from class: io.github.douglasjunior.androidSimpleTooltip.SimpleTooltip.2
            @Override // java.lang.Runnable
            public void run() {
                if (SimpleTooltip.this.f15041z.isShown()) {
                    SimpleTooltip.this.f15024i.showAtLocation(SimpleTooltip.this.f15041z, 0, SimpleTooltip.this.f15041z.getWidth(), SimpleTooltip.this.f15041z.getHeight());
                } else {
                    Log.e(SimpleTooltip.f14986X, "Tooltip cannot be shown, root view is invalid or has been closed.");
                }
            }
        });
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        View view;
        AnimatorSet animatorSet;
        this.f15010M = true;
        if (Build.VERSION.SDK_INT >= 11 && (animatorSet = this.f15002E) != null) {
            animatorSet.removeAllListeners();
            this.f15002E.end();
            this.f15002E.cancel();
            this.f15002E = null;
        }
        ViewGroup viewGroup = this.f15041z;
        if (!(viewGroup == null || (view = this.f15040y) == null)) {
            viewGroup.removeView(view);
        }
        this.f15041z = null;
        this.f15040y = null;
        OnDismissListener onDismissListener = this.f15022g;
        if (onDismissListener != null) {
            onDismissListener.mo4534a(this);
        }
        this.f15022g = null;
        SimpleTooltipUtils.m4526g(this.f15024i.getContentView(), this.f15016S);
        SimpleTooltipUtils.m4526g(this.f15024i.getContentView(), this.f15017T);
        SimpleTooltipUtils.m4526g(this.f15024i.getContentView(), this.f15018U);
        SimpleTooltipUtils.m4526g(this.f15024i.getContentView(), this.f15019V);
        SimpleTooltipUtils.m4526g(this.f15024i.getContentView(), this.f15020W);
        this.f15024i = null;
    }
}
