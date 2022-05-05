package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.core.p005os.ParcelableCompat;
import androidx.core.p005os.ParcelableCompatCreatorCallbacks;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.ArrayList;
import java.util.Comparator;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.AbstractC14629i;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: I */
    public static final Interpolator f13198I = new animationInterpolatorC5308b();

    /* renamed from: A */
    public float f13199A;

    /* renamed from: B */
    public float f13200B;

    /* renamed from: C */
    public boolean f13201C;

    /* renamed from: D */
    public EdgeEffectCompat f13202D;

    /* renamed from: E */
    public EdgeEffectCompat f13203E;

    /* renamed from: G */
    public AbstractC5311e f13205G;

    /* renamed from: c */
    public AbstractC14629i f13209c;

    /* renamed from: d */
    public int f13210d;

    /* renamed from: h */
    public Scroller f13214h;

    /* renamed from: i */
    public AbstractC14629i.AbstractC14630a f13215i;

    /* renamed from: j */
    public int f13216j;

    /* renamed from: k */
    public Drawable f13217k;

    /* renamed from: l */
    public int f13218l;

    /* renamed from: m */
    public int f13219m;

    /* renamed from: n */
    public boolean f13220n;

    /* renamed from: o */
    public boolean f13221o;

    /* renamed from: p */
    public boolean f13222p;

    /* renamed from: q */
    public boolean f13223q;

    /* renamed from: s */
    public boolean f13225s;

    /* renamed from: t */
    public boolean f13226t;

    /* renamed from: u */
    public int f13227u;

    /* renamed from: v */
    public float f13228v;

    /* renamed from: w */
    public float f13229w;

    /* renamed from: y */
    public VelocityTracker f13231y;

    /* renamed from: z */
    public int f13232z;

    /* renamed from: a */
    public boolean f13207a = false;

    /* renamed from: b */
    public final ArrayList<C5310d> f13208b = new ArrayList<>();

    /* renamed from: e */
    public int f13211e = -1;

    /* renamed from: f */
    public Parcelable f13212f = null;

    /* renamed from: g */
    public ClassLoader f13213g = null;

    /* renamed from: r */
    public int f13224r = 1;

    /* renamed from: x */
    public int f13230x = -1;

    /* renamed from: F */
    public boolean f13204F = true;

    /* renamed from: H */
    public int f13206H = 0;

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new C5306a());

        /* renamed from: a */
        public int f13233a;

        /* renamed from: b */
        public Parcelable f13234b;

        /* renamed from: c */
        public ClassLoader f13235c;

        /* renamed from: gogolook.callgogolook2.view.ViewPager$SavedState$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$SavedState$a.class */
        public static final class C5306a implements ParcelableCompatCreatorCallbacks<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.core.p005os.ParcelableCompatCreatorCallbacks
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.core.p005os.ParcelableCompatCreatorCallbacks
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            ClassLoader classLoader2 = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.f13233a = parcel.readInt();
            this.f13234b = parcel.readParcelable(classLoader2);
            this.f13235c = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f13233a + CssParser.BLOCK_END;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f13233a);
            parcel.writeParcelable(this.f13234b, i);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ViewPager$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$a.class */
    public static final class C5307a implements Comparator<C5310d> {
        /* renamed from: a */
        public int compare(C5310d dVar, C5310d dVar2) {
            return dVar.f13237b - dVar2.f13237b;
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ViewPager$b  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$b.class */
    public static final class animationInterpolatorC5308b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ViewPager$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$c.class */
    public class C5309c implements AbstractC14629i.AbstractC14630a {
        public C5309c(ViewPager viewPager) {
        }

        public /* synthetic */ C5309c(ViewPager viewPager, C5307a aVar) {
            this(viewPager);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ViewPager$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$d.class */
    public static class C5310d {

        /* renamed from: a */
        public Object f13236a;

        /* renamed from: b */
        public int f13237b;

        /* renamed from: c */
        public boolean f13238c;
    }

    /* renamed from: gogolook.callgogolook2.view.ViewPager$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ViewPager$e.class */
    public interface AbstractC5311e {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    static {
        new C5307a();
    }

    public ViewPager(Context context) {
        super(context);
        m25745c();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25745c();
    }

    /* renamed from: a */
    public C5310d m25754a(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return m25747b(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    /* renamed from: a */
    public final void m25764a() {
        boolean z = this.f13223q;
        if (z) {
            m25746b(false);
            this.f13214h.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f13214h.getCurrX();
            int currY = this.f13214h.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
            m25744c(0);
        }
        this.f13222p = false;
        this.f13223q = false;
        for (int i = 0; i < this.f13208b.size(); i++) {
            C5310d dVar = this.f13208b.get(i);
            if (dVar.f13238c) {
                dVar.f13238c = false;
                z = true;
            }
        }
        if (z) {
            m25741f();
        }
    }

    /* renamed from: a */
    public void m25762a(int i, int i2) {
        C5310d dVar = new C5310d();
        dVar.f13237b = i;
        dVar.f13236a = this.f13209c.mo963a(this, i);
        if (i2 < 0) {
            this.f13208b.add(dVar);
        } else {
            this.f13208b.add(i2, dVar);
        }
    }

    /* renamed from: a */
    public void m25761a(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            m25746b(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i5 = i - scrollX;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m25764a();
            m25744c(0);
            return;
        }
        m25746b(true);
        this.f13223q = true;
        m25744c(2);
        int abs = (int) ((Math.abs(i5) / (getWidth() + this.f13216j)) * 100.0f);
        int abs2 = Math.abs(i3);
        if (abs2 > 0) {
            float f = abs;
            i4 = (int) (f + ((f / (abs2 / this.f13199A)) * this.f13200B));
        } else {
            i4 = abs + 100;
        }
        this.f13214h.startScroll(scrollX, scrollY, i5, i6, Math.min(i4, 600));
        invalidate();
    }

    /* renamed from: a */
    public final void m25760a(int i, int i2, int i3, int i4) {
        int i5 = i + i3;
        if (i2 > 0) {
            int scrollX = getScrollX();
            int i6 = i2 + i4;
            int i7 = scrollX / i6;
            int i8 = (int) ((i7 + ((scrollX % i6) / i6)) * i5);
            scrollTo(i8, getScrollY());
            if (!this.f13214h.isFinished()) {
                this.f13214h.startScroll(i8, 0, this.f13210d * i5, 0, this.f13214h.getDuration() - this.f13214h.timePassed());
                return;
            }
            return;
        }
        int i9 = this.f13210d * i5;
        if (i9 != getScrollX()) {
            m25764a();
            scrollTo(i9, getScrollY());
        }
    }

    /* renamed from: a */
    public void m25759a(int i, boolean z) {
        this.f13222p = false;
        m25758a(i, z, false);
    }

    /* renamed from: a */
    public void m25758a(int i, boolean z, boolean z2) {
        m25757a(i, z, z2, 0);
    }

    /* renamed from: a */
    public void m25757a(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC5311e eVar;
        AbstractC5311e eVar2;
        AbstractC14629i iVar = this.f13209c;
        if (iVar == null || iVar.mo967a() <= 0) {
            m25746b(false);
        } else if (z2 || this.f13210d != i || this.f13208b.size() == 0) {
            boolean z3 = true;
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f13209c.mo967a()) {
                    i3 = this.f13209c.mo967a() - 1;
                }
            }
            int i4 = this.f13224r;
            int i5 = this.f13210d;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f13208b.size(); i6++) {
                    this.f13208b.get(i6).f13238c = true;
                }
            }
            if (this.f13210d == i3) {
                z3 = false;
            }
            this.f13210d = i3;
            m25741f();
            int width = (getWidth() + this.f13216j) * i3;
            if (z) {
                m25761a(width, 0, i2);
                if (z3 && (eVar2 = this.f13205G) != null) {
                    eVar2.onPageSelected(i3);
                    return;
                }
                return;
            }
            if (z3 && (eVar = this.f13205G) != null) {
                eVar.onPageSelected(i3);
            }
            m25764a();
            scrollTo(width, 0);
        } else {
            m25746b(false);
        }
    }

    /* renamed from: a */
    public final void m25755a(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.f13230x) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f13228v = MotionEventCompat.getX(motionEvent, i);
            this.f13230x = MotionEventCompat.getPointerId(motionEvent, i);
            VelocityTracker velocityTracker = this.f13231y;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: a */
    public void m25752a(AbstractC5311e eVar) {
        this.f13205G = eVar;
    }

    /* renamed from: a */
    public void m25751a(AbstractC14629i iVar) {
        AbstractC14629i iVar2 = this.f13209c;
        if (iVar2 != null) {
            iVar2.m960a((AbstractC14629i.AbstractC14630a) null);
            this.f13209c.mo958b(this);
            for (int i = 0; i < this.f13208b.size(); i++) {
                C5310d dVar = this.f13208b.get(i);
                this.f13209c.mo962a(this, dVar.f13237b, dVar.f13236a);
            }
            this.f13209c.mo964a(this);
            this.f13208b.clear();
            removeAllViews();
            this.f13210d = 0;
            scrollTo(0, 0);
        }
        this.f13209c = iVar;
        if (this.f13209c != null) {
            if (this.f13215i == null) {
                this.f13215i = new C5309c(this, null);
            }
            this.f13209c.m960a(this.f13215i);
            this.f13222p = false;
            if (this.f13211e >= 0) {
                this.f13209c.mo965a(this.f13212f, this.f13213g);
                m25758a(this.f13211e, false, true);
                this.f13211e = -1;
                this.f13212f = null;
                this.f13213g = null;
                return;
            }
            m25741f();
        }
    }

    /* renamed from: a */
    public void m25750a(boolean z) {
        this.f13207a = z;
    }

    /* renamed from: a */
    public boolean m25763a(int i) {
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        boolean z = false;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                z = m25743d();
            } else if (i == 66 || i == 2) {
                z = m25742e();
            }
        } else if (i == 17) {
            z = (view == null || findNextFocus.getLeft() < view.getLeft()) ? findNextFocus.requestFocus() : m25743d();
        } else if (i == 66) {
            z = (view == null || findNextFocus.getLeft() > view.getLeft()) ? findNextFocus.requestFocus() : m25742e();
        }
        if (z) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z;
    }

    /* renamed from: a */
    public boolean m25756a(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = m25763a(17);
            } else if (keyCode == 22) {
                z = m25763a(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = m25763a(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = m25763a(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public boolean m25753a(View view, boolean z, int i, int i2, int i3) {
        int i4;
        boolean z2 = true;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m25753a(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (!z || !ViewCompat.canScrollHorizontally(view, -i)) {
            z2 = false;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C5310d b;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (b = m25747b(childAt)) != null && b.f13237b == this.f13210d) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C5310d b;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (b = m25747b(childAt)) != null && b.f13237b == this.f13210d) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f13220n) {
            addViewInLayout(view, i, layoutParams);
            view.measure(this.f13218l, this.f13219m);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: b */
    public C5310d m25747b(View view) {
        for (int i = 0; i < this.f13208b.size(); i++) {
            C5310d dVar = this.f13208b.get(i);
            if (this.f13209c.mo961a(view, dVar.f13236a)) {
                return dVar;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m25749b() {
        this.f13225s = false;
        this.f13226t = false;
        VelocityTracker velocityTracker = this.f13231y;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f13231y = null;
        }
    }

    /* renamed from: b */
    public void m25748b(int i) {
        this.f13222p = false;
        m25758a(i, !this.f13204F, false);
    }

    /* renamed from: b */
    public final void m25746b(boolean z) {
        if (this.f13221o != z) {
            this.f13221o = z;
        }
    }

    /* renamed from: c */
    public void m25745c() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f13214h = new Scroller(context, f13198I);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f13227u = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        viewConfiguration.getScaledMinimumFlingVelocity();
        this.f13232z = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f13202D = new EdgeEffectCompat(context);
        this.f13203E = new EdgeEffectCompat(context);
        this.f13199A = context.getResources().getDisplayMetrics().density * 2500.0f;
        this.f13200B = 0.4f;
    }

    /* renamed from: c */
    public final void m25744c(int i) {
        if (this.f13206H != i) {
            this.f13206H = i;
            AbstractC5311e eVar = this.f13205G;
            if (eVar != null) {
                eVar.onPageScrollStateChanged(i);
            }
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f13214h.isFinished() || !this.f13214h.computeScrollOffset()) {
            m25764a();
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f13214h.getCurrX();
        int currY = this.f13214h.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
        }
        if (this.f13205G != null) {
            int width = getWidth() + this.f13216j;
            int i = currX / width;
            int i2 = currX % width;
            this.f13205G.onPageScrolled(i, i2 / width, i2);
        }
        invalidate();
    }

    /* renamed from: d */
    public boolean m25743d() {
        int i = this.f13210d;
        if (i <= 0) {
            return false;
        }
        m25759a(i - 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m25756a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C5310d b;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (b = m25747b(childAt)) != null && b.f13237b == this.f13210d && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC14629i iVar;
        super.draw(canvas);
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        int i = 1;
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (iVar = this.f13209c) != null && iVar.mo967a() > 1)) {
            if (!this.f13202D.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), 0.0f);
                this.f13202D.setSize(height, getWidth());
                z2 = false | this.f13202D.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f13203E.isFinished()) {
                int save2 = canvas.save();
                int width = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                AbstractC14629i iVar2 = this.f13209c;
                if (iVar2 != null) {
                    i = iVar2.mo967a();
                }
                canvas.rotate(90.0f);
                float f = -getPaddingTop();
                int i2 = this.f13216j;
                canvas.translate(f, ((-i) * (width + i2)) + i2);
                this.f13203E.setSize((height2 - paddingTop) - paddingBottom, width);
                z = z2 | this.f13203E.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f13202D.finish();
            this.f13203E.finish();
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f13217k;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* renamed from: e */
    public boolean m25742e() {
        AbstractC14629i iVar = this.f13209c;
        if (iVar == null || this.f13210d >= iVar.mo967a() - 1) {
            return false;
        }
        m25759a(this.f13210d + 1, true);
        return true;
    }

    /* renamed from: f */
    public void m25741f() {
        int i;
        C5310d dVar;
        C5310d dVar2;
        int i2;
        if (this.f13209c != null && !this.f13222p && getWindowToken() != null) {
            this.f13209c.mo958b(this);
            int i3 = this.f13224r;
            int max = Math.max(0, this.f13210d - i3);
            int min = Math.min(this.f13209c.mo967a() - 1, this.f13210d + i3);
            int i4 = 0;
            int i5 = -1;
            while (i4 < this.f13208b.size()) {
                C5310d dVar3 = this.f13208b.get(i4);
                int i6 = dVar3.f13237b;
                if ((i6 < max || i6 > min) && !dVar3.f13238c) {
                    this.f13208b.remove(i4);
                    i2 = i4 - 1;
                    this.f13209c.mo962a(this, dVar3.f13237b, dVar3.f13236a);
                } else {
                    i2 = i4;
                    if (i5 < min) {
                        i2 = i4;
                        if (dVar3.f13237b > max) {
                            int i7 = i5 + 1;
                            int i8 = i4;
                            int i9 = i7;
                            if (i7 < max) {
                                i9 = max;
                                i8 = i4;
                            }
                            while (true) {
                                i2 = i8;
                                if (i9 <= min) {
                                    i2 = i8;
                                    if (i9 < dVar3.f13237b) {
                                        m25762a(i9, i8);
                                        i9++;
                                        i8++;
                                    }
                                }
                            }
                        }
                    }
                }
                i5 = dVar3.f13237b;
                i4 = i2 + 1;
            }
            if (this.f13208b.size() > 0) {
                ArrayList<C5310d> arrayList = this.f13208b;
                i = arrayList.get(arrayList.size() - 1).f13237b;
            } else {
                i = -1;
            }
            if (i < min) {
                int i10 = i + 1;
                int i11 = max;
                if (i10 > max) {
                    i11 = i10;
                }
                while (i11 <= min) {
                    m25762a(i11, -1);
                    i11++;
                }
            }
            int i12 = 0;
            while (true) {
                dVar2 = null;
                if (i12 >= this.f13208b.size()) {
                    dVar = null;
                    break;
                } else if (this.f13208b.get(i12).f13237b == this.f13210d) {
                    dVar = this.f13208b.get(i12);
                    break;
                } else {
                    i12++;
                }
            }
            this.f13209c.m957b(this, this.f13210d, dVar != null ? dVar.f13236a : null);
            this.f13209c.mo964a(this);
            if (hasFocus()) {
                View findFocus = findFocus();
                if (findFocus != null) {
                    dVar2 = m25754a(findFocus);
                }
                int i13 = 0;
                if (dVar2 != null) {
                    if (dVar2.f13237b != this.f13210d) {
                        i13 = 0;
                    } else {
                        return;
                    }
                }
                while (i13 < getChildCount()) {
                    View childAt = getChildAt(i13);
                    C5310d b = m25747b(childAt);
                    if (b == null || b.f13237b != this.f13210d || !childAt.requestFocus(2)) {
                        i13++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f13204F = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f13216j > 0 && this.f13217k != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            int i = this.f13216j;
            int i2 = scrollX % (width + i);
            if (i2 != 0) {
                int i3 = (scrollX - i2) + width;
                this.f13217k.setBounds(i3, 0, i + i3, getHeight());
                this.f13217k.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.f13225s = false;
            this.f13226t = false;
            this.f13230x = -1;
            return false;
        }
        if (action != 0) {
            if (this.f13225s) {
                return true;
            }
            if (this.f13226t) {
                return false;
            }
        }
        if (action == 0) {
            this.f13228v = motionEvent.getX();
            this.f13229w = motionEvent.getY();
            this.f13230x = MotionEventCompat.getPointerId(motionEvent, 0);
            if (this.f13206H == 2) {
                this.f13225s = true;
                this.f13226t = false;
                m25744c(1);
            } else {
                m25764a();
                this.f13225s = false;
                this.f13226t = false;
            }
        } else if (action == 2) {
            int i = this.f13230x;
            if (i != -1) {
                int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, i);
                float x = MotionEventCompat.getX(motionEvent, findPointerIndex);
                float f = x - this.f13228v;
                float abs = Math.abs(f);
                float y = MotionEventCompat.getY(motionEvent, findPointerIndex);
                float abs2 = Math.abs(y - this.f13229w);
                if (m25753a(this, false, (int) f, (int) x, (int) y)) {
                    this.f13228v = x;
                    this.f13229w = y;
                    return false;
                } else if (abs > this.f13227u && abs > abs2) {
                    this.f13225s = true;
                    m25744c(1);
                    this.f13228v = x;
                    m25746b(true);
                } else if (abs2 > this.f13227u) {
                    this.f13226t = true;
                }
            }
        } else if (action == 6) {
            m25755a(motionEvent);
        }
        return this.f13225s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C5310d b;
        this.f13220n = true;
        m25741f();
        this.f13220n = false;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (!(childAt.getVisibility() == 8 || (b = m25747b(childAt)) == null)) {
                int paddingLeft = getPaddingLeft() + ((this.f13216j + (i3 - i)) * b.f13237b);
                int paddingTop = getPaddingTop();
                childAt.layout(paddingLeft, paddingTop, childAt.getMeasuredWidth() + paddingLeft, childAt.getMeasuredHeight() + paddingTop);
            }
        }
        this.f13204F = false;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(ViewGroup.getDefaultSize(0, i), ViewGroup.getDefaultSize(0, i2));
        this.f13218l = View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
        this.f13219m = View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824);
        this.f13220n = true;
        m25741f();
        this.f13220n = false;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                childAt.measure(this.f13218l, this.f13219m);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C5310d b;
        int childCount = getChildCount();
        int i4 = -1;
        if ((i & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i2 = 1;
        } else {
            i3 = childCount - 1;
            i2 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (b = m25747b(childAt)) != null && b.f13237b == this.f13210d && childAt.requestFocus(i, rect)) {
                return true;
            }
            i3 += i2;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        AbstractC14629i iVar = this.f13209c;
        if (iVar != null) {
            iVar.mo965a(savedState.f13234b, savedState.f13235c);
            m25758a(savedState.f13233a, false, true);
            return;
        }
        this.f13211e = savedState.f13233a;
        this.f13212f = savedState.f13234b;
        this.f13213g = savedState.f13235c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13233a = this.f13210d;
        AbstractC14629i iVar = this.f13209c;
        if (iVar != null) {
            savedState.f13234b = iVar.mo959b();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f13216j;
            m25760a(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC14629i iVar;
        boolean onRelease;
        boolean onRelease2;
        if (this.f13201C) {
            return true;
        }
        r12 = false;
        r12 = false;
        boolean z = false;
        boolean z2 = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (iVar = this.f13209c) == null || iVar.mo967a() == 0) {
            return false;
        }
        if (this.f13231y == null) {
            this.f13231y = VelocityTracker.obtain();
        }
        this.f13231y.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            m25764a();
            this.f13228v = motionEvent.getX();
            this.f13230x = MotionEventCompat.getPointerId(motionEvent, 0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f13225s) {
                    int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.f13230x);
                    float x = MotionEventCompat.getX(motionEvent, findPointerIndex);
                    float abs = Math.abs(x - this.f13228v);
                    float abs2 = Math.abs(MotionEventCompat.getY(motionEvent, findPointerIndex) - this.f13229w);
                    if (abs > this.f13227u && abs > abs2) {
                        this.f13225s = true;
                        this.f13228v = x;
                        m25744c(1);
                        m25746b(true);
                    }
                }
                if (this.f13225s) {
                    float x2 = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f13230x));
                    float f = this.f13228v;
                    this.f13228v = x2;
                    float scrollX = getScrollX() + (f - x2);
                    int width = getWidth();
                    int i = this.f13216j + width;
                    int a = this.f13209c.mo967a() - 1;
                    float max = Math.max(0, (this.f13210d - 1) * i);
                    float min = Math.min(this.f13210d + 1, a) * i;
                    if (scrollX >= max) {
                        max = scrollX;
                        if (scrollX > min) {
                            if (min == a * i) {
                                z2 = this.f13203E.onPull((scrollX - min) / width);
                            }
                            max = min;
                        }
                    } else if (max == 0.0f) {
                        z2 = this.f13202D.onPull((-scrollX) / width);
                    }
                    int i2 = (int) max;
                    this.f13228v += max - i2;
                    scrollTo(i2, getScrollY());
                    AbstractC5311e eVar = this.f13205G;
                    z = z2;
                    if (eVar != null) {
                        int i3 = i2 / i;
                        int i4 = i2 % i;
                        eVar.onPageScrolled(i3, i4 / i, i4);
                        z = z2;
                    }
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                    this.f13228v = MotionEventCompat.getX(motionEvent, actionIndex);
                    this.f13230x = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                } else if (action == 6) {
                    m25755a(motionEvent);
                    this.f13228v = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f13230x));
                }
            } else if (this.f13225s) {
                m25758a(this.f13210d, true, true);
                this.f13230x = -1;
                m25749b();
                onRelease = this.f13202D.onRelease();
                onRelease2 = this.f13203E.onRelease();
                z = onRelease | onRelease2;
            }
        } else if (this.f13225s) {
            VelocityTracker velocityTracker = this.f13231y;
            velocityTracker.computeCurrentVelocity(1000, this.f13232z);
            int xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.f13230x);
            int a2 = this.f13207a ? xVelocity + 1000 : xVelocity - C14217x3.m2201a(2500.0f);
            this.f13222p = true;
            int scrollX2 = getScrollX() / (getWidth() + this.f13216j);
            if (a2 <= 0) {
                scrollX2++;
            }
            m25757a(scrollX2, true, true, a2);
            this.f13230x = -1;
            m25749b();
            onRelease = this.f13202D.onRelease();
            onRelease2 = this.f13203E.onRelease();
            z = onRelease | onRelease2;
        }
        if (!z) {
            return true;
        }
        invalidate();
        return true;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f13217k;
    }
}
