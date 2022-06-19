package com.truecaller.flashsdk.p166ui.customviews;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
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
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1366a.p1372g.C21505c;
import p193e.p194a.p1365y.p1366a.p1372g.View$OnClickListenerC21504b;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.s;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u00012\u00020\u0002:\u0001\"J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u00052\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010+\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010%R\u0016\u0010-\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010%R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u001e\u00104\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\b8C@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;", "Landroid/widget/FrameLayout;", "Landroid/view/View$OnClickListener;", "Landroid/graphics/drawable/Drawable;", "drawable", "Ls1/s;", "setDrawable", "(Landroid/graphics/drawable/Drawable;)V", "", RemoteMessageConst.Notification.COLOR, "setBackgroundColor", "(I)V", "", "Le/a/y/a/g/c;", "items", "setMenuItems", "(Ljava/util/List;)V", "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;", "fabActionListener", "setFabActionListener", "(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", AbstractC2405c.f7629a, "()V", "", AnalyticsConstants.SHOW, ViewAction.VIEW, "position", C22021b.f61237c, "(ZLandroid/view/View;I)V", "visible", "a", "(Z)V", "h", "Z", "isLandscape", "Landroid/widget/ImageView;", "e", "Landroid/widget/ImageView;", "imageView", "isShowingMenu", "d", "isAnimatingMenu", "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;", "Landroid/widget/LinearLayout;", "f", "Landroid/widget/LinearLayout;", "menuRoot", "Ljava/util/List;", "menuItems", "g", "Landroid/view/View;", "backdrop", "getSubMenuItemResourceId", "()I", "subMenuItemResourceId", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAttachButton */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAttachButton.class */
public final class FlashAttachButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: i */
    public static final /* synthetic */ int f12096i = 0;

    /* renamed from: a */
    public List<C21505c> f12097a;

    /* renamed from: b */
    public AbstractC3943a f12098b;

    /* renamed from: c */
    public boolean f12099c;

    /* renamed from: d */
    public boolean f12100d;

    /* renamed from: e */
    public ImageView f12101e;

    /* renamed from: f */
    public LinearLayout f12102f;

    /* renamed from: g */
    public View f12103g;

    /* renamed from: h */
    public boolean f12104h;

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAttachButton$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAttachButton$a.class */
    public interface AbstractC3943a {
        /* renamed from: o0 */
        void mo35340o0();

        /* renamed from: q0 */
        void mo35339q0();

        /* renamed from: u0 */
        void mo35338u0(int i);
    }

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAttachButton$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAttachButton$b.class */
    public static final class C3944b extends AnimatorListenerAdapter {
        public C3944b(boolean z) {
            FlashAttachButton.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animation");
            View view = FlashAttachButton.this.f12103g;
            if (view != null) {
                view.setVisibility(4);
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAttachButton$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAttachButton$c.class */
    public static final class C3945c extends AnimatorListenerAdapter {
        public C3945c() {
            FlashAttachButton.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animation");
            FlashAttachButton.this.f12100d = false;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAttachButton$d */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAttachButton$d.class */
    public static final class RunnableC3946d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f12107a;

        public RunnableC3946d(LinearLayout linearLayout) {
            this.f12107a = linearLayout;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f12107a.setVisibility(4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashAttachButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    private final int getSubMenuItemResourceId() {
        return C3909R.layout.flash_attach_view_sub_menu;
    }

    /* renamed from: a */
    public final void m35355a(boolean z) {
        ImageView imageView = this.f12101e;
        if (imageView != null) {
            int right = (imageView.getRight() + imageView.getLeft()) / 2;
            int bottom = (imageView.getBottom() + imageView.getTop()) / 2;
            if (!z) {
                C3944b c3944b = new C3944b(z);
                View view = this.f12103g;
                Animator createCircularReveal = view != null ? ViewAnimationUtils.createCircularReveal(view, right, bottom, Math.max(view.getWidth(), view.getHeight()), 0.0f) : null;
                if (createCircularReveal == null) {
                    return;
                }
                createCircularReveal.addListener(c3944b);
                createCircularReveal.start();
                return;
            }
            View view2 = this.f12103g;
            if (view2 == null) {
                return;
            }
            Animator createCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, right, bottom, 0.0f, Math.max(view2.getHeight(), view2.getWidth()));
            view2.setVisibility(0);
            if (createCircularReveal2 == null) {
                return;
            }
            createCircularReveal2.start();
        }
    }

    /* renamed from: b */
    public final void m35354b(boolean z, View view, int i) {
        List<C21505c> list = this.f12097a;
        if (list != null) {
            ViewPropertyAnimator animate = view.animate();
            boolean z2 = false;
            if (!z ? i == 0 : i == list.size() - 1) {
                z2 = true;
            }
            if (z2) {
                animate.setListener(new C3945c());
            }
            if (!z) {
                int size = list.size();
                int i2 = i + 1;
                animate.setStartDelay(((size - i2) * 300) / 4);
                ViewPropertyAnimator interpolator = animate.translationY((list.size() - i) * C8605o.m28238b(getContext(), 50)).setInterpolator(new AccelerateInterpolator());
                l.d(interpolator, "translationY(\n          …AccelerateInterpolator())");
                long j = 300;
                interpolator.setDuration(j);
                ViewPropertyAnimator animate2 = view.findViewById(C3909R.C3911id.flashAttachSubmenuTitle).animate();
                animate2.setStartDelay(((list.size() - i2) * 300) / 4);
                ViewPropertyAnimator interpolator2 = animate2.alpha(0.0f).setInterpolator(new AccelerateInterpolator());
                l.d(interpolator2, "alpha(0f).setInterpolato…AccelerateInterpolator())");
                interpolator2.setDuration(j);
                if (!this.f12104h) {
                    return;
                }
                view.findViewById(C3909R.C3911id.flashAttachSubmenuIcon).animate();
                animate.setStartDelay(((list.size() - i2) * 300) / 4);
                ViewPropertyAnimator interpolator3 = animate.alpha(0.0f).setInterpolator(new AccelerateInterpolator());
                l.d(interpolator3, "alpha(0f).setInterpolato…AccelerateInterpolator())");
                interpolator3.setDuration(j);
                return;
            }
            view.setTranslationY((list.size() - i) * C8605o.m28238b(getContext(), 50));
            int i3 = C3909R.C3911id.flashAttachSubmenuTitle;
            View findViewById = view.findViewById(i3);
            l.d(findViewById, "view.findViewById<View>(….flashAttachSubmenuTitle)");
            findViewById.setAlpha(0.0f);
            long j2 = (i * 300) / 8;
            animate.setStartDelay(j2);
            ViewPropertyAnimator interpolator4 = animate.translationY(0.0f).setInterpolator(new OvershootInterpolator(1.5f));
            l.d(interpolator4, "translationY(0f)\n       …rshootInterpolator(1.5f))");
            long j3 = 300;
            interpolator4.setDuration(j3);
            ViewPropertyAnimator animate3 = view.findViewById(i3).animate();
            animate3.setStartDelay(j2);
            animate3.alpha(1.0f);
            ViewPropertyAnimator interpolator5 = animate3.setInterpolator(new DecelerateInterpolator());
            l.d(interpolator5, "setInterpolator(DecelerateInterpolator())");
            interpolator5.setDuration(j3);
            if (!this.f12104h) {
                return;
            }
            View findViewById2 = view.findViewById(C3909R.C3911id.flashAttachSubmenuIcon);
            l.d(findViewById2, RemoteMessageConst.Notification.ICON);
            findViewById2.setAlpha(0.0f);
            findViewById2.animate();
            animate.setStartDelay(j2);
            ViewPropertyAnimator interpolator6 = animate.alpha(1.0f).setInterpolator(new DecelerateInterpolator());
            l.d(interpolator6, "alpha(1f)\n              …DecelerateInterpolator())");
            interpolator6.setDuration(j3);
        }
    }

    /* renamed from: c */
    public final void m35353c() {
        List<C21505c> list;
        if (!this.f12099c || (list = this.f12097a) == null || this.f12100d || list == null) {
            return;
        }
        this.f12100d = true;
        LinearLayout linearLayout = this.f12102f;
        if (linearLayout == null) {
            return;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = linearLayout.getChildAt(i);
            l.d(childAt, ViewAction.VIEW);
            m35354b(false, childAt, i);
        }
        postDelayed(new RunnableC3946d(linearLayout), ((list.size() * 300) / 4) + 300);
        m35355a(false);
        ImageView imageView = this.f12101e;
        if (imageView != null) {
            ViewPropertyAnimator interpolator = imageView.animate().rotation(0.0f).setInterpolator(new OvershootInterpolator());
            l.d(interpolator, "animate()\n              …(OvershootInterpolator())");
            interpolator.setDuration(300);
        }
        this.f12099c = false;
        AbstractC3943a abstractC3943a = this.f12098b;
        if (abstractC3943a == null) {
            return;
        }
        abstractC3943a.mo35340o0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        List<C21505c> list;
        LinearLayout linearLayout;
        List<C21505c> list2;
        ImageView imageView;
        LinearLayout linearLayout2;
        l.e(view, "v");
        if (this.f12099c) {
            m35353c();
        } else if (!this.f12100d && (list = this.f12097a) != null && (linearLayout = this.f12102f) != null) {
            this.f12100d = true;
            LayoutInflater from = LayoutInflater.from(getContext());
            linearLayout.removeAllViews();
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    i.N0();
                    throw null;
                }
                C21505c c21505c = (C21505c) obj;
                View inflate = from.inflate(getSubMenuItemResourceId(), (ViewGroup) linearLayout, false);
                ImageView imageView2 = (ImageView) inflate.findViewById(C3909R.C3911id.flashAttachSubmenuIcon);
                ((TextView) inflate.findViewById(C3909R.C3911id.flashAttachSubmenuTitle)).setText(c21505c.f60045c);
                imageView2.setImageResource(c21505c.f60044b);
                imageView2.setColorFilter(c21505c.f60046d, PorterDuff.Mode.SRC_IN);
                Drawable drawable = c21505c.f60047e;
                if (drawable != null) {
                    l.d(imageView2, RemoteMessageConst.Notification.ICON);
                    imageView2.setBackground(drawable);
                }
                int i2 = c21505c.f60048f;
                if (i2 != 0) {
                    ColorStateList valueOf = ColorStateList.valueOf(i2);
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    imageView2.setBackgroundTintList(valueOf);
                }
                inflate.setOnClickListener(new View$OnClickListenerC21504b(c21505c, this, from, linearLayout));
                linearLayout.addView(inflate);
                l.d(inflate, ViewAction.VIEW);
                m35354b(true, inflate, i);
                arrayList.add(s.a);
                i++;
            }
            if (this.f12097a != null && (imageView = this.f12101e) != null && (linearLayout2 = this.f12102f) != null) {
                ViewGroup.LayoutParams layoutParams = linearLayout2.getLayoutParams();
                Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                layoutParams2.height = C8605o.m28238b(getContext(), list2.size() * 50);
                linearLayout2.setLayoutParams(layoutParams2);
                if (this.f12104h) {
                    linearLayout2.setTranslationY(0.0f);
                    linearLayout2.setTranslationX(-imageView.getMeasuredWidth());
                } else {
                    linearLayout2.setTranslationY(-imageView.getMeasuredHeight());
                    linearLayout2.setTranslationX(0.0f);
                }
            }
            linearLayout.setVisibility(0);
            m35355a(true);
            this.f12099c = true;
            AbstractC3943a abstractC3943a = this.f12098b;
            if (abstractC3943a == null) {
                return;
            }
            abstractC3943a.mo35339q0();
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Context context = getContext();
        int i2 = C3909R.C3910drawable.flash_close_fab_background;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i2);
        if (m1789b != null) {
            m1789b.setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        }
        ImageView imageView = this.f12101e;
        if (imageView != null) {
            imageView.setBackground(m1789b);
        }
    }

    public final void setDrawable(Drawable drawable) {
        l.e(drawable, "drawable");
        ImageView imageView = this.f12101e;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
    }

    public final void setFabActionListener(AbstractC3943a abstractC3943a) {
        l.e(abstractC3943a, "fabActionListener");
        this.f12098b = abstractC3943a;
    }

    public final void setMenuItems(List<C21505c> list) {
        this.f12097a = list;
    }
}
