package it.gmariotti.cardslib.library.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18087e;
import it.gmariotti.cardslib.library.p510a.C18092i;
import it.gmariotti.cardslib.library.p510a.C18097j;
import it.gmariotti.cardslib.library.p510a.C18099k;
import it.gmariotti.cardslib.library.view.component.CardHeaderView;
import it.gmariotti.cardslib.library.view.component.CardThumbnailView;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import it.gmariotti.cardslib.library.view.p515b.AbstractC18154a;
import it.gmariotti.cardslib.library.view.p515b.C18159f;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative.class */
public class CardViewNative extends CardView implements AbstractC18152a {

    /* renamed from: e */
    protected static String f63130e = "CardViewNative";

    /* renamed from: f */
    protected C18073b f63131f;

    /* renamed from: g */
    protected int f63132g;

    /* renamed from: h */
    protected View f63133h;

    /* renamed from: i */
    protected CardHeaderView f63134i;

    /* renamed from: j */
    protected CardThumbnailView f63135j;

    /* renamed from: k */
    protected boolean f63136k;

    /* renamed from: l */
    protected boolean f63137l;

    /* renamed from: m */
    protected AbstractC18154a f63138m;

    /* renamed from: n */
    protected C18092i f63139n;

    /* renamed from: o */
    protected C18097j f63140o;

    /* renamed from: p */
    protected C18087e f63141p;

    /* renamed from: q */
    protected View f63142q;

    /* renamed from: r */
    protected View f63143r;

    /* renamed from: s */
    protected View f63144s;

    /* renamed from: t */
    protected View f63145t;

    /* renamed from: u */
    protected View f63146u;

    /* renamed from: v */
    protected Animator f63147v;

    /* renamed from: w */
    protected AbstractC18152a.AbstractC18153a f63148w;

    /* renamed from: it.gmariotti.cardslib.library.view.CardViewNative$6 */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$6.class */
    public static final /* synthetic */ class C181446 {

        /* renamed from: a */
        static final /* synthetic */ int[] f63155a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[C18099k.EnumC18100a.values().length];
            f63155a = iArr;
            try {
                iArr[C18099k.EnumC18100a.CARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f63155a[C18099k.EnumC18100a.HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f63155a[C18099k.EnumC18100a.THUMBNAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f63155a[C18099k.EnumC18100a.MAIN_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardViewNative$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$a.class */
    public static final class C18145a {
        private C18145a() {
        }

        /* renamed from: a */
        protected static ValueAnimator m4390a(final CardViewNative cardViewNative, int i, int i2) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.CardViewNative.a.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = cardViewNative.f63145t.getLayoutParams();
                    layoutParams.height = intValue;
                    cardViewNative.f63145t.setLayoutParams(layoutParams);
                }
            });
            return ofInt;
        }

        /* renamed from: c */
        public static void m4388c(final C18149b c18149b) {
            if (c18149b.m4386a().getOnExpandListAnimatorListener() != null) {
                c18149b.m4386a().getOnExpandListAnimatorListener().mo4379a(c18149b.m4386a(), c18149b.f63159a);
                return;
            }
            c18149b.f63159a.setVisibility(0);
            if (c18149b.m4386a().f63147v != null) {
                c18149b.m4386a().f63147v.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardViewNative.a.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        c18149b.f63160b.setExpanded(true);
                        if (c18149b.f63160b.getOnExpandAnimatorEndListener() != null) {
                            c18149b.f63160b.getOnExpandAnimatorEndListener().mo4484a();
                        }
                    }
                });
                c18149b.m4386a().f63147v.start();
                return;
            }
            if (c18149b.f63160b.getOnExpandAnimatorEndListener() != null) {
                c18149b.f63160b.getOnExpandAnimatorEndListener().mo4484a();
            }
            Log.w(CardViewNative.f63130e, "Does the card have the ViewToClickToExpand?");
        }

