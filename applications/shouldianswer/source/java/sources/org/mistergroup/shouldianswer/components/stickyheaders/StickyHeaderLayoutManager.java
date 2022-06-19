package org.mistergroup.shouldianswer.components.stickyheaders;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.C1011g;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager.class */
public class StickyHeaderLayoutManager extends RecyclerView.AbstractC0956i {

    /* renamed from: a */
    private static final String f6599a = StickyHeaderLayoutManager.class.getSimpleName();

    /* renamed from: b */
    private C2334a f6600b;

    /* renamed from: e */
    private AbstractC2332b f6603e;

    /* renamed from: f */
    private int f6604f;

    /* renamed from: g */
    private int f6605g;

    /* renamed from: i */
    private SavedState f6607i;

    /* renamed from: c */
    private HashSet<View> f6601c = new HashSet<>();

    /* renamed from: d */
    private HashMap<Integer, EnumC2331a> f6602d = new HashMap<>();

    /* renamed from: h */
    private int f6606h = -1;

    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f6608a;

        /* renamed from: b */
        int f6609b;

        SavedState() {
            this.f6608a = -1;
            this.f6609b = 0;
        }

        SavedState(Parcel parcel) {
            this.f6608a = -1;
            this.f6609b = 0;
            this.f6608a = parcel.readInt();
            this.f6609b = parcel.readInt();
        }

        /* renamed from: a */
        boolean m1580a() {
            return this.f6608a >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "<" + getClass().getCanonicalName() + " firstViewAdapterPosition: " + this.f6608a + " firstViewTop: " + this.f6609b + ">";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f6608a);
            parcel.writeInt(this.f6609b);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a.class */
    public enum EnumC2331a {
        NONE,
        NATURAL,
        STICKY,
        TRAILING
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b.class */
    public interface AbstractC2332b {
        /* renamed from: a */
        void mo429a(int i, View view, EnumC2331a enumC2331a, EnumC2331a enumC2331a2);
    }

    /* renamed from: org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c.class */
    private class C2333c extends C1011g {

        /* renamed from: g */
        private final float f6616g;

        /* renamed from: h */
        private final float f6617h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2333c(Context context, int i) {
            super(context);
            StickyHeaderLayoutManager.this = r4;
            this.f6616g = i;
            this.f6617h = i < 10000 ? (int) (Math.abs(i) * m4594a(context.getResources().getDisplayMetrics())) : 1000.0f;
        }

        @Override // androidx.recyclerview.widget.C1011g
        /* renamed from: b */
        protected int mo1577b(int i) {
            return (int) (this.f6617h * (i / this.f6616g));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s
        /* renamed from: d */
        public PointF mo1576d(int i) {
            return new PointF(FlexItem.FLEX_GROW_DEFAULT, StickyHeaderLayoutManager.this.m1598a(i));
        }
    }

    /* renamed from: a */
    public int m1598a(int i) {
        m1584c();
        int i2 = this.f6604f;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    /* renamed from: a */
    private int m1592a(RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            i = Math.max(getDecoratedMeasuredHeight(recyclerView.getChildAt(i2)), i);
        }
        return i;
    }

    /* renamed from: a */
    private View m1593a(RecyclerView.C0968p c0968p, int i) {
        if (this.f6600b.mo411b(i)) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (m1583c(childAt) == 0 && m1582d(childAt) == i) {
                    return childAt;
                }
            }
            View m4886c = c0968p.m4886c(this.f6600b.m1553g(i));
            this.f6601c.add(m4886c);
            addView(m4886c);
            measureChildWithMargins(m4886c, 0, 0);
            return m4886c;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mistergroup.shouldianswer.components.stickyheaders.C2334a.C2342h m1596a(int r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager.m1596a(int, boolean):org.mistergroup.shouldianswer.components.stickyheaders.a$h");
    }

