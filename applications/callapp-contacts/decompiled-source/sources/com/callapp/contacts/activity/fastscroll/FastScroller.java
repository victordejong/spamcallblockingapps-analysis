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
import androidx.core.content.b;
import androidx.core.graphics.drawable.a;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fastscroll/FastScroller.class */
public class FastScroller extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f12817a;

    /* renamed from: b  reason: collision with root package name */
    RecyclerView.m f12818b;

    /* renamed from: c  reason: collision with root package name */
    private int f12819c;

    /* renamed from: d  reason: collision with root package name */
    private int f12820d;
    private int e;
    private boolean f;
    private SectionIndexer g;
    private ViewPropertyAnimator h;
    private ViewPropertyAnimator i;
    private TextView j;
    private ImageView k;
    private ImageView l;
    private View m;
    private Drawable n;
    private Drawable o;
    private Drawable p;
    private boolean q;
    private FastScrollStateChangeListener r;
    private Runnable s;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer.class */
    public interface SectionIndexer {
        String getSectionText(int i);
    }

    public FastScroller(Context context) {
        super(context);
        this.s = new Runnable() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller.a(FastScroller.this);
            }
        };
        this.f12818b = new RecyclerView.m() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i) {
                super.a(recyclerView, i);
                if (!FastScroller.this.isEnabled()) {
                    return;
                }
                if (i != 0) {
                    if (i == 1) {
                        FastScroller.this.getHandler().removeCallbacks(FastScroller.this.s);
                        FastScroller.b(FastScroller.this.h);
                        if (!FastScroller.b(FastScroller.this.m)) {
                            FastScroller.this.a();
                        }
                    }
                } else if (FastScroller.this.f && !FastScroller.this.k.isSelected()) {
                    FastScroller.this.getHandler().postDelayed(FastScroller.this.s, 1000L);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i, int i2) {
                if (!FastScroller.this.k.isSelected() && FastScroller.this.isEnabled()) {
                    FastScroller fastScroller = FastScroller.this;
                    fastScroller.setViewPositions(FastScroller.a(fastScroller, recyclerView));
                }
            }
        };
        a(context, (AttributeSet) null);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.s = new Runnable() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller.a(FastScroller.this);
            }
        };
        this.f12818b = new RecyclerView.m() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i2) {
                super.a(recyclerView, i2);
                if (!FastScroller.this.isEnabled()) {
                    return;
                }
                if (i2 != 0) {
                    if (i2 == 1) {
                        FastScroller.this.getHandler().removeCallbacks(FastScroller.this.s);
                        FastScroller.b(FastScroller.this.h);
                        if (!FastScroller.b(FastScroller.this.m)) {
                            FastScroller.this.a();
                        }
                    }
                } else if (FastScroller.this.f && !FastScroller.this.k.isSelected()) {
                    FastScroller.this.getHandler().postDelayed(FastScroller.this.s, 1000L);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i2, int i22) {
                if (!FastScroller.this.k.isSelected() && FastScroller.this.isEnabled()) {
                    FastScroller fastScroller = FastScroller.this;
                    fastScroller.setViewPositions(FastScroller.a(fastScroller, recyclerView));
                }
            }
        };
        a(context, attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
    }

    static /* synthetic */ float a(FastScroller fastScroller, RecyclerView recyclerView) {
        float computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        float computeVerticalScrollRange = recyclerView.computeVerticalScrollRange();
        int i = fastScroller.e;
        return i * (computeVerticalScrollOffset / (computeVerticalScrollRange - i));
    }

    private static int a(int i, int i2) {
        return Math.min(Math.max(0, i2), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f12817a.computeVerticalScrollRange() - this.e > 0) {
            this.m.setTranslationX(getResources().getDimensionPixelSize(this.q ? 2131165645 : 2131165644));
            this.m.setVisibility(0);
            this.h = this.m.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.5
            });
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        inflate(context, 2131558661, this);
        setClipChildren(false);
        setOrientation(0);
        this.j = (TextView) findViewById(2131362782);
        this.k = (ImageView) findViewById(2131362783);
        this.l = (ImageView) findViewById(2131362785);
        this.m = findViewById(2131362784);
        boolean z = false;
        int i = -1;
        int i2 = -3355444;
        int i3 = -12303292;
        int i4 = -7829368;
        boolean z2 = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FastScrollRecyclerView, 0, 0);
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

    static /* synthetic */ void a(FastScroller fastScroller) {
        fastScroller.h = fastScroller.m.animate().translationX(fastScroller.getResources().getDimensionPixelSize(fastScroller.q ? 2131165645 : 2131165644)).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                FastScroller.this.m.setVisibility(8);
                FastScroller.this.h = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                FastScroller.this.m.setVisibility(8);
                FastScroller.this.h = null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ViewPropertyAnimator viewPropertyAnimator) {
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(View view) {
        return view != null && view.getVisibility() == 0;
    }

    private void setHandleSelected(boolean z) {
        this.k.setSelected(z);
        a.a(this.o, z ? this.f12819c : this.f12820d);
    }

    private void setRecyclerViewPosition(float f) {
        RecyclerView recyclerView = this.f12817a;
        if (recyclerView != null && recyclerView.getAdapter() != null) {
            int itemCount = this.f12817a.getAdapter().getItemCount();
            float y = this.k.getY();
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (y != BitmapDescriptorFactory.HUE_RED) {
                float y2 = this.k.getY();
                float height = this.k.getHeight();
                int i = this.e;
                f2 = y2 + height >= ((float) (i - 5)) ? 1.0f : f / i;
            }
            int a2 = a(itemCount - 1, (int) (f2 * itemCount));
            this.f12817a.e();
            this.f12817a.getLayoutManager().d(a2);
            SectionIndexer sectionIndexer = this.g;
            if (sectionIndexer != null) {
                this.j.setText(sectionIndexer.getSectionText(a2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewPositions(float f) {
        int height = this.j.getHeight();
        int height2 = this.k.getHeight();
        int i = height2 / 2;
        this.j.setY(a((this.e - height) - i, (int) (f - height)));
        this.k.setY(a(this.e - height2, (int) (f - i)));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.e = i2;
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
            if (this.f) {
                getHandler().postDelayed(this.s, 1000L);
            }
            if (!b(this.j)) {
                return true;
            }
            this.i = this.j.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    FastScroller.this.j.setVisibility(8);
                    FastScroller.this.i = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    FastScroller.this.j.setVisibility(8);
                    FastScroller.this.i = null;
                }
            });
            return true;
        } else if (motionEvent.getX() < this.k.getX() - v.i(this.k)) {
            return false;
        } else {
            setHandleSelected(true);
            getHandler().removeCallbacks(this.s);
            b(this.h);
            b(this.i);
            if (!b(this.m)) {
                a();
            }
            if (this.g != null && !b(this.j)) {
                this.j.setVisibility(0);
                this.i = this.j.animate().alpha(1.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.fastscroll.FastScroller.3
                });
            }
        }
        float y = motionEvent.getY();
        setViewPositions(y);
        setRecyclerViewPosition(y);
        return true;
    }

    public void setBubbleColor(int i) {
        this.f12819c = i;
        if (this.n == null) {
            Drawable f = a.f(b.a(getContext(), 2131231096));
            this.n = f;
            f.mutate();
        }
        a.a(this.n, this.f12819c);
        this.j.setBackground(this.n);
    }

    public void setBubbleTextColor(int i) {
        this.j.setTextColor(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setVisibility(z ? 0 : 8);
    }

    public void setFastScrollStateChangeListener(FastScrollStateChangeListener fastScrollStateChangeListener) {
        this.r = fastScrollStateChangeListener;
    }

    public void setFastScrollWidePadding(boolean z) {
        this.q = z;
        int dimensionPixelSize = getResources().getDimensionPixelSize(z ? 2131165645 : 2131165644);
        this.l.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        this.k.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
    }

    public void setHandleColor(int i) {
        this.f12820d = i;
        if (this.o == null) {
            Drawable f = a.f(b.a(getContext(), 2131231097));
            this.o = f;
            f.mutate();
        }
        a.a(this.o, this.f12820d);
        this.k.setImageDrawable(this.o);
    }

    public void setHideScrollbar(boolean z) {
        this.f = z;
        this.m.setVisibility(z ? 8 : 0);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        super.setLayoutParams(layoutParams);
    }

    public void setLayoutParams(ViewGroup viewGroup) {
        if (viewGroup instanceof CoordinatorLayout) {
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) getLayoutParams();
            int id = this.f12817a.getId();
            if (id != -1) {
                dVar.l = null;
                dVar.k = null;
                dVar.f = id;
                dVar.f1666d = 8388613;
            } else {
                dVar.f1665c = 8388613;
            }
            setLayoutParams(dVar);
        } else if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams.gravity = 8388613;
            setLayoutParams(layoutParams);
        } else if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) getLayoutParams();
            layoutParams2.addRule(21);
            setLayoutParams(layoutParams2);
        } else {
            throw new IllegalArgumentException("Parent ViewGroup must be a CoordinatorLayout, FrameLayout, or RelativeLayout");
        }
    }

    public void setSectionIndexer(SectionIndexer sectionIndexer) {
        this.g = sectionIndexer;
    }

    public void setTrackColor(int i) {
        if (this.p == null) {
            Drawable f = a.f(b.a(getContext(), 2131231098));
            this.p = f;
            f.mutate();
        }
        a.a(this.p, i);
        this.l.setImageDrawable(this.p);
    }

    public void setTrackVisible(boolean z) {
        this.l.setVisibility(z ? 0 : 8);
    }
}
