package com.truecaller.common.p156ui.fab;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.C3700R;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8341a;
import p193e.p194a.p372b0.p373a.p390w.C8345d;
import p193e.p194a.p372b0.p373a.p390w.View$OnClickListenerC8346e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00062\b\b\u0001\u0010\u001e\u001a\u00020\t¢\u0006\u0004\b\u001f\u0010\fJ\u0017\u0010 \u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0014¢\u0006\u0004\b#\u0010\u0019J\u001d\u0010'\u001a\u00020\u00062\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u0006¢\u0006\u0004\b-\u0010.J\r\u0010/\u001a\u00020\u0006¢\u0006\u0004\b/\u0010.J\u000f\u00100\u001a\u00020\u0006H\u0002¢\u0006\u0004\b0\u0010.J'\u00103\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00142\u0006\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020\tH\u0002¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u0014H\u0002¢\u0006\u0004\b6\u0010\u0019R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00108R\u0018\u0010;\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010:R\u0016\u0010=\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010<R\u001b\u0010C\u001a\u0004\u0018\u00010>8\u0006@\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\u0016\u0010E\u001a\u00020\t8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b0\u0010DR\u0016\u0010G\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010<R\u0016\u0010I\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010<R\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010KR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010MR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bO\u0010DR\u0016\u0010R\u001a\u00020\t8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\bQ\u0010DR\u0016\u0010T\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010SR\u0013\u0010W\u001a\u00020\u00108F@\u0006¢\u0006\u0006\u001a\u0004\bU\u0010VR$\u0010Z\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u00148\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bY\u0010<\u001a\u0004\bZ\u0010[¨\u0006\\"}, d2 = {"Lcom/truecaller/common/ui/fab/FloatingActionButton;", "Landroid/widget/FrameLayout;", "Landroid/view/View$OnClickListener;", "Landroid/view/View$OnLongClickListener;", "Landroid/content/res/Configuration;", "newConfig", "Ls1/s;", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", RemoteMessageConst.Notification.COLOR, "setBackgroundColor", "(I)V", "l", "setOnClickListener", "(Landroid/view/View$OnClickListener;)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "", "onLongClick", "(Landroid/view/View;)Z", "openOnClick", "setOpenMenuOnClick", "(Z)V", "Landroid/graphics/drawable/Drawable;", "drawable", "setDrawable", "(Landroid/graphics/drawable/Drawable;)V", "itemLayout", "setMenuItemLayout", "setIconTintColor", "(Ljava/lang/Integer;)V", AnalyticsConstants.SHOW, "e", "", "Le/a/b0/a/w/d;", "items", "setMenuItems", "([Lcom/truecaller/common/ui/fab/FabMenuItem;)V", "Le/a/b0/a/w/a;", "listener", "setFabActionListener", "(Le/a/b0/a/w/a;)V", "d", "()V", AbstractC2405c.f7629a, "f", ViewAction.VIEW, "position", C22021b.f61237c, "(ZLandroid/view/View;I)V", "visible", "a", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "imageView", "Le/a/b0/a/w/a;", "fabActionListener", "Z", "isAnimatingMenu", "Landroid/util/AttributeSet;", "m", "Landroid/util/AttributeSet;", "getAttrs", "()Landroid/util/AttributeSet;", "attrs", "I", "menuItemLayout", "j", "isLandscape", "h", "openMenuOnClick", "Landroid/widget/LinearLayout;", "Landroid/widget/LinearLayout;", "menuRoot", "[Lcom/truecaller/common/ui/fab/FabMenuItem;", "menuItems", "g", "menuItemHeight", "k", "animationDuration", "Landroid/view/View;", "backdrop", "getButtonView", "()Landroid/view/View;", "buttonView", "<set-?>", "i", "isShowingMenu", "()Z", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.fab.FloatingActionButton */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/fab/FloatingActionButton.class */
public final class FloatingActionButton extends FrameLayout implements View.OnClickListener, View.OnLongClickListener {

    /* renamed from: a */
    public final AppCompatImageView f11177a;

    /* renamed from: b */
    public final LinearLayout f11178b;

    /* renamed from: c */
    public final View f11179c;

    /* renamed from: d */
    public C8345d[] f11180d;

