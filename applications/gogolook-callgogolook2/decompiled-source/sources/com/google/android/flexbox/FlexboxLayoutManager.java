package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p223d.AbstractC6703a;
import p081h.p203i.p204a.p223d.C6704b;
import p081h.p203i.p204a.p223d.C6705c;
/* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager.class */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements AbstractC6703a, RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* renamed from: z */
    public static final Rect f6277z = new Rect();

    /* renamed from: a */
    public int f6278a;

    /* renamed from: b */
    public int f6279b;

    /* renamed from: c */
    public int f6280c;

    /* renamed from: d */
    public int f6281d;

    /* renamed from: e */
    public boolean f6282e;

    /* renamed from: f */
    public boolean f6283f;

    /* renamed from: i */
    public RecyclerView.Recycler f6286i;

    /* renamed from: j */
    public RecyclerView.State f6287j;

    /* renamed from: k */
    public C3554c f6288k;

    /* renamed from: m */
    public OrientationHelper f6290m;

    /* renamed from: n */
    public OrientationHelper f6291n;

    /* renamed from: o */
    public SavedState f6292o;

    /* renamed from: t */
    public boolean f6297t;

    /* renamed from: v */
    public final Context f6299v;

    /* renamed from: w */
    public View f6300w;

    /* renamed from: g */
    public List<C6704b> f6284g = new ArrayList();

    /* renamed from: h */
    public final C6705c f6285h = new C6705c(this);

    /* renamed from: l */
    public C3553b f6289l = new C3553b();

    /* renamed from: p */
    public int f6293p = -1;

    /* renamed from: q */
    public int f6294q = Integer.MIN_VALUE;

    /* renamed from: r */
    public int f6295r = Integer.MIN_VALUE;

    /* renamed from: s */
    public int f6296s = Integer.MIN_VALUE;

    /* renamed from: u */
    public SparseArray<View> f6298u = new SparseArray<>();

    /* renamed from: x */
    public int f6301x = -1;

    /* renamed from: y */
    public C6705c.C6707b f6302y = new C6705c.C6707b();

    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new C3550a();

        /* renamed from: a */
        public float f6303a;

        /* renamed from: b */
        public float f6304b;

        /* renamed from: c */
        public int f6305c;

        /* renamed from: d */
        public float f6306d;

        /* renamed from: e */
        public int f6307e;

        /* renamed from: f */
        public int f6308f;

        /* renamed from: g */
        public int f6309g;

        /* renamed from: h */
        public int f6310h;

        /* renamed from: i */
        public boolean f6311i;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$LayoutParams$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$LayoutParams$a.class */
        public static final class C3550a implements Parcelable.Creator<LayoutParams> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f6303a = 0.0f;
            this.f6304b = 1.0f;
            this.f6305c = -1;
            this.f6306d = -1.0f;
            this.f6309g = ViewCompat.MEASURED_SIZE_MASK;
            this.f6310h = ViewCompat.MEASURED_SIZE_MASK;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6303a = 0.0f;
            this.f6304b = 1.0f;
            this.f6305c = -1;
            this.f6306d = -1.0f;
            this.f6309g = ViewCompat.MEASURED_SIZE_MASK;
            this.f6310h = ViewCompat.MEASURED_SIZE_MASK;
        }

        public LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.f6303a = 0.0f;
            this.f6304b = 1.0f;
            this.f6305c = -1;
            this.f6306d = -1.0f;
            this.f6309g = ViewCompat.MEASURED_SIZE_MASK;
            this.f6310h = ViewCompat.MEASURED_SIZE_MASK;
            this.f6303a = parcel.readFloat();
            this.f6304b = parcel.readFloat();
            this.f6305c = parcel.readInt();
            this.f6306d = parcel.readFloat();
            this.f6307e = parcel.readInt();
            this.f6308f = parcel.readInt();
            this.f6309g = parcel.readInt();
            this.f6310h = parcel.readInt();
            this.f6311i = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: d */
        public int mo32150d() {
            return this.f6305c;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: e */
        public float mo32149e() {
            return this.f6304b;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: f */
        public int mo32148f() {
            return this.f6307e;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: g */
        public int mo32147g() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return 1;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: h */
        public float mo32146h() {
            return this.f6303a;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: i */
        public float mo32145i() {
            return this.f6306d;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: j */
        public boolean mo32144j() {
            return this.f6311i;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: k */
        public int mo32143k() {
            return this.f6309g;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: l */
        public int mo32142l() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: m */
        public int mo32141m() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: n */
        public int mo32140n() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: o */
        public int mo32139o() {
            return this.f6308f;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: p */
        public int mo32138p() {
            return this.f6310h;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.f6303a);
            parcel.writeFloat(this.f6304b);
            parcel.writeInt(this.f6305c);
            parcel.writeFloat(this.f6306d);
            parcel.writeInt(this.f6307e);
            parcel.writeInt(this.f6308f);
            parcel.writeInt(this.f6309g);
            parcel.writeInt(this.f6310h);
            parcel.writeByte(this.f6311i ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3551a();

        /* renamed from: a */
        public int f6312a;

        /* renamed from: b */
        public int f6313b;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$SavedState$a.class */
        public static final class C3551a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f6312a = parcel.readInt();
            this.f6313b = parcel.readInt();
        }

        public SavedState(SavedState savedState) {
            this.f6312a = savedState.f6312a;
            this.f6313b = savedState.f6313b;
        }

        /* renamed from: a */
        public final void m32137a() {
            this.f6312a = -1;
        }

        /* renamed from: a */
        public final boolean m32136a(int i) {
            int i2 = this.f6312a;
            return i2 >= 0 && i2 < i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.f6312a + ", mAnchorOffset=" + this.f6313b + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f6312a);
            parcel.writeInt(this.f6313b);
        }
    }

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$b.class */
    public class C3553b {

        /* renamed from: a */
        public int f6314a;

        /* renamed from: b */
        public int f6315b;

        /* renamed from: c */
        public int f6316c;

        /* renamed from: d */
        public int f6317d;

        /* renamed from: e */
        public boolean f6318e;

        /* renamed from: f */
        public boolean f6319f;

        /* renamed from: g */
        public boolean f6320g;

        public C3553b() {
            this.f6317d = 0;
        }

        /* renamed from: a */
        public final void m32129a() {
            if (FlexboxLayoutManager.this.mo22042i() || !FlexboxLayoutManager.this.f6282e) {
                this.f6316c = this.f6318e ? FlexboxLayoutManager.this.f6290m.getEndAfterPadding() : FlexboxLayoutManager.this.f6290m.getStartAfterPadding();
            } else {
                this.f6316c = this.f6318e ? FlexboxLayoutManager.this.f6290m.getEndAfterPadding() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f6290m.getStartAfterPadding();
            }
        }

        /* renamed from: a */
        public final void m32128a(View view) {
            if (FlexboxLayoutManager.this.mo22042i() || !FlexboxLayoutManager.this.f6282e) {
                if (this.f6318e) {
                    this.f6316c = FlexboxLayoutManager.this.f6290m.getDecoratedEnd(view) + FlexboxLayoutManager.this.f6290m.getTotalSpaceChange();
                } else {
                    this.f6316c = FlexboxLayoutManager.this.f6290m.getDecoratedStart(view);
                }
            } else if (this.f6318e) {
                this.f6316c = FlexboxLayoutManager.this.f6290m.getDecoratedStart(view) + FlexboxLayoutManager.this.f6290m.getTotalSpaceChange();
            } else {
                this.f6316c = FlexboxLayoutManager.this.f6290m.getDecoratedEnd(view);
            }
            this.f6314a = FlexboxLayoutManager.this.getPosition(view);
            int i = 0;
            this.f6320g = false;
            int i2 = FlexboxLayoutManager.this.f6285h.f16600c[this.f6314a];
            if (i2 != -1) {
                i = i2;
            }
            this.f6315b = i;
            if (FlexboxLayoutManager.this.f6284g.size() > this.f6315b) {
                this.f6314a = ((C6704b) FlexboxLayoutManager.this.f6284g.get(this.f6315b)).f16596o;
            }
        }

        /* renamed from: b */
        public final void m32123b() {
            this.f6314a = -1;
            this.f6315b = -1;
            this.f6316c = Integer.MIN_VALUE;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            this.f6319f = false;
            this.f6320g = false;
            if (FlexboxLayoutManager.this.mo22042i()) {
                if (FlexboxLayoutManager.this.f6279b == 0) {
                    if (FlexboxLayoutManager.this.f6278a == 1) {
                        z4 = true;
                    }
                    this.f6318e = z4;
                    return;
                }
                if (FlexboxLayoutManager.this.f6279b == 2) {
                    z = true;
                }
                this.f6318e = z;
            } else if (FlexboxLayoutManager.this.f6279b == 0) {
                if (FlexboxLayoutManager.this.f6278a == 3) {
                    z2 = true;
                }
                this.f6318e = z2;
            } else {
                if (FlexboxLayoutManager.this.f6279b == 2) {
                    z3 = true;
                }
                this.f6318e = z3;
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f6314a + ", mFlexLinePosition=" + this.f6315b + ", mCoordinate=" + this.f6316c + ", mPerpendicularCoordinate=" + this.f6317d + ", mLayoutFromEnd=" + this.f6318e + ", mValid=" + this.f6319f + ", mAssignedFromSavedState=" + this.f6320g + '}';
        }
    }

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$c.class */
    public static class C3554c {

        /* renamed from: a */
        public int f6322a;

        /* renamed from: b */
        public boolean f6323b;

        /* renamed from: c */
        public int f6324c;

        /* renamed from: d */
        public int f6325d;

        /* renamed from: e */
        public int f6326e;

        /* renamed from: f */
        public int f6327f;

        /* renamed from: g */
        public int f6328g;

        /* renamed from: h */
        public int f6329h;

        /* renamed from: i */
        public int f6330i;

        /* renamed from: j */
        public boolean f6331j;

        public C3554c() {
            this.f6329h = 1;
            this.f6330i = 1;
        }

        /* renamed from: e */
        public static /* synthetic */ int m32098e(C3554c cVar) {
            int i = cVar.f6324c;
            cVar.f6324c = i + 1;
            return i;
        }

        /* renamed from: f */
        public static /* synthetic */ int m32096f(C3554c cVar) {
            int i = cVar.f6324c;
            cVar.f6324c = i - 1;
            return i;
        }

        /* renamed from: a */
        public final boolean m32110a(RecyclerView.State state, List<C6704b> list) {
            int i;
            int i2 = this.f6325d;
            return i2 >= 0 && i2 < state.getItemCount() && (i = this.f6324c) >= 0 && i < list.size();
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.f6322a + ", mFlexLinePosition=" + this.f6324c + ", mPosition=" + this.f6325d + ", mOffset=" + this.f6326e + ", mScrollingOffset=" + this.f6327f + ", mLastScrollDelta=" + this.f6328g + ", mItemDirection=" + this.f6329h + ", mLayoutDirection=" + this.f6330i + '}';
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.reverseLayout) {
                    m32158g(3);
                } else {
                    m32158g(2);
                }
            }
        } else if (properties.reverseLayout) {
            m32158g(1);
        } else {
            m32158g(0);
        }
        m32157h(1);
        m32160f(4);
        setAutoMeasureEnabled(true);
        this.f6299v = context;
    }

    public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        boolean z = false;
        boolean z2 = false;
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            if (size >= i) {
                z = true;
            }
            return z;
        } else if (mode == 0) {
            return true;
        } else {
            if (mode != 1073741824) {
                return false;
            }
            if (size == i) {
                z2 = true;
            }
            return z2;
        }
    }

    private boolean shouldMeasureChild(View view, int i, int i2, RecyclerView.LayoutParams layoutParams) {
        return view.isLayoutRequested() || !isMeasurementCacheEnabled() || !isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22060a() {
        return this.f6287j.getItemCount();
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22058a(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    /* renamed from: a */
    public final int m32191a(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m32153k();
        int i2 = 1;
        this.f6288k.f6331j = true;
        boolean z = !mo22042i() && this.f6282e;
        if (!z ? i <= 0 : i >= 0) {
            i2 = -1;
        }
        int abs = Math.abs(i);
        m32193a(i2, abs);
        int a = this.f6288k.f6327f + m32187a(recycler, state, this.f6288k);
        if (a < 0) {
            return 0;
        }
        if (z) {
            if (abs > a) {
                i = (-i2) * a;
            }
        } else if (abs > a) {
            i = i2 * a;
        }
        this.f6290m.offsetChildren(-i);
        this.f6288k.f6328g = i;
        return i;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22056a(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (mo22042i()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public int mo22055a(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (mo22042i()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    /* renamed from: a */
    public final int m32187a(RecyclerView.Recycler recycler, RecyclerView.State state, C3554c cVar) {
        if (cVar.f6327f != Integer.MIN_VALUE) {
            if (cVar.f6322a < 0) {
                cVar.f6327f += cVar.f6322a;
            }
            m32186a(recycler, cVar);
        }
        int i = cVar.f6322a;
        int i2 = cVar.f6322a;
        int i3 = 0;
        boolean i4 = mo22042i();
        while (true) {
            if ((i2 > 0 || this.f6288k.f6323b) && cVar.m32110a(state, this.f6284g)) {
                C6704b bVar = this.f6284g.get(cVar.f6324c);
                cVar.f6325d = bVar.f16596o;
                i3 += m32181a(bVar, cVar);
                if (i4 || !this.f6282e) {
                    cVar.f6326e += bVar.m22041a() * cVar.f6330i;
                } else {
                    cVar.f6326e -= bVar.m22041a() * cVar.f6330i;
                }
                i2 -= bVar.m22041a();
            }
        }
        cVar.f6322a -= i3;
        if (cVar.f6327f != Integer.MIN_VALUE) {
            cVar.f6327f += i3;
            if (cVar.f6322a < 0) {
                cVar.f6327f += cVar.f6322a;
            }
            m32186a(recycler, cVar);
        }
        return i - cVar.f6322a;
    }

    /* renamed from: a */
    public final int m32181a(C6704b bVar, C3554c cVar) {
        return mo22042i() ? m32173b(bVar, cVar) : m32167c(bVar, cVar);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public View mo22059a(int i) {
        View view = this.f6298u.get(i);
        return view != null ? view : this.f6286i.getViewForPosition(i);
    }

    /* renamed from: a */
    public final View m32192a(int i, int i2, boolean z) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (m32188a(childAt, z)) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    /* renamed from: a */
    public final View m32189a(View view, C6704b bVar) {
        boolean i = mo22042i();
        int i2 = bVar.f16589h;
        for (int i3 = 1; i3 < i2; i3++) {
            View childAt = getChildAt(i3);
            view = view;
            if (childAt != null) {
                if (childAt.getVisibility() == 8) {
                    view = view;
                } else if (!this.f6282e || i) {
                    view = view;
                    if (this.f6290m.getDecoratedStart(view) <= this.f6290m.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                } else {
                    view = view;
                    if (this.f6290m.getDecoratedEnd(view) >= this.f6290m.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* renamed from: a */
    public final void m32193a(int i, int i2) {
        this.f6288k.f6330i = i;
        boolean i3 = mo22042i();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int i4 = 0;
        int i5 = 0;
        boolean z = !i3 && this.f6282e;
        if (i == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            this.f6288k.f6326e = this.f6290m.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View b = m32178b(childAt, this.f6284g.get(this.f6285h.f16600c[position]));
            this.f6288k.f6329h = 1;
            C3554c cVar = this.f6288k;
            cVar.f6325d = position + cVar.f6329h;
            if (this.f6285h.f16600c.length <= this.f6288k.f6325d) {
                this.f6288k.f6324c = -1;
            } else {
                C3554c cVar2 = this.f6288k;
                cVar2.f6324c = this.f6285h.f16600c[cVar2.f6325d];
            }
            if (z) {
                this.f6288k.f6326e = this.f6290m.getDecoratedStart(b);
                this.f6288k.f6327f = (-this.f6290m.getDecoratedStart(b)) + this.f6290m.getStartAfterPadding();
                C3554c cVar3 = this.f6288k;
                if (cVar3.f6327f >= 0) {
                    i5 = this.f6288k.f6327f;
                }
                cVar3.f6327f = i5;
            } else {
                this.f6288k.f6326e = this.f6290m.getDecoratedEnd(b);
                this.f6288k.f6327f = this.f6290m.getDecoratedEnd(b) - this.f6290m.getEndAfterPadding();
            }
            if ((this.f6288k.f6324c == -1 || this.f6288k.f6324c > this.f6284g.size() - 1) && this.f6288k.f6325d <= mo22060a()) {
                int i6 = i2 - this.f6288k.f6327f;
                this.f6302y.m21986a();
                if (i6 > 0) {
                    if (i3) {
                        this.f6285h.m22016a(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i6, this.f6288k.f6325d, this.f6284g);
                    } else {
                        this.f6285h.m21996c(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i6, this.f6288k.f6325d, this.f6284g);
                    }
                    this.f6285h.m22009b(makeMeasureSpec, makeMeasureSpec2, this.f6288k.f6325d);
                    this.f6285h.m21988f(this.f6288k.f6325d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            this.f6288k.f6326e = this.f6290m.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View a = m32189a(childAt2, this.f6284g.get(this.f6285h.f16600c[position2]));
            this.f6288k.f6329h = 1;
            int i7 = this.f6285h.f16600c[position2];
            int i8 = i7;
            if (i7 == -1) {
                i8 = 0;
            }
            if (i8 > 0) {
                this.f6288k.f6325d = position2 - this.f6284g.get(i8 - 1).m22039b();
            } else {
                this.f6288k.f6325d = -1;
            }
            this.f6288k.f6324c = i8 > 0 ? i8 - 1 : 0;
            if (z) {
                this.f6288k.f6326e = this.f6290m.getDecoratedEnd(a);
                this.f6288k.f6327f = this.f6290m.getDecoratedEnd(a) - this.f6290m.getEndAfterPadding();
                C3554c cVar4 = this.f6288k;
                if (cVar4.f6327f >= 0) {
                    i4 = this.f6288k.f6327f;
                }
                cVar4.f6327f = i4;
            } else {
                this.f6288k.f6326e = this.f6290m.getDecoratedStart(a);
                this.f6288k.f6327f = (-this.f6290m.getDecoratedStart(a)) + this.f6290m.getStartAfterPadding();
            }
        }
        C3554c cVar5 = this.f6288k;
        cVar5.f6322a = i2 - cVar5.f6327f;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22057a(int i, View view) {
        this.f6298u.put(i, view);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22054a(View view, int i, int i2, C6704b bVar) {
        calculateItemDecorationsForChild(view, f6277z);
        if (mo22042i()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            bVar.f16586e += leftDecorationWidth;
            bVar.f16587f += leftDecorationWidth;
            return;
        }
        int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
        bVar.f16586e += topDecorationHeight;
        bVar.f16587f += topDecorationHeight;
    }

    /* renamed from: a */
    public final void m32186a(RecyclerView.Recycler recycler, C3554c cVar) {
        if (cVar.f6331j) {
            if (cVar.f6330i == -1) {
                m32177b(recycler, cVar);
            } else {
                m32169c(recycler, cVar);
            }
        }
    }

    /* renamed from: a */
    public final void m32183a(C3553b bVar, boolean z, boolean z2) {
        if (z2) {
            m32152l();
        } else {
            this.f6288k.f6323b = false;
        }
        if (mo22042i() || !this.f6282e) {
            this.f6288k.f6322a = this.f6290m.getEndAfterPadding() - bVar.f6316c;
        } else {
            this.f6288k.f6322a = bVar.f6316c - getPaddingRight();
        }
        this.f6288k.f6325d = bVar.f6314a;
        this.f6288k.f6329h = 1;
        this.f6288k.f6330i = 1;
        this.f6288k.f6326e = bVar.f6316c;
        this.f6288k.f6327f = Integer.MIN_VALUE;
        this.f6288k.f6324c = bVar.f6315b;
        if (z && this.f6284g.size() > 1 && bVar.f6315b >= 0 && bVar.f6315b < this.f6284g.size() - 1) {
            C6704b bVar2 = this.f6284g.get(bVar.f6315b);
            C3554c.m32098e(this.f6288k);
            this.f6288k.f6325d += bVar2.m22039b();
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22053a(C6704b bVar) {
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: a */
    public void mo22052a(List<C6704b> list) {
        this.f6284g = list;
    }

    /* renamed from: a */
    public final boolean m32190a(View view, int i) {
        boolean z = true;
        boolean z2 = true;
        if (mo22042i() || !this.f6282e) {
            if (this.f6290m.getDecoratedStart(view) < this.f6290m.getEnd() - i) {
                z = false;
            }
            return z;
        }
        if (this.f6290m.getDecoratedEnd(view) > i) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public final boolean m32188a(View view, boolean z) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int c = m32170c(view);
        int e = m32162e(view);
        int d = m32165d(view);
        int b = m32180b(view);
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = paddingLeft <= c && width >= d;
        boolean z5 = c >= width || d >= paddingLeft;
        boolean z6 = paddingTop <= e && height >= b;
        boolean z7 = e >= height || b >= paddingTop;
        if (z) {
            if (!z4 || !z6) {
                z3 = false;
            }
            return z3;
        }
        if (!z5 || !z7) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public final boolean m32185a(RecyclerView.State state, C3553b bVar) {
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View d = bVar.f6318e ? m32166d(state.getItemCount()) : m32172c(state.getItemCount());
        if (d == null) {
            return false;
        }
        bVar.m32128a(d);
        if (state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return true;
        }
        if (this.f6290m.getDecoratedStart(d) >= this.f6290m.getEndAfterPadding() || this.f6290m.getDecoratedEnd(d) < this.f6290m.getStartAfterPadding()) {
            z = true;
        }
        if (!z) {
            return true;
        }
        bVar.f6316c = bVar.f6318e ? this.f6290m.getEndAfterPadding() : this.f6290m.getStartAfterPadding();
        return true;
    }

    /* renamed from: a */
    public final boolean m32184a(RecyclerView.State state, C3553b bVar, SavedState savedState) {
        int i;
        boolean z = false;
        if (state.isPreLayout() || (i = this.f6293p) == -1) {
            return false;
        }
        if (i < 0 || i >= state.getItemCount()) {
            this.f6293p = -1;
            this.f6294q = Integer.MIN_VALUE;
            return false;
        }
        bVar.f6314a = this.f6293p;
        bVar.f6315b = this.f6285h.f16600c[bVar.f6314a];
        SavedState savedState2 = this.f6292o;
        if (savedState2 != null && savedState2.m32136a(state.getItemCount())) {
            bVar.f6316c = this.f6290m.getStartAfterPadding() + savedState.f6313b;
            bVar.f6320g = true;
            bVar.f6315b = -1;
            return true;
        } else if (this.f6294q == Integer.MIN_VALUE) {
            View findViewByPosition = findViewByPosition(this.f6293p);
            if (findViewByPosition == null) {
                if (getChildCount() > 0) {
                    if (this.f6293p < getPosition(getChildAt(0))) {
                        z = true;
                    }
                    bVar.f6318e = z;
                }
                bVar.m32129a();
                return true;
            } else if (this.f6290m.getDecoratedMeasurement(findViewByPosition) > this.f6290m.getTotalSpace()) {
                bVar.m32129a();
                return true;
            } else if (this.f6290m.getDecoratedStart(findViewByPosition) - this.f6290m.getStartAfterPadding() < 0) {
                bVar.f6316c = this.f6290m.getStartAfterPadding();
                bVar.f6318e = false;
                return true;
            } else if (this.f6290m.getEndAfterPadding() - this.f6290m.getDecoratedEnd(findViewByPosition) < 0) {
                bVar.f6316c = this.f6290m.getEndAfterPadding();
                bVar.f6318e = true;
                return true;
            } else {
                bVar.f6316c = bVar.f6318e ? this.f6290m.getDecoratedEnd(findViewByPosition) + this.f6290m.getTotalSpaceChange() : this.f6290m.getDecoratedStart(findViewByPosition);
                return true;
            }
        } else if (mo22042i() || !this.f6282e) {
            bVar.f6316c = this.f6290m.getStartAfterPadding() + this.f6294q;
            return true;
        } else {
            bVar.f6316c = this.f6294q - this.f6290m.getEndPadding();
            return true;
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: b */
    public int mo22051b() {
        return this.f6278a;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: b */
    public int mo22049b(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    /* renamed from: b */
    public final int m32180b(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x018a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m32173b(p081h.p203i.p204a.p223d.C6704b r10, com.google.android.flexbox.FlexboxLayoutManager.C3554c r11) {
        /*
            Method dump skipped, instructions count: 737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.m32173b(h.i.a.d.b, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: b */
    public View mo22050b(int i) {
        return mo22059a(i);
    }

    /* renamed from: b */
    public final View m32178b(View view, C6704b bVar) {
        boolean i = mo22042i();
        int childCount = getChildCount();
        int i2 = bVar.f16589h;
        for (int childCount2 = getChildCount() - 2; childCount2 > (childCount - i2) - 1; childCount2--) {
            View childAt = getChildAt(childCount2);
            view = view;
            if (childAt != null) {
                if (childAt.getVisibility() == 8) {
                    view = view;
                } else if (!this.f6282e || i) {
                    view = view;
                    if (this.f6290m.getDecoratedEnd(view) >= this.f6290m.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                } else {
                    view = view;
                    if (this.f6290m.getDecoratedStart(view) <= this.f6290m.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* renamed from: b */
    public final void m32177b(RecyclerView.Recycler recycler, C3554c cVar) {
        if (cVar.f6327f >= 0) {
            this.f6290m.getEnd();
            int unused = cVar.f6327f;
            int childCount = getChildCount();
            if (childCount != 0) {
                int i = childCount - 1;
                int i2 = this.f6285h.f16600c[getPosition(getChildAt(i))];
                if (i2 != -1) {
                    C6704b bVar = this.f6284g.get(i2);
                    int i3 = i;
                    while (i3 >= 0) {
                        View childAt = getChildAt(i3);
                        if (!m32190a(childAt, cVar.f6327f)) {
                            break;
                        }
                        i2 = i2;
                        bVar = bVar;
                        if (bVar.f16596o == getPosition(childAt)) {
                            if (i2 <= 0) {
                                break;
                            }
                            i2 += cVar.f6330i;
                            bVar = this.f6284g.get(i2);
                            childCount = i3;
                        }
                        i3--;
                    }
                    i3 = childCount;
                    recycleChildren(recycler, i3, i);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m32176b(RecyclerView.State state, C3553b bVar) {
        if (!m32184a(state, bVar, this.f6292o) && !m32185a(state, bVar)) {
            bVar.m32129a();
            bVar.f6314a = 0;
            bVar.f6315b = 0;
        }
    }

    /* renamed from: b */
    public final void m32175b(C3553b bVar, boolean z, boolean z2) {
        if (z2) {
            m32152l();
        } else {
            this.f6288k.f6323b = false;
        }
        if (mo22042i() || !this.f6282e) {
            this.f6288k.f6322a = bVar.f6316c - this.f6290m.getStartAfterPadding();
        } else {
            this.f6288k.f6322a = (this.f6300w.getWidth() - bVar.f6316c) - this.f6290m.getStartAfterPadding();
        }
        this.f6288k.f6325d = bVar.f6314a;
        this.f6288k.f6329h = 1;
        this.f6288k.f6330i = -1;
        this.f6288k.f6326e = bVar.f6316c;
        this.f6288k.f6327f = Integer.MIN_VALUE;
        this.f6288k.f6324c = bVar.f6315b;
        if (z && bVar.f6315b > 0 && this.f6284g.size() > bVar.f6315b) {
            C6704b bVar2 = this.f6284g.get(bVar.f6315b);
            C3554c.m32096f(this.f6288k);
            this.f6288k.f6325d -= bVar2.m22039b();
        }
    }

    /* renamed from: b */
    public final boolean m32179b(View view, int i) {
        boolean z = true;
        boolean z2 = true;
        if (mo22042i() || !this.f6282e) {
            if (this.f6290m.getDecoratedEnd(view) > i) {
                z = false;
            }
            return z;
        }
        if (this.f6290m.getEnd() - this.f6290m.getDecoratedStart(view) > i) {
            z2 = false;
        }
        return z2;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: c */
    public int mo22048c() {
        if (this.f6284g.size() == 0) {
            return 0;
        }
        int i = Integer.MIN_VALUE;
        int size = this.f6284g.size();
        for (int i2 = 0; i2 < size; i2++) {
            i = Math.max(i, this.f6284g.get(i2).f16586e);
        }
        return i;
    }

    /* renamed from: c */
    public final int m32170c(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x019f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m32167c(p081h.p203i.p204a.p223d.C6704b r11, com.google.android.flexbox.FlexboxLayoutManager.C3554c r12) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.m32167c(h.i.a.d.b, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    /* renamed from: c */
    public final View m32172c(int i) {
        View c = m32171c(0, getChildCount(), i);
        if (c == null) {
            return null;
        }
        int i2 = this.f6285h.f16600c[getPosition(c)];
        if (i2 == -1) {
            return null;
        }
        return m32189a(c, this.f6284g.get(i2));
    }

    /* renamed from: c */
    public final View m32171c(int i, int i2, int i3) {
        m32153k();
        ensureLayoutState();
        int startAfterPadding = this.f6290m.getStartAfterPadding();
        int endAfterPadding = this.f6290m.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            view = view;
            view2 = view2;
            if (position >= 0) {
                view = view;
                view2 = view2;
                if (position >= i3) {
                    continue;
                } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    view = view;
                    view2 = view2;
                    if (view2 == null) {
                        view2 = childAt;
                        view = view;
                    }
                } else if (this.f6290m.getDecoratedStart(childAt) >= startAfterPadding && this.f6290m.getDecoratedEnd(childAt) <= endAfterPadding) {
                    return childAt;
                } else {
                    view = view;
                    view2 = view2;
                    if (view == null) {
                        view = childAt;
                        view2 = view2;
                    }
                }
            }
            i += i4;
        }
        if (view != null) {
            view2 = view;
        }
        return view2;
    }

    /* renamed from: c */
    public final void m32169c(RecyclerView.Recycler recycler, C3554c cVar) {
        int childCount;
        if (cVar.f6327f >= 0 && (childCount = getChildCount()) != 0) {
            int i = this.f6285h.f16600c[getPosition(getChildAt(0))];
            if (i != -1) {
                C6704b bVar = this.f6284g.get(i);
                int i2 = 0;
                int i3 = -1;
                while (i2 < childCount) {
                    View childAt = getChildAt(i2);
                    if (!m32179b(childAt, cVar.f6327f)) {
                        break;
                    }
                    i = i;
                    bVar = bVar;
                    if (bVar.f16597p == getPosition(childAt)) {
                        if (i >= this.f6284g.size() - 1) {
                            break;
                        }
                        i += cVar.f6330i;
                        bVar = this.f6284g.get(i);
                        i3 = i2;
                    }
                    i2++;
                }
                i2 = i3;
                recycleChildren(recycler, 0, i2);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return !mo22042i() || getWidth() > this.f6300w.getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return mo22042i() || getHeight() > this.f6300w.getHeight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        computeScrollOffset(state);
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        m32153k();
        View c = m32172c(itemCount);
        View d = m32166d(itemCount);
        if (state.getItemCount() == 0 || c == null || d == null) {
            return 0;
        }
        return Math.min(this.f6290m.getTotalSpace(), this.f6290m.getDecoratedEnd(d) - this.f6290m.getDecoratedStart(c));
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View c = m32172c(itemCount);
        View d = m32166d(itemCount);
        if (state.getItemCount() == 0 || c == null || d == null) {
            return 0;
        }
        int position = getPosition(c);
        int position2 = getPosition(d);
        int abs = Math.abs(this.f6290m.getDecoratedEnd(d) - this.f6290m.getDecoratedStart(c));
        int[] iArr = this.f6285h.f16600c;
        int i = iArr[position];
        if (i == 0 || i == -1) {
            return 0;
        }
        return Math.round((i * (abs / ((iArr[position2] - i) + 1))) + (this.f6290m.getStartAfterPadding() - this.f6290m.getDecoratedStart(c)));
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View c = m32172c(itemCount);
        View d = m32166d(itemCount);
        if (state.getItemCount() == 0 || c == null || d == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f6290m.getDecoratedEnd(d) - this.f6290m.getDecoratedStart(c)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = i < getPosition(getChildAt(0)) ? -1 : 1;
        return mo22042i() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    /* renamed from: d */
    public final int m32165d(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    /* renamed from: d */
    public final View m32166d(int i) {
        View c = m32171c(getChildCount() - 1, -1, i);
        if (c == null) {
            return null;
        }
        return m32178b(c, this.f6284g.get(this.f6285h.f16600c[getPosition(c)]));
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: d */
    public List<C6704b> mo22047d() {
        return this.f6284g;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: e */
    public int mo22046e() {
        return 5;
    }

    /* renamed from: e */
    public final int m32163e(int i) {
        int i2;
        int i3;
        boolean z = false;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m32153k();
        boolean i4 = mo22042i();
        View view = this.f6300w;
        int width = i4 ? view.getWidth() : view.getHeight();
        int width2 = i4 ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            z = true;
        }
        if (z) {
            int abs = Math.abs(i);
            if (i < 0) {
                i3 = Math.min((width2 + this.f6289l.f6317d) - width, abs);
            } else {
                i2 = i;
                if (this.f6289l.f6317d + i > 0) {
                    i3 = this.f6289l.f6317d;
                }
                return i2;
            }
            i2 = -i3;
            return i2;
        }
        if (i > 0) {
            i2 = Math.min((width2 - this.f6289l.f6317d) - width, i);
        } else if (this.f6289l.f6317d + i >= 0) {
            i2 = i;
        } else {
            i3 = this.f6289l.f6317d;
            i2 = -i3;
        }
        return i2;
    }

    /* renamed from: e */
    public final int m32162e(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    public final void ensureLayoutState() {
        if (this.f6288k == null) {
            this.f6288k = new C3554c();
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: f */
    public int mo22045f() {
        return this.f6279b;
    }

    /* renamed from: f */
    public void m32160f(int i) {
        int i2 = this.f6281d;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                m32155j();
            }
            this.f6281d = i;
            requestLayout();
        }
    }

    public int findFirstVisibleItemPosition() {
        View a = m32192a(0, getChildCount(), false);
        return a == null ? -1 : getPosition(a);
    }

    public int findLastVisibleItemPosition() {
        int i = -1;
        View a = m32192a(getChildCount() - 1, -1, false);
        if (a != null) {
            i = getPosition(a);
        }
        return i;
    }

    public final int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        int endAfterPadding;
        if (!mo22042i() && this.f6282e) {
            int startAfterPadding = i - this.f6290m.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i2 = m32191a(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding2 = this.f6290m.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -m32191a(-endAfterPadding2, recycler, state);
        }
        if (!z || (endAfterPadding = this.f6290m.getEndAfterPadding() - (i + i2)) <= 0) {
            return i2;
        }
        this.f6290m.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        if (mo22042i() || !this.f6282e) {
            int startAfterPadding = i - this.f6290m.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i2 = -m32191a(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding = this.f6290m.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i2 = m32191a(-endAfterPadding, recycler, state);
        }
        int i3 = i2;
        if (z) {
            int startAfterPadding2 = (i + i2) - this.f6290m.getStartAfterPadding();
            i3 = i2;
            if (startAfterPadding2 > 0) {
                this.f6290m.offsetChildren(-startAfterPadding2);
                i3 = i2 - startAfterPadding2;
            }
        }
        return i3;
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: g */
    public int mo22044g() {
        return this.f6281d;
    }

    /* renamed from: g */
    public void m32158g(int i) {
        if (this.f6278a != i) {
            removeAllViews();
            this.f6278a = i;
            this.f6290m = null;
            this.f6291n = null;
            m32155j();
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public final View getChildClosestToStart() {
        return getChildAt(0);
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: h */
    public int mo22043h() {
        int size = this.f6284g.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f6284g.get(i2).f16588g;
        }
        return i;
    }

    /* renamed from: h */
    public void m32157h(int i) {
        if (i != 2) {
            int i2 = this.f6279b;
            if (i2 != i) {
                if (i2 == 0 || i == 0) {
                    removeAllViews();
                    m32155j();
                }
                this.f6279b = i;
                this.f6290m = null;
                this.f6291n = null;
                requestLayout();
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
    }

    /* renamed from: i */
    public final void m32156i(int i) {
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = findLastVisibleItemPosition();
        if (i < findLastVisibleItemPosition) {
            int childCount = getChildCount();
            this.f6285h.m21994d(childCount);
            this.f6285h.m21990e(childCount);
            this.f6285h.m21998c(childCount);
            if (i < this.f6285h.f16600c.length) {
                this.f6301x = i;
                View childClosestToStart = getChildClosestToStart();
                if (childClosestToStart != null) {
                    if (findFirstVisibleItemPosition > i || i > findLastVisibleItemPosition) {
                        this.f6293p = getPosition(childClosestToStart);
                        if (mo22042i() || !this.f6282e) {
                            this.f6294q = this.f6290m.getDecoratedStart(childClosestToStart) - this.f6290m.getStartAfterPadding();
                        } else {
                            this.f6294q = this.f6290m.getDecoratedEnd(childClosestToStart) + this.f6290m.getEndPadding();
                        }
                    }
                }
            }
        }
    }

    @Override // p081h.p203i.p204a.p223d.AbstractC6703a
    /* renamed from: i */
    public boolean mo22042i() {
        int i = this.f6278a;
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: j */
    public final void m32155j() {
        this.f6284g.clear();
        this.f6289l.m32123b();
        this.f6289l.f6317d = 0;
    }

    /* renamed from: j */
    public final void m32154j(int i) {
        int i2;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        r17 = true;
        boolean z = true;
        if (mo22042i()) {
            int i3 = this.f6295r;
            if (i3 == Integer.MIN_VALUE || i3 == width) {
                z = false;
            }
            i2 = this.f6288k.f6323b ? this.f6299v.getResources().getDisplayMetrics().heightPixels : this.f6288k.f6322a;
        } else {
            int i4 = this.f6296s;
            if (i4 == Integer.MIN_VALUE || i4 == height) {
                z = false;
            }
            i2 = this.f6288k.f6323b ? this.f6299v.getResources().getDisplayMetrics().widthPixels : this.f6288k.f6322a;
        }
        this.f6295r = width;
        this.f6296s = height;
        if (this.f6301x != -1 || (this.f6293p == -1 && !z)) {
            int i5 = this.f6301x;
            int min = i5 != -1 ? Math.min(i5, this.f6289l.f6314a) : this.f6289l.f6314a;
            this.f6302y.m21986a();
            if (mo22042i()) {
                if (this.f6284g.size() > 0) {
                    this.f6285h.m22015a(this.f6284g, min);
                    this.f6285h.m22017a(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i2, min, this.f6289l.f6314a, this.f6284g);
                } else {
                    this.f6285h.m21998c(i);
                    this.f6285h.m22016a(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i2, 0, this.f6284g);
                }
            } else if (this.f6284g.size() > 0) {
                this.f6285h.m22015a(this.f6284g, min);
                this.f6285h.m22017a(this.f6302y, makeMeasureSpec2, makeMeasureSpec, i2, min, this.f6289l.f6314a, this.f6284g);
            } else {
                this.f6285h.m21998c(i);
                this.f6285h.m21996c(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i2, 0, this.f6284g);
            }
            this.f6284g = this.f6302y.f16603a;
            this.f6285h.m22009b(makeMeasureSpec, makeMeasureSpec2, min);
            this.f6285h.m21988f(min);
        } else if (!this.f6289l.f6318e) {
            this.f6284g.clear();
            this.f6302y.m21986a();
            if (mo22042i()) {
                this.f6285h.m22000b(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i2, this.f6289l.f6314a, this.f6284g);
            } else {
                this.f6285h.m21992d(this.f6302y, makeMeasureSpec, makeMeasureSpec2, i2, this.f6289l.f6314a, this.f6284g);
            }
            this.f6284g = this.f6302y.f16603a;
            this.f6285h.m22035a(makeMeasureSpec, makeMeasureSpec2);
            this.f6285h.m22037a();
            C3553b bVar = this.f6289l;
            bVar.f6315b = this.f6285h.f16600c[bVar.f6314a];
            this.f6288k.f6324c = this.f6289l.f6315b;
        }
    }

    /* renamed from: k */
    public final void m32153k() {
        if (this.f6290m == null) {
            if (mo22042i()) {
                if (this.f6279b == 0) {
                    this.f6290m = OrientationHelper.createHorizontalHelper(this);
                    this.f6291n = OrientationHelper.createVerticalHelper(this);
                    return;
                }
                this.f6290m = OrientationHelper.createVerticalHelper(this);
                this.f6291n = OrientationHelper.createHorizontalHelper(this);
            } else if (this.f6279b == 0) {
                this.f6290m = OrientationHelper.createVerticalHelper(this);
                this.f6291n = OrientationHelper.createHorizontalHelper(this);
            } else {
                this.f6290m = OrientationHelper.createHorizontalHelper(this);
                this.f6291n = OrientationHelper.createVerticalHelper(this);
            }
        }
    }

    /* renamed from: l */
    public final void m32152l() {
        int heightMode = mo22042i() ? getHeightMode() : getWidthMode();
        this.f6288k.f6323b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    /* renamed from: m */
    public final void m32151m() {
        int layoutDirection = getLayoutDirection();
        int i = this.f6278a;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (i == 0) {
            this.f6282e = layoutDirection == 1;
            if (this.f6279b == 2) {
                z2 = true;
            }
            this.f6283f = z2;
        } else if (i == 1) {
            this.f6282e = layoutDirection != 1;
            if (this.f6279b == 2) {
                z = true;
            }
            this.f6283f = z;
        } else if (i == 2) {
            this.f6282e = layoutDirection == 1;
            if (this.f6279b == 2) {
                this.f6282e = !this.f6282e;
            }
            this.f6283f = false;
        } else if (i != 3) {
            this.f6282e = false;
            this.f6283f = false;
        } else {
            if (layoutDirection == 1) {
                z3 = true;
            }
            this.f6282e = z3;
            if (this.f6279b == 2) {
                this.f6282e = !this.f6282e;
            }
            this.f6283f = true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f6300w = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.f6297t) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        m32156i(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        m32156i(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        m32156i(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        m32156i(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        m32156i(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        this.f6286i = recycler;
        this.f6287j = state;
        int itemCount = state.getItemCount();
        if (itemCount != 0 || !state.isPreLayout()) {
            m32151m();
            m32153k();
            ensureLayoutState();
            this.f6285h.m21994d(itemCount);
            this.f6285h.m21990e(itemCount);
            this.f6285h.m21998c(itemCount);
            this.f6288k.f6331j = false;
            SavedState savedState = this.f6292o;
            if (savedState != null && savedState.m32136a(itemCount)) {
                this.f6293p = this.f6292o.f6312a;
            }
            if (!(this.f6289l.f6319f && this.f6293p == -1 && this.f6292o == null)) {
                this.f6289l.m32123b();
                m32176b(state, this.f6289l);
                this.f6289l.f6319f = true;
            }
            detachAndScrapAttachedViews(recycler);
            if (this.f6289l.f6318e) {
                m32175b(this.f6289l, false, true);
            } else {
                m32183a(this.f6289l, false, true);
            }
            m32154j(itemCount);
            if (this.f6289l.f6318e) {
                m32187a(recycler, state, this.f6288k);
                i2 = this.f6288k.f6326e;
                m32183a(this.f6289l, true, false);
                m32187a(recycler, state, this.f6288k);
                i = this.f6288k.f6326e;
            } else {
                m32187a(recycler, state, this.f6288k);
                i = this.f6288k.f6326e;
                m32175b(this.f6289l, true, false);
                m32187a(recycler, state, this.f6288k);
                i2 = this.f6288k.f6326e;
            }
            if (getChildCount() <= 0) {
                return;
            }
            if (this.f6289l.f6318e) {
                fixLayoutStartGap(i2 + fixLayoutEndGap(i, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i + fixLayoutStartGap(i2, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f6292o = null;
        this.f6293p = -1;
        this.f6294q = Integer.MIN_VALUE;
        this.f6301x = -1;
        this.f6289l.m32123b();
        this.f6298u.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f6292o = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.f6292o;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            View childClosestToStart = getChildClosestToStart();
            savedState2.f6312a = getPosition(childClosestToStart);
            savedState2.f6313b = this.f6290m.getDecoratedStart(childClosestToStart) - this.f6290m.getStartAfterPadding();
        } else {
            savedState2.m32137a();
        }
        return savedState2;
    }

    public final void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        while (i2 >= i) {
            removeAndRecycleViewAt(i2, recycler);
            i2--;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!mo22042i()) {
            int a = m32191a(i, recycler, state);
            this.f6298u.clear();
            return a;
        }
        int e = m32163e(i);
        this.f6289l.f6317d += e;
        this.f6291n.offsetChildren(-e);
        return e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.f6293p = i;
        this.f6294q = Integer.MIN_VALUE;
        SavedState savedState = this.f6292o;
        if (savedState != null) {
            savedState.m32137a();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (mo22042i()) {
            int a = m32191a(i, recycler, state);
            this.f6298u.clear();
            return a;
        }
        int e = m32163e(i);
        this.f6289l.f6317d += e;
        this.f6291n.offsetChildren(-e);
        return e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }
}
