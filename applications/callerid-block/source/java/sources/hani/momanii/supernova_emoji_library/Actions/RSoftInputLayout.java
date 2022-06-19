package hani.momanii.supernova_emoji_library.Actions;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/RSoftInputLayout.class */
public class RSoftInputLayout extends ViewGroup {

    /* renamed from: b */
    View f12969b;

    /* renamed from: c */
    View f12970c;

    /* renamed from: i */
    private boolean f12976i;

    /* renamed from: k */
    private ValueAnimator f12978k;

    /* renamed from: d */
    int f12971d = 0;

    /* renamed from: e */
    int f12972e = 0;

    /* renamed from: f */
    boolean f12973f = false;

    /* renamed from: g */
    HashSet<AbstractC3149d> f12974g = new HashSet<>();

    /* renamed from: h */
    private boolean f12975h = false;

    /* renamed from: j */
    private Runnable f12977j = new RunnableC3146a();

    /* renamed from: l */
    private boolean f12979l = false;

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.RSoftInputLayout$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$a.class */
    class RunnableC3146a implements Runnable {
        RunnableC3146a() {
            RSoftInputLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RSoftInputLayout.this.onSizeChanged(0, 0, 0, 0);
        }
    }

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.RSoftInputLayout$b */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$b.class */
    public class C3147b implements ValueAnimator.AnimatorUpdateListener {
        C3147b() {
            RSoftInputLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            RSoftInputLayout.this.m33l(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.RSoftInputLayout$c */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c.class */
    public class C3148c implements Animator.AnimatorListener {
        C3148c() {
            RSoftInputLayout.this = r4;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            RSoftInputLayout.this.f12978k = null;
            RSoftInputLayout rSoftInputLayout = RSoftInputLayout.this;
            rSoftInputLayout.post(rSoftInputLayout.f12977j);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.RSoftInputLayout$d */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d.class */
    public interface AbstractC3149d {
        /* renamed from: a */
        void m30a(boolean z, boolean z2, int i);
    }

    public RSoftInputLayout(Context context) {
        super(context);
    }

    public RSoftInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RSoftInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: e */
    private void m40e(int i, int i2) {
        if (this.f12978k != null) {
            return;
        }
        ValueAnimator ofInt = ObjectAnimator.ofInt(i2, i);
        this.f12978k = ofInt;
        ofInt.setIntValues(new int[0]);
        this.f12978k.setDuration(300L);
        this.f12978k.setInterpolator(new DecelerateInterpolator());
        this.f12978k.addUpdateListener(new C3147b());
        this.f12978k.addListener(new C3148c());
        this.f12978k.start();
    }

    /* renamed from: k */
    private void m34k(boolean z, boolean z2, int i) {
        Iterator<AbstractC3149d> it = this.f12974g.iterator();
        while (it.hasNext()) {
            it.next().m30a(z, z2, i);
        }
    }

    /* renamed from: l */
    public void m33l(int i) {
        if (!this.f12973f || i != this.f12972e) {
            this.f12973f = i > 0;
            this.f12972e = i;
            requestLayout();
        }
    }

    /* renamed from: n */
    private void m31n(int i) {
        if (!this.f12973f || i != this.f12972e) {
            boolean m36i = m36i();
            int i2 = this.f12972e;
            this.f12973f = i > 0;
            this.f12972e = i;
            if (m36i) {
                m38g();
                return;
            }
            requestLayout();
            if (this.f12979l) {
                m40e(i, i2);
            } else {
                post(this.f12977j);
            }
        }
    }

    /* renamed from: d */
    public void m41d(AbstractC3149d abstractC3149d) {
        this.f12974g.add(abstractC3149d);
    }

    /* renamed from: f */
    public void m39f() {
        if (this.f12975h || this.f12973f) {
            m31n(0);
        }
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        boolean fitSystemWindows = super.fitSystemWindows(rect);
        post(this.f12977j);
        return fitSystemWindows;
    }

    /* renamed from: g */
    public void m38g() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    public int getKeyboardHeight() {
        return this.f12971d;
    }

    @Override // android.view.View
    public int getPaddingTop() {
        if (!this.f12976i) {
            return 0;
        }
        return super.getPaddingTop();
    }

    public int getShowEmojiHeight() {
        return this.f12972e;
    }

    public int getSoftKeyboardHeight() {
        int i = getResources().getDisplayMetrics().heightPixels;
        Rect rect = new Rect();
        getWindowVisibleDisplayFrame(rect);
        return i - rect.bottom;
    }

    /* renamed from: h */
    public boolean m37h() {
        return this.f12973f;
    }

    /* renamed from: i */
    public boolean m36i() {
        return this.f12975h;
    }

    /* renamed from: j */
    public boolean m35j() {
        int i = getResources().getDisplayMetrics().heightPixels;
        int softKeyboardHeight = getSoftKeyboardHeight();
        return i != softKeyboardHeight && softKeyboardHeight > 100;
    }

    /* renamed from: m */
    public void m32m() {
        m31n(this.f12971d);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getChildCount() == 2) {
            this.f12969b = getChildAt(0);
            this.f12970c = getChildAt(1);
            setFitsSystemWindows(true);
            setClipToPadding(false);
            if (this.f12971d != 0) {
                return;
            }
            this.f12971d = (int) (getResources().getDisplayMetrics().density * 250.0f);
            return;
        }
        throw new IllegalArgumentException("必须含有2个子View.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop = getPaddingTop();
        View view = this.f12969b;
        view.layout(i, i2 + paddingTop, i3, view.getMeasuredHeight() + paddingTop);
        this.f12970c.layout(i, this.f12969b.getMeasuredHeight() + paddingTop, i3, getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingBottom = (size2 - getPaddingBottom()) - getPaddingTop();
        boolean m35j = m35j();
        this.f12975h = m35j;
        int i3 = 0;
        if (m35j) {
            this.f12971d = getSoftKeyboardHeight();
            this.f12973f = false;
        }
        if (this.f12973f) {
            i3 = getShowEmojiHeight() == 0 ? this.f12971d : getShowEmojiHeight();
        }
        if (!this.f12975h) {
            paddingBottom -= i3;
        }
        this.f12969b.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
        this.f12970c.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        removeCallbacks(this.f12977j);
        boolean z = this.f12973f;
        boolean z2 = this.f12975h;
        m34k(z, z2, z2 ? getSoftKeyboardHeight() : this.f12972e);
    }

    public void setAnimToShow(boolean z) {
        this.f12979l = z;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.f12976i = z;
    }
}