    /* renamed from: e */
    public boolean f11181e;

    /* renamed from: f */
    public int f11182f;

    /* renamed from: g */
    public int f11183g;

    /* renamed from: i */
    public boolean f11185i;

    /* renamed from: j */
    public boolean f11186j;

    /* renamed from: l */
    public AbstractC8341a f11188l;

    /* renamed from: m */
    public final AttributeSet f11189m;

    /* renamed from: h */
    public boolean f11184h = true;

    /* renamed from: k */
    public final int f11187k = 300;

    /* renamed from: com.truecaller.common.ui.fab.FloatingActionButton$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/fab/FloatingActionButton$a.class */
    public static final class C3717a extends AnimatorListenerAdapter {
        public C3717a() {
            FloatingActionButton.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animation");
            FloatingActionButton.this.f11179c.setVisibility(4);
        }
    }

    /* renamed from: com.truecaller.common.ui.fab.FloatingActionButton$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/fab/FloatingActionButton$b.class */
    public static final class C3718b extends AnimatorListenerAdapter {
        public C3718b() {
            FloatingActionButton.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animation");
            FloatingActionButton.this.f11181e = false;
        }
    }

    /* renamed from: com.truecaller.common.ui.fab.FloatingActionButton$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/fab/FloatingActionButton$c.class */
    public static final class RunnableC3719c implements Runnable {
        public RunnableC3719c() {
            FloatingActionButton.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            FloatingActionButton.this.f11178b.setVisibility(4);
        }
    }

    /* renamed from: com.truecaller.common.ui.fab.FloatingActionButton$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/fab/FloatingActionButton$d.class */
    public static final class View$OnClickListenerC3720d implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C8345d[] f11194b;

        /* renamed from: c */
        public final /* synthetic */ int f11195c;

