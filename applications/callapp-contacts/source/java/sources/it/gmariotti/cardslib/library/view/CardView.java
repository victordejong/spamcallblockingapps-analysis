package it.gmariotti.cardslib.library.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18087e;
import it.gmariotti.cardslib.library.p510a.C18092i;
import it.gmariotti.cardslib.library.p510a.C18097j;
import it.gmariotti.cardslib.library.p510a.C18099k;
import it.gmariotti.cardslib.library.view.component.CardHeaderView;
import it.gmariotti.cardslib.library.view.component.CardThumbnailView;
import it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18194d;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.HashMap;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView.class */
public class CardView extends BaseCardView implements AbstractC18152a {

    /* renamed from: k */
    protected C18092i f63102k;

    /* renamed from: l */
    protected C18097j f63103l;

    /* renamed from: m */
    protected C18087e f63104m;

    /* renamed from: n */
    protected View f63105n;

    /* renamed from: o */
    protected View f63106o;

    /* renamed from: p */
    protected View f63107p;

    /* renamed from: q */
    protected View f63108q;

    /* renamed from: r */
    protected View f63109r;

    /* renamed from: s */
    protected Animator f63110s;

    /* renamed from: t */
    protected AbstractC18152a.AbstractC18153a f63111t;

    /* renamed from: it.gmariotti.cardslib.library.view.CardView$6 */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$6.class */
    public static final /* synthetic */ class C181316 {

        /* renamed from: a */
        static final /* synthetic */ int[] f63118a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[C18099k.EnumC18100a.values().length];
            f63118a = iArr;
            try {
                iArr[C18099k.EnumC18100a.CARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f63118a[C18099k.EnumC18100a.HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f63118a[C18099k.EnumC18100a.THUMBNAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f63118a[C18099k.EnumC18100a.MAIN_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardView$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$a.class */
    public static final class C18132a {
        private C18132a() {
        }

        /* renamed from: a */
        protected static ValueAnimator m4397a(final CardView cardView, int i, int i2) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.CardView.a.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = cardView.f63108q.getLayoutParams();
                    layoutParams.height = intValue;
                    cardView.f63108q.setLayoutParams(layoutParams);
                }
            });
            return ofInt;
        }

        /* renamed from: c */
        public static void m4395c(final C18136b c18136b) {
            if (c18136b.f63123b.getOnExpandAnimatorStartListener() != null) {
                c18136b.f63123b.getOnExpandAnimatorStartListener();
            }
            if (c18136b.m4393a().m4410j() != null) {
                c18136b.m4393a().m4410j().mo4379a(c18136b.m4393a(), c18136b.f63122a);
                return;
            }
            c18136b.f63122a.setVisibility(0);
            if (c18136b.m4393a().f63110s != null) {
                c18136b.m4393a().f63110s.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardView.a.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        c18136b.f63123b.setExpanded(true);
                        if (c18136b.f63123b.getOnExpandAnimatorEndListener() != null) {
                            c18136b.f63123b.getOnExpandAnimatorEndListener().mo4484a();
                        }
                    }
                });
                c18136b.m4393a().f63110s.start();
                return;
            }
            if (c18136b.f63123b.getOnExpandAnimatorEndListener() != null) {
                c18136b.f63123b.getOnExpandAnimatorEndListener().mo4484a();
            }
            Log.w(BaseCardView.f63069a, "Does the card have the ViewToClickToExpand?");
        }

