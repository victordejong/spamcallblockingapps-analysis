package com.callapp.contacts.activity.fastscroll;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0926v;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.C5563R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fastscroll/FastScroller.class */
public class FastScroller extends LinearLayout {

    /* renamed from: a */
    RecyclerView f22906a;

    /* renamed from: b */
    RecyclerView.AbstractC2645m f22907b;

    /* renamed from: c */
    private int f22908c;

    /* renamed from: d */
    private int f22909d;

    /* renamed from: e */
    private int f22910e;

    /* renamed from: f */
    private boolean f22911f;

    /* renamed from: g */
    private SectionIndexer f22912g;

    /* renamed from: h */
    private ViewPropertyAnimator f22913h;

    /* renamed from: i */
    private ViewPropertyAnimator f22914i;

    /* renamed from: j */
    private TextView f22915j;

    /* renamed from: k */
    private ImageView f22916k;

    /* renamed from: l */
    private ImageView f22917l;

    /* renamed from: m */
    private View f22918m;

    /* renamed from: n */
    private Drawable f22919n;

    /* renamed from: o */
    private Drawable f22920o;

    /* renamed from: p */
    private Drawable f22921p;

    /* renamed from: q */
    private boolean f22922q;

    /* renamed from: r */
    private FastScrollStateChangeListener f22923r;

    /* renamed from: s */
    private Runnable f22924s;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer.class */
    public interface SectionIndexer {
        String getSectionText(int i);
    }

