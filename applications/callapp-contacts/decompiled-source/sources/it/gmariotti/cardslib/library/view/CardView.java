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
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.a.e;
import it.gmariotti.cardslib.library.a.i;
import it.gmariotti.cardslib.library.a.j;
import it.gmariotti.cardslib.library.a.k;
import it.gmariotti.cardslib.library.view.a.a;
import it.gmariotti.cardslib.library.view.component.CardHeaderView;
import it.gmariotti.cardslib.library.view.component.CardThumbnailView;
import it.gmariotti.cardslib.library.view.listener.d;
import java.util.HashMap;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView.class */
public class CardView extends BaseCardView implements it.gmariotti.cardslib.library.view.a.a {
    protected i k;
    protected j l;
    protected e m;
    protected View n;
    protected View o;
    protected View p;
    protected View q;
    protected View r;
    protected Animator s;
    protected a.AbstractC0600a t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: it.gmariotti.cardslib.library.view.CardView$6  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$6.class */
    public static final /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f36431a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[k.a.values().length];
            f36431a = iArr;
            try {
                iArr[k.a.CARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36431a[k.a.HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f36431a[k.a.THUMBNAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f36431a[k.a.MAIN_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$a.class */
    public static final class a {
        private a() {
        }

        protected static ValueAnimator a(final CardView cardView, int i, int i2) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.CardView.a.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = CardView.this.q.getLayoutParams();
                    layoutParams.height = intValue;
                    CardView.this.q.setLayoutParams(layoutParams);
                }
            });
            return ofInt;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(final b bVar) {
            if (bVar.f36436b.getOnExpandAnimatorStartListener() != null) {
                bVar.f36436b.getOnExpandAnimatorStartListener();
            }
            if (bVar.a().j() != null) {
                bVar.a().j().a(bVar.a(), bVar.f36435a);
                return;
            }
            bVar.f36435a.setVisibility(0);
            if (bVar.a().s != null) {
                bVar.a().s.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardView.a.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        b.this.f36436b.setExpanded(true);
                        if (b.this.f36436b.getOnExpandAnimatorEndListener() != null) {
                            b.this.f36436b.getOnExpandAnimatorEndListener().a();
                        }
                    }
                });
                bVar.a().s.start();
                return;
            }
            if (bVar.f36436b.getOnExpandAnimatorEndListener() != null) {
                bVar.f36436b.getOnExpandAnimatorEndListener().a();
            }
            Log.w(BaseCardView.f36400a, "Does the card have the ViewToClickToExpand?");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(final b bVar) {
            if (bVar.f36436b.getOnCollapseAnimatorStartListener() != null) {
                bVar.f36436b.getOnCollapseAnimatorStartListener();
            }
            if (bVar.a().j() != null) {
                bVar.a().j().b(bVar.a(), bVar.f36435a);
                return;
            }
            ValueAnimator a2 = a(bVar.a(), bVar.f36435a.getHeight(), 0);
            a2.addListener(new Animator.AnimatorListener() { // from class: it.gmariotti.cardslib.library.view.CardView.a.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    b.this.f36435a.setVisibility(8);
                    b.this.f36436b.setExpanded(false);
                    if (b.this.f36436b.getOnCollapseAnimatorEndListener() != null) {
                        b.this.f36436b.getOnCollapseAnimatorEndListener().a();
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            a2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        View f36435a;

        /* renamed from: b  reason: collision with root package name */
        it.gmariotti.cardslib.library.a.b f36436b;

        /* renamed from: c  reason: collision with root package name */
        boolean f36437c;

        private b(View view, it.gmariotti.cardslib.library.a.b bVar, boolean z) {
            this.f36437c = true;
            this.f36435a = view;
            this.f36436b = bVar;
            this.f36437c = z;
        }

        public final CardView a() {
            return (CardView) this.f36436b.getCardView();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$c.class */
    public final class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        b f36439a;

        private c(CardView cardView, View view, it.gmariotti.cardslib.library.a.b bVar) {
            this(view, bVar, true);
        }

        private c(View view, it.gmariotti.cardslib.library.a.b bVar, boolean z) {
            this.f36439a = new b(view, bVar, z);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f36439a.f36435a.getVisibility() == 0) {
                a.d(this.f36439a);
                if (this.f36439a.f36437c) {
                    view.setSelected(false);
                    return;
                }
                return;
            }
            a.c(this.f36439a);
            if (this.f36439a.f36437c) {
                view.setSelected(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardView$d.class */
    public final class d implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        c f36441a;

        private d(c cVar) {
            this.f36441a = cVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            c cVar = this.f36441a;
            if (cVar == null) {
                return false;
            }
            cVar.onClick(view);
            return true;
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

    private View b(int i) {
        View view = null;
        if (i < 0 && i > 10) {
            return null;
        }
        if (i == 0) {
            view = this;
        } else if (i == 1) {
            view = this.g;
        } else if (i == 2) {
            view = this.f;
        } else if (i == 10) {
            view = this.o;
        }
        return view;
    }

    private void k() {
        if (this.k != null) {
            if (this.f != null) {
                this.f.setVisibility(0);
                this.f.setRecycle(e());
                this.f.setForceReplaceInnerLayout(f());
                this.f.a(this.k);
            }
        } else if (this.f != null) {
            this.f.setVisibility(8);
            if (f()) {
                this.f.a((i) null);
            }
        }
    }

    private void l() {
        View view;
        View view2;
        View view3 = this.o;
        if (view3 != null) {
            ViewGroup viewGroup = null;
            try {
                viewGroup = (ViewGroup) view3;
            } catch (Exception e) {
                setRecycle(false);
            }
            if (!e() || f()) {
                if (!(!f() || (view = this.o) == null || (view2 = this.p) == null)) {
                    ((ViewGroup) view).removeView(view2);
                }
                this.p = this.f36401b.getInnerView(getContext(), (ViewGroup) this.o);
            } else if (this.f36401b.getInnerLayout() >= 0) {
                this.f36401b.setupInnerViewElements(viewGroup, this.p);
            }
        }
    }

    private void m() {
        if (this.g == null) {
            return;
        }
        if (this.l != null) {
            this.g.setVisibility(0);
            this.g.setRecycle(e());
            this.g.setForceReplaceInnerLayout(f());
            this.g.a(this.l);
            return;
        }
        this.g.setVisibility(8);
    }

    private void n() {
        if (this.f36401b == null) {
            return;
        }
        if (this.f36401b.getBackgroundResourceId() != 0) {
            a(this.f36401b.getBackgroundResourceId());
        } else if (this.f36401b.getBackgroundResource() != null) {
            a(this.f36401b.getBackgroundResource());
        }
    }

    private void o() {
        if (this.f36401b != null) {
            this.f36401b.setupSupplementalActions();
        }
    }

    private void p() {
        i iVar;
        if (this.q != null && (((iVar = this.k) != null && iVar.d()) || this.f36401b.getViewToClickToExpand() != null)) {
            this.q.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: it.gmariotti.cardslib.library.view.CardView.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    CardView.this.q.getViewTreeObserver().removeOnPreDrawListener(this);
                    View view = (View) CardView.this.q.getParent();
                    CardView.this.q.measure(View.MeasureSpec.makeMeasureSpec((view.getMeasuredWidth() - view.getPaddingLeft()) - view.getPaddingRight(), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), View.MeasureSpec.makeMeasureSpec(0, 0));
                    CardView cardView = CardView.this;
                    cardView.s = a.a((CardView) cardView.f36401b.getCardView(), 0, CardView.this.q.getMeasuredHeight());
                    return true;
                }
            });
        }
        s();
    }

    private void q() {
        if (this.f36401b.isSwipeable()) {
            setOnTouchListener(new it.gmariotti.cardslib.library.view.listener.d(this, this.f36401b, new d.a() { // from class: it.gmariotti.cardslib.library.view.CardView.2
                @Override // it.gmariotti.cardslib.library.view.listener.d.a
                public final void a(it.gmariotti.cardslib.library.view.a.a aVar, it.gmariotti.cardslib.library.a.b bVar) {
                    View view = (View) aVar;
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(view);
                        bVar.onSwipeCard();
                    }
                }

                @Override // it.gmariotti.cardslib.library.view.listener.d.a
                public final boolean a(it.gmariotti.cardslib.library.a.b bVar) {
                    return bVar.isSwipeable();
                }
            }));
        } else {
            setOnTouchListener(null);
        }
        r();
        if (!this.f36401b.isClickable()) {
            setClickable(false);
        } else if (!this.f36401b.isMultiChoiceEnabled()) {
            if (this.f36401b.getOnClickListener() != null) {
                setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.CardView.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (CardView.this.f36401b.getOnClickListener() != null) {
                            CardView.this.f36401b.getOnClickListener().a(view);
                        }
                    }
                });
            } else {
                HashMap<Integer, b.a> multipleOnClickListener = this.f36401b.getMultipleOnClickListener();
                if (multipleOnClickListener == null || multipleOnClickListener.isEmpty()) {
                    setClickable(false);
                } else {
                    for (Integer num : multipleOnClickListener.keySet()) {
                        int intValue = num.intValue();
                        View b2 = b(intValue);
                        final b.a aVar = multipleOnClickListener.get(Integer.valueOf(intValue));
                        if (b2 != null) {
                            b2.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.CardView.4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    b.a aVar2 = aVar;
                                    if (aVar2 != null) {
                                        aVar2.a(view);
                                    }
                                }
                            });
                            if (intValue > 0) {
                                this.j.b(b2, getResources().getDrawable(a.b.card_selector));
                            }
                        }
                    }
                }
            }
        }
        if (this.f36401b.isLongClickable()) {
            setOnLongClickListener(new View.OnLongClickListener() { // from class: it.gmariotti.cardslib.library.view.CardView.5
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    if (CardView.this.f36401b.getOnLongClickListener() != null) {
                        return CardView.this.f36401b.getOnLongClickListener().a();
                    }
                    return false;
                }
            });
        } else {
            setLongClickable(false);
        }
    }

    private void r() {
        View b2 = b(2);
        if (b2 != null) {
            b2.setClickable(false);
        }
        View b3 = b(1);
        if (b3 != null) {
            b3.setClickable(false);
        }
        View b4 = b(10);
        if (b4 != null) {
            b4.setClickable(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void s() {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.CardView.s():void");
    }

    private void t() {
        View view;
        View view2;
        if (this.q != null && this.m != null) {
            if (!e() || f()) {
                if (!(!f() || (view = this.q) == null || (view2 = this.r) == null)) {
                    ((ViewGroup) view).removeView(view2);
                }
                this.r = this.m.getInnerView(getContext(), (ViewGroup) this.q);
            } else if (this.m.getInnerLayout() >= 0) {
                this.m.a((ViewGroup) this.q, this.r);
            }
            ViewGroup.LayoutParams layoutParams = this.q.getLayoutParams();
            layoutParams.height = -2;
            this.q.setLayoutParams(layoutParams);
        }
    }

    private boolean u() {
        if (this.f36401b != null) {
            return this.f36401b.isExpanded();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.gmariotti.cardslib.library.view.BaseCardView
    public final void a() {
        super.a();
        this.f36401b.setCardView(this);
        k();
        l();
        m();
        t();
        o();
        q();
        p();
        n();
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void a(int i) {
        View view;
        if (i != 0 && (view = this.n) != null) {
            view.setBackgroundResource(i);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void a(Drawable drawable) {
        if (drawable != null && this.n != null) {
            this.j.a(this.n, drawable);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.BaseCardView
    protected final void a(AttributeSet attributeSet, int i) {
        this.f36402c = a.e.card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36402c = obtainStyledAttributes.getResourceId(a.g.card_options_card_layout_resourceID, this.f36402c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void a(it.gmariotti.cardslib.library.a.b bVar) {
        this.h = true;
        setCard(bVar);
        this.h = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.gmariotti.cardslib.library.view.BaseCardView
    public final void b() {
        super.b();
        this.n = findViewById(a.c.card_main_layout);
        this.f = (CardHeaderView) findViewById(a.c.card_header_layout);
        this.q = findViewById(a.c.card_content_expand_layout);
        this.o = findViewById(a.c.card_main_content_layout);
        this.g = (CardThumbnailView) findViewById(a.c.card_thumbnail_layout);
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        View view = this.n;
        if (view != null && (view instanceof ForegroundLinearLayout)) {
            view.drawableHotspotChanged(f, f2);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void g() {
        View view = this.q;
        if (view != null) {
            b bVar = new b(view, this.f36401b, false);
            if (this.q.getVisibility() == 0) {
                a.d(bVar);
            } else {
                a.c(bVar);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public View getInternalMainCardLayout() {
        return this.n;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void h() {
        View view = this.q;
        if (view != null) {
            b bVar = new b(view, this.f36401b, false);
            if (!(this.q.getVisibility() == 0)) {
                a.c(bVar);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void i() {
        View view = this.q;
        if (view != null) {
            b bVar = new b(view, this.f36401b, false);
            if (this.q.getVisibility() == 0) {
                a.d(bVar);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public boolean isNative() {
        return false;
    }

    public final a.AbstractC0600a j() {
        return this.t;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // it.gmariotti.cardslib.library.view.BaseCardView, it.gmariotti.cardslib.library.view.a.a
    public void setCard(it.gmariotti.cardslib.library.a.b bVar) {
        super.setCard(bVar);
        if (bVar != null) {
            this.k = bVar.getCardHeader();
            this.l = bVar.getCardThumbnail();
            this.m = bVar.getCardExpand();
        }
        if (!e()) {
            b();
        }
        a();
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public void setExpanded(boolean z) {
        if (this.f36401b != null) {
            this.f36401b.setExpanded(z);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public void setOnExpandListAnimatorListener(a.AbstractC0600a aVar) {
        this.t = aVar;
    }
}
