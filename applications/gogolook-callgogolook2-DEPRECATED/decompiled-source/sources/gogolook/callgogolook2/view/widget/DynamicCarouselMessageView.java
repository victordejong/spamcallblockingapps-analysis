package gogolook.callgogolook2.view.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.appcompat.widget.TooltipCompatHandler;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/DynamicCarouselMessageView.class */
public class DynamicCarouselMessageView extends RelativeLayout {

    /* renamed from: a */
    public TextView f13241a = null;

    /* renamed from: b */
    public TextView f13242b = null;

    /* renamed from: c */
    public final SparseArray<C5314c> f13243c = new SparseArray<>();

    /* renamed from: d */
    public int f13244d = 0;

    /* renamed from: e */
    public Handler f13245e = new Handler();

    /* renamed from: f */
    public boolean f13246f = false;

    /* renamed from: g */
    public long f13247g = TooltipCompatHandler.LONG_CLICK_HIDE_TIMEOUT_MS;

    /* renamed from: h */
    public AnimatorSet f13248h = null;

    /* renamed from: i */
    public boolean f13249i = false;

    /* renamed from: j */
    public Animator.AnimatorListener f13250j = new C5312a();

    /* renamed from: k */
    public Runnable f13251k = new RunnableC5313b();

    /* renamed from: gogolook.callgogolook2.view.widget.DynamicCarouselMessageView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/DynamicCarouselMessageView$a.class */
    public class C5312a implements Animator.AnimatorListener {
        public C5312a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DynamicCarouselMessageView.m25727e(DynamicCarouselMessageView.this);
            TextView textView = DynamicCarouselMessageView.this.f13241a;
            DynamicCarouselMessageView dynamicCarouselMessageView = DynamicCarouselMessageView.this;
            dynamicCarouselMessageView.f13241a = dynamicCarouselMessageView.f13242b;
            DynamicCarouselMessageView.this.f13242b = textView;
            DynamicCarouselMessageView.this.f13242b.setVisibility(4);
            DynamicCarouselMessageView.this.f13241a.setVisibility(0);
            DynamicCarouselMessageView.this.m25739a();
            DynamicCarouselMessageView.this.f13245e.removeCallbacksAndMessages(null);
            DynamicCarouselMessageView.this.f13245e.postDelayed(DynamicCarouselMessageView.this.f13251k, DynamicCarouselMessageView.this.f13247g);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i = 4;
            DynamicCarouselMessageView.this.f13242b.setVisibility(DynamicCarouselMessageView.this.f13249i ? 4 : 0);
            float f = 0.0f;
            DynamicCarouselMessageView.this.f13242b.setAlpha(DynamicCarouselMessageView.this.f13249i ? 0.0f : 1.0f);
            TextView textView = DynamicCarouselMessageView.this.f13241a;
            if (!DynamicCarouselMessageView.this.f13249i) {
                i = 0;
            }
            textView.setVisibility(i);
            TextView textView2 = DynamicCarouselMessageView.this.f13241a;
            if (!DynamicCarouselMessageView.this.f13249i) {
                f = 1.0f;
            }
            textView2.setAlpha(f);
            DynamicCarouselMessageView.this.m25739a();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.DynamicCarouselMessageView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/DynamicCarouselMessageView$b.class */
    public class RunnableC5313b implements Runnable {
        public RunnableC5313b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DynamicCarouselMessageView.this.m25731c();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.DynamicCarouselMessageView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/DynamicCarouselMessageView$c.class */
    public static class C5314c {

        /* renamed from: a */
        public final String f13254a;
        @ColorInt

        /* renamed from: b */
        public final int f13255b;

        /* renamed from: a */
        public void m25722a(TextView textView) {
            textView.setText(this.f13254a);
            textView.setTextColor(this.f13255b);
            textView.setTag(this);
            textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
    }

    public DynamicCarouselMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25737a(context);
    }

    /* renamed from: e */
    public static /* synthetic */ int m25727e(DynamicCarouselMessageView dynamicCarouselMessageView) {
        int i = dynamicCarouselMessageView.f13244d;
        dynamicCarouselMessageView.f13244d = i + 1;
        return i;
    }

    /* renamed from: a */
    public final C5314c m25738a(int i) {
        int size = this.f13243c.size();
        if (i < 0 || i >= size) {
            return null;
        }
        return this.f13243c.get(this.f13243c.keyAt(i));
    }

    /* renamed from: a */
    public final void m25739a() {
        int size = this.f13243c.size();
        if (size > 0) {
            m25738a(this.f13244d % size).m25722a(this.f13241a);
            if (size > 1) {
                m25738a((this.f13244d + 1) % size).m25722a(this.f13242b);
            }
        }
    }

    /* renamed from: a */
    public final void m25737a(Context context) {
        this.f13241a = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.f13241a.setLayoutParams(layoutParams);
        this.f13242b = new TextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.f13242b.setLayoutParams(layoutParams2);
        this.f13242b.setVisibility(8);
        addView(this.f13242b);
        addView(this.f13241a);
    }

    /* renamed from: b */
    public final void m25734b() {
        this.f13245e.removeCallbacksAndMessages(null);
        this.f13245e.postDelayed(this.f13251k, this.f13247g);
    }

    /* renamed from: c */
    public final void m25731c() {
        SparseArray<C5314c> sparseArray;
        int height;
        if (this.f13246f && (sparseArray = this.f13243c) != null && sparseArray.size() > 1 && (height = getHeight()) > 0) {
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f13241a, PropertyValuesHolder.ofFloat("y", 0.0f, -height), PropertyValuesHolder.ofFloat("alpha", 1.0f, 0.0f));
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f13242b, "y", height, 0.0f);
            this.f13248h = new AnimatorSet();
            this.f13248h.setDuration(500L);
            this.f13248h.playTogether(ofPropertyValuesHolder, ofFloat);
            this.f13248h.addListener(this.f13250j);
            this.f13248h.start();
            this.f13245e.removeCallbacksAndMessages(null);
        }
    }

    /* renamed from: d */
    public final void m25729d() {
        this.f13245e.removeCallbacksAndMessages(null);
        AnimatorSet animatorSet = this.f13248h;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f13248h = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13246f = false;
        m25729d();
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (i != 1 || this.f13249i) {
            this.f13246f = false;
            m25729d();
            return;
        }
        this.f13246f = true;
        m25734b();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f13246f = true;
            m25734b();
            return;
        }
        this.f13246f = false;
        m25729d();
    }
}