    /* renamed from: a */
    private void m1597a(int i, View view, EnumC2331a enumC2331a) {
        if (!this.f6602d.containsKey(Integer.valueOf(i))) {
            this.f6602d.put(Integer.valueOf(i), enumC2331a);
            AbstractC2332b abstractC2332b = this.f6603e;
            if (abstractC2332b == null) {
                return;
            }
            abstractC2332b.mo429a(i, view, EnumC2331a.NONE, enumC2331a);
            return;
        }
        EnumC2331a enumC2331a2 = this.f6602d.get(Integer.valueOf(i));
        if (enumC2331a2 == enumC2331a) {
            return;
        }
        this.f6602d.put(Integer.valueOf(i), enumC2331a);
        AbstractC2332b abstractC2332b2 = this.f6603e;
        if (abstractC2332b2 == null) {
            return;
        }
        abstractC2332b2.mo429a(i, view, enumC2331a2, enumC2331a);
    }

    /* renamed from: a */
    private void m1594a(RecyclerView.C0968p c0968p) {
        int i;
        int height = getHeight();
        int childCount = getChildCount();
        HashSet hashSet = new HashSet();
        HashSet<View> hashSet2 = new HashSet();
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                View childAt = getChildAt(i2);
                if (!m1587b(childAt) && m1583c(childAt) != 0) {
                    if (getDecoratedBottom(childAt) < 0 || getDecoratedTop(childAt) > height) {
                        hashSet2.add(childAt);
                    } else {
                        hashSet.add(Integer.valueOf(m1582d(childAt)));
                    }
                }
                i2++;
            }
        }
        for (i = 0; i < childCount; i++) {
            View childAt2 = getChildAt(i);
            if (!m1587b(childAt2)) {
                int m1582d = m1582d(childAt2);
                if (m1583c(childAt2) == 0 && !hashSet.contains(Integer.valueOf(m1582d))) {
                    float translationY = childAt2.getTranslationY();
                    if (getDecoratedBottom(childAt2) + translationY < FlexItem.FLEX_GROW_DEFAULT || getDecoratedTop(childAt2) + translationY > height) {
                        hashSet2.add(childAt2);
                        this.f6601c.remove(childAt2);
                        this.f6602d.remove(Integer.valueOf(m1582d));
                    }
                }
            }
        }
        for (View view : hashSet2) {
            removeAndRecycleView(view, c0968p);
        }
        m1584c();
    }

