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
import androidx.cardview.widget.CardView;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.e;
import it.gmariotti.cardslib.library.a.i;
import it.gmariotti.cardslib.library.a.j;
import it.gmariotti.cardslib.library.a.k;
import it.gmariotti.cardslib.library.view.a.a;
import it.gmariotti.cardslib.library.view.b.f;
import it.gmariotti.cardslib.library.view.component.CardHeaderView;
import it.gmariotti.cardslib.library.view.component.CardThumbnailView;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative.class */
public class CardViewNative extends CardView implements it.gmariotti.cardslib.library.view.a.a {
    protected static String e = "CardViewNative";
    protected it.gmariotti.cardslib.library.a.b f;
    protected int g;
    protected View h;
    protected CardHeaderView i;
    protected CardThumbnailView j;
    protected boolean k;
    protected boolean l;
    protected it.gmariotti.cardslib.library.view.b.a m;
    protected i n;
    protected j o;
    protected e p;
    protected View q;
    protected View r;
    protected View s;
    protected View t;
    protected View u;
    protected Animator v;
    protected a.AbstractC0600a w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: it.gmariotti.cardslib.library.view.CardViewNative$6  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$6.class */
    public static final /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f36449a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[k.a.values().length];
            f36449a = iArr;
            try {
                iArr[k.a.CARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36449a[k.a.HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f36449a[k.a.THUMBNAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f36449a[k.a.MAIN_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$a.class */
    public static final class a {
        private a() {
        }

        protected static ValueAnimator a(final CardViewNative cardViewNative, int i, int i2) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.CardViewNative.a.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = CardViewNative.this.t.getLayoutParams();
                    layoutParams.height = intValue;
                    CardViewNative.this.t.setLayoutParams(layoutParams);
                }
            });
            return ofInt;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(final b bVar) {
            if (bVar.a().getOnExpandListAnimatorListener() != null) {
                bVar.a().getOnExpandListAnimatorListener().a(bVar.a(), bVar.f36453a);
                return;
            }
            bVar.f36453a.setVisibility(0);
            if (bVar.a().v != null) {
                bVar.a().v.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.CardViewNative.a.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        b.this.f36454b.setExpanded(true);
                        if (b.this.f36454b.getOnExpandAnimatorEndListener() != null) {
                            b.this.f36454b.getOnExpandAnimatorEndListener().a();
                        }
                    }
                });
                bVar.a().v.start();
                return;
            }
            if (bVar.f36454b.getOnExpandAnimatorEndListener() != null) {
                bVar.f36454b.getOnExpandAnimatorEndListener().a();
            }
            Log.w(CardViewNative.e, "Does the card have the ViewToClickToExpand?");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(final b bVar) {
            if (bVar.a().getOnExpandListAnimatorListener() != null) {
                bVar.a().getOnExpandListAnimatorListener().b(bVar.a(), bVar.f36453a);
                return;
            }
            ValueAnimator a2 = a(bVar.a(), bVar.f36453a.getHeight(), 0);
            a2.addListener(new Animator.AnimatorListener() { // from class: it.gmariotti.cardslib.library.view.CardViewNative.a.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    b.this.f36453a.setVisibility(8);
                    b.this.f36454b.setExpanded(false);
                    if (b.this.f36454b.getOnCollapseAnimatorEndListener() != null) {
                        b.this.f36454b.getOnCollapseAnimatorEndListener().a();
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
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        View f36453a;

        /* renamed from: b  reason: collision with root package name */
        it.gmariotti.cardslib.library.a.b f36454b;

        /* renamed from: c  reason: collision with root package name */
        boolean f36455c;

        private b(View view, it.gmariotti.cardslib.library.a.b bVar, boolean z) {
            this.f36455c = true;
            this.f36453a = view;
            this.f36454b = bVar;
            this.f36455c = z;
        }

        public final CardViewNative a() {
            return (CardViewNative) this.f36454b.getCardView();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$c.class */
    public final class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        b f36457a;

        private c(CardViewNative cardViewNative, View view, it.gmariotti.cardslib.library.a.b bVar) {
            this(view, bVar, true);
        }

        private c(View view, it.gmariotti.cardslib.library.a.b bVar, boolean z) {
            this.f36457a = new b(view, bVar, z);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f36457a.f36453a.getVisibility() == 0) {
                a.d(this.f36457a);
                if (this.f36457a.f36455c) {
                    view.setSelected(false);
                    return;
                }
                return;
            }
            a.c(this.f36457a);
            if (this.f36457a.f36455c) {
                view.setSelected(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/CardViewNative$d.class */
    public final class d implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        c f36459a;

        private d(c cVar) {
            this.f36459a = cVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            c cVar = this.f36459a;
            if (cVar == null) {
                return false;
            }
            cVar.onClick(view);
            return true;
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
        this.g = a.e.native_card_layout;
        this.k = false;
        this.l = false;
        this.g = a.e.native_card_layout;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.g = obtainStyledAttributes.getResourceId(a.g.card_options_card_layout_resourceID, this.g);
            obtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                this.h = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.g, (ViewGroup) this, true);
                setRadius(getResources().getDimension(a.C0595a.card_background_default_radius));
            }
            this.m = f.a(context);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private View b(int i) {
        View view = null;
        if (i < 0 && i > 10) {
            return null;
        }
        if (i == 0) {
            view = this;
        } else if (i == 1) {
            view = this.j;
        } else if (i == 2) {
            view = this.i;
        } else if (i == 9) {
            view = this.q;
        } else if (i == 10) {
            view = this.r;
        }
        return view;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void a(int i) {
        if (i != it.gmariotti.cardslib.library.a.b.DEFAULT_COLOR) {
            a(getResources().getDrawable(i));
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void a(Drawable drawable) {
        View view;
        if (drawable != null && (view = this.q) != null) {
            this.m.a(view, drawable);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void a(it.gmariotti.cardslib.library.a.b bVar) {
        this.k = true;
        setCard(bVar);
        this.k = false;
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        View view = this.q;
        if (view != null && (view instanceof ForegroundLinearLayout)) {
            view.drawableHotspotChanged(f, f2);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void g() {
        View view = this.t;
        if (view != null) {
            b bVar = new b(view, this.f, false);
            if (this.t.getVisibility() == 0) {
                a.d(bVar);
            } else {
                a.c(bVar);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public it.gmariotti.cardslib.library.a.b getCard() {
        return this.f;
    }

    public View getInternalContentLayout() {
        return this.r;
    }

    public CardHeaderView getInternalHeaderLayout() {
        return this.i;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public View getInternalMainCardLayout() {
        return this.q;
    }

    public CardThumbnailView getInternalThumbnailLayout() {
        return this.j;
    }

    public a.AbstractC0600a getOnExpandListAnimatorListener() {
        return this.w;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void h() {
        View view = this.t;
        if (view != null) {
            b bVar = new b(view, this.f, false);
            if (!(this.t.getVisibility() == 0)) {
                a.c(bVar);
            }
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public final void i() {
        View view = this.t;
        if (view != null) {
            b bVar = new b(view, this.f, false);
            if (this.t.getVisibility() == 0) {
                a.d(bVar);
            }
        }
    }

    public boolean isExpanded() {
        it.gmariotti.cardslib.library.a.b bVar = this.f;
        if (bVar != null) {
            return bVar.isExpanded();
        }
        return false;
    }

    public boolean isForceReplaceInnerLayout() {
        return this.l;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public boolean isNative() {
        return true;
    }

    public boolean isRecycle() {
        return this.k;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04ee  */
    @Override // it.gmariotti.cardslib.library.view.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCard(it.gmariotti.cardslib.library.a.b r10) {
        /*
            Method dump skipped, instructions count: 1388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.CardViewNative.setCard(it.gmariotti.cardslib.library.a.b):void");
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public void setExpanded(boolean z) {
        it.gmariotti.cardslib.library.a.b bVar = this.f;
        if (bVar != null) {
            bVar.setExpanded(z);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public void setForceReplaceInnerLayout(boolean z) {
        this.l = z;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public void setOnExpandListAnimatorListener(a.AbstractC0600a aVar) {
        this.w = aVar;
    }

    @Override // it.gmariotti.cardslib.library.view.a.a
    public void setRecycle(boolean z) {
        this.k = z;
    }
}