        public View$OnClickListenerC3720d(C8345d[] c8345dArr, int i) {
            FloatingActionButton.this = r4;
            this.f11194b = c8345dArr;
            this.f11195c = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC8341a abstractC8341a = FloatingActionButton.this.f11188l;
            if (abstractC8341a != null) {
                abstractC8341a.mo28656u0(this.f11194b[this.f11195c].f25668a);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        this.f11189m = attributeSet;
        LayoutInflater.from(context).inflate(C3700R.layout.floating_action_button, this);
        setClipChildren(false);
        Resources resources = getResources();
        l.d(resources, "resources");
        this.f11186j = resources.getConfiguration().orientation == 2 ? true : z;
        View findViewById = findViewById(C3700R.C3702id.fab_icon);
        l.d(findViewById, "findViewById(R.id.fab_icon)");
        AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById;
        this.f11177a = appCompatImageView;
        View findViewById2 = findViewById(C3700R.C3702id.fab_menu);
        l.d(findViewById2, "findViewById(R.id.fab_menu)");
        LinearLayout linearLayout = (LinearLayout) findViewById2;
        this.f11178b = linearLayout;
        View findViewById3 = findViewById(C3700R.C3702id.fab_backdrop);
        l.d(findViewById3, "findViewById(R.id.fab_backdrop)");
        this.f11179c = findViewById3;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3700R.styleable.FloatingActionButton);
            l.d(obtainStyledAttributes, "context.obtainStyledAttr…ble.FloatingActionButton)");
            ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabMarginBottom, -1);
            if (dimensionPixelSize != -1) {
                layoutParams2.bottomMargin = dimensionPixelSize;
            }
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabMarginEnd, -1);
            if (dimensionPixelSize2 != -1) {
                layoutParams2.setMarginEnd(dimensionPixelSize2);
            }
            int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabLayoutWidth, -1);
            if (dimensionPixelSize3 != -1) {
                layoutParams2.width = dimensionPixelSize3;
            }
            int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabLayoutHeight, -1);
            if (dimensionPixelSize4 != -1) {
                layoutParams2.height = dimensionPixelSize4;
            }
            appCompatImageView.setLayoutParams(layoutParams2);
            ViewGroup.LayoutParams layoutParams3 = linearLayout.getLayoutParams();
            Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
            int dimensionPixelSize5 = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabMenuMarginBottom, -1);
            if (dimensionPixelSize5 != -1) {
                layoutParams4.bottomMargin = dimensionPixelSize5;
            }
            int dimensionPixelSize6 = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabMenuMarginEnd, -1);
            if (dimensionPixelSize6 != -1) {
                layoutParams4.setMarginEnd(dimensionPixelSize6);
            }
            linearLayout.setLayoutParams(layoutParams4);
            this.f11182f = obtainStyledAttributes.getResourceId(C3700R.styleable.FloatingActionButton_fabMenuItemLayout, C3700R.layout.fab_submenu_item_mini);
            this.f11183g = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.FloatingActionButton_fabMenuItemHeight, getResources().getDimensionPixelSize(C3700R.dimen.floating_action_button_size_mini));
            obtainStyledAttributes.recycle();
        }
        findViewById3.setOnClickListener(new View$OnClickListenerC8346e(this));
        appCompatImageView.setOnClickListener(this);
        appCompatImageView.setOnLongClickListener(this);
    }

    /* renamed from: a */
    public final void m35690a(boolean z) {
        int right = (this.f11177a.getRight() + this.f11177a.getLeft()) / 2;
        int bottom = (this.f11177a.getBottom() + this.f11177a.getTop()) / 2;
        if (z) {
            View view = this.f11179c;
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, right, bottom, 0.0f, Math.max(view.getHeight(), this.f11179c.getWidth()));
            this.f11179c.setVisibility(0);
            createCircularReveal.start();
            return;
        }
        C3717a c3717a = new C3717a();
        View view2 = this.f11179c;
        Animator createCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, right, bottom, Math.max(view2.getWidth(), this.f11179c.getHeight()), 0.0f);
        createCircularReveal2.addListener(c3717a);
        createCircularReveal2.start();
    }

    /* renamed from: b */
    public final void m35689b(boolean z, View view, int i) {
        int i2;
        C8345d[] c8345dArr = this.f11180d;
        if (c8345dArr != null) {
            ViewPropertyAnimator animate = view.animate();
            boolean z2 = false;
            if (!z ? i == 0 : i == c8345dArr.length - 1) {
                z2 = true;
            }
            if (z2) {
                animate.setListener(new C3718b());
            }
            if (!z) {
                l.d(animate, "animator");
                long length = (c8345dArr.length - (i + 1)) * this.f11187k;
                long j = 8;
                animate.setStartDelay(length / j);
                ViewPropertyAnimator interpolator = animate.translationY(this.f11183g * (c8345dArr.length - i)).setInterpolator(new AccelerateInterpolator());
                l.d(interpolator, "animator.translationY(me…AccelerateInterpolator())");
                interpolator.setDuration(this.f11187k);
                ViewPropertyAnimator animate2 = view.findViewById(C3700R.C3702id.fab_submenu_item_label).animate();
                l.d(animate2, "animator");
                animate2.setStartDelay(((c8345dArr.length - i2) * this.f11187k) / j);
                ViewPropertyAnimator interpolator2 = animate2.alpha(0.0f).setInterpolator(new AccelerateInterpolator());
                l.d(interpolator2, "animator.alpha(0f).setIn…AccelerateInterpolator())");
                interpolator2.setDuration(this.f11187k);
                if (!this.f11186j) {
                    return;
                }
                ViewPropertyAnimator animate3 = view.findViewById(C3700R.C3702id.fab_submenu_item_icon).animate();
                l.d(animate3, "animator");
                animate3.setStartDelay(((c8345dArr.length - i2) * this.f11187k) / j);
                ViewPropertyAnimator interpolator3 = animate3.alpha(0.0f).setInterpolator(new AccelerateInterpolator());
                l.d(interpolator3, "animator.alpha(0f)\n     …AccelerateInterpolator())");
                interpolator3.setDuration(this.f11187k);
                return;
            }
            view.setTranslationY(this.f11183g * (c8345dArr.length - i));
            int i3 = C3700R.C3702id.fab_submenu_item_label;
            View findViewById = view.findViewById(i3);
            l.d(findViewById, "view.findViewById<View>(…d.fab_submenu_item_label)");
            findViewById.setAlpha(0.0f);
            l.d(animate, "animator");
            long j2 = 8;
            animate.setStartDelay((this.f11187k * i) / j2);
            ViewPropertyAnimator interpolator4 = animate.translationY(0.0f).setInterpolator(new OvershootInterpolator(1.5f));
            l.d(interpolator4, "animator.translationY(0f…rshootInterpolator(1.5f))");
            interpolator4.setDuration(this.f11187k);
            ViewPropertyAnimator animate4 = view.findViewById(i3).animate();
            l.d(animate4, "animator");
            animate4.setStartDelay((this.f11187k * i) / j2);
            ViewPropertyAnimator interpolator5 = animate4.alpha(1.0f).setInterpolator(new DecelerateInterpolator());
            l.d(interpolator5, "animator.alpha(1f).setIn…DecelerateInterpolator())");
            interpolator5.setDuration(this.f11187k);
            if (!this.f11186j) {
                return;
            }
            View findViewById2 = view.findViewById(C3700R.C3702id.fab_submenu_item_icon);
            l.d(findViewById2, RemoteMessageConst.Notification.ICON);
            findViewById2.setAlpha(0.0f);
            ViewPropertyAnimator animate5 = findViewById2.animate();
            l.d(animate5, "animator");
            animate5.setStartDelay((i * this.f11187k) / j2);
            ViewPropertyAnimator interpolator6 = animate5.alpha(1.0f).setInterpolator(new DecelerateInterpolator());
            l.d(interpolator6, "animator.alpha(1f).setIn…DecelerateInterpolator())");
            interpolator6.setDuration(this.f11187k);
        }
    }

    /* renamed from: c */
    public final void m35688c() {
        C8345d[] c8345dArr;
        int i;
        if (!this.f11185i || this.f11181e || (c8345dArr = this.f11180d) == null) {
            return;
        }
        this.f11181e = true;
        AbstractC8341a abstractC8341a = this.f11188l;
        if (abstractC8341a != null) {
            abstractC8341a.mo28658bf();
        }
        int childCount = this.f11178b.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.f11178b.getChildAt(i2);
            l.d(childAt, ViewAction.VIEW);
            m35689b(false, childAt, i2);
        }
        postDelayed(new RunnableC3719c(), ((c8345dArr.length * i) / 8) + this.f11187k);
        m35690a(false);
        ViewPropertyAnimator interpolator = this.f11177a.animate().rotation(0.0f).setInterpolator(new OvershootInterpolator());
        l.d(interpolator, "imageView.animate().rota…(OvershootInterpolator())");
        interpolator.setDuration(this.f11187k);
        this.f11185i = false;
    }

    /* renamed from: d */
    public final void m35687d() {
        C8345d[] c8345dArr;
        if (!this.f11181e && (c8345dArr = this.f11180d) != null) {
            this.f11181e = true;
            AbstractC8341a abstractC8341a = this.f11188l;
            if (abstractC8341a != null) {
                abstractC8341a.mo28655v9();
            }
            LayoutInflater from = LayoutInflater.from(getContext());
            int m13612L = C19291g.m13612L(getContext(), C3700R.attr.theme_textColorSecondary);
            this.f11178b.removeAllViews();
            int length = c8345dArr.length;
            for (int i = 0; i < length; i++) {
                C8345d c8345d = c8345dArr[i];
                View inflate = from.inflate(this.f11182f, (ViewGroup) this.f11178b, false);
                ImageView imageView = (ImageView) inflate.findViewById(C3700R.C3702id.fab_submenu_item_icon);
                View findViewById = inflate.findViewById(C3700R.C3702id.fab_submenu_item_label);
                Objects.requireNonNull(findViewById, "null cannot be cast to non-null type android.widget.TextView");
                ((TextView) findViewById).setText(c8345d.f25670c);
                imageView.setImageResource(c8345d.f25669b);
                Drawable drawable = c8345d.f25672e;
                if (drawable != null) {
                    l.d(imageView, RemoteMessageConst.Notification.ICON);
                    imageView.setBackground(drawable);
                }
                int i2 = c8345d.f25673f;
                if (i2 != 0) {
                    ColorStateList valueOf = ColorStateList.valueOf(i2);
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    imageView.setBackgroundTintList(valueOf);
                }
                int i3 = c8345d.f25671d;
                imageView.setColorFilter(i3 != 0 ? i3 : m13612L, PorterDuff.Mode.SRC_IN);
                inflate.setOnClickListener(new View$OnClickListenerC3720d(c8345dArr, i));
                this.f11178b.addView(inflate);
                l.d(inflate, ViewAction.VIEW);
                m35689b(true, inflate, i);
            }
            m35685f();
            this.f11178b.setVisibility(0);
            m35690a(true);
            this.f11185i = true;
        }
    }

    /* renamed from: e */
    public final void m35686e(boolean z) {
        setVisibility(z ? 0 : 8);
        if (!this.f11185i) {
            return;
        }
        AbstractC8341a abstractC8341a = this.f11188l;
        if (abstractC8341a != null) {
            abstractC8341a.mo28658bf();
        }
        LinearLayout linearLayout = this.f11178b;
        linearLayout.removeAllViews();
        linearLayout.setVisibility(4);
        this.f11179c.animate().cancel();
        this.f11179c.setVisibility(4);
        this.f11181e = false;
        this.f11185i = false;
    }

    /* renamed from: f */
    public final void m35685f() {
        C8345d[] c8345dArr = this.f11180d;
        if (c8345dArr != null) {
            ViewGroup.LayoutParams layoutParams = this.f11178b.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.height = this.f11183g * c8345dArr.length;
            this.f11178b.setLayoutParams(layoutParams2);
            if (this.f11186j) {
                this.f11178b.setTranslationY(0.0f);
                this.f11178b.setTranslationX(-this.f11177a.getMeasuredWidth());
                return;
            }
            this.f11178b.setTranslationY(-this.f11177a.getMeasuredHeight());
            this.f11178b.setTranslationX(0.0f);
        }
    }

    public final AttributeSet getAttrs() {
        return this.f11189m;
    }

    public final View getButtonView() {
        return this.f11177a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        if ((r0.length == 0) == true) goto L18;
     */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "v"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            boolean r0 = r0.f11184h
            if (r0 == 0) goto L44
            r0 = r3
            e.a.b0.a.w.d[] r0 = r0.f11180d
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L44
            r0 = r4
            if (r0 == 0) goto L2f
            r0 = r4
            int r0 = r0.length
            if (r0 != 0) goto L25
            r0 = 1
            r5 = r0
            goto L27
        L25:
            r0 = 0
            r5 = r0
        L27:
            r0 = r5
            r1 = 1
            if (r0 != r1) goto L2f
            goto L44
        L2f:
            r0 = r3
            boolean r0 = r0.f11185i
            if (r0 == 0) goto L3d
            r0 = r3
            r0.m35688c()
            goto L53
        L3d:
            r0 = r3
            r0.m35687d()
            goto L53
        L44:
            r0 = r3
            e.a.b0.a.w.a r0 = r0.f11188l
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L53
            r0 = r4
            r0.mo28659No()
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.fab.FloatingActionButton.onClick(android.view.View):void");
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        l.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        this.f11186j = configuration.orientation == 2;
        if (this.f11185i) {
            m35685f();
        }
        requestLayout();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        AbstractC8341a abstractC8341a;
        l.e(view, "v");
        if (this.f11185i || this.f11181e || (abstractC8341a = this.f11188l) == null) {
            return true;
        }
        abstractC8341a.mo28657mf();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Context context = getContext();
        int i2 = C3700R.C3701drawable.floating_action_button;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i2);
        if (m1789b != null) {
            m1789b.setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        }
        this.f11177a.setBackground(m1789b);
    }

    public final void setDrawable(Drawable drawable) {
        this.f11177a.setImageDrawable(drawable);
    }

    public final void setFabActionListener(AbstractC8341a abstractC8341a) {
        this.f11188l = abstractC8341a;
    }

    public final void setIconTintColor(Integer num) {
        this.f11177a.setImageTintList(num == null ? null : ColorStateList.valueOf(num.intValue()));
    }

    public final void setMenuItemLayout(int i) {
        this.f11182f = i;
    }

    public final void setMenuItems(C8345d[] c8345dArr) {
        this.f11180d = c8345dArr;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
    }

    public final void setOpenMenuOnClick(boolean z) {
        this.f11184h = z;
    }
}