        /* renamed from: d */
        public static void m4394d(final C18136b c18136b) {
            if (c18136b.f63123b.getOnCollapseAnimatorStartListener() != null) {
                c18136b.f63123b.getOnCollapseAnimatorStartListener();
            }
            if (c18136b.m4393a().m4410j() != null) {
                c18136b.m4393a().m4410j().mo4378b(c18136b.m4393a(), c18136b.f63122a);
                return;
            }
            ValueAnimator m4397a = m4397a(c18136b.m4393a(), c18136b.f63122a.getHeight(), 0);
            m4397a.addListener(new Animator.AnimatorListener() { // from class: it.gmariotti.cardslib.library.view.CardView.a.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    c18136b.f63122a.setVisibility(8);
                    c18136b.f63123b.setExpanded(false);
                    if (c18136b.f63123b.getOnCollapseAnimatorEndListener() != null) {
                        c18136b.f63123b.getOnCollapseAnimatorEndListener().mo4485a();
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            m4397a.start();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardView$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$b.class */
    public final class C18136b {

        /* renamed from: a */
        View f63122a;

        /* renamed from: b */
        C18073b f63123b;

        /* renamed from: c */
        boolean f63124c;

        private C18136b(View view, C18073b c18073b, boolean z) {
            CardView.this = r4;
            this.f63124c = true;
            this.f63122a = view;
            this.f63123b = c18073b;
            this.f63124c = z;
        }

        /* renamed from: a */
        public final CardView m4393a() {
            return (CardView) this.f63123b.getCardView();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardView$c */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$c.class */
    public final class View$OnClickListenerC18137c implements View.OnClickListener {

        /* renamed from: a */
        C18136b f63126a;

        private View$OnClickListenerC18137c(CardView cardView, View view, C18073b c18073b) {
            this(view, c18073b, true);
        }

        private View$OnClickListenerC18137c(View view, C18073b c18073b, boolean z) {
            CardView.this = r10;
            this.f63126a = new C18136b(view, c18073b, z);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f63126a.f63122a.getVisibility() == 0) {
                C18132a.m4394d(this.f63126a);
                if (!this.f63126a.f63124c) {
                    return;
                }
                view.setSelected(false);
                return;
            }
            C18132a.m4395c(this.f63126a);
            if (!this.f63126a.f63124c) {
                return;
            }
            view.setSelected(true);
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.CardView$d */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$d.class */
    public final class View$OnLongClickListenerC18138d implements View.OnLongClickListener {

        /* renamed from: a */
        View$OnClickListenerC18137c f63128a;

        private View$OnLongClickListenerC18138d(View$OnClickListenerC18137c view$OnClickListenerC18137c) {
            CardView.this = r4;
            this.f63128a = view$OnClickListenerC18137c;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            View$OnClickListenerC18137c view$OnClickListenerC18137c = this.f63128a;
            if (view$OnClickListenerC18137c != null) {
                view$OnClickListenerC18137c.onClick(view);
                return true;
            }
            return false;
        }
    }

    public CardView(Context context) {
        super(context);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: b */
    private View m4411b(int i) {
        View view = null;
        if (i >= 0 || i <= 10) {
            if (i == 0) {
                view = this;
            } else if (i == 1) {
                view = this.f63075g;
            } else if (i == 2) {
                view = this.f63074f;
            } else if (i == 10) {
                view = this.f63106o;
            }
            return view;
        }
        return null;
    }

    /* renamed from: k */
    private void m4409k() {
        if (this.f63102k != null) {
            if (this.f63074f == null) {
                return;
            }
            this.f63074f.setVisibility(0);
            this.f63074f.setRecycle(m4425e());
            this.f63074f.setForceReplaceInnerLayout(m4424f());
            this.f63074f.m4370a(this.f63102k);
        } else if (this.f63074f == null) {
        } else {
            this.f63074f.setVisibility(8);
            if (!m4424f()) {
                return;
            }
            this.f63074f.m4370a((C18092i) null);
        }
    }

    /* renamed from: l */
    private void m4408l() {
        View view;
        View view2;
        View view3 = this.f63106o;
        if (view3 != null) {
            ViewGroup viewGroup = null;
            try {
                viewGroup = (ViewGroup) view3;
            } catch (Exception e) {
                setRecycle(false);
            }
            if (m4425e() && !m4424f()) {
                if (this.f63070b.getInnerLayout() < 0) {
                    return;
                }
                this.f63070b.setupInnerViewElements(viewGroup, this.f63107p);
                return;
            }
            if (m4424f() && (view = this.f63106o) != null && (view2 = this.f63107p) != null) {
                ((ViewGroup) view).removeView(view2);
            }
            this.f63107p = this.f63070b.getInnerView(getContext(), (ViewGroup) this.f63106o);
        }
    }

    /* renamed from: m */
    private void m4407m() {
        if (this.f63075g != null) {
            if (this.f63103l == null) {
                this.f63075g.setVisibility(8);
                return;
            }
            this.f63075g.setVisibility(0);
            this.f63075g.setRecycle(m4425e());
            this.f63075g.setForceReplaceInnerLayout(m4424f());
            this.f63075g.m4358a(this.f63103l);
        }
    }

    /* renamed from: n */
    private void m4406n() {
        if (this.f63070b != null) {
            if (this.f63070b.getBackgroundResourceId() != 0) {
                mo4385a(this.f63070b.getBackgroundResourceId());
            } else if (this.f63070b.getBackgroundResource() == null) {
            } else {
                mo4384a(this.f63070b.getBackgroundResource());
            }
        }
    }

    /* renamed from: o */
    private void m4405o() {
        if (this.f63070b != null) {
            this.f63070b.setupSupplementalActions();
        }
    }

    /* renamed from: p */
    private void m4404p() {
        C18092i c18092i;
        if (this.f63108q != null && (((c18092i = this.f63102k) != null && c18092i.m4462d()) || this.f63070b.getViewToClickToExpand() != null)) {
            this.f63108q.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: it.gmariotti.cardslib.library.view.CardView.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    CardView.this.f63108q.getViewTreeObserver().removeOnPreDrawListener(this);
                    View view = (View) CardView.this.f63108q.getParent();
                    CardView.this.f63108q.measure(View.MeasureSpec.makeMeasureSpec((view.getMeasuredWidth() - view.getPaddingLeft()) - view.getPaddingRight(), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(0, 0));
                    CardView cardView = CardView.this;
                    cardView.f63110s = C18132a.m4397a((CardView) cardView.f63070b.getCardView(), 0, CardView.this.f63108q.getMeasuredHeight());
                    return true;
                }
            });
        }
        m4401s();
    }

    /* renamed from: q */
    private void m4403q() {
        if (this.f63070b.isSwipeable()) {
            setOnTouchListener(new View$OnTouchListenerC18194d(this, this.f63070b, new View$OnTouchListenerC18194d.AbstractC18198a() { // from class: it.gmariotti.cardslib.library.view.CardView.2
                @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18194d.AbstractC18198a
                /* renamed from: a */
                public final void mo4317a(AbstractC18152a abstractC18152a, C18073b c18073b) {
                    View view = (View) abstractC18152a;
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(view);
                        c18073b.onSwipeCard();
                    }
                }

                @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18194d.AbstractC18198a
                /* renamed from: a */
                public final boolean mo4318a(C18073b c18073b) {
                    return c18073b.isSwipeable();
                }
            }));
        } else {
            setOnTouchListener(null);
        }
        m4402r();
        if (!this.f63070b.isClickable()) {
            setClickable(false);
        } else if (!this.f63070b.isMultiChoiceEnabled()) {
            if (this.f63070b.getOnClickListener() != null) {
                setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.CardView.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (CardView.this.f63070b.getOnClickListener() != null) {
                            CardView.this.f63070b.getOnClickListener().mo4486a(view);
                        }
                    }
                });
            } else {
                HashMap<Integer, C18073b.AbstractC18074a> multipleOnClickListener = this.f63070b.getMultipleOnClickListener();
                if (multipleOnClickListener == null || multipleOnClickListener.isEmpty()) {
                    setClickable(false);
                } else {
                    for (Integer num : multipleOnClickListener.keySet()) {
                        int intValue = num.intValue();
                        View m4411b = m4411b(intValue);
                        final C18073b.AbstractC18074a abstractC18074a = multipleOnClickListener.get(Integer.valueOf(intValue));
                        if (m4411b != null) {
                            m4411b.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.CardView.4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    C18073b.AbstractC18074a abstractC18074a2 = abstractC18074a;
                                    if (abstractC18074a2 != null) {
                                        abstractC18074a2.mo4486a(view);
                                    }
                                }
                            });
                            if (intValue > 0) {
                                this.f63078j.mo4376b(m4411b, getResources().getDrawable(C18061a.C18063b.card_selector));
                            }
                        }
                    }
                }
            }
        }
        if (this.f63070b.isLongClickable()) {
            setOnLongClickListener(new View.OnLongClickListener() { // from class: it.gmariotti.cardslib.library.view.CardView.5
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    if (CardView.this.f63070b.getOnLongClickListener() != null) {
                        return CardView.this.f63070b.getOnLongClickListener().m4483a();
                    }
                    return false;
                }
            });
        } else {
            setLongClickable(false);
        }
    }

    /* renamed from: r */
    private void m4402r() {
        View m4411b = m4411b(2);
        if (m4411b != null) {
            m4411b.setClickable(false);
        }
        View m4411b2 = m4411b(1);
        if (m4411b2 != null) {
            m4411b2.setClickable(false);
        }
        View m4411b3 = m4411b(10);
        if (m4411b3 != null) {
            m4411b3.setClickable(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013b  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4401s() {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.CardView.m4401s():void");
    }

    /* renamed from: t */
    private void m4400t() {
        View view;
        View view2;
        if (this.f63108q == null || this.f63104m == null) {
            return;
        }
        if (!m4425e() || m4424f()) {
            if (m4424f() && (view = this.f63108q) != null && (view2 = this.f63109r) != null) {
                ((ViewGroup) view).removeView(view2);
            }
            this.f63109r = this.f63104m.getInnerView(getContext(), (ViewGroup) this.f63108q);
        } else if (this.f63104m.getInnerLayout() >= 0) {
            this.f63104m.mo4472a((ViewGroup) this.f63108q, this.f63109r);
        }
        ViewGroup.LayoutParams layoutParams = this.f63108q.getLayoutParams();
        layoutParams.height = -2;
        this.f63108q.setLayoutParams(layoutParams);
    }

    /* renamed from: u */
    private boolean m4399u() {
        if (this.f63070b != null) {
            return this.f63070b.isExpanded();
        }
        return false;
    }

    @Override // it.gmariotti.cardslib.library.view.BaseCardView
    /* renamed from: a */
    public final void mo4414a() {
        super.mo4414a();
        this.f63070b.setCardView(this);
        m4409k();
        m4408l();
        m4407m();
        m4400t();
        m4405o();
        m4403q();
        m4404p();
        m4406n();
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: a */
    public final void mo4385a(int i) {
        View view;
        if (i == 0 || (view = this.f63105n) == null) {
            return;
        }
        view.setBackgroundResource(i);
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: a */
    public final void mo4384a(Drawable drawable) {
        if (drawable == null || this.f63105n == null) {
            return;
        }
        this.f63078j.mo4375a(this.f63105n, drawable);
    }

    @Override // it.gmariotti.cardslib.library.view.BaseCardView
    /* renamed from: a */
    protected final void mo4413a(AttributeSet attributeSet, int i) {
        this.f63071c = C18061a.C18066e.card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63071c = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_card_layout_resourceID, this.f63071c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: a */
    public final void mo4383a(C18073b c18073b) {
        this.f63076h = true;
        setCard(c18073b);
        this.f63076h = false;
    }

    @Override // it.gmariotti.cardslib.library.view.BaseCardView
    /* renamed from: b */
    public final void mo4412b() {
        super.mo4412b();
        this.f63105n = findViewById(C18061a.C18064c.card_main_layout);
        this.f63074f = (CardHeaderView) findViewById(C18061a.C18064c.card_header_layout);
        this.f63108q = findViewById(C18061a.C18064c.card_content_expand_layout);
        this.f63106o = findViewById(C18061a.C18064c.card_main_content_layout);
        this.f63075g = (CardThumbnailView) findViewById(C18061a.C18064c.card_thumbnail_layout);
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        View view = this.f63105n;
        if (view == null || !(view instanceof ForegroundLinearLayout)) {
            return;
        }
        view.drawableHotspotChanged(f, f2);
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: g */
    public final void mo4382g() {
        View view = this.f63108q;
        if (view != null) {
            C18136b c18136b = new C18136b(view, this.f63070b, false);
            if (this.f63108q.getVisibility() == 0) {
                C18132a.m4394d(c18136b);
            } else {
                C18132a.m4395c(c18136b);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public View getInternalMainCardLayout() {
        return this.f63105n;
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: h */
    public final void mo4381h() {
        View view = this.f63108q;
        if (view != null) {
            C18136b c18136b = new C18136b(view, this.f63070b, false);
            if (this.f63108q.getVisibility() == 0) {
                return;
            }
            C18132a.m4395c(c18136b);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    /* renamed from: i */
    public final void mo4380i() {
        View view = this.f63108q;
        if (view != null) {
            C18136b c18136b = new C18136b(view, this.f63070b, false);
            if (!(this.f63108q.getVisibility() == 0)) {
                return;
            }
            C18132a.m4394d(c18136b);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public boolean isNative() {
        return false;
    }

    /* renamed from: j */
    public final AbstractC18152a.AbstractC18153a m4410j() {
        return this.f63111t;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // it.gmariotti.cardslib.library.view.BaseCardView, it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setCard(C18073b c18073b) {
        super.setCard(c18073b);
        if (c18073b != null) {
            this.f63102k = c18073b.getCardHeader();
            this.f63103l = c18073b.getCardThumbnail();
            this.f63104m = c18073b.getCardExpand();
        }
        if (!m4425e()) {
            mo4412b();
        }
        mo4414a();
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setExpanded(boolean z) {
        if (this.f63070b != null) {
            this.f63070b.setExpanded(z);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p514a.AbstractC18152a
    public void setOnExpandListAnimatorListener(AbstractC18152a.AbstractC18153a abstractC18153a) {
        this.f63111t = abstractC18153a;
    }
}