    /* renamed from: b */
    private View m1588b() {
        int i;
        View view = null;
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        int childCount = getChildCount();
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (m1595a(childAt) == -1) {
                i = i2;
            } else if (m1583c(childAt) == 0) {
                i = i2;
            } else {
                int decoratedTop = getDecoratedTop(childAt);
                i = i2;
                if (decoratedTop < i2) {
                    view = childAt;
                    i = decoratedTop;
                }
            }
            i3++;
            i2 = i;
        }
        return view;
    }

    /* renamed from: b */
    private void m1586b(RecyclerView.C0968p c0968p) {
        int decoratedTop;
        View view;
        View view2;
        HashSet hashSet = new HashSet();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            int m1582d = m1582d(getChildAt(i));
            if (hashSet.add(Integer.valueOf(m1582d)) && this.f6600b.mo411b(m1582d)) {
                m1593a(c0968p, m1582d);
            }
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth();
        int paddingRight = getPaddingRight();
        Iterator<View> it = this.f6601c.iterator();
        while (it.hasNext()) {
            View next = it.next();
            int m1582d2 = m1582d(next);
            int childCount2 = getChildCount();
            View view3 = null;
            View view4 = null;
            int i2 = 0;
            while (i2 < childCount2) {
                View childAt = getChildAt(i2);
                if (m1587b(childAt)) {
                    view2 = view3;
                    view = view4;
                } else {
                    int m1583c = m1583c(childAt);
                    if (m1583c == 0) {
                        view2 = view3;
                        view = view4;
                    } else {
                        int m1582d3 = m1582d(childAt);
                        if (m1582d3 == m1582d2) {
                            view2 = view3;
                            view = view4;
                            if (m1583c == 1) {
                                view2 = childAt;
                                view = view4;
                            }
                        } else {
                            view2 = view3;
                            view = view4;
                            if (m1582d3 == m1582d2 + 1) {
                                view2 = view3;
                                view = view4;
                                if (view4 == null) {
                                    view = childAt;
                                    view2 = view3;
                                }
                            }
                        }
                    }
                }
                i2++;
                view3 = view2;
                view4 = view;
            }
            int decoratedMeasuredHeight = getDecoratedMeasuredHeight(next);
            int paddingTop = getPaddingTop();
            EnumC2331a enumC2331a = EnumC2331a.STICKY;
            int i3 = paddingTop;
            EnumC2331a enumC2331a2 = enumC2331a;
            if (view3 != null) {
                int decoratedTop2 = getDecoratedTop(view3);
                i3 = paddingTop;
                enumC2331a2 = enumC2331a;
                if (decoratedTop2 >= paddingTop) {
                    enumC2331a2 = EnumC2331a.NATURAL;
                    i3 = decoratedTop2;
                }
            }
            if (view4 != null && (decoratedTop = getDecoratedTop(view4) - decoratedMeasuredHeight) < i3) {
                enumC2331a2 = EnumC2331a.TRAILING;
                i3 = decoratedTop;
            }
            next.bringToFront();
            layoutDecorated(next, paddingLeft, i3, width - paddingRight, i3 + decoratedMeasuredHeight);
            m1597a(m1582d2, next, enumC2331a2);
        }
    }

    /* renamed from: b */
    private boolean m1587b(View view) {
        return m1595a(view) == -1;
    }

    /* renamed from: c */
    private int m1584c() {
        if (getChildCount() == 0) {
            this.f6604f = 0;
            this.f6605g = getPaddingTop();
            return this.f6605g;
        }
        View m1588b = m1588b();
        if (m1588b == null) {
            return this.f6605g;
        }
        this.f6604f = m1595a(m1588b);
        this.f6605g = Math.min(m1588b.getTop(), getPaddingTop());
        return this.f6605g;
    }

    /* renamed from: c */
    private int m1583c(View view) {
        return this.f6600b.m1547k(m1595a(view));
    }

    /* renamed from: d */
    private int m1582d(View view) {
        return this.f6600b.m1555f(m1595a(view));
    }

    /* renamed from: e */
    private C2334a.C2342h m1581e(View view) {
        return (C2334a.C2342h) view.getTag(2131362296);
    }

    /* renamed from: a */
    int m1595a(View view) {
        return m1581e(view).getAdapterPosition();
    }

    /* renamed from: a */
    View m1599a() {
        int i;
        View view = null;
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = Integer.MIN_VALUE;
        int i3 = 0;
        int childCount = getChildCount();
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (m1595a(childAt) == -1) {
                i = i2;
            } else if (m1583c(childAt) == 0) {
                i = i2;
            } else {
                int decoratedBottom = getDecoratedBottom(childAt);
                i = i2;
                if (decoratedBottom > i2) {
                    view = childAt;
                    i = decoratedBottom;
                }
            }
            i3++;
            i2 = i;
        }
        return view;
    }

    /* renamed from: a */
    public C2334a.C2339e m1589a(boolean z) {
        return (C2334a.C2339e) m1596a(2, z);
    }

    /* renamed from: a */
    public void m1591a(AbstractC2332b abstractC2332b) {
        this.f6603e = abstractC2332b;
    }

    /* renamed from: b */
    public C2334a.C2338d m1585b(boolean z) {
        return (C2334a.C2338d) m1596a(0, z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollVertically() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateDefaultLayoutParams() {
        return new RecyclerView.C0961j(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onAdapterChanged(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0945a abstractC0945a2) {
        super.onAdapterChanged(abstractC0945a, abstractC0945a2);
        try {
            this.f6600b = (C2334a) abstractC0945a2;
            removeAllViews();
            this.f6601c.clear();
            this.f6602d.clear();
        } catch (ClassCastException e) {
            throw new ClassCastException("StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        try {
            this.f6600b = (C2334a) recyclerView.getAdapter();
        } catch (ClassCastException e) {
            throw new ClassCastException("StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0968p c0968p) {
        super.onDetachedFromWindow(recyclerView, c0968p);
        m1584c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutChildren(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        int i;
        int i2;
        if (this.f6600b == null) {
            return;
        }
        int i3 = this.f6606h;
        if (i3 >= 0) {
            this.f6604f = i3;
            this.f6605g = 0;
            this.f6606h = -1;
        } else {
            SavedState savedState = this.f6607i;
            if (savedState == null || !savedState.m1580a()) {
                m1584c();
            } else {
                this.f6604f = this.f6607i.f6608a;
                this.f6605g = this.f6607i.f6609b;
                this.f6607i = null;
            }
        }
        int i4 = this.f6605g;
        this.f6601c.clear();
        this.f6602d.clear();
        detachAndScrapAttachedViews(c0968p);
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (this.f6604f > c0974t.m4843e()) {
            this.f6604f = 0;
        }
        int i5 = this.f6604f;
        int i6 = 0;
        while (true) {
            i = i6;
            if (i5 >= c0974t.m4843e()) {
                break;
            }
            View m4886c = c0968p.m4886c(i5);
            addView(m4886c);
            measureChildWithMargins(m4886c, 0, 0);
            int m1583c = m1583c(m4886c);
            if (m1583c == 0) {
                this.f6601c.add(m4886c);
                i2 = getDecoratedMeasuredHeight(m4886c);
                int i7 = i4 + i2;
                layoutDecorated(m4886c, paddingLeft, i4, width, i7);
                i5++;
                View m4886c2 = c0968p.m4886c(i5);
                addView(m4886c2);
                layoutDecorated(m4886c2, paddingLeft, i4, width, i7);
            } else if (m1583c == 1) {
                View m4886c3 = c0968p.m4886c(i5 - 1);
                this.f6601c.add(m4886c3);
                addView(m4886c3);
                measureChildWithMargins(m4886c3, 0, 0);
                i2 = getDecoratedMeasuredHeight(m4886c3);
                int i8 = i4 + i2;
                layoutDecorated(m4886c3, paddingLeft, i4, width, i8);
                layoutDecorated(m4886c, paddingLeft, i4, width, i8);
            } else {
                i2 = getDecoratedMeasuredHeight(m4886c);
                layoutDecorated(m4886c, paddingLeft, i4, width, i4 + i2);
            }
            i4 += i2;
            i6 += i2;
            if (m4886c.getBottom() >= height - paddingBottom) {
                i = i6;
                break;
            }
            i5++;
        }
        int height2 = getHeight() - (getPaddingTop() + getPaddingBottom());
        if (i < height2) {
            scrollVerticallyBy(i - height2, c0968p, null);
        } else {
            m1586b(c0968p);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null) {
            return;
        }
        if (parcelable instanceof SavedState) {
            this.f6607i = (SavedState) parcelable;
            requestLayout();
            return;
        }
        String str = f6599a;
        Log.e(str, "onRestoreInstanceState: invalid saved state class, expected: " + SavedState.class.getCanonicalName() + " got: " + parcelable.getClass().getCanonicalName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.f6607i;
        if (savedState != null) {
            return savedState;
        }
        if (this.f6600b != null) {
            m1584c();
        }
        SavedState savedState2 = new SavedState();
        savedState2.f6608a = this.f6604f;
        savedState2.f6609b = this.f6605g;
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void scrollToPosition(int i) {
        if (i < 0 || i > getItemCount()) {
            throw new IndexOutOfBoundsException("adapter position out of range");
        }
        this.f6606h = i;
        this.f6607i = null;
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0287  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scrollVerticallyBy(int r9, androidx.recyclerview.widget.RecyclerView.C0968p r10, androidx.recyclerview.widget.RecyclerView.C0974t r11) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.components.stickyheaders.StickyHeaderLayoutManager.scrollVerticallyBy(int, androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t):int");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0974t c0974t, int i) {
        if (i < 0 || i > getItemCount()) {
            throw new IndexOutOfBoundsException("adapter position out of range");
        }
        this.f6607i = null;
        View childAt = recyclerView.getChildAt(0);
        int abs = Math.abs((recyclerView.getChildAdapterPosition(childAt) - i) * m1592a(recyclerView));
        int i2 = abs;
        if (abs == 0) {
            i2 = (int) Math.abs(childAt.getY());
        }
        C2333c c2333c = new C2333c(recyclerView.getContext(), i2);
        c2333c.m4862c(i);
        startSmoothScroll(c2333c);
    }
}