    public FastScroller(Context context) {
        super(context);
        this.f22924s = new Runnable() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller.m30332a(FastScroller.this);
            }
        };
        this.f22907b = new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10833a(RecyclerView recyclerView, int i) {
                super.mo10833a(recyclerView, i);
                if (FastScroller.this.isEnabled()) {
                    if (i == 0) {
                        if (!FastScroller.this.f22911f || FastScroller.this.f22916k.isSelected()) {
                            return;
                        }
                        FastScroller.this.getHandler().postDelayed(FastScroller.this.f22924s, 1000L);
                    } else if (i != 1) {
                    } else {
                        FastScroller.this.getHandler().removeCallbacks(FastScroller.this.f22924s);
                        FastScroller.m30328b(FastScroller.this.f22913h);
                        if (FastScroller.m30329b(FastScroller.this.f22918m)) {
                            return;
                        }
                        FastScroller.this.m30337a();
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10832a(RecyclerView recyclerView, int i, int i2) {
                if (FastScroller.this.f22916k.isSelected() || !FastScroller.this.isEnabled()) {
                    return;
                }
                FastScroller fastScroller = FastScroller.this;
                fastScroller.setViewPositions(FastScroller.m30330a(fastScroller, recyclerView));
            }
        };
        m30335a(context, (AttributeSet) null);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f22924s = new Runnable() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller.m30332a(FastScroller.this);
            }
        };
        this.f22907b = new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10833a(RecyclerView recyclerView, int i2) {
                super.mo10833a(recyclerView, i2);
                if (FastScroller.this.isEnabled()) {
                    if (i2 == 0) {
                        if (!FastScroller.this.f22911f || FastScroller.this.f22916k.isSelected()) {
                            return;
                        }
                        FastScroller.this.getHandler().postDelayed(FastScroller.this.f22924s, 1000L);
                    } else if (i2 != 1) {
                    } else {
                        FastScroller.this.getHandler().removeCallbacks(FastScroller.this.f22924s);
                        FastScroller.m30328b(FastScroller.this.f22913h);
                        if (FastScroller.m30329b(FastScroller.this.f22918m)) {
                            return;
                        }
                        FastScroller.this.m30337a();
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10832a(RecyclerView recyclerView, int i2, int i22) {
                if (FastScroller.this.f22916k.isSelected() || !FastScroller.this.isEnabled()) {
                    return;
                }
                FastScroller fastScroller = FastScroller.this;
                fastScroller.setViewPositions(FastScroller.m30330a(fastScroller, recyclerView));
            }
        };
        m30335a(context, attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
    }

    /* renamed from: a */
    static /* synthetic */ float m30330a(FastScroller fastScroller, RecyclerView recyclerView) {
        float computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        float computeVerticalScrollRange = recyclerView.computeVerticalScrollRange();
        int i = fastScroller.f22910e;
        return i * (computeVerticalScrollOffset / (computeVerticalScrollRange - i));
    }

    /* renamed from: a */
    private static int m30336a(int i, int i2) {
        return Math.min(Math.max(0, i2), i);
    }

    /* renamed from: a */
    public void m30337a() {
        if (this.f22906a.computeVerticalScrollRange() - this.f22910e > 0) {
            this.f22918m.setTranslationX(getResources().getDimensionPixelSize(this.f22922q ? 2131165645 : 2131165644));
            this.f22918m.setVisibility(0);
            this.f22913h = this.f22918m.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.5
            });
        }
    }

    /* renamed from: a */
    private void m30335a(Context context, AttributeSet attributeSet) {
        inflate(context, 2131558661, this);
        setClipChildren(false);
        setOrientation(0);
        this.f22915j = (TextView) findViewById(2131362782);
        this.f22916k = (ImageView) findViewById(2131362783);
        this.f22917l = (ImageView) findViewById(2131362785);
        this.f22918m = findViewById(2131362784);
        boolean z = false;
        int i = -1;
        int i2 = -3355444;
        int i3 = -12303292;
        int i4 = -7829368;
        boolean z2 = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.FastScrollRecyclerView, 0, 0);
            z = false;
            i = -1;
            i2 = -3355444;
            i3 = -12303292;
            i4 = -7829368;
            z2 = true;
            if (obtainStyledAttributes != null) {
                try {
                    i4 = obtainStyledAttributes.getColor(0, -7829368);
                    i3 = obtainStyledAttributes.getColor(2, -12303292);
                    i2 = obtainStyledAttributes.getColor(5, -3355444);
                    i = obtainStyledAttributes.getColor(1, -1);
                    z = obtainStyledAttributes.getBoolean(4, false);
                    z2 = obtainStyledAttributes.getBoolean(3, true);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            }
        }
        setTrackColor(i2);
        setHandleColor(i3);
        setBubbleColor(i4);
        setBubbleTextColor(i);
        setHideScrollbar(z2);
        setTrackVisible(z);
    }

    /* renamed from: a */
    static /* synthetic */ void m30332a(FastScroller fastScroller) {
        fastScroller.f22913h = fastScroller.f22918m.animate().translationX(fastScroller.getResources().getDimensionPixelSize(fastScroller.f22922q ? 2131165645 : 2131165644)).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                FastScroller.this.f22918m.setVisibility(8);
                FastScroller.this.f22913h = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                FastScroller.this.f22918m.setVisibility(8);
                FastScroller.this.f22913h = null;
            }
        });
    }

    /* renamed from: b */
    public static void m30328b(ViewPropertyAnimator viewPropertyAnimator) {
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* renamed from: b */
    public static boolean m30329b(View view) {
        return view != null && view.getVisibility() == 0;
    }

    private void setHandleSelected(boolean z) {
        this.f22916k.setSelected(z);
        C0840a.m44357a(this.f22920o, z ? this.f22908c : this.f22909d);
    }

    private void setRecyclerViewPosition(float f) {
        float f2;
        RecyclerView recyclerView = this.f22906a;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        int itemCount = this.f22906a.getAdapter().getItemCount();
        if (this.f22916k.getY() == BitmapDescriptorFactory.HUE_RED) {
            f2 = 0.0f;
        } else {
            float y = this.f22916k.getY();
            float height = this.f22916k.getHeight();
            int i = this.f22910e;
            f2 = y + height >= ((float) (i - 5)) ? 1.0f : f / i;
        }
        int m30336a = m30336a(itemCount - 1, (int) (f2 * itemCount));
        this.f22906a.m40445e();
        this.f22906a.getLayoutManager().mo40240d(m30336a);
        SectionIndexer sectionIndexer = this.f22912g;
        if (sectionIndexer == null) {
            return;
        }
        this.f22915j.setText(sectionIndexer.getSectionText(m30336a));
    }

    public void setViewPositions(float f) {
        int height = this.f22915j.getHeight();
        int height2 = this.f22916k.getHeight();
        int i = height2 / 2;
        this.f22915j.setY(m30336a((this.f22910e - height) - i, (int) (f - height)));
        this.f22916k.setY(m30336a(this.f22910e - height2, (int) (f - i)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f22910e = i2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return super.onTouchEvent(motionEvent);
                    }
                }
            }
            setHandleSelected(false);
            if (this.f22911f) {
                getHandler().postDelayed(this.f22924s, 1000L);
            }
            if (!m30329b(this.f22915j)) {
                return true;
            }
            this.f22914i = this.f22915j.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    FastScroller.this.f22915j.setVisibility(8);
                    FastScroller.this.f22914i = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    FastScroller.this.f22915j.setVisibility(8);
                    FastScroller.this.f22914i = null;
                }
            });
            return true;
        } else if (motionEvent.getX() < this.f22916k.getX() - C0926v.m44091i(this.f22916k)) {
            return false;
        } else {
            setHandleSelected(true);
            getHandler().removeCallbacks(this.f22924s);
            m30328b(this.f22913h);
            m30328b(this.f22914i);
            if (!m30329b(this.f22918m)) {
                m30337a();
            }
            if (this.f22912g != null && !m30329b(this.f22915j)) {
                this.f22915j.setVisibility(0);
                this.f22914i = this.f22915j.animate().alpha(1.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.3
                });
            }
        }
        float y = motionEvent.getY();
        setViewPositions(y);
        setRecyclerViewPosition(y);
        return true;
    }

    public void setBubbleColor(int i) {
        this.f22908c = i;
        if (this.f22919n == null) {
            Drawable m44345f = C0840a.m44345f(C0790b.m44502a(getContext(), 2131231096));
            this.f22919n = m44345f;
            m44345f.mutate();
        }
        C0840a.m44357a(this.f22919n, this.f22908c);
        this.f22915j.setBackground(this.f22919n);
    }

    public void setBubbleTextColor(int i) {
        this.f22915j.setTextColor(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setVisibility(z ? 0 : 8);
    }

    public void setFastScrollStateChangeListener(FastScrollStateChangeListener fastScrollStateChangeListener) {
        this.f22923r = fastScrollStateChangeListener;
    }

    public void setFastScrollWidePadding(boolean z) {
        this.f22922q = z;
        int dimensionPixelSize = getResources().getDimensionPixelSize(z ? 2131165645 : 2131165644);
        this.f22917l.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        this.f22916k.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
    }

    public void setHandleColor(int i) {
        this.f22909d = i;
        if (this.f22920o == null) {
            Drawable m44345f = C0840a.m44345f(C0790b.m44502a(getContext(), 2131231097));
            this.f22920o = m44345f;
            m44345f.mutate();
        }
        C0840a.m44357a(this.f22920o, this.f22909d);
        this.f22916k.setImageDrawable(this.f22920o);
    }

    public void setHideScrollbar(boolean z) {
        this.f22911f = z;
        this.f22918m.setVisibility(z ? 8 : 0);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        super.setLayoutParams(layoutParams);
    }

    public void setLayoutParams(ViewGroup viewGroup) {
        if (viewGroup instanceof CoordinatorLayout) {
            CoordinatorLayout.C0702d c0702d = (CoordinatorLayout.C0702d) getLayoutParams();
            int id = this.f22906a.getId();
            if (id != -1) {
                c0702d.f3211l = null;
                c0702d.f3210k = null;
                c0702d.f3205f = id;
                c0702d.f3203d = 8388613;
            } else {
                c0702d.f3202c = 8388613;
            }
            setLayoutParams(c0702d);
        } else if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams.gravity = 8388613;
            setLayoutParams(layoutParams);
        } else if (!(viewGroup instanceof RelativeLayout)) {
            throw new IllegalArgumentException("Parent ViewGroup must be a CoordinatorLayout, FrameLayout, or RelativeLayout");
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) getLayoutParams();
            layoutParams2.addRule(21);
            setLayoutParams(layoutParams2);
        }
    }

    public void setSectionIndexer(SectionIndexer sectionIndexer) {
        this.f22912g = sectionIndexer;
    }

    public void setTrackColor(int i) {
        if (this.f22921p == null) {
            Drawable m44345f = C0840a.m44345f(C0790b.m44502a(getContext(), 2131231098));
            this.f22921p = m44345f;
            m44345f.mutate();
        }
        C0840a.m44357a(this.f22921p, i);
        this.f22917l.setImageDrawable(this.f22921p);
    }

    public void setTrackVisible(boolean z) {
        this.f22917l.setVisibility(z ? 0 : 8);
    }
}