        /* renamed from: d */
        public static void m4387d(final C18149b c18149b) {
            if (c18149b.m4386a().getOnExpandListAnimatorListener() != null) {
                c18149b.m4386a().getOnExpandListAnimatorListener().mo4378b(c18149b.m4386a(), c18149b.f63159a);
                return;
            }
            ValueAnimator m4390a = m4390a(c18149b.m4386a(), c18149b.f63159a.getHeight(), 0);
            m4390a.addListener(new Animator.AnimatorListener() { // from class: it.gmariotti.cardslib.library.view.CardViewNative.a.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    c18149b.f63159a.setVisibility(8);
                    c18149b.f63160b.setExpanded(false);
                    if (c18149b.f63160b.getOnCollapseAnimatorEndListener() != null) {
                        c18149b.f63160b.getOnCollapseAnimatorEndListener().mo4485a();
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            m4390a.start();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardViewNative$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$b.class */
    public final class C18149b {

        /* renamed from: a */
        View f63159a;

        /* renamed from: b */
        C18073b f63160b;

        /* renamed from: c */
        boolean f63161c;

        private C18149b(View view, C18073b c18073b, boolean z) {
            CardViewNative.this = r4;
            this.f63161c = true;
            this.f63159a = view;
            this.f63160b = c18073b;
            this.f63161c = z;
        }

        /* renamed from: a */
        public final CardViewNative m4386a() {
            return (CardViewNative) this.f63160b.getCardView();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardViewNative$c */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$c.class */
    public final class View$OnClickListenerC18150c implements View.OnClickListener {

        /* renamed from: a */
        C18149b f63163a;

        private View$OnClickListenerC18150c(CardViewNative cardViewNative, View view, C18073b c18073b) {
            this(view, c18073b, true);
        }

        private View$OnClickListenerC18150c(View view, C18073b c18073b, boolean z) {
            CardViewNative.this = r10;
            this.f63163a = new C18149b(view, c18073b, z);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f63163a.f63159a.getVisibility() == 0) {
                C18145a.m4387d(this.f63163a);
                if (!this.f63163a.f63161c) {
                    return;
                }
                view.setSelected(false);
                return;
            }
            C18145a.m4388c(this.f63163a);
            if (!this.f63163a.f63161c) {
                return;
            }
            view.setSelected(true);
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardViewNative$d */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$d.class */
    public final class View$OnLongClickListenerC18151d implements View.OnLongClickListener {

        /* renamed from: a */
        View$OnClickListenerC18150c f63165a;

        private View$OnLongClickListenerC18151d(View$OnClickListenerC18150c view$OnClickListenerC18150c) {
            CardViewNative.this = r4;
            this.f63165a = view$OnClickListenerC18150c;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            View$OnClickListenerC18150c view$OnClickListenerC18150c = this.f63165a;
            if (view$OnClickListenerC18150c != null) {
                view$OnClickListenerC18150c.onClick(view);
                return true;
            }
            return false;
        }
    }

    public CardViewNative(Context context) {
        this(context, null, 0);
    }

    public CardViewNative(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public CardViewNative(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f63132g = C18061a.C18066e.native_card_layout;
        this.f63136k = false;
        this.f63137l = false;
        this.f63132g = C18061a.C18066e.native_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63132g = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_card_layout_resourceID, this.f63132g);
            obtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                this.f63133h = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f63132g, (ViewGroup) this, true);
                setRadius(getResources().getDimension(C18061a.C18062a.card_background_default_radius));
            }
            this.f63138m = C18159f.m4373a(context);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v16, types: [android.view.View] */
    /* renamed from: b */
    private View m4392b(int i) {
        FrameLayout frameLayout = null;
        if (i >= 0 || i <= 10) {
            if (i == 0) {
                frameLayout = this;
            } else if (i == 1) {
                frameLayout = this.f63135j;
            } else if (i == 2) {
                frameLayout = this.f63134i;
            } else if (i == 9) {
                frameLayout = this.f63142q;
            } else if (i == 10) {
                frameLayout = this.f63143r;
            }
            return frameLayout;
        }
        return null;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: a */
    public final void mo4385a(int i) {
        if (i != C18073b.DEFAULT_COLOR) {
            mo4384a(getResources().getDrawable(i));
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: a */
    public final void mo4384a(Drawable drawable) {
        View view;
        if (drawable == null || (view = this.f63142q) == null) {
            return;
        }
        this.f63138m.mo4375a(view, drawable);
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: a */
    public final void mo4383a(C18073b c18073b) {
        this.f63136k = true;
        setCard(c18073b);
        this.f63136k = false;
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        View view = this.f63142q;
        if (view == null || !(view instanceof ForegroundLinearLayout)) {
            return;
        }
        view.drawableHotspotChanged(f, f2);
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: g */
    public final void mo4382g() {
        View view = this.f63145t;
        if (view != null) {
            C18149b c18149b = new C18149b(view, this.f63131f, false);
            if (this.f63145t.getVisibility() == 0) {
                C18145a.m4387d(c18149b);
            } else {
                C18145a.m4388c(c18149b);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public C18073b getCard() {
        return this.f63131f;
    }

    public View getInternalContentLayout() {
        return this.f63143r;
    }

    public CardHeaderView getInternalHeaderLayout() {
        return this.f63134i;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public View getInternalMainCardLayout() {
        return this.f63142q;
    }

    public CardThumbnailView getInternalThumbnailLayout() {
        return this.f63135j;
    }

    public AbstractC18152a.AbstractC18153a getOnExpandListAnimatorListener() {
        return this.f63148w;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: h */
    public final void mo4381h() {
        View view = this.f63145t;
        if (view != null) {
            C18149b c18149b = new C18149b(view, this.f63131f, false);
            if (this.f63145t.getVisibility() == 0) {
                return;
            }
            C18145a.m4388c(c18149b);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: i */
    public final void mo4380i() {
        View view = this.f63145t;
        if (view != null) {
            C18149b c18149b = new C18149b(view, this.f63131f, false);
            if (!(this.f63145t.getVisibility() == 0)) {
                return;
            }
            C18145a.m4387d(c18149b);
        }
    }

    public boolean isExpanded() {
        C18073b c18073b = this.f63131f;
        if (c18073b != null) {
            return c18073b.isExpanded();
        }
        return false;
    }

    public boolean isForceReplaceInnerLayout() {
        return this.f63137l;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public boolean isNative() {
        return true;
    }

    public boolean isRecycle() {
        return this.f63136k;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04ee  */
    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCard(it.gmariotti.cardslib.library.p510a.C18073b r10) {
        /*
            Method dump skipped, instructions count: 1388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.CardViewNative.setCard(it.gmariotti.cardslib.library.a.b):void");
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setExpanded(boolean z) {
        C18073b c18073b = this.f63131f;
        if (c18073b != null) {
            c18073b.setExpanded(z);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setForceReplaceInnerLayout(boolean z) {
        this.f63137l = z;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setOnExpandListAnimatorListener(AbstractC18152a.AbstractC18153a abstractC18153a) {
        this.f63148w = abstractC18153a;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setRecycle(boolean z) {
        this.f63136k = z;
    }
}
