package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.Objects;
import p1727n3.p1744b0.p1745a.AbstractC25622u;
import p1727n3.p1744b0.p1745a.C25614n;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC0329o implements RecyclerView.AbstractC0344y.AbstractC0346b {
    public static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    public final C0304a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final C0305b mLayoutChunkResult;
    private C0306c mLayoutState;
    public int mOrientation;
    public AbstractC25622u mOrientationHelper;
    public SavedState mPendingSavedState;
    public int mPendingScrollPosition;
    public int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    public boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0303a();

        /* renamed from: a */
        public int f1264a;

        /* renamed from: b */
        public int f1265b;

        /* renamed from: c */
        public boolean f1266c;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState$a.class */
        public class C0303a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f1264a = parcel.readInt();
            this.f1265b = parcel.readInt();
            this.f1266c = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f1264a = savedState.f1264a;
            this.f1265b = savedState.f1265b;
            this.f1266c = savedState.f1266c;
        }

        /* renamed from: a */
        public boolean m42763a() {
            return this.f1264a >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1264a);
            parcel.writeInt(this.f1265b);
            parcel.writeInt(this.f1266c ? 1 : 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static class C0304a {

        /* renamed from: a */
        public AbstractC25622u f1267a;

        /* renamed from: b */
        public int f1268b;

        /* renamed from: c */
        public int f1269c;

        /* renamed from: d */
        public boolean f1270d;

        /* renamed from: e */
        public boolean f1271e;

        public C0304a() {
            m42759d();
        }

        /* renamed from: a */
        public void m42762a() {
            this.f1269c = this.f1270d ? this.f1267a.mo3129g() : this.f1267a.mo3125k();
        }

        /* renamed from: b */
        public void m42761b(View view, int i) {
            if (this.f1270d) {
                this.f1269c = this.f1267a.m3123m() + this.f1267a.mo3134b(view);
            } else {
                this.f1269c = this.f1267a.mo3131e(view);
            }
            this.f1268b = i;
        }

        /* renamed from: c */
        public void m42760c(View view, int i) {
            int m3123m = this.f1267a.m3123m();
            if (m3123m >= 0) {
                m42761b(view, i);
                return;
            }
            this.f1268b = i;
            if (this.f1270d) {
                int mo3129g = (this.f1267a.mo3129g() - m3123m) - this.f1267a.mo3134b(view);
                this.f1269c = this.f1267a.mo3129g() - mo3129g;
                if (mo3129g <= 0) {
                    return;
                }
                int mo3133c = this.f1267a.mo3133c(view);
                int i2 = this.f1269c;
                int mo3125k = this.f1267a.mo3125k();
                int min = (i2 - mo3133c) - (Math.min(this.f1267a.mo3131e(view) - mo3125k, 0) + mo3125k);
                if (min >= 0) {
                    return;
                }
                this.f1269c = Math.min(mo3129g, -min) + this.f1269c;
                return;
            }
            int mo3131e = this.f1267a.mo3131e(view);
            int mo3125k2 = mo3131e - this.f1267a.mo3125k();
            this.f1269c = mo3131e;
            if (mo3125k2 <= 0) {
                return;
            }
            int mo3133c2 = this.f1267a.mo3133c(view);
            int mo3129g2 = (this.f1267a.mo3129g() - Math.min(0, (this.f1267a.mo3129g() - m3123m) - this.f1267a.mo3134b(view))) - (mo3133c2 + mo3131e);
            if (mo3129g2 >= 0) {
                return;
            }
            this.f1269c -= Math.min(mo3125k2, -mo3129g2);
        }

        /* renamed from: d */
        public void m42759d() {
            this.f1268b = -1;
            this.f1269c = Integer.MIN_VALUE;
            this.f1270d = false;
            this.f1271e = false;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AnchorInfo{mPosition=");
            m8728C.append(this.f1268b);
            m8728C.append(", mCoordinate=");
            m8728C.append(this.f1269c);
            m8728C.append(", mLayoutFromEnd=");
            m8728C.append(this.f1270d);
            m8728C.append(", mValid=");
            return C22128a.m8598m(m8728C, this.f1271e, '}');
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static class C0305b {

        /* renamed from: a */
        public int f1272a;

        /* renamed from: b */
        public boolean f1273b;

        /* renamed from: c */
        public boolean f1274c;

        /* renamed from: d */
        public boolean f1275d;
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static class C0306c {

        /* renamed from: b */
        public int f1277b;

        /* renamed from: c */
        public int f1278c;

        /* renamed from: d */
        public int f1279d;

        /* renamed from: e */
        public int f1280e;

        /* renamed from: f */
        public int f1281f;

        /* renamed from: g */
        public int f1282g;

        /* renamed from: j */
        public int f1285j;

        /* renamed from: l */
        public boolean f1287l;

        /* renamed from: a */
        public boolean f1276a = true;

        /* renamed from: h */
        public int f1283h = 0;

        /* renamed from: i */
        public int f1284i = 0;

        /* renamed from: k */
        public List<RecyclerView.AbstractC0313c0> f1286k = null;

        /* renamed from: a */
        public void m42758a(View view) {
            View view2;
            int size = this.f1286k.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f1286k.get(i2).itemView;
                RecyclerView.C0334p c0334p = (RecyclerView.C0334p) view4.getLayoutParams();
                View view5 = view3;
                int i3 = i;
                if (view4 != view) {
                    if (c0334p.m42734c()) {
                        view5 = view3;
                        i3 = i;
                    } else {
                        int m42736a = (c0334p.m42736a() - this.f1279d) * this.f1280e;
                        if (m42736a < 0) {
                            view5 = view3;
                            i3 = i;
                        } else {
                            view5 = view3;
                            i3 = i;
                            if (m42736a >= i) {
                                continue;
                            } else if (m42736a == 0) {
                                view2 = view4;
                                break;
                            } else {
                                i3 = m42736a;
                                view5 = view4;
                            }
                        }
                    }
                }
                i2++;
                view3 = view5;
                i = i3;
            }
            if (view2 == null) {
                this.f1279d = -1;
            } else {
                this.f1279d = ((RecyclerView.C0334p) view2.getLayoutParams()).m42736a();
            }
        }

        /* renamed from: b */
        public boolean m42757b(RecyclerView.C0347z c0347z) {
            int i = this.f1279d;
            return i >= 0 && i < c0347z.m42710b();
        }

        /* renamed from: c */
        public View m42756c(RecyclerView.C0341v c0341v) {
            View view;
            List<RecyclerView.AbstractC0313c0> list = this.f1286k;
            if (list == null) {
                View m42726e = c0341v.m42726e(this.f1279d);
                this.f1279d += this.f1280e;
                return m42726e;
            }
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    view = null;
                    break;
                }
                view = this.f1286k.get(i).itemView;
                RecyclerView.C0334p c0334p = (RecyclerView.C0334p) view.getLayoutParams();
                if (!c0334p.m42734c() && this.f1279d == c0334p.m42736a()) {
                    m42758a(view);
                    break;
                }
                i++;
            }
            return view;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new C0304a();
        this.mLayoutChunkResult = new C0305b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new C0304a();
        this.mLayoutChunkResult = new C0305b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.AbstractC0329o.C0333d properties = RecyclerView.AbstractC0329o.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.f1310a);
        setReverseLayout(properties.f1312c);
        setStackFromEnd(properties.f1313d);
    }

    private int computeScrollExtent(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return MediaSessionCompat.m43316C(c0347z, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return MediaSessionCompat.m43313D(c0347z, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return MediaSessionCompat.m43310E(c0347z, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private int fixLayoutEndGap(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z) {
        int mo3129g;
        int mo3129g2 = this.mOrientationHelper.mo3129g() - i;
        if (mo3129g2 > 0) {
            int i2 = -scrollBy(-mo3129g2, c0341v, c0347z);
            if (!z || (mo3129g = this.mOrientationHelper.mo3129g() - (i + i2)) <= 0) {
                return i2;
            }
            this.mOrientationHelper.mo3120p(mo3129g);
            return mo3129g + i2;
        }
        return 0;
    }

    private int fixLayoutStartGap(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z) {
        int mo3125k = i - this.mOrientationHelper.mo3125k();
        if (mo3125k > 0) {
            int i2 = -scrollBy(mo3125k, c0341v, c0347z);
            int i3 = i2;
            if (z) {
                int mo3125k2 = (i + i2) - this.mOrientationHelper.mo3125k();
                i3 = i2;
                if (mo3125k2 > 0) {
                    this.mOrientationHelper.mo3120p(-mo3125k2);
                    i3 = i2 - mo3125k2;
                }
            }
            return i3;
        }
        return 0;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void layoutForPredictiveAnimations(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, int i, int i2) {
        if (!c0347z.f1358k || getChildCount() == 0 || c0347z.f1354g || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.AbstractC0313c0> list = c0341v.f1327d;
        int size = list.size();
        int position = getPosition(getChildAt(0));
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = list.get(i5);
            if (!abstractC0313c0.isRemoved()) {
                boolean z = true;
                if ((abstractC0313c0.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                    z = true;
                }
                if (z) {
                    i4 += this.mOrientationHelper.mo3133c(abstractC0313c0.itemView);
                } else {
                    i3 += this.mOrientationHelper.mo3133c(abstractC0313c0.itemView);
                }
            }
        }
        this.mLayoutState.f1286k = list;
        if (i4 > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i);
            C0306c c0306c = this.mLayoutState;
            c0306c.f1283h = i4;
            c0306c.f1278c = 0;
            c0306c.m42758a(null);
            fill(c0341v, this.mLayoutState, c0347z, false);
        }
        if (i3 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i2);
            C0306c c0306c2 = this.mLayoutState;
            c0306c2.f1283h = i3;
            c0306c2.f1278c = 0;
            c0306c2.m42758a(null);
            fill(c0341v, this.mLayoutState, c0347z, false);
        }
        this.mLayoutState.f1286k = null;
    }

    private void logChildren() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            getPosition(childAt);
            this.mOrientationHelper.mo3131e(childAt);
        }
    }

    private void recycleByLayoutState(RecyclerView.C0341v c0341v, C0306c c0306c) {
        if (!c0306c.f1276a || c0306c.f1287l) {
            return;
        }
        int i = c0306c.f1282g;
        int i2 = c0306c.f1284i;
        if (c0306c.f1281f == -1) {
            recycleViewsFromEnd(c0341v, i, i2);
        } else {
            recycleViewsFromStart(c0341v, i, i2);
        }
    }

    private void recycleChildren(RecyclerView.C0341v c0341v, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            for (int i3 = i; i3 > i2; i3--) {
                removeAndRecycleViewAt(i3, c0341v);
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            removeAndRecycleViewAt(i2, c0341v);
        }
    }

    private void recycleViewsFromEnd(RecyclerView.C0341v c0341v, int i, int i2) {
        int childCount = getChildCount();
        if (i < 0) {
            return;
        }
        int mo3130f = (this.mOrientationHelper.mo3130f() - i) + i2;
        if (this.mShouldReverseLayout) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (this.mOrientationHelper.mo3131e(childAt) < mo3130f || this.mOrientationHelper.mo3121o(childAt) < mo3130f) {
                    recycleChildren(c0341v, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = childCount - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View childAt2 = getChildAt(i5);
            if (this.mOrientationHelper.mo3131e(childAt2) < mo3130f || this.mOrientationHelper.mo3121o(childAt2) < mo3130f) {
                recycleChildren(c0341v, i4, i5);
                return;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.C0341v c0341v, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (this.mOrientationHelper.mo3134b(childAt) > i3 || this.mOrientationHelper.mo3122n(childAt) > i3) {
                    recycleChildren(c0341v, 0, i4);
                    return;
                }
            }
            return;
        }
        int i5 = childCount - 1;
        for (int i6 = i5; i6 >= 0; i6--) {
            View childAt2 = getChildAt(i6);
            if (this.mOrientationHelper.mo3134b(childAt2) > i3 || this.mOrientationHelper.mo3122n(childAt2) > i3) {
                recycleChildren(c0341v, i5, i6);
                return;
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, C0304a c0304a) {
        View findReferenceChild;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            Objects.requireNonNull(c0304a);
            RecyclerView.C0334p c0334p = (RecyclerView.C0334p) focusedChild.getLayoutParams();
            if (!c0334p.m42734c() && c0334p.m42736a() >= 0 && c0334p.m42736a() < c0347z.m42710b()) {
                c0304a.m42760c(focusedChild, getPosition(focusedChild));
                return true;
            }
        }
        boolean z = this.mLastStackFromEnd;
        boolean z2 = this.mStackFromEnd;
        if (z != z2 || (findReferenceChild = findReferenceChild(c0341v, c0347z, c0304a.f1270d, z2)) == null) {
            return false;
        }
        c0304a.m42761b(findReferenceChild, getPosition(findReferenceChild));
        if (c0347z.f1354g || !supportsPredictiveItemAnimations()) {
            return true;
        }
        int mo3131e = this.mOrientationHelper.mo3131e(findReferenceChild);
        int mo3134b = this.mOrientationHelper.mo3134b(findReferenceChild);
        int mo3125k = this.mOrientationHelper.mo3125k();
        int mo3129g = this.mOrientationHelper.mo3129g();
        boolean z3 = mo3134b <= mo3125k && mo3131e < mo3125k;
        boolean z4 = false;
        if (mo3131e >= mo3129g) {
            z4 = false;
            if (mo3134b > mo3129g) {
                z4 = true;
            }
        }
        if (!z3 && !z4) {
            return true;
        }
        int i = mo3125k;
        if (c0304a.f1270d) {
            i = mo3129g;
        }
        c0304a.f1269c = i;
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.C0347z c0347z, C0304a c0304a) {
        int i;
        boolean z = false;
        if (c0347z.f1354g || (i = this.mPendingScrollPosition) == -1) {
            return false;
        }
        if (i < 0 || i >= c0347z.m42710b()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        c0304a.f1268b = this.mPendingScrollPosition;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.m42763a()) {
            boolean z2 = this.mPendingSavedState.f1266c;
            c0304a.f1270d = z2;
            if (z2) {
                c0304a.f1269c = this.mOrientationHelper.mo3129g() - this.mPendingSavedState.f1265b;
                return true;
            }
            c0304a.f1269c = this.mOrientationHelper.mo3125k() + this.mPendingSavedState.f1265b;
            return true;
        } else if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
            boolean z3 = this.mShouldReverseLayout;
            c0304a.f1270d = z3;
            if (z3) {
                c0304a.f1269c = this.mOrientationHelper.mo3129g() - this.mPendingScrollPositionOffset;
                return true;
            }
            c0304a.f1269c = this.mOrientationHelper.mo3125k() + this.mPendingScrollPositionOffset;
            return true;
        } else {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition == null) {
                if (getChildCount() > 0) {
                    if ((this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout) {
                        z = true;
                    }
                    c0304a.f1270d = z;
                }
                c0304a.m42762a();
                return true;
            } else if (this.mOrientationHelper.mo3133c(findViewByPosition) > this.mOrientationHelper.mo3124l()) {
                c0304a.m42762a();
                return true;
            } else if (this.mOrientationHelper.mo3131e(findViewByPosition) - this.mOrientationHelper.mo3125k() < 0) {
                c0304a.f1269c = this.mOrientationHelper.mo3125k();
                c0304a.f1270d = false;
                return true;
            } else if (this.mOrientationHelper.mo3129g() - this.mOrientationHelper.mo3134b(findViewByPosition) >= 0) {
                c0304a.f1269c = c0304a.f1270d ? this.mOrientationHelper.m3123m() + this.mOrientationHelper.mo3134b(findViewByPosition) : this.mOrientationHelper.mo3131e(findViewByPosition);
                return true;
            } else {
                c0304a.f1269c = this.mOrientationHelper.mo3129g();
                c0304a.f1270d = true;
                return true;
            }
        }
    }

    private void updateAnchorInfoForLayout(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, C0304a c0304a) {
        if (!updateAnchorFromPendingData(c0347z, c0304a) && !updateAnchorFromChildren(c0341v, c0347z, c0304a)) {
            c0304a.m42762a();
            c0304a.f1268b = this.mStackFromEnd ? c0347z.m42710b() - 1 : 0;
        }
    }

    private void updateLayoutState(int i, int i2, boolean z, RecyclerView.C0347z c0347z) {
        int i3;
        this.mLayoutState.f1287l = resolveIsInfinite();
        this.mLayoutState.f1281f = i;
        int[] iArr = this.mReusableIntPair;
        boolean z2 = false;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(c0347z, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        if (i == 1) {
            z2 = true;
        }
        C0306c c0306c = this.mLayoutState;
        int i4 = z2 ? max2 : max;
        c0306c.f1283h = i4;
        if (z2) {
            max2 = max;
        }
        c0306c.f1284i = max2;
        if (z2) {
            c0306c.f1283h = this.mOrientationHelper.mo3128h() + i4;
            View childClosestToEnd = getChildClosestToEnd();
            C0306c c0306c2 = this.mLayoutState;
            int i5 = 1;
            if (this.mShouldReverseLayout) {
                i5 = -1;
            }
            c0306c2.f1280e = i5;
            int position = getPosition(childClosestToEnd);
            C0306c c0306c3 = this.mLayoutState;
            c0306c2.f1279d = position + c0306c3.f1280e;
            c0306c3.f1277b = this.mOrientationHelper.mo3134b(childClosestToEnd);
            i3 = this.mOrientationHelper.mo3134b(childClosestToEnd) - this.mOrientationHelper.mo3129g();
        } else {
            View childClosestToStart = getChildClosestToStart();
            C0306c c0306c4 = this.mLayoutState;
            c0306c4.f1283h = this.mOrientationHelper.mo3125k() + c0306c4.f1283h;
            C0306c c0306c5 = this.mLayoutState;
            c0306c5.f1280e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            C0306c c0306c6 = this.mLayoutState;
            c0306c5.f1279d = position2 + c0306c6.f1280e;
            c0306c6.f1277b = this.mOrientationHelper.mo3131e(childClosestToStart);
            i3 = (-this.mOrientationHelper.mo3131e(childClosestToStart)) + this.mOrientationHelper.mo3125k();
        }
        C0306c c0306c7 = this.mLayoutState;
        c0306c7.f1278c = i2;
        if (z) {
            c0306c7.f1278c = i2 - i3;
        }
        c0306c7.f1282g = i3;
    }

    private void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.f1278c = this.mOrientationHelper.mo3129g() - i2;
        C0306c c0306c = this.mLayoutState;
        c0306c.f1280e = this.mShouldReverseLayout ? -1 : 1;
        c0306c.f1279d = i;
        c0306c.f1281f = 1;
        c0306c.f1277b = i2;
        c0306c.f1282g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillEnd(C0304a c0304a) {
        updateLayoutStateToFillEnd(c0304a.f1268b, c0304a.f1269c);
    }

    private void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.f1278c = i2 - this.mOrientationHelper.mo3125k();
        C0306c c0306c = this.mLayoutState;
        c0306c.f1279d = i;
        c0306c.f1280e = this.mShouldReverseLayout ? 1 : -1;
        c0306c.f1281f = -1;
        c0306c.f1277b = i2;
        c0306c.f1282g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(C0304a c0304a) {
        updateLayoutStateToFillStart(c0304a.f1268b, c0304a.f1269c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void calculateExtraLayoutSpace(RecyclerView.C0347z c0347z, int[] iArr) {
        int i;
        int i2;
        int extraLayoutSpace = getExtraLayoutSpace(c0347z);
        if (this.mLayoutState.f1281f == -1) {
            i2 = 0;
            i = extraLayoutSpace;
        } else {
            i = 0;
            i2 = extraLayoutSpace;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean canScrollVertically() {
        boolean z = true;
        if (this.mOrientation != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.C0347z c0347z, RecyclerView.AbstractC0329o.AbstractC0332c abstractC0332c) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, c0347z);
        collectPrefetchPositionsForLayoutState(c0347z, this.mLayoutState, abstractC0332c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void collectInitialPrefetchPositions(int i, RecyclerView.AbstractC0329o.AbstractC0332c abstractC0332c) {
        int i2;
        boolean z;
        SavedState savedState = this.mPendingSavedState;
        int i3 = -1;
        if (savedState == null || !savedState.m42763a()) {
            resolveShouldLayoutReverse();
            boolean z2 = this.mShouldReverseLayout;
            int i4 = this.mPendingScrollPosition;
            i2 = i4;
            z = z2;
            if (i4 == -1) {
                if (z2) {
                    i2 = i - 1;
                    z = z2;
                } else {
                    i2 = 0;
                    z = z2;
                }
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z = savedState2.f1266c;
            i2 = savedState2.f1264a;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i5++) {
            ((GapWorker.C0301b) abstractC0332c).m42766a(i2, 0);
            i2 += i3;
        }
    }

    public void collectPrefetchPositionsForLayoutState(RecyclerView.C0347z c0347z, C0306c c0306c, RecyclerView.AbstractC0329o.AbstractC0332c abstractC0332c) {
        int i = c0306c.f1279d;
        if (i < 0 || i >= c0347z.m42710b()) {
            return;
        }
        ((GapWorker.C0301b) abstractC0332c).m42766a(i, Math.max(0, c0306c.f1282g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int computeHorizontalScrollExtent(RecyclerView.C0347z c0347z) {
        return computeScrollExtent(c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int computeHorizontalScrollOffset(RecyclerView.C0347z c0347z) {
        return computeScrollOffset(c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int computeHorizontalScrollRange(RecyclerView.C0347z c0347z) {
        return computeScrollRange(c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y.AbstractC0346b
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z = false;
        if (i < getPosition(getChildAt(0))) {
            z = true;
        }
        int i2 = 1;
        if (z != this.mShouldReverseLayout) {
            i2 = -1;
        }
        return this.mOrientation == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int computeVerticalScrollExtent(RecyclerView.C0347z c0347z) {
        return computeScrollExtent(c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int computeVerticalScrollOffset(RecyclerView.C0347z c0347z) {
        return computeScrollOffset(c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int computeVerticalScrollRange(RecyclerView.C0347z c0347z) {
        return computeScrollRange(c0347z);
    }

    public int convertFocusDirectionToLayoutDirection(int i) {
        int i2 = -1;
        if (i == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        } else if (i == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        } else if (i == 17) {
            if (this.mOrientation != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.mOrientation != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            return this.mOrientation == 1 ? 1 : Integer.MIN_VALUE;
        }
    }

    public C0306c createLayoutState() {
        return new C0306c();
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00aa, code lost:
        if (r9.f1354g == false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int fill(androidx.recyclerview.widget.RecyclerView.C0341v r7, androidx.recyclerview.widget.LinearLayoutManager.C0306c r8, androidx.recyclerview.widget.RecyclerView.C0347z r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.fill(androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$z, boolean):int");
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        return findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild);
    }

    public View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z2) : findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    public View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z2) : findOneVisibleChild(0, getChildCount(), z, z2);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        return findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        int i = -1;
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild != null) {
            i = getPosition(findOneVisibleChild);
        }
        return i;
    }

    public int findLastVisibleItemPosition() {
        int i = -1;
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild != null) {
            i = getPosition(findOneVisibleChild);
        }
        return i;
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if (!(i2 > i ? true : i2 < i ? true : false)) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.mo3131e(getChildAt(i)) < this.mOrientationHelper.mo3125k()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.m3224a(i, i2, i4, i3) : this.mVerticalBoundCheck.m3224a(i, i2, i4, i3);
    }

    public View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.m3224a(i, i2, i4, i3) : this.mVerticalBoundCheck.m3224a(i, i2, i4, i3);
    }

    public View findReferenceChild(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z, boolean z2) {
        int i;
        int i2;
        ensureLayoutState();
        int childCount = getChildCount();
        int i3 = -1;
        if (z2) {
            i2 = getChildCount() - 1;
            i = -1;
        } else {
            i3 = childCount;
            i2 = 0;
            i = 1;
        }
        int m42710b = c0347z.m42710b();
        int mo3125k = this.mOrientationHelper.mo3125k();
        int mo3129g = this.mOrientationHelper.mo3129g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (true) {
            View view4 = view3;
            if (i2 == i3) {
                if (view == null) {
                    view = view2 != null ? view2 : view4;
                }
                return view;
            }
            View childAt = getChildAt(i2);
            int position = getPosition(childAt);
            int mo3131e = this.mOrientationHelper.mo3131e(childAt);
            int mo3134b = this.mOrientationHelper.mo3134b(childAt);
            View view5 = view;
            View view6 = view2;
            View view7 = view4;
            if (position >= 0) {
                view5 = view;
                view6 = view2;
                view7 = view4;
                if (position >= m42710b) {
                    continue;
                } else if (((RecyclerView.C0334p) childAt.getLayoutParams()).m42734c()) {
                    view5 = view;
                    view6 = view2;
                    view7 = view4;
                    if (view4 == null) {
                        view5 = view;
                        view6 = view2;
                        view7 = childAt;
                    }
                } else {
                    boolean z3 = mo3134b <= mo3125k && mo3131e < mo3125k;
                    boolean z4 = mo3131e >= mo3129g && mo3134b > mo3129g;
                    if (!z3 && !z4) {
                        return childAt;
                    }
                    if (z) {
                        if (!z4) {
                            view5 = view;
                            view6 = view2;
                            view7 = view4;
                            if (view != null) {
                            }
                            view7 = view4;
                            view6 = view2;
                            view5 = childAt;
                        }
                        view5 = view;
                        view6 = childAt;
                        view7 = view4;
                    } else {
                        if (!z3) {
                            view5 = view;
                            view6 = view2;
                            view7 = view4;
                            if (view != null) {
                            }
                            view7 = view4;
                            view6 = view2;
                            view5 = childAt;
                        }
                        view5 = view;
                        view6 = childAt;
                        view7 = view4;
                    }
                }
            }
            i2 += i;
            view = view5;
            view2 = view6;
            view3 = view7;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public RecyclerView.C0334p generateDefaultLayoutParams() {
        return new RecyclerView.C0334p(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(RecyclerView.C0347z c0347z) {
        if (c0347z.f1348a != -1) {
            return this.mOrientationHelper.mo3124l();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    public void layoutChunk(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, C0306c c0306c, C0305b c0305b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View m42756c = c0306c.m42756c(c0341v);
        if (m42756c == null) {
            c0305b.f1273b = true;
            return;
        }
        RecyclerView.C0334p c0334p = (RecyclerView.C0334p) m42756c.getLayoutParams();
        if (c0306c.f1286k == null) {
            if (this.mShouldReverseLayout == (c0306c.f1281f == -1)) {
                addView(m42756c);
            } else {
                addView(m42756c, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (c0306c.f1281f == -1)) {
                addDisappearingView(m42756c);
            } else {
                addDisappearingView(m42756c, 0);
            }
        }
        measureChildWithMargins(m42756c, 0, 0);
        c0305b.f1272a = this.mOrientationHelper.mo3133c(m42756c);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                i6 = getWidth() - getPaddingRight();
                i5 = i6 - this.mOrientationHelper.mo3132d(m42756c);
            } else {
                i5 = getPaddingLeft();
                i6 = this.mOrientationHelper.mo3132d(m42756c) + i5;
            }
            if (c0306c.f1281f == -1) {
                int i7 = c0306c.f1277b;
                i = i7;
                int i8 = i6;
                i4 = i7 - c0305b.f1272a;
                i2 = i5;
                i3 = i8;
            } else {
                int i9 = c0306c.f1277b;
                int i10 = i6;
                i2 = i5;
                i4 = i9;
                i3 = i10;
                i = c0305b.f1272a + i9;
            }
        } else {
            int paddingTop = getPaddingTop();
            int mo3132d = this.mOrientationHelper.mo3132d(m42756c) + paddingTop;
            if (c0306c.f1281f == -1) {
                int i11 = c0306c.f1277b;
                i3 = i11;
                i = mo3132d;
                i2 = i11 - c0305b.f1272a;
                i4 = paddingTop;
            } else {
                int i12 = c0306c.f1277b;
                i3 = c0305b.f1272a + i12;
                i = mo3132d;
                i4 = paddingTop;
                i2 = i12;
            }
        }
        layoutDecoratedWithMargins(m42756c, i2, i4, i3, i);
        if (c0334p.m42734c() || c0334p.m42735b()) {
            c0305b.f1274c = true;
        }
        c0305b.f1275d = m42756c.hasFocusable();
    }

    public void onAnchorReady(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, C0304a c0304a, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0341v c0341v) {
        super.onDetachedFromWindow(recyclerView, c0341v);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(c0341v);
            c0341v.m42729b();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public View onFocusSearchFailed(View view, int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        int convertFocusDirectionToLayoutDirection;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.mo3124l() * MAX_SCROLL_FACTOR), false, c0347z);
        C0306c c0306c = this.mLayoutState;
        c0306c.f1282g = Integer.MIN_VALUE;
        c0306c.f1276a = false;
        fill(c0341v, c0306c, c0347z, true);
        View findPartiallyOrCompletelyInvisibleChildClosestToStart = convertFocusDirectionToLayoutDirection == -1 ? findPartiallyOrCompletelyInvisibleChildClosestToStart() : findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        View childClosestToStart = convertFocusDirectionToLayoutDirection == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return findPartiallyOrCompletelyInvisibleChildClosestToStart;
        }
        if (findPartiallyOrCompletelyInvisibleChildClosestToStart != null) {
            return childClosestToStart;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onLayoutChildren(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && c0347z.m42710b() == 0) {
            removeAndRecycleAllViews(c0341v);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.m42763a()) {
            this.mPendingScrollPosition = this.mPendingSavedState.f1264a;
        }
        ensureLayoutState();
        this.mLayoutState.f1276a = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        C0304a c0304a = this.mAnchorInfo;
        if (!c0304a.f1271e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            c0304a.m42759d();
            C0304a c0304a2 = this.mAnchorInfo;
            c0304a2.f1270d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(c0341v, c0347z, c0304a2);
            this.mAnchorInfo.f1271e = true;
        } else if (focusedChild != null && (this.mOrientationHelper.mo3131e(focusedChild) >= this.mOrientationHelper.mo3129g() || this.mOrientationHelper.mo3134b(focusedChild) <= this.mOrientationHelper.mo3125k())) {
            this.mAnchorInfo.m42760c(focusedChild, getPosition(focusedChild));
        }
        C0306c c0306c = this.mLayoutState;
        c0306c.f1281f = c0306c.f1285j >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(c0347z, iArr);
        int mo3125k = this.mOrientationHelper.mo3125k() + Math.max(0, this.mReusableIntPair[0]);
        int mo3128h = this.mOrientationHelper.mo3128h() + Math.max(0, this.mReusableIntPair[1]);
        int i9 = mo3125k;
        int i10 = mo3128h;
        if (c0347z.f1354g) {
            int i11 = this.mPendingScrollPosition;
            i9 = mo3125k;
            i10 = mo3128h;
            if (i11 != -1) {
                i9 = mo3125k;
                i10 = mo3128h;
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(i11);
                    i9 = mo3125k;
                    i10 = mo3128h;
                    if (findViewByPosition != null) {
                        if (this.mShouldReverseLayout) {
                            i6 = this.mOrientationHelper.mo3129g() - this.mOrientationHelper.mo3134b(findViewByPosition);
                            i7 = this.mPendingScrollPositionOffset;
                        } else {
                            i7 = this.mOrientationHelper.mo3131e(findViewByPosition) - this.mOrientationHelper.mo3125k();
                            i6 = this.mPendingScrollPositionOffset;
                        }
                        int i12 = i6 - i7;
                        if (i12 > 0) {
                            i9 = mo3125k + i12;
                            i10 = mo3128h;
                        } else {
                            i10 = mo3128h - i12;
                            i9 = mo3125k;
                        }
                    }
                }
            }
        }
        C0304a c0304a3 = this.mAnchorInfo;
        if (!c0304a3.f1270d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i8 = 1;
        }
        onAnchorReady(c0341v, c0347z, c0304a3, i8);
        detachAndScrapAttachedViews(c0341v);
        this.mLayoutState.f1287l = resolveIsInfinite();
        Objects.requireNonNull(this.mLayoutState);
        this.mLayoutState.f1284i = 0;
        C0304a c0304a4 = this.mAnchorInfo;
        if (c0304a4.f1270d) {
            updateLayoutStateToFillStart(c0304a4);
            C0306c c0306c2 = this.mLayoutState;
            c0306c2.f1283h = i9;
            fill(c0341v, c0306c2, c0347z, false);
            C0306c c0306c3 = this.mLayoutState;
            int i13 = c0306c3.f1277b;
            int i14 = c0306c3.f1279d;
            int i15 = c0306c3.f1278c;
            int i16 = i10;
            if (i15 > 0) {
                i16 = i10 + i15;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            C0306c c0306c4 = this.mLayoutState;
            c0306c4.f1283h = i16;
            c0306c4.f1279d += c0306c4.f1280e;
            fill(c0341v, c0306c4, c0347z, false);
            C0306c c0306c5 = this.mLayoutState;
            int i17 = c0306c5.f1277b;
            int i18 = c0306c5.f1278c;
            i2 = i13;
            i = i17;
            if (i18 > 0) {
                updateLayoutStateToFillStart(i14, i13);
                C0306c c0306c6 = this.mLayoutState;
                c0306c6.f1283h = i18;
                fill(c0341v, c0306c6, c0347z, false);
                i2 = this.mLayoutState.f1277b;
                i = i17;
            }
        } else {
            updateLayoutStateToFillEnd(c0304a4);
            C0306c c0306c7 = this.mLayoutState;
            c0306c7.f1283h = i10;
            fill(c0341v, c0306c7, c0347z, false);
            C0306c c0306c8 = this.mLayoutState;
            int i19 = c0306c8.f1277b;
            int i20 = c0306c8.f1279d;
            int i21 = c0306c8.f1278c;
            int i22 = i9;
            if (i21 > 0) {
                i22 = i9 + i21;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            C0306c c0306c9 = this.mLayoutState;
            c0306c9.f1283h = i22;
            c0306c9.f1279d += c0306c9.f1280e;
            fill(c0341v, c0306c9, c0347z, false);
            C0306c c0306c10 = this.mLayoutState;
            i2 = c0306c10.f1277b;
            int i23 = c0306c10.f1278c;
            i = i19;
            if (i23 > 0) {
                updateLayoutStateToFillEnd(i20, i19);
                C0306c c0306c11 = this.mLayoutState;
                c0306c11.f1283h = i23;
                fill(c0341v, c0306c11, c0347z, false);
                i = this.mLayoutState.f1277b;
            }
        }
        int i24 = i2;
        int i25 = i;
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap = fixLayoutEndGap(i, c0341v, c0347z, true);
                i5 = i2 + fixLayoutEndGap;
                i4 = i + fixLayoutEndGap;
                i3 = fixLayoutStartGap(i5, c0341v, c0347z, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i2, c0341v, c0347z, true);
                i5 = i2 + fixLayoutStartGap;
                i4 = i + fixLayoutStartGap;
                i3 = fixLayoutEndGap(i4, c0341v, c0347z, false);
            }
            i24 = i5 + i3;
            i25 = i4 + i3;
        }
        layoutForPredictiveAnimations(c0341v, c0347z, i24, i25);
        if (!c0347z.f1354g) {
            AbstractC25622u abstractC25622u = this.mOrientationHelper;
            abstractC25622u.f71789b = abstractC25622u.mo3124l();
        } else {
            this.mAnchorInfo.m42759d();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onLayoutCompleted(RecyclerView.C0347z c0347z) {
        super.onLayoutCompleted(c0347z);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.m42759d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.f1264a = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState2.f1266c = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState2.f1265b = this.mOrientationHelper.mo3129g() - this.mOrientationHelper.mo3134b(childClosestToEnd);
                savedState2.f1264a = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState2.f1264a = getPosition(childClosestToStart);
                savedState2.f1265b = this.mOrientationHelper.mo3131e(childClosestToStart) - this.mOrientationHelper.mo3125k();
            }
        } else {
            savedState2.f1264a = -1;
        }
        return savedState2;
    }

    public void prepareForDrop(View view, View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        boolean z = position < position2 ? true : true;
        if (this.mShouldReverseLayout) {
            if (z) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.mo3129g() - (this.mOrientationHelper.mo3133c(view) + this.mOrientationHelper.mo3131e(view2)));
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.mo3129g() - this.mOrientationHelper.mo3134b(view2));
            }
        } else if (z) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.mo3131e(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.mo3134b(view2) - this.mOrientationHelper.mo3133c(view));
        }
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.mo3127i() == 0 && this.mOrientationHelper.mo3130f() == 0;
    }

    public int scrollBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f1276a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        updateLayoutState(i2, abs, true, c0347z);
        C0306c c0306c = this.mLayoutState;
        int fill = fill(c0341v, c0306c, c0347z, false) + c0306c.f1282g;
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.mo3120p(-i);
        this.mLayoutState.f1285j = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int scrollHorizontallyBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, c0341v, c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.f1264a = -1;
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.f1264a = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int scrollVerticallyBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, c0341v, c0347z);
    }

    public void setInitialPrefetchItemCount(int i) {
        this.mInitialPrefetchItemCount = i;
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            assertNotInLayoutOrScroll(null);
            if (i == this.mOrientation && this.mOrientationHelper != null) {
                return;
            }
            AbstractC25622u m3135a = AbstractC25622u.m3135a(this, i);
            this.mOrientationHelper = m3135a;
            this.mAnchorInfo.f1267a = m3135a;
            this.mOrientation = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException(C22128a.m8611i2("invalid orientation:", i));
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z) {
            return;
        }
        this.mStackFromEnd = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0347z c0347z, int i) {
        C25614n c25614n = new C25614n(recyclerView.getContext());
        c25614n.f1333a = i;
        startSmoothScroll(c25614n);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public void validateChildOrder() {
        getChildCount();
        boolean z = true;
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int mo3131e = this.mOrientationHelper.mo3131e(getChildAt(0));
        if (!this.mShouldReverseLayout) {
            for (int i = 1; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                int position2 = getPosition(childAt);
                int mo3131e2 = this.mOrientationHelper.mo3131e(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder m8728C = C22128a.m8728C("detected invalid position. loc invalid? ");
                    m8728C.append(mo3131e2 < mo3131e);
                    throw new RuntimeException(m8728C.toString());
                } else if (mo3131e2 < mo3131e) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i2 = 1; i2 < getChildCount(); i2++) {
            View childAt2 = getChildAt(i2);
            int position3 = getPosition(childAt2);
            int mo3131e3 = this.mOrientationHelper.mo3131e(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder m8728C2 = C22128a.m8728C("detected invalid position. loc invalid? ");
                if (mo3131e3 >= mo3131e) {
                    z = false;
                }
                m8728C2.append(z);
                throw new RuntimeException(m8728C2.toString());
            } else if (mo3131e3 > mo3131e) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }
}
