package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.CallSuper;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: k0 */
    static final int[] f5501k0 = {16842931};

    /* renamed from: l0 */
    private static final Comparator<ItemInfo> f5502l0 = new Comparator<ItemInfo>() { // from class: androidx.viewpager.widget.ViewPager.1
        /* renamed from: a */
        public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
            return itemInfo.f5563b - itemInfo2.f5563b;
        }
    };

    /* renamed from: m0 */
    private static final Interpolator f5503m0 = new Interpolator() { // from class: androidx.viewpager.widget.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: n0 */
    private static final ViewPositionComparator f5504n0 = new ViewPositionComparator();

    /* renamed from: A */
    private boolean f5505A;

    /* renamed from: C */
    private boolean f5507C;

    /* renamed from: D */
    private boolean f5508D;

    /* renamed from: E */
    private int f5509E;

    /* renamed from: F */
    private int f5510F;

    /* renamed from: G */
    private int f5511G;

    /* renamed from: H */
    private float f5512H;

    /* renamed from: I */
    private float f5513I;

    /* renamed from: J */
    private float f5514J;

    /* renamed from: K */
    private float f5515K;

    /* renamed from: M */
    private VelocityTracker f5517M;

    /* renamed from: N */
    private int f5518N;

    /* renamed from: O */
    private int f5519O;

    /* renamed from: P */
    private int f5520P;

    /* renamed from: Q */
    private int f5521Q;

    /* renamed from: R */
    private boolean f5522R;

    /* renamed from: S */
    private EdgeEffect f5523S;

    /* renamed from: T */
    private EdgeEffect f5524T;

    /* renamed from: V */
    private boolean f5526V;

    /* renamed from: W */
    private int f5527W;

    /* renamed from: a0 */
    private List<OnPageChangeListener> f5528a0;

    /* renamed from: b0 */
    private OnPageChangeListener f5529b0;

    /* renamed from: c0 */
    private OnPageChangeListener f5530c0;

    /* renamed from: d0 */
    private List<OnAdapterChangeListener> f5531d0;

    /* renamed from: e0 */
    private PageTransformer f5532e0;

    /* renamed from: f */
    private int f5533f;

    /* renamed from: f0 */
    private int f5534f0;

    /* renamed from: g0 */
    private int f5536g0;

    /* renamed from: h0 */
    private ArrayList<View> f5538h0;

    /* renamed from: j */
    PagerAdapter f5541j;

    /* renamed from: k */
    int f5543k;

    /* renamed from: o */
    private Scroller f5547o;

    /* renamed from: p */
    private boolean f5548p;

    /* renamed from: q */
    private PagerObserver f5549q;

    /* renamed from: r */
    private int f5550r;

    /* renamed from: s */
    private Drawable f5551s;

    /* renamed from: t */
    private int f5552t;

    /* renamed from: u */
    private int f5553u;

    /* renamed from: x */
    private int f5556x;

    /* renamed from: y */
    private boolean f5557y;

    /* renamed from: z */
    private boolean f5558z;

    /* renamed from: g */
    private final ArrayList<ItemInfo> f5535g = new ArrayList<>();

    /* renamed from: h */
    private final ItemInfo f5537h = new ItemInfo();

    /* renamed from: i */
    private final Rect f5539i = new Rect();

    /* renamed from: l */
    private int f5544l = -1;

    /* renamed from: m */
    private Parcelable f5545m = null;

    /* renamed from: n */
    private ClassLoader f5546n = null;

    /* renamed from: v */
    private float f5554v = -3.4028235E38f;

    /* renamed from: w */
    private float f5555w = Float.MAX_VALUE;

    /* renamed from: B */
    private int f5506B = 1;

    /* renamed from: L */
    private int f5516L = -1;

    /* renamed from: U */
    private boolean f5525U = true;

    /* renamed from: i0 */
    private final Runnable f5540i0 = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m16528E();
        }
    };

    /* renamed from: j0 */
    private int f5542j0 = 0;

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$DecorView.class */
    public @interface DecorView {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$ItemInfo.class */
    public static class ItemInfo {

        /* renamed from: a */
        Object f5562a;

        /* renamed from: b */
        int f5563b;

        /* renamed from: c */
        boolean f5564c;

        /* renamed from: d */
        float f5565d;

        /* renamed from: e */
        float f5566e;

        ItemInfo() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f5567a;

        /* renamed from: b */
        public int f5568b;

        /* renamed from: c */
        float f5569c = 0.0f;

        /* renamed from: d */
        boolean f5570d;

        /* renamed from: e */
        int f5571e;

        /* renamed from: f */
        int f5572f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f5501k0);
            this.f5568b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$MyAccessibilityDelegate.class */
    public class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        MyAccessibilityDelegate() {
        }

        /* renamed from: a */
        private boolean m16487a() {
            PagerAdapter pagerAdapter = ViewPager.this.f5541j;
            boolean z = true;
            if (pagerAdapter == null || pagerAdapter.getCount() <= 1) {
                z = false;
            }
            return z;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            PagerAdapter pagerAdapter;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m16487a());
            if (accessibilityEvent.getEventType() == 4096 && (pagerAdapter = ViewPager.this.f5541j) != null) {
                accessibilityEvent.setItemCount(pagerAdapter.getCount());
                accessibilityEvent.setFromIndex(ViewPager.this.f5543k);
                accessibilityEvent.setToIndex(ViewPager.this.f5543k);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.m19026c0(ViewPager.class.getName());
            accessibilityNodeInfoCompat.m18982y0(m16487a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.m19031a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.m19031a(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (i != 4096) {
                if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f5543k - 1);
                return true;
            } else if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.f5543k + 1);
                return true;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$OnAdapterChangeListener.class */
    public interface OnAdapterChangeListener {
        /* renamed from: a */
        void mo8960a(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$OnPageChangeListener.class */
    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, @AbstractC0040Px int i2);

        void onPageSelected(int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$PageTransformer.class */
    public interface PageTransformer {
        /* renamed from: a */
        void mo5906a(@NonNull View view, float f);
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$PagerObserver.class */
    private class PagerObserver extends DataSetObserver {
        PagerObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m16507h();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m16507h();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager.widget.ViewPager.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        int f5575h;

        /* renamed from: i */
        Parcelable f5576i;

        /* renamed from: j */
        ClassLoader f5577j;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.f5575h = parcel.readInt();
            this.f5576i = parcel.readParcelable(classLoader2);
            this.f5577j = classLoader2;
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f5575h + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5575h);
            parcel.writeParcelable(this.f5576i, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener.class */
    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$ViewPositionComparator.class */
    public static class ViewPositionComparator implements Comparator<View> {
        ViewPositionComparator() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f5567a;
            if (z == layoutParams2.f5567a) {
                return layoutParams.f5571e - layoutParams2.f5571e;
            }
            return z ? 1 : -1;
        }
    }

    public ViewPager(@NonNull Context context) {
        super(context);
        m16493v();
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m16493v();
    }

    /* renamed from: C */
    private boolean m16530C(int i) {
        int i2;
        if (this.f5535g.size() != 0) {
            ItemInfo t = m16495t();
            int clientWidth = getClientWidth();
            float f = this.f5550r;
            float f2 = clientWidth;
            float f3 = f / f2;
            int i3 = t.f5563b;
            float f4 = ((i / f2) - t.f5566e) / (t.f5565d + f3);
            this.f5526V = false;
            m16490y(i3, f4, (int) ((clientWidth + i2) * f4));
            if (this.f5526V) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.f5525U) {
            return false;
        } else {
            this.f5526V = false;
            m16490y(0, 0.0f, 0);
            if (this.f5526V) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    /* renamed from: D */
    private boolean m16529D(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f5512H;
        this.f5512H = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f5554v * clientWidth;
        float f4 = this.f5555w * clientWidth;
        r13 = false;
        r13 = false;
        boolean z3 = false;
        ItemInfo itemInfo = this.f5535g.get(0);
        ArrayList<ItemInfo> arrayList = this.f5535g;
        ItemInfo itemInfo2 = arrayList.get(arrayList.size() - 1);
        if (itemInfo.f5563b != 0) {
            f3 = itemInfo.f5566e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (itemInfo2.f5563b != this.f5541j.getCount() - 1) {
            f4 = itemInfo2.f5566e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            f3 = scrollX;
            if (scrollX > f4) {
                if (z2) {
                    this.f5524T.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f5523S.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f5512H += f3 - i;
        scrollTo(i, getScrollY());
        m16530C(i);
        return z3;
    }

    /* renamed from: G */
    private void m16526G(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f5535g.isEmpty()) {
            ItemInfo u = m16494u(this.f5543k);
            int min = (int) ((u != null ? Math.min(u.f5566e, this.f5555w) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                m16508g(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.f5547o.isFinished()) {
            this.f5547o.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    /* renamed from: H */
    private void m16525H() {
        int i = 0;
        while (i < getChildCount()) {
            int i2 = i;
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).f5567a) {
                removeViewAt(i);
                i2 = i - 1;
            }
            i = i2 + 1;
        }
    }

    /* renamed from: K */
    private void m16522K(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: L */
    private boolean m16521L() {
        this.f5516L = -1;
        m16500o();
        this.f5523S.onRelease();
        this.f5524T.onRelease();
        return this.f5523S.isFinished() || this.f5524T.isFinished();
    }

    /* renamed from: M */
    private void m16520M(int i, boolean z, int i2, boolean z2) {
        ItemInfo u = m16494u(i);
        int clientWidth = u != null ? (int) (getClientWidth() * Math.max(this.f5554v, Math.min(u.f5566e, this.f5555w))) : 0;
        if (z) {
            m16516Q(clientWidth, 0, i2);
            if (z2) {
                m16504k(i);
                return;
            }
            return;
        }
        if (z2) {
            m16504k(i);
        }
        m16508g(false);
        scrollTo(clientWidth, 0);
        m16530C(clientWidth);
    }

    /* renamed from: R */
    private void m16515R() {
        if (this.f5536g0 != 0) {
            ArrayList<View> arrayList = this.f5538h0;
            if (arrayList == null) {
                this.f5538h0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f5538h0.add(getChildAt(i));
            }
            Collections.sort(this.f5538h0, f5504n0);
        }
    }

    /* renamed from: e */
    private void m16510e(ItemInfo itemInfo, int i, ItemInfo itemInfo2) {
        int i2;
        int i3;
        ItemInfo itemInfo3;
        int i4;
        float f;
        ItemInfo itemInfo4;
        float f2;
        int count = this.f5541j.getCount();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f5550r / clientWidth : 0.0f;
        if (itemInfo2 != null) {
            int i5 = itemInfo2.f5563b;
            int i6 = itemInfo.f5563b;
            if (i5 < i6) {
                int i7 = 0;
                float f4 = itemInfo2.f5566e + itemInfo2.f5565d;
                float f5 = f3;
                while (true) {
                    float f6 = f4 + f5;
                    int i8 = i5 + 1;
                    if (i8 > itemInfo.f5563b || i7 >= this.f5535g.size()) {
                        break;
                    }
                    ItemInfo itemInfo5 = this.f5535g.get(i7);
                    while (true) {
                        itemInfo4 = itemInfo5;
                        i5 = i8;
                        f2 = f6;
                        if (i8 <= itemInfo4.f5563b) {
                            break;
                        }
                        i5 = i8;
                        f2 = f6;
                        if (i7 >= this.f5535g.size() - 1) {
                            break;
                        }
                        i7++;
                        itemInfo5 = this.f5535g.get(i7);
                    }
                    while (i5 < itemInfo4.f5563b) {
                        f2 += this.f5541j.getPageWidth(i5) + f3;
                        i5++;
                    }
                    itemInfo4.f5566e = f2;
                    f4 = f2;
                    f5 = itemInfo4.f5565d + f3;
                }
            } else if (i5 > i6) {
                int size = this.f5535g.size() - 1;
                float f7 = itemInfo2.f5566e;
                for (int i9 = i5 - 1; i9 >= itemInfo.f5563b && size >= 0; i9 = i4 - 1) {
                    ItemInfo itemInfo6 = this.f5535g.get(size);
                    while (true) {
                        itemInfo3 = itemInfo6;
                        i4 = i9;
                        f = f7;
                        if (i9 >= itemInfo3.f5563b) {
                            break;
                        }
                        i4 = i9;
                        f = f7;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        itemInfo6 = this.f5535g.get(size);
                    }
                    while (i4 > itemInfo3.f5563b) {
                        f -= this.f5541j.getPageWidth(i4) + f3;
                        i4--;
                    }
                    f7 = f - (itemInfo3.f5565d + f3);
                    itemInfo3.f5566e = f7;
                }
            }
        }
        int size2 = this.f5535g.size();
        float f8 = itemInfo.f5566e;
        int i10 = itemInfo.f5563b;
        int i11 = i10 - 1;
        this.f5554v = i10 == 0 ? f8 : -3.4028235E38f;
        int i12 = count - 1;
        this.f5555w = itemInfo.f5563b == i12 ? (itemInfo.f5566e + itemInfo.f5565d) - 1.0f : Float.MAX_VALUE;
        int i13 = i - 1;
        while (i13 >= 0) {
            ItemInfo itemInfo7 = this.f5535g.get(i13);
            while (true) {
                i3 = itemInfo7.f5563b;
                if (i11 <= i3) {
                    break;
                }
                f8 -= this.f5541j.getPageWidth(i11) + f3;
                i11--;
            }
            f8 -= itemInfo7.f5565d + f3;
            itemInfo7.f5566e = f8;
            if (i3 == 0) {
                this.f5554v = f8;
            }
            i13--;
            i11--;
        }
        float f9 = itemInfo.f5566e + itemInfo.f5565d + f3;
        int i14 = itemInfo.f5563b + 1;
        int i15 = i + 1;
        while (i15 < size2) {
            ItemInfo itemInfo8 = this.f5535g.get(i15);
            while (true) {
                i2 = itemInfo8.f5563b;
                if (i14 >= i2) {
                    break;
                }
                f9 += this.f5541j.getPageWidth(i14) + f3;
                i14++;
            }
            if (i2 == i12) {
                this.f5555w = (itemInfo8.f5565d + f9) - 1.0f;
            }
            itemInfo8.f5566e = f9;
            f9 += itemInfo8.f5565d + f3;
            i15++;
            i14++;
        }
    }

    /* renamed from: g */
    private void m16508g(boolean z) {
        boolean z2 = this.f5542j0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f5547o.isFinished()) {
                this.f5547o.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f5547o.getCurrX();
                int currY = this.f5547o.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m16530C(currX);
                    }
                }
            }
        }
        this.f5505A = false;
        for (int i = 0; i < this.f5535g.size(); i++) {
            ItemInfo itemInfo = this.f5535g.get(i);
            if (itemInfo.f5564c) {
                itemInfo.f5564c = false;
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        if (z) {
            ViewCompat.m19199f0(this, this.f5540i0);
        } else {
            this.f5540i0.run();
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: i */
    private int m16506i(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f5520P || Math.abs(i2) <= this.f5518N) {
            i += (int) (f + (i >= this.f5543k ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f5535g.size() > 0) {
            ItemInfo itemInfo = this.f5535g.get(0);
            ArrayList<ItemInfo> arrayList = this.f5535g;
            i4 = Math.max(itemInfo.f5563b, Math.min(i, arrayList.get(arrayList.size() - 1).f5563b));
        }
        return i4;
    }

    /* renamed from: j */
    private void m16505j(int i, float f, int i2) {
        OnPageChangeListener onPageChangeListener = this.f5529b0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
        List<OnPageChangeListener> list = this.f5528a0;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                OnPageChangeListener onPageChangeListener2 = this.f5528a0.get(i3);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrolled(i, f, i2);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.f5530c0;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrolled(i, f, i2);
        }
    }

    /* renamed from: k */
    private void m16504k(int i) {
        OnPageChangeListener onPageChangeListener = this.f5529b0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
        List<OnPageChangeListener> list = this.f5528a0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = this.f5528a0.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageSelected(i);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.f5530c0;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageSelected(i);
        }
    }

    /* renamed from: l */
    private void m16503l(int i) {
        OnPageChangeListener onPageChangeListener = this.f5529b0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
        List<OnPageChangeListener> list = this.f5528a0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = this.f5528a0.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrollStateChanged(i);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.f5530c0;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrollStateChanged(i);
        }
    }

    /* renamed from: n */
    private void m16501n(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f5534f0 : 0, null);
        }
    }

    /* renamed from: o */
    private void m16500o() {
        this.f5507C = false;
        this.f5508D = false;
        VelocityTracker velocityTracker = this.f5517M;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f5517M = null;
        }
    }

    /* renamed from: q */
    private Rect m16498q(Rect rect, View view) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f5558z != z) {
            this.f5558z = z;
        }
    }

    /* renamed from: t */
    private ItemInfo m16495t() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f5550r / clientWidth : 0.0f;
        ItemInfo itemInfo = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.f5535g.size()) {
            ItemInfo itemInfo2 = this.f5535g.get(i2);
            int i3 = i2;
            ItemInfo itemInfo3 = itemInfo2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                itemInfo3 = itemInfo2;
                if (itemInfo2.f5563b != i4) {
                    itemInfo3 = this.f5537h;
                    itemInfo3.f5566e = f + f3 + f2;
                    itemInfo3.f5563b = i4;
                    itemInfo3.f5565d = this.f5541j.getPageWidth(i4);
                    i3 = i2 - 1;
                }
            }
            f = itemInfo3.f5566e;
            float f4 = itemInfo3.f5565d;
            if (!z && scrollX < f) {
                return itemInfo;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f5535g.size() - 1) {
                return itemInfo3;
            }
            i = itemInfo3.f5563b;
            f3 = itemInfo3.f5565d;
            i2 = i3 + 1;
            z = false;
            itemInfo = itemInfo3;
        }
        return itemInfo;
    }

    /* renamed from: w */
    private static boolean m16492w(@NonNull View view) {
        return view.getClass().getAnnotation(DecorView.class) != null;
    }

    /* renamed from: x */
    private boolean m16491x(float f, float f2) {
        return (f < ((float) this.f5510F) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f5510F)) && f2 < 0.0f);
    }

    /* renamed from: z */
    private void m16489z(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f5516L) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f5512H = motionEvent.getX(i);
            this.f5516L = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f5517M;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: A */
    boolean m16532A() {
        int i = this.f5543k;
        if (i <= 0) {
            return false;
        }
        setCurrentItem(i - 1, true);
        return true;
    }

    /* renamed from: B */
    boolean m16531B() {
        PagerAdapter pagerAdapter = this.f5541j;
        if (pagerAdapter == null || this.f5543k >= pagerAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.f5543k + 1, true);
        return true;
    }

    /* renamed from: E */
    void m16528E() {
        m16527F(this.f5543k);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r0 == r0) goto L_0x00b2;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m16527F(int r7) {
        /*
            Method dump skipped, instructions count: 1323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m16527F(int):void");
    }

    /* renamed from: I */
    public void m16524I(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        List<OnAdapterChangeListener> list = this.f5531d0;
        if (list != null) {
            list.remove(onAdapterChangeListener);
        }
    }

    /* renamed from: J */
    public void m16523J(@NonNull OnPageChangeListener onPageChangeListener) {
        List<OnPageChangeListener> list = this.f5528a0;
        if (list != null) {
            list.remove(onPageChangeListener);
        }
    }

    /* renamed from: N */
    void m16519N(int i, boolean z, boolean z2) {
        m16518O(i, z, z2, 0);
    }

    /* renamed from: O */
    void m16518O(int i, boolean z, boolean z2, int i2) {
        int i3;
        PagerAdapter pagerAdapter = this.f5541j;
        boolean z3 = false;
        if (pagerAdapter == null || pagerAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f5543k != i || this.f5535g.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f5541j.getCount()) {
                    i3 = this.f5541j.getCount() - 1;
                }
            }
            int i4 = this.f5506B;
            int i5 = this.f5543k;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f5535g.size(); i6++) {
                    this.f5535g.get(i6).f5564c = true;
                }
            }
            if (this.f5543k != i3) {
                z3 = true;
            }
            if (this.f5525U) {
                this.f5543k = i3;
                if (z3) {
                    m16504k(i3);
                }
                requestLayout();
                return;
            }
            m16527F(i3);
            m16520M(i3, z, i2, z3);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public OnPageChangeListener m16517P(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.f5530c0;
        this.f5530c0 = onPageChangeListener;
        return onPageChangeListener2;
    }

    /* renamed from: Q */
    void m16516Q(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f5547o;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f5548p ? this.f5547o.getCurrX() : this.f5547o.getStartX();
            this.f5547o.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m16508g(false);
            m16528E();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float abs = Math.abs(i5);
        float f = clientWidth;
        float f2 = i7;
        float m = m16502m(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (m * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f5541j.getPageWidth(this.f5543k)) + this.f5550r)) + 1.0f) * 100.0f), 600);
        this.f5548p = false;
        this.f5547o.startScroll(i4, scrollY, i5, i6, min);
        ViewCompat.m19203d0(this);
    }

    /* renamed from: a */
    ItemInfo m16514a(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.f5563b = i;
        itemInfo.f5562a = this.f5541j.instantiateItem((ViewGroup) this, i);
        itemInfo.f5565d = this.f5541j.getPageWidth(i);
        if (i2 < 0 || i2 >= this.f5535g.size()) {
            this.f5535g.add(itemInfo);
        } else {
            this.f5535g.add(i2, itemInfo);
        }
        return itemInfo;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ItemInfo s;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (s = m16496s(childAt)) != null && s.f5563b == this.f5543k) {
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
        ItemInfo s;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (s = m16496s(childAt)) != null && s.f5563b == this.f5543k) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        boolean w = layoutParams3.f5567a | m16492w(view);
        layoutParams3.f5567a = w;
        if (!this.f5557y) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 == null || !w) {
            layoutParams3.f5570d = true;
            addViewInLayout(view, i, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* renamed from: b */
    public void m16513b(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        if (this.f5531d0 == null) {
            this.f5531d0 = new ArrayList();
        }
        this.f5531d0.add(onAdapterChangeListener);
    }

    /* renamed from: c */
    public void m16512c(@NonNull OnPageChangeListener onPageChangeListener) {
        if (this.f5528a0 == null) {
            this.f5528a0 = new ArrayList();
        }
        this.f5528a0.add(onPageChangeListener);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f5541j == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f5554v))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f5555w))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f5548p = true;
        if (this.f5547o.isFinished() || !this.f5547o.computeScrollOffset()) {
            m16508g(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f5547o.getCurrX();
        int currY = this.f5547o.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!m16530C(currX)) {
                this.f5547o.abortAnimation();
                scrollTo(0, currY);
            }
        }
        ViewCompat.m19203d0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x017a  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m16511d(int r6) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m16511d(int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m16499p(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ItemInfo s;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (s = m16496s(childAt)) != null && s.f5563b == this.f5543k && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (pagerAdapter = this.f5541j) != null && pagerAdapter.getCount() > 1)) {
            if (!this.f5523S.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f5554v * width);
                this.f5523S.setSize(height, width);
                z2 = false | this.f5523S.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f5524T.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f5555w + 1.0f)) * width2);
                this.f5524T.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f5524T.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f5523S.finish();
            this.f5524T.finish();
        }
        if (z) {
            ViewCompat.m19203d0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f5551s;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* renamed from: f */
    protected boolean m16509f(View view, boolean z, int i, int i2, int i3) {
        int i4;
        boolean z2 = true;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m16509f(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (!z || !view.canScrollHorizontally(-i)) {
            z2 = false;
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Nullable
    public PagerAdapter getAdapter() {
        return this.f5541j;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f5536g0 == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f5538h0.get(i3).getLayoutParams()).f5572f;
    }

    public int getCurrentItem() {
        return this.f5543k;
    }

    public int getOffscreenPageLimit() {
        return this.f5506B;
    }

    public int getPageMargin() {
        return this.f5550r;
    }

    /* renamed from: h */
    void m16507h() {
        int count = this.f5541j.getCount();
        this.f5533f = count;
        boolean z = this.f5535g.size() < (this.f5506B * 2) + 1 && this.f5535g.size() < count;
        int i = this.f5543k;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.f5535g.size()) {
            ItemInfo itemInfo = this.f5535g.get(i2);
            int itemPosition = this.f5541j.getItemPosition(itemInfo.f5562a);
            if (itemPosition == -1) {
                i = i;
                i2 = i2;
                z2 = z2;
            } else {
                if (itemPosition == -2) {
                    this.f5535g.remove(i2);
                    int i3 = i2 - 1;
                    boolean z3 = z2;
                    if (!z2) {
                        this.f5541j.startUpdate((ViewGroup) this);
                        z3 = true;
                    }
                    this.f5541j.destroyItem((ViewGroup) this, itemInfo.f5563b, itemInfo.f5562a);
                    int i4 = this.f5543k;
                    i2 = i3;
                    z2 = z3;
                    if (i4 == itemInfo.f5563b) {
                        i = Math.max(0, Math.min(i4, count - 1));
                        z2 = z3;
                        i2 = i3;
                    }
                } else {
                    int i5 = itemInfo.f5563b;
                    i = i;
                    i2 = i2;
                    z2 = z2;
                    if (i5 != itemPosition) {
                        if (i5 == this.f5543k) {
                            i = itemPosition;
                        }
                        itemInfo.f5563b = itemPosition;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f5541j.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f5535g, f5502l0);
        if (z) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                if (!layoutParams.f5567a) {
                    layoutParams.f5569c = 0.0f;
                }
            }
            m16519N(i, false, true);
            requestLayout();
        }
    }

    /* renamed from: m */
    float m16502m(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5525U = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f5540i0);
        Scroller scroller = this.f5547o;
        if (scroller != null && !scroller.isFinished()) {
            this.f5547o.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        float f;
        super.onDraw(canvas);
        if (this.f5550r > 0 && this.f5551s != null && this.f5535g.size() > 0 && this.f5541j != null) {
            int scrollX = getScrollX();
            float width2 = getWidth();
            float f2 = this.f5550r / width2;
            int i = 0;
            ItemInfo itemInfo = this.f5535g.get(0);
            float f3 = itemInfo.f5566e;
            int size = this.f5535g.size();
            int i2 = this.f5535g.get(size - 1).f5563b;
            for (int i3 = itemInfo.f5563b; i3 < i2; i3++) {
                while (i3 > itemInfo.f5563b && i < size) {
                    i++;
                    itemInfo = this.f5535g.get(i);
                }
                if (i3 == itemInfo.f5563b) {
                    float f4 = itemInfo.f5566e;
                    float f5 = itemInfo.f5565d;
                    f = (f4 + f5) * width2;
                    f3 = f4 + f5 + f2;
                } else {
                    float pageWidth = this.f5541j.getPageWidth(i3);
                    f = (f3 + pageWidth) * width2;
                    f3 += pageWidth + f2;
                }
                if (this.f5550r + f > scrollX) {
                    this.f5551s.setBounds(Math.round(f), this.f5552t, Math.round(this.f5550r + f), this.f5553u);
                    this.f5551s.draw(canvas);
                }
                if (f > scrollX + width) {
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m16521L();
            return false;
        }
        if (action != 0) {
            if (this.f5507C) {
                return true;
            }
            if (this.f5508D) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f5514J = x;
            this.f5512H = x;
            float y = motionEvent.getY();
            this.f5515K = y;
            this.f5513I = y;
            this.f5516L = motionEvent.getPointerId(0);
            this.f5508D = false;
            this.f5548p = true;
            this.f5547o.computeScrollOffset();
            if (this.f5542j0 != 2 || Math.abs(this.f5547o.getFinalX() - this.f5547o.getCurrX()) <= this.f5521Q) {
                m16508g(false);
                this.f5507C = false;
            } else {
                this.f5547o.abortAnimation();
                this.f5505A = false;
                m16528E();
                this.f5507C = true;
                m16522K(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f5516L;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f5512H;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f5515K);
                int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i2 == 0 || m16491x(this.f5512H, f) || !m16509f(this, false, (int) f, (int) x2, (int) y2)) {
                    if (abs > this.f5511G && abs * 0.5f > abs2) {
                        this.f5507C = true;
                        m16522K(true);
                        setScrollState(1);
                        float f2 = this.f5514J;
                        float f3 = this.f5511G;
                        this.f5512H = i2 > 0 ? f2 + f3 : f2 - f3;
                        this.f5513I = y2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > this.f5511G) {
                        this.f5508D = true;
                    }
                    if (this.f5507C && m16529D(x2)) {
                        ViewCompat.m19203d0(this);
                    }
                } else {
                    this.f5512H = x2;
                    this.f5513I = y2;
                    this.f5508D = true;
                    return false;
                }
            }
        } else if (action == 6) {
            m16489z(motionEvent);
        }
        if (this.f5517M == null) {
            this.f5517M = VelocityTracker.obtain();
        }
        this.f5517M.addMovement(motionEvent);
        return this.f5507C;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        ItemInfo s;
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
            if (childAt.getVisibility() == 0 && (s = m16496s(childAt)) != null && s.f5563b == this.f5543k && childAt.requestFocus(i, rect)) {
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
        super.onRestoreInstanceState(savedState.m18793a());
        PagerAdapter pagerAdapter = this.f5541j;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(savedState.f5576i, savedState.f5577j);
            m16519N(savedState.f5575h, false, true);
            return;
        }
        this.f5544l = savedState.f5575h;
        this.f5545m = savedState.f5576i;
        this.f5546n = savedState.f5577j;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5575h = this.f5543k;
        PagerAdapter pagerAdapter = this.f5541j;
        if (pagerAdapter != null) {
            savedState.f5576i = pagerAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f5550r;
            m16526G(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        if (this.f5522R) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.f5541j) == null || pagerAdapter.getCount() == 0) {
            return false;
        }
        if (this.f5517M == null) {
            this.f5517M = VelocityTracker.obtain();
        }
        this.f5517M.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f5547o.abortAnimation();
            this.f5505A = false;
            m16528E();
            float x = motionEvent.getX();
            this.f5514J = x;
            this.f5512H = x;
            float y = motionEvent.getY();
            this.f5515K = y;
            this.f5513I = y;
            this.f5516L = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f5507C) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f5516L);
                    if (findPointerIndex == -1) {
                        z = m16521L();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f5512H);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f5513I);
                        if (abs > this.f5511G && abs > abs2) {
                            this.f5507C = true;
                            m16522K(true);
                            float f = this.f5514J;
                            this.f5512H = x2 - f > 0.0f ? f + this.f5511G : f - this.f5511G;
                            this.f5513I = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f5507C) {
                    z = false | m16529D(motionEvent.getX(motionEvent.findPointerIndex(this.f5516L)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f5512H = motionEvent.getX(actionIndex);
                    this.f5516L = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m16489z(motionEvent);
                    this.f5512H = motionEvent.getX(motionEvent.findPointerIndex(this.f5516L));
                }
            } else if (this.f5507C) {
                m16520M(this.f5543k, true, 0, false);
                z = m16521L();
            }
        } else if (this.f5507C) {
            VelocityTracker velocityTracker = this.f5517M;
            velocityTracker.computeCurrentVelocity(1000, this.f5519O);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f5516L);
            this.f5505A = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ItemInfo t = m16495t();
            float f2 = clientWidth;
            m16518O(m16506i(t.f5563b, ((scrollX / f2) - t.f5566e) / (t.f5565d + (this.f5550r / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f5516L)) - this.f5514J)), true, true, xVelocity);
            z = m16521L();
        }
        if (!z) {
            return true;
        }
        ViewCompat.m19203d0(this);
        return true;
    }

    /* renamed from: p */
    public boolean m16499p(@NonNull KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = keyEvent.hasModifiers(2) ? m16532A() : m16511d(17);
            } else if (keyCode == 22) {
                z = keyEvent.hasModifiers(2) ? m16531B() : m16511d(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = m16511d(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = m16511d(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: r */
    ItemInfo m16497r(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return m16496s(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f5557y) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    ItemInfo m16496s(View view) {
        for (int i = 0; i < this.f5535g.size(); i++) {
            ItemInfo itemInfo = this.f5535g.get(i);
            if (this.f5541j.isViewFromObject(view, itemInfo.f5562a)) {
                return itemInfo;
            }
        }
        return null;
    }

    public void setAdapter(@Nullable PagerAdapter pagerAdapter) {
        PagerAdapter pagerAdapter2 = this.f5541j;
        if (pagerAdapter2 != null) {
            pagerAdapter2.setViewPagerObserver(null);
            this.f5541j.startUpdate((ViewGroup) this);
            for (int i = 0; i < this.f5535g.size(); i++) {
                ItemInfo itemInfo = this.f5535g.get(i);
                this.f5541j.destroyItem((ViewGroup) this, itemInfo.f5563b, itemInfo.f5562a);
            }
            this.f5541j.finishUpdate((ViewGroup) this);
            this.f5535g.clear();
            m16525H();
            this.f5543k = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.f5541j;
        this.f5541j = pagerAdapter;
        this.f5533f = 0;
        if (pagerAdapter != null) {
            if (this.f5549q == null) {
                this.f5549q = new PagerObserver();
            }
            this.f5541j.setViewPagerObserver(this.f5549q);
            this.f5505A = false;
            boolean z = this.f5525U;
            this.f5525U = true;
            this.f5533f = this.f5541j.getCount();
            if (this.f5544l >= 0) {
                this.f5541j.restoreState(this.f5545m, this.f5546n);
                m16519N(this.f5544l, false, true);
                this.f5544l = -1;
                this.f5545m = null;
                this.f5546n = null;
            } else if (!z) {
                m16528E();
            } else {
                requestLayout();
            }
        }
        List<OnAdapterChangeListener> list = this.f5531d0;
        if (!(list == null || list.isEmpty())) {
            int size = this.f5531d0.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f5531d0.get(i2).mo8960a(this, pagerAdapter3, pagerAdapter);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.f5505A = false;
        m16519N(i, !this.f5525U, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.f5505A = false;
        m16519N(i, z, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f5506B) {
            this.f5506B = i2;
            m16528E();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.f5529b0 = onPageChangeListener;
    }

    public void setPageMargin(int i) {
        int i2 = this.f5550r;
        this.f5550r = i;
        int width = getWidth();
        m16526G(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(ContextCompat.m19673f(getContext(), i));
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.f5551s = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, @Nullable PageTransformer pageTransformer) {
        setPageTransformer(z, pageTransformer, 2);
    }

    public void setPageTransformer(boolean z, @Nullable PageTransformer pageTransformer, int i) {
        int i2 = 1;
        boolean z2 = pageTransformer != null;
        boolean z3 = z2 != (this.f5532e0 != null);
        this.f5532e0 = pageTransformer;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            if (z) {
                i2 = 2;
            }
            this.f5536g0 = i2;
            this.f5534f0 = i;
        } else {
            this.f5536g0 = 0;
        }
        if (z3) {
            m16528E();
        }
    }

    void setScrollState(int i) {
        if (this.f5542j0 != i) {
            this.f5542j0 = i;
            if (this.f5532e0 != null) {
                m16501n(i != 0);
            }
            m16503l(i);
        }
    }

    /* renamed from: u */
    ItemInfo m16494u(int i) {
        for (int i2 = 0; i2 < this.f5535g.size(); i2++) {
            ItemInfo itemInfo = this.f5535g.get(i2);
            if (itemInfo.f5563b == i) {
                return itemInfo;
            }
        }
        return null;
    }

    /* renamed from: v */
    void m16493v() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f5547o = new Scroller(context, f5503m0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f5511G = viewConfiguration.getScaledPagingTouchSlop();
        this.f5518N = (int) (400.0f * f);
        this.f5519O = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f5523S = new EdgeEffect(context);
        this.f5524T = new EdgeEffect(context);
        this.f5520P = (int) (25.0f * f);
        this.f5521Q = (int) (2.0f * f);
        this.f5509E = (int) (f * 16.0f);
        ViewCompat.m19183n0(this, new MyAccessibilityDelegate());
        if (ViewCompat.m19162y(this) == 0) {
            ViewCompat.m19163x0(this, 1);
        }
        ViewCompat.m19243A0(this, new OnApplyWindowInsetsListener() { // from class: androidx.viewpager.widget.ViewPager.4

            /* renamed from: a */
            private final Rect f5560a = new Rect();

            @Override // androidx.core.view.OnApplyWindowInsetsListener
            /* renamed from: a */
            public WindowInsetsCompat mo9036a(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat Z = ViewCompat.m19211Z(view, windowInsetsCompat);
                if (Z.m19088m()) {
                    return Z;
                }
                Rect rect = this.f5560a;
                rect.left = Z.m19095f();
                rect.top = Z.m19093h();
                rect.right = Z.m19094g();
                rect.bottom = Z.m19096e();
                int childCount = ViewPager.this.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    WindowInsetsCompat h = ViewCompat.m19196h(ViewPager.this.getChildAt(i), Z);
                    rect.left = Math.min(h.m19095f(), rect.left);
                    rect.top = Math.min(h.m19093h(), rect.top);
                    rect.right = Math.min(h.m19094g(), rect.right);
                    rect.bottom = Math.min(h.m19096e(), rect.bottom);
                }
                return Z.m19087n(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5551s;
    }

    @CallSuper
    /* renamed from: y */
    protected void m16490y(int i, float f, int i2) {
        int i3;
        if (this.f5527W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f5567a) {
                    int i5 = layoutParams.f5568b & 7;
                    if (i5 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i5 == 3) {
                        paddingLeft = childAt.getWidth() + paddingLeft;
                        i3 = paddingLeft;
                    } else if (i5 != 5) {
                        i3 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i3 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i3 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        m16505j(i, f, i2);
        if (this.f5532e0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((LayoutParams) childAt2.getLayoutParams()).f5567a) {
                    this.f5532e0.mo5906a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f5526V = true;
    }
}
