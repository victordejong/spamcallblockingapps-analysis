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
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1744b0.p1745a.AbstractC25622u;
import p1727n3.p1744b0.p1745a.C25614n;
import p1727n3.p1744b0.p1745a.C25620s;
import p1727n3.p1744b0.p1745a.C25621t;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1641e.AbstractC24871a;
import p193e.p1577m.p1578a.p1641e.C24872b;
import p193e.p1577m.p1578a.p1641e.C24873c;
/* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager.class */
public class FlexboxLayoutManager extends RecyclerView.AbstractC0329o implements AbstractC24871a, RecyclerView.AbstractC0344y.AbstractC0346b {

    /* renamed from: y */
    public static final Rect f5251y = new Rect();

    /* renamed from: a */
    public int f5252a;

    /* renamed from: b */
    public int f5253b;

    /* renamed from: c */
    public int f5254c;

    /* renamed from: e */
    public boolean f5256e;

    /* renamed from: f */
    public boolean f5257f;

    /* renamed from: i */
    public RecyclerView.C0341v f5260i;

    /* renamed from: j */
    public RecyclerView.C0347z f5261j;

    /* renamed from: k */
    public C2033c f5262k;

    /* renamed from: m */
    public AbstractC25622u f5264m;

    /* renamed from: n */
    public AbstractC25622u f5265n;

    /* renamed from: o */
    public SavedState f5266o;

    /* renamed from: u */
    public final Context f5272u;

    /* renamed from: v */
    public View f5273v;

    /* renamed from: d */
    public int f5255d = -1;

    /* renamed from: g */
    public List<C24872b> f5258g = new ArrayList();

    /* renamed from: h */
    public final C24873c f5259h = new C24873c(this);

    /* renamed from: l */
    public C2032b f5263l = new C2032b(null);

    /* renamed from: p */
    public int f5267p = -1;

    /* renamed from: q */
    public int f5268q = Integer.MIN_VALUE;

    /* renamed from: r */
    public int f5269r = Integer.MIN_VALUE;

    /* renamed from: s */
    public int f5270s = Integer.MIN_VALUE;

    /* renamed from: t */
    public SparseArray<View> f5271t = new SparseArray<>();

    /* renamed from: w */
    public int f5274w = -1;

    /* renamed from: x */
    public C24873c.C24875b f5275x = new C24873c.C24875b();

    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.C0334p implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new C2029a();

        /* renamed from: e */
        public float f5276e;

        /* renamed from: f */
        public float f5277f;

        /* renamed from: g */
        public int f5278g;

        /* renamed from: h */
        public float f5279h;

        /* renamed from: i */
        public int f5280i;

        /* renamed from: j */
        public int f5281j;

        /* renamed from: k */
        public int f5282k;

        /* renamed from: l */
        public int f5283l;

        /* renamed from: m */
        public boolean f5284m;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$LayoutParams$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$LayoutParams$a.class */
        public static final class C2029a implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f5276e = 0.0f;
            this.f5277f = 1.0f;
            this.f5278g = -1;
            this.f5279h = -1.0f;
            this.f5282k = 16777215;
            this.f5283l = 16777215;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f5276e = 0.0f;
            this.f5277f = 1.0f;
            this.f5278g = -1;
            this.f5279h = -1.0f;
            this.f5282k = 16777215;
            this.f5283l = 16777215;
        }

        public LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.f5276e = 0.0f;
            this.f5277f = 1.0f;
            this.f5278g = -1;
            this.f5279h = -1.0f;
            this.f5282k = 16777215;
            this.f5283l = 16777215;
            this.f5276e = parcel.readFloat();
            this.f5277f = parcel.readFloat();
            this.f5278g = parcel.readInt();
            this.f5279h = parcel.readFloat();
            this.f5280i = parcel.readInt();
            this.f5281j = parcel.readInt();
            this.f5282k = parcel.readInt();
            this.f5283l = parcel.readInt();
            this.f5284m = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: B1 */
        public int mo39152B1() {
            return this.f5282k;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: K */
        public int mo39151K() {
            return this.f5280i;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: Q */
        public int mo39150Q() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: R1 */
        public int mo39149R1() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: U0 */
        public int mo39148U0() {
            return this.f5278g;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: W0 */
        public float mo39147W0() {
            return this.f5277f;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: Z1 */
        public int mo39146Z1() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: b2 */
        public int mo39145b2() {
            return this.f5281j;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
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
        /* renamed from: h2 */
        public int mo39144h2() {
            return this.f5283l;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: j1 */
        public void mo39143j1(int i) {
            this.f5281j = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: l1 */
        public float mo39142l1() {
            return this.f5276e;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: n0 */
        public int mo39141n0() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: n1 */
        public float mo39140n1() {
            return this.f5279h;
        }

        @Override // com.google.android.flexbox.FlexItem
        /* renamed from: s1 */
        public boolean mo39139s1() {
            return this.f5284m;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.f5280i = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.f5276e);
            parcel.writeFloat(this.f5277f);
            parcel.writeInt(this.f5278g);
            parcel.writeFloat(this.f5279h);
            parcel.writeInt(this.f5280i);
            parcel.writeInt(this.f5281j);
            parcel.writeInt(this.f5282k);
            parcel.writeInt(this.f5283l);
            parcel.writeByte(this.f5284m ? (byte) 1 : (byte) 0);
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
        public static final Parcelable.Creator<SavedState> CREATOR = new C2030a();

        /* renamed from: a */
        public int f5285a;

        /* renamed from: b */
        public int f5286b;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$SavedState$a.class */
        public static final class C2030a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (C2031a) null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        public SavedState(Parcel parcel, C2031a c2031a) {
            this.f5285a = parcel.readInt();
            this.f5286b = parcel.readInt();
        }

        public SavedState(SavedState savedState, C2031a c2031a) {
            this.f5285a = savedState.f5285a;
            this.f5286b = savedState.f5286b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SavedState{mAnchorPosition=");
            m8728C.append(this.f5285a);
            m8728C.append(", mAnchorOffset=");
            return C22128a.m8701I2(m8728C, this.f5286b, '}');
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f5285a);
            parcel.writeInt(this.f5286b);
        }
    }

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$b.class */
    public class C2032b {

        /* renamed from: a */
        public int f5287a;

        /* renamed from: b */
        public int f5288b;

        /* renamed from: c */
        public int f5289c;

        /* renamed from: d */
        public int f5290d = 0;

        /* renamed from: e */
        public boolean f5291e;

        /* renamed from: f */
        public boolean f5292f;

        /* renamed from: g */
        public boolean f5293g;

        public C2032b(C2031a c2031a) {
            FlexboxLayoutManager.this = r4;
        }

        /* renamed from: a */
        public static void m39138a(C2032b c2032b) {
            if (!FlexboxLayoutManager.this.mo4334j()) {
                FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
                if (flexboxLayoutManager.f5256e) {
                    c2032b.f5289c = c2032b.f5291e ? flexboxLayoutManager.f5264m.mo3129g() : flexboxLayoutManager.getWidth() - FlexboxLayoutManager.this.f5264m.mo3125k();
                    return;
                }
            }
            c2032b.f5289c = c2032b.f5291e ? FlexboxLayoutManager.this.f5264m.mo3129g() : FlexboxLayoutManager.this.f5264m.mo3125k();
        }

        /* renamed from: b */
        public static void m39137b(C2032b c2032b) {
            c2032b.f5287a = -1;
            c2032b.f5288b = -1;
            c2032b.f5289c = Integer.MIN_VALUE;
            boolean z = false;
            c2032b.f5292f = false;
            c2032b.f5293g = false;
            if (FlexboxLayoutManager.this.mo4334j()) {
                FlexboxLayoutManager flexboxLayoutManager = FlexboxLayoutManager.this;
                int i = flexboxLayoutManager.f5253b;
                if (i == 0) {
                    if (flexboxLayoutManager.f5252a == 1) {
                        z = true;
                    }
                    c2032b.f5291e = z;
                    return;
                }
                boolean z2 = false;
                if (i == 2) {
                    z2 = true;
                }
                c2032b.f5291e = z2;
                return;
            }
            FlexboxLayoutManager flexboxLayoutManager2 = FlexboxLayoutManager.this;
            int i2 = flexboxLayoutManager2.f5253b;
            if (i2 == 0) {
                boolean z3 = false;
                if (flexboxLayoutManager2.f5252a == 3) {
                    z3 = true;
                }
                c2032b.f5291e = z3;
                return;
            }
            boolean z4 = false;
            if (i2 == 2) {
                z4 = true;
            }
            c2032b.f5291e = z4;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AnchorInfo{mPosition=");
            m8728C.append(this.f5287a);
            m8728C.append(", mFlexLinePosition=");
            m8728C.append(this.f5288b);
            m8728C.append(", mCoordinate=");
            m8728C.append(this.f5289c);
            m8728C.append(", mPerpendicularCoordinate=");
            m8728C.append(this.f5290d);
            m8728C.append(", mLayoutFromEnd=");
            m8728C.append(this.f5291e);
            m8728C.append(", mValid=");
            m8728C.append(this.f5292f);
            m8728C.append(", mAssignedFromSavedState=");
            return C22128a.m8598m(m8728C, this.f5293g, '}');
        }
    }

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$c.class */
    public static class C2033c {

        /* renamed from: a */
        public int f5295a;

        /* renamed from: b */
        public boolean f5296b;

        /* renamed from: c */
        public int f5297c;

        /* renamed from: d */
        public int f5298d;

        /* renamed from: e */
        public int f5299e;

        /* renamed from: f */
        public int f5300f;

        /* renamed from: g */
        public int f5301g;

        /* renamed from: h */
        public int f5302h = 1;

        /* renamed from: i */
        public int f5303i = 1;

        /* renamed from: j */
        public boolean f5304j;

        public C2033c(C2031a c2031a) {
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("LayoutState{mAvailable=");
            m8728C.append(this.f5295a);
            m8728C.append(", mFlexLinePosition=");
            m8728C.append(this.f5297c);
            m8728C.append(", mPosition=");
            m8728C.append(this.f5298d);
            m8728C.append(", mOffset=");
            m8728C.append(this.f5299e);
            m8728C.append(", mScrollingOffset=");
            m8728C.append(this.f5300f);
            m8728C.append(", mLastScrollDelta=");
            m8728C.append(this.f5301g);
            m8728C.append(", mItemDirection=");
            m8728C.append(this.f5302h);
            m8728C.append(", mLayoutDirection=");
            return C22128a.m8701I2(m8728C, this.f5303i, '}');
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0329o.C0333d properties = RecyclerView.AbstractC0329o.getProperties(context, attributeSet, i, i2);
        int i3 = properties.f1310a;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.f1312c) {
                    m39155x(3);
                } else {
                    m39155x(2);
                }
            }
        } else if (properties.f1312c) {
            m39155x(1);
        } else {
            m39155x(0);
        }
        int i4 = this.f5253b;
        if (i4 != 1) {
            if (i4 == 0) {
                removeAllViews();
                m39168k();
            }
            this.f5253b = 1;
            this.f5264m = null;
            this.f5265n = null;
            requestLayout();
        }
        if (this.f5254c != 4) {
            removeAllViews();
            m39168k();
            this.f5254c = 4;
            requestLayout();
        }
        setAutoMeasureEnabled(true);
        this.f5272u = context;
    }

    public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        boolean z = false;
        if (i3 <= 0 || i == i3) {
            if (mode == Integer.MIN_VALUE) {
                boolean z2 = false;
                if (size >= i) {
                    z2 = true;
                }
                return z2;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z = true;
                }
                return z;
            }
        }
        return false;
    }

    private boolean shouldMeasureChild(View view, int i, int i2, RecyclerView.C0334p c0334p) {
        return view.isLayoutRequested() || !isMeasurementCacheEnabled() || !isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0334p).width) || !isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0334p).height);
    }

    /* renamed from: A */
    public final void m39169A(C2032b c2032b, boolean z, boolean z2) {
        if (z2) {
            m39156w();
        } else {
            this.f5262k.f5296b = false;
        }
        if (mo4334j() || !this.f5256e) {
            this.f5262k.f5295a = c2032b.f5289c - this.f5264m.mo3125k();
        } else {
            this.f5262k.f5295a = (this.f5273v.getWidth() - c2032b.f5289c) - this.f5264m.mo3125k();
        }
        C2033c c2033c = this.f5262k;
        c2033c.f5298d = c2032b.f5287a;
        c2033c.f5302h = 1;
        c2033c.f5303i = -1;
        c2033c.f5299e = c2032b.f5289c;
        c2033c.f5300f = Integer.MIN_VALUE;
        int i = c2032b.f5288b;
        c2033c.f5297c = i;
        if (!z || i <= 0) {
            return;
        }
        int size = this.f5258g.size();
        int i2 = c2032b.f5288b;
        if (size <= i2) {
            return;
        }
        C24872b c24872b = this.f5258g.get(i2);
        C2033c c2033c2 = this.f5262k;
        c2033c2.f5297c--;
        c2033c2.f5298d -= c24872b.f69761h;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: a */
    public void mo4343a(View view, int i, int i2, C24872b c24872b) {
        calculateItemDecorationsForChild(view, f5251y);
        if (mo4334j()) {
            int rightDecorationWidth = getRightDecorationWidth(view) + getLeftDecorationWidth(view);
            c24872b.f69758e += rightDecorationWidth;
            c24872b.f69759f += rightDecorationWidth;
            return;
        }
        int bottomDecorationHeight = getBottomDecorationHeight(view) + getTopDecorationHeight(view);
        c24872b.f69758e += bottomDecorationHeight;
        c24872b.f69759f += bottomDecorationHeight;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: b */
    public View mo4342b(int i) {
        View view = this.f5271t.get(i);
        return view != null ? view : this.f5260i.m42719l(i, false, RecyclerView.FOREVER_NS).itemView;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: c */
    public int mo4341c(int i, int i2, int i3) {
        return RecyclerView.AbstractC0329o.getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        if (r0 > (r0 != null ? r0.getWidth() : 0)) goto L14;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean canScrollHorizontally() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f5253b
            if (r0 != 0) goto Lc
            r0 = r3
            boolean r0 = r0.mo4334j()
            return r0
        Lc:
            r0 = r3
            boolean r0 = r0.mo4334j()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L3a
            r0 = r3
            int r0 = r0.getWidth()
            r6 = r0
            r0 = r3
            android.view.View r0 = r0.f5273v
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L31
            r0 = r7
            int r0 = r0.getWidth()
            r8 = r0
            goto L34
        L31:
            r0 = 0
            r8 = r0
        L34:
            r0 = r6
            r1 = r8
            if (r0 <= r1) goto L3c
        L3a:
            r0 = 1
            r5 = r0
        L3c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.canScrollHorizontally():boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean canScrollVertically() {
        if (this.f5253b == 0) {
            return !mo4334j();
        }
        boolean z = true;
        if (!mo4334j()) {
            int height = getHeight();
            View view = this.f5273v;
            z = height > (view != null ? view.getHeight() : 0);
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean checkLayoutParams(RecyclerView.C0334p c0334p) {
        return c0334p instanceof LayoutParams;
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

    public final int computeScrollExtent(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        int m42710b = c0347z.m42710b();
        m39167l();
        View m39165n = m39165n(m42710b);
        View m39163p = m39163p(m42710b);
        if (c0347z.m42710b() == 0 || m39165n == null || m39163p == null) {
            return 0;
        }
        return Math.min(this.f5264m.mo3124l(), this.f5264m.mo3134b(m39163p) - this.f5264m.mo3131e(m39165n));
    }

    public final int computeScrollOffset(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        int m42710b = c0347z.m42710b();
        View m39165n = m39165n(m42710b);
        View m39163p = m39163p(m42710b);
        if (c0347z.m42710b() == 0 || m39165n == null || m39163p == null) {
            return 0;
        }
        int position = getPosition(m39165n);
        int position2 = getPosition(m39163p);
        int abs = Math.abs(this.f5264m.mo3134b(m39163p) - this.f5264m.mo3131e(m39165n));
        int[] iArr = this.f5259h.f69774c;
        int i = iArr[position];
        if (i == 0 || i == -1) {
            return 0;
        }
        return Math.round((i * (abs / ((iArr[position2] - i) + 1))) + (this.f5264m.mo3125k() - this.f5264m.mo3131e(m39165n)));
    }

    public final int computeScrollRange(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        int m42710b = c0347z.m42710b();
        View m39165n = m39165n(m42710b);
        View m39163p = m39163p(m42710b);
        if (c0347z.m42710b() == 0 || m39165n == null || m39163p == null) {
            return 0;
        }
        View m39161r = m39161r(0, getChildCount(), false);
        return (int) ((Math.abs(this.f5264m.mo3134b(m39163p) - this.f5264m.mo3131e(m39165n)) / ((findLastVisibleItemPosition() - (m39161r == null ? -1 : getPosition(m39161r))) + 1)) * c0347z.m42710b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y.AbstractC0346b
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = i < getPosition(getChildAt(0)) ? -1 : 1;
        return mo4334j() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
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

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: d */
    public int mo4340d(View view) {
        int i;
        int i2;
        if (mo4334j()) {
            i2 = getTopDecorationHeight(view);
            i = getBottomDecorationHeight(view);
        } else {
            i2 = getLeftDecorationWidth(view);
            i = getRightDecorationWidth(view);
        }
        return i + i2;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: e */
    public View mo4339e(int i) {
        return mo4342b(i);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: f */
    public int mo4338f(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (mo4334j()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return bottomDecorationHeight + topDecorationHeight;
    }

    public int findLastVisibleItemPosition() {
        int i = -1;
        View m39161r = m39161r(getChildCount() - 1, -1, false);
        if (m39161r != null) {
            i = getPosition(m39161r);
        }
        return i;
    }

    public final int fixLayoutEndGap(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z) {
        int i2;
        int mo3129g;
        if (!mo4334j() && this.f5256e) {
            int mo3125k = i - this.f5264m.mo3125k();
            if (mo3125k <= 0) {
                return 0;
            }
            i2 = m39159t(mo3125k, c0341v, c0347z);
        } else {
            int mo3129g2 = this.f5264m.mo3129g() - i;
            if (mo3129g2 <= 0) {
                return 0;
            }
            i2 = -m39159t(-mo3129g2, c0341v, c0347z);
        }
        if (!z || (mo3129g = this.f5264m.mo3129g() - (i + i2)) <= 0) {
            return i2;
        }
        this.f5264m.mo3120p(mo3129g);
        return mo3129g + i2;
    }

    public final int fixLayoutStartGap(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z) {
        int i2;
        if (mo4334j() || !this.f5256e) {
            int mo3125k = i - this.f5264m.mo3125k();
            if (mo3125k <= 0) {
                return 0;
            }
            i2 = -m39159t(mo3125k, c0341v, c0347z);
        } else {
            int mo3129g = this.f5264m.mo3129g() - i;
            if (mo3129g <= 0) {
                return 0;
            }
            i2 = m39159t(-mo3129g, c0341v, c0347z);
        }
        int i3 = i2;
        if (z) {
            int mo3125k2 = (i + i2) - this.f5264m.mo3125k();
            i3 = i2;
            if (mo3125k2 > 0) {
                this.f5264m.mo3120p(-mo3125k2);
                i3 = i2 - mo3125k2;
            }
        }
        return i3;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: g */
    public int mo4337g(int i, int i2, int i3) {
        return RecyclerView.AbstractC0329o.getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public RecyclerView.C0334p generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public RecyclerView.C0334p generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getAlignContent() {
        return 5;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getAlignItems() {
        return this.f5254c;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getFlexDirection() {
        return this.f5252a;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getFlexItemCount() {
        return this.f5261j.m42710b();
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public List<C24872b> getFlexLinesInternal() {
        return this.f5258g;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getFlexWrap() {
        return this.f5253b;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getLargestMainSize() {
        if (this.f5258g.size() == 0) {
            return 0;
        }
        int i = Integer.MIN_VALUE;
        int size = this.f5258g.size();
        for (int i2 = 0; i2 < size; i2++) {
            i = Math.max(i, this.f5258g.get(i2).f69758e);
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getMaxLine() {
        return this.f5255d;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public int getSumOfCrossSize() {
        int size = this.f5258g.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f5258g.get(i2).f69760g;
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: h */
    public void mo4336h(C24872b c24872b) {
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: i */
    public void mo4335i(int i, View view) {
        this.f5271t.put(i, view);
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    /* renamed from: j */
    public boolean mo4334j() {
        int i = this.f5252a;
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: k */
    public final void m39168k() {
        this.f5258g.clear();
        C2032b.m39137b(this.f5263l);
        this.f5263l.f5290d = 0;
    }

    /* renamed from: l */
    public final void m39167l() {
        if (this.f5264m != null) {
            return;
        }
        if (mo4334j()) {
            if (this.f5253b == 0) {
                this.f5264m = new C25620s(this);
                this.f5265n = new C25621t(this);
                return;
            }
            this.f5264m = new C25621t(this);
            this.f5265n = new C25620s(this);
        } else if (this.f5253b == 0) {
            this.f5264m = new C25621t(this);
            this.f5265n = new C25620s(this);
        } else {
            this.f5264m = new C25620s(this);
            this.f5265n = new C25621t(this);
        }
    }

    /* renamed from: m */
    public final int m39166m(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, C2033c c2033c) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = c2033c.f5300f;
        if (i7 != Integer.MIN_VALUE) {
            int i8 = c2033c.f5295a;
            if (i8 < 0) {
                c2033c.f5300f = i7 + i8;
            }
            m39157v(c0341v, c2033c);
        }
        int i9 = c2033c.f5295a;
        boolean mo4334j = mo4334j();
        int i10 = i9;
        int i11 = 0;
        while (true) {
            i = i11;
            if (i10 <= 0 && !this.f5262k.f5296b) {
                break;
            }
            List<C24872b> list = this.f5258g;
            int i12 = c2033c.f5298d;
            if (!(i12 >= 0 && i12 < c0347z.m42710b() && (i6 = c2033c.f5297c) >= 0 && i6 < list.size())) {
                break;
            }
            C24872b c24872b = this.f5258g.get(c2033c.f5297c);
            c2033c.f5298d = c24872b.f69768o;
            if (mo4334j()) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int width = getWidth();
                int i13 = c2033c.f5299e;
                int i14 = i13;
                if (c2033c.f5303i == -1) {
                    i14 = i13 - c24872b.f69760g;
                }
                int i15 = c2033c.f5298d;
                float f = paddingLeft;
                float f2 = width - paddingRight;
                float f3 = this.f5263l.f5290d;
                float f4 = f - f3;
                float f5 = f2 - f3;
                float max = Math.max(0.0f, 0.0f);
                int i16 = c24872b.f69761h;
                int i17 = 0;
                for (int i18 = i15; i18 < i15 + i16; i18++) {
                    View mo4342b = mo4342b(i18);
                    if (mo4342b != null) {
                        if (c2033c.f5303i == 1) {
                            calculateItemDecorationsForChild(mo4342b, f5251y);
                            addView(mo4342b);
                        } else {
                            calculateItemDecorationsForChild(mo4342b, f5251y);
                            addView(mo4342b, i17);
                            i17++;
                        }
                        C24873c c24873c = this.f5259h;
                        long j = c24873c.f69775d[i18];
                        int i19 = (int) j;
                        int m4317m = c24873c.m4317m(j);
                        LayoutParams layoutParams = (LayoutParams) mo4342b.getLayoutParams();
                        if (shouldMeasureChild(mo4342b, i19, m4317m, layoutParams)) {
                            mo4342b.measure(i19, m4317m);
                        }
                        float leftDecorationWidth = f4 + getLeftDecorationWidth(mo4342b) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        float rightDecorationWidth = f5 - (getRightDecorationWidth(mo4342b) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                        int topDecorationHeight = getTopDecorationHeight(mo4342b) + i14;
                        if (this.f5256e) {
                            this.f5259h.m4309u(mo4342b, c24872b, Math.round(rightDecorationWidth) - mo4342b.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), mo4342b.getMeasuredHeight() + topDecorationHeight);
                        } else {
                            this.f5259h.m4309u(mo4342b, c24872b, Math.round(leftDecorationWidth), topDecorationHeight, mo4342b.getMeasuredWidth() + Math.round(leftDecorationWidth), mo4342b.getMeasuredHeight() + topDecorationHeight);
                        }
                        f5 = rightDecorationWidth - ((getLeftDecorationWidth(mo4342b) + (mo4342b.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin)) + max);
                        f4 = getRightDecorationWidth(mo4342b) + mo4342b.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + max + leftDecorationWidth;
                    }
                }
                c2033c.f5297c += this.f5262k.f5303i;
                i2 = c24872b.f69760g;
                i4 = i9;
                i3 = i;
            } else {
                int i20 = i9;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i21 = c2033c.f5299e;
                if (c2033c.f5303i == -1) {
                    int i22 = c24872b.f69760g;
                    i5 = i21 + i22;
                    i21 -= i22;
                } else {
                    i5 = i21;
                }
                int i23 = c2033c.f5298d;
                float f6 = paddingTop;
                float f7 = height - paddingBottom;
                float f8 = this.f5263l.f5290d;
                float f9 = f6 - f8;
                float f10 = f7 - f8;
                float max2 = Math.max(0.0f, 0.0f);
                int i24 = c24872b.f69761h;
                int i25 = 0;
                for (int i26 = i23; i26 < i23 + i24; i26++) {
                    View mo4342b2 = mo4342b(i26);
                    if (mo4342b2 != null) {
                        C24873c c24873c2 = this.f5259h;
                        long j2 = c24873c2.f69775d[i26];
                        int i27 = (int) j2;
                        int m4317m2 = c24873c2.m4317m(j2);
                        LayoutParams layoutParams2 = (LayoutParams) mo4342b2.getLayoutParams();
                        if (shouldMeasureChild(mo4342b2, i27, m4317m2, layoutParams2)) {
                            mo4342b2.measure(i27, m4317m2);
                        }
                        float topDecorationHeight2 = f9 + getTopDecorationHeight(mo4342b2) + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                        float bottomDecorationHeight = f10 - (getBottomDecorationHeight(mo4342b2) + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                        if (c2033c.f5303i == 1) {
                            calculateItemDecorationsForChild(mo4342b2, f5251y);
                            addView(mo4342b2);
                        } else {
                            calculateItemDecorationsForChild(mo4342b2, f5251y);
                            addView(mo4342b2, i25);
                            i25++;
                        }
                        int leftDecorationWidth2 = getLeftDecorationWidth(mo4342b2) + i21;
                        int rightDecorationWidth2 = i5 - getRightDecorationWidth(mo4342b2);
                        boolean z = this.f5256e;
                        if (z) {
                            if (this.f5257f) {
                                this.f5259h.m4308v(mo4342b2, c24872b, z, rightDecorationWidth2 - mo4342b2.getMeasuredWidth(), Math.round(bottomDecorationHeight) - mo4342b2.getMeasuredHeight(), rightDecorationWidth2, Math.round(bottomDecorationHeight));
                            } else {
                                this.f5259h.m4308v(mo4342b2, c24872b, z, rightDecorationWidth2 - mo4342b2.getMeasuredWidth(), Math.round(topDecorationHeight2), rightDecorationWidth2, mo4342b2.getMeasuredHeight() + Math.round(topDecorationHeight2));
                            }
                        } else if (this.f5257f) {
                            this.f5259h.m4308v(mo4342b2, c24872b, z, leftDecorationWidth2, Math.round(bottomDecorationHeight) - mo4342b2.getMeasuredHeight(), mo4342b2.getMeasuredWidth() + leftDecorationWidth2, Math.round(bottomDecorationHeight));
                        } else {
                            this.f5259h.m4308v(mo4342b2, c24872b, z, leftDecorationWidth2, Math.round(topDecorationHeight2), mo4342b2.getMeasuredWidth() + leftDecorationWidth2, mo4342b2.getMeasuredHeight() + Math.round(topDecorationHeight2));
                        }
                        f10 = bottomDecorationHeight - ((getTopDecorationHeight(mo4342b2) + (mo4342b2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin)) + max2);
                        f9 = getBottomDecorationHeight(mo4342b2) + mo4342b2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + max2 + topDecorationHeight2;
                    }
                }
                c2033c.f5297c += this.f5262k.f5303i;
                i3 = i;
                i4 = i20;
                i2 = c24872b.f69760g;
            }
            int i28 = i3 + i2;
            if (mo4334j || !this.f5256e) {
                c2033c.f5299e = (c24872b.f69760g * c2033c.f5303i) + c2033c.f5299e;
            } else {
                c2033c.f5299e -= c24872b.f69760g * c2033c.f5303i;
            }
            i10 -= c24872b.f69760g;
            i9 = i4;
            i11 = i28;
        }
        int i29 = c2033c.f5295a - i;
        c2033c.f5295a = i29;
        int i30 = c2033c.f5300f;
        if (i30 != Integer.MIN_VALUE) {
            int i31 = i30 + i;
            c2033c.f5300f = i31;
            if (i29 < 0) {
                c2033c.f5300f = i31 + i29;
            }
            m39157v(c0341v, c2033c);
        }
        return i9 - c2033c.f5295a;
    }

    /* renamed from: n */
    public final View m39165n(int i) {
        View m39160s = m39160s(0, getChildCount(), i);
        if (m39160s == null) {
            return null;
        }
        int i2 = this.f5259h.f69774c[getPosition(m39160s)];
        if (i2 != -1) {
            return m39164o(m39160s, this.f5258g.get(i2));
        }
        return null;
    }

    /* renamed from: o */
    public final View m39164o(View view, C24872b c24872b) {
        boolean mo4334j = mo4334j();
        int i = c24872b.f69761h;
        int i2 = 1;
        while (true) {
            View view2 = view;
            if (i2 < i) {
                View childAt = getChildAt(i2);
                view = view2;
                if (childAt != null) {
                    if (childAt.getVisibility() == 8) {
                        view = view2;
                    } else if (!this.f5256e || mo4334j) {
                        view = view2;
                        if (this.f5264m.mo3131e(view2) <= this.f5264m.mo3131e(childAt)) {
                        }
                        view = childAt;
                    } else {
                        view = view2;
                        if (this.f5264m.mo3134b(view2) >= this.f5264m.mo3134b(childAt)) {
                        }
                        view = childAt;
                    }
                }
                i2++;
            } else {
                return view2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onAdapterChanged(RecyclerView.AbstractC0317g abstractC0317g, RecyclerView.AbstractC0317g abstractC0317g2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f5273v = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0341v c0341v) {
        super.onDetachedFromWindow(recyclerView, c0341v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        m39154y(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        m39154y(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        m39154y(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        m39154y(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        m39154y(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0524  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayoutChildren(androidx.recyclerview.widget.RecyclerView.C0341v r10, androidx.recyclerview.widget.RecyclerView.C0347z r11) {
        /*
            Method dump skipped, instructions count: 2218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.onLayoutChildren(androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$z):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onLayoutCompleted(RecyclerView.C0347z c0347z) {
        super.onLayoutCompleted(c0347z);
        this.f5266o = null;
        this.f5267p = -1;
        this.f5268q = Integer.MIN_VALUE;
        this.f5274w = -1;
        C2032b.m39137b(this.f5263l);
        this.f5271t.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f5266o = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.f5266o;
        if (savedState != null) {
            return new SavedState(savedState, (C2031a) null);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            savedState2.f5285a = getPosition(childAt);
            savedState2.f5286b = this.f5264m.mo3131e(childAt) - this.f5264m.mo3125k();
        } else {
            savedState2.f5285a = -1;
        }
        return savedState2;
    }

    /* renamed from: p */
    public final View m39163p(int i) {
        View m39160s = m39160s(getChildCount() - 1, -1, i);
        if (m39160s == null) {
            return null;
        }
        return m39162q(m39160s, this.f5258g.get(this.f5259h.f69774c[getPosition(m39160s)]));
    }

    /* renamed from: q */
    public final View m39162q(View view, C24872b c24872b) {
        boolean mo4334j = mo4334j();
        int childCount = getChildCount() - 2;
        int childCount2 = getChildCount();
        int i = c24872b.f69761h;
        while (true) {
            View view2 = view;
            if (childCount > (childCount2 - i) - 1) {
                View childAt = getChildAt(childCount);
                view = view2;
                if (childAt != null) {
                    if (childAt.getVisibility() == 8) {
                        view = view2;
                    } else if (!this.f5256e || mo4334j) {
                        view = view2;
                        if (this.f5264m.mo3134b(view2) >= this.f5264m.mo3134b(childAt)) {
                        }
                        view = childAt;
                    } else {
                        view = view2;
                        if (this.f5264m.mo3131e(view2) <= this.f5264m.mo3131e(childAt)) {
                        }
                        view = childAt;
                    }
                }
                childCount--;
            } else {
                return view2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0118, code lost:
        if (r11 != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011b, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0130, code lost:
        if (r17 != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013e A[LOOP:0: B:6:0x0010->B:47:0x013e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013b A[SYNTHETIC] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m39161r(int r4, int r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.m39161r(int, int, boolean):android.view.View");
    }

    /* renamed from: s */
    public final View m39160s(int i, int i2, int i3) {
        m39167l();
        View view = null;
        if (this.f5262k == null) {
            this.f5262k = new C2033c(null);
        }
        int mo3125k = this.f5264m.mo3125k();
        int mo3129g = this.f5264m.mo3129g();
        int i4 = i2 > i ? 1 : -1;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view != null) {
                    view3 = view;
                }
                return view3;
            }
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            View view4 = view;
            View view5 = view3;
            if (position >= 0) {
                view4 = view;
                view5 = view3;
                if (position >= i3) {
                    continue;
                } else if (((RecyclerView.C0334p) childAt.getLayoutParams()).m42734c()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = childAt;
                        view4 = view;
                    }
                } else if (this.f5264m.mo3131e(childAt) >= mo3125k && this.f5264m.mo3134b(childAt) <= mo3129g) {
                    return childAt;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = childAt;
                        view5 = view3;
                    }
                }
            }
            i += i4;
            view = view4;
            view2 = view5;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int scrollHorizontallyBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (!mo4334j() || (this.f5253b == 0 && mo4334j())) {
            int m39159t = m39159t(i, c0341v, c0347z);
            this.f5271t.clear();
            return m39159t;
        }
        int m39158u = m39158u(i);
        this.f5263l.f5290d += m39158u;
        this.f5265n.mo3120p(-m39158u);
        return m39158u;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void scrollToPosition(int i) {
        this.f5267p = i;
        this.f5268q = Integer.MIN_VALUE;
        SavedState savedState = this.f5266o;
        if (savedState != null) {
            savedState.f5285a = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int scrollVerticallyBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (mo4334j() || (this.f5253b == 0 && !mo4334j())) {
            int m39159t = m39159t(i, c0341v, c0347z);
            this.f5271t.clear();
            return m39159t;
        }
        int m39158u = m39158u(i);
        this.f5263l.f5290d += m39158u;
        this.f5265n.mo3120p(-m39158u);
        return m39158u;
    }

    @Override // p193e.p1577m.p1578a.p1641e.AbstractC24871a
    public void setFlexLines(List<C24872b> list) {
        this.f5258g = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0347z c0347z, int i) {
        C25614n c25614n = new C25614n(recyclerView.getContext());
        c25614n.f1333a = i;
        startSmoothScroll(c25614n);
    }

    /* renamed from: t */
    public final int m39159t(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m39167l();
        this.f5262k.f5304j = true;
        boolean z = !mo4334j() && this.f5256e;
        int i2 = (!z ? i <= 0 : i >= 0) ? -1 : 1;
        int abs = Math.abs(i);
        this.f5262k.f5303i = i2;
        boolean mo4334j = mo4334j();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z2 = !mo4334j && this.f5256e;
        if (i2 == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            this.f5262k.f5299e = this.f5264m.mo3134b(childAt);
            int position = getPosition(childAt);
            View m39162q = m39162q(childAt, this.f5258g.get(this.f5259h.f69774c[position]));
            C2033c c2033c = this.f5262k;
            c2033c.f5302h = 1;
            int i3 = position + 1;
            c2033c.f5298d = i3;
            int[] iArr = this.f5259h.f69774c;
            if (iArr.length <= i3) {
                c2033c.f5297c = -1;
            } else {
                c2033c.f5297c = iArr[i3];
            }
            if (z2) {
                c2033c.f5299e = this.f5264m.mo3131e(m39162q);
                this.f5262k.f5300f = this.f5264m.mo3125k() + (-this.f5264m.mo3131e(m39162q));
                C2033c c2033c2 = this.f5262k;
                int i4 = c2033c2.f5300f;
                if (i4 < 0) {
                    i4 = 0;
                }
                c2033c2.f5300f = i4;
            } else {
                c2033c.f5299e = this.f5264m.mo3134b(m39162q);
                this.f5262k.f5300f = this.f5264m.mo3134b(m39162q) - this.f5264m.mo3129g();
            }
            int i5 = this.f5262k.f5297c;
            if ((i5 == -1 || i5 > this.f5258g.size() - 1) && this.f5262k.f5298d <= getFlexItemCount()) {
                int i6 = abs - this.f5262k.f5300f;
                this.f5275x.m4303a();
                if (i6 > 0) {
                    if (mo4334j) {
                        this.f5259h.m4328b(this.f5275x, makeMeasureSpec, makeMeasureSpec2, i6, this.f5262k.f5298d, -1, this.f5258g);
                    } else {
                        this.f5259h.m4328b(this.f5275x, makeMeasureSpec2, makeMeasureSpec, i6, this.f5262k.f5298d, -1, this.f5258g);
                    }
                    this.f5259h.m4322h(makeMeasureSpec, makeMeasureSpec2, this.f5262k.f5298d);
                    this.f5259h.m4331A(this.f5262k.f5298d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            this.f5262k.f5299e = this.f5264m.mo3131e(childAt2);
            int position2 = getPosition(childAt2);
            View m39164o = m39164o(childAt2, this.f5258g.get(this.f5259h.f69774c[position2]));
            C2033c c2033c3 = this.f5262k;
            c2033c3.f5302h = 1;
            int i7 = this.f5259h.f69774c[position2];
            int i8 = i7;
            if (i7 == -1) {
                i8 = 0;
            }
            if (i8 > 0) {
                this.f5262k.f5298d = position2 - this.f5258g.get(i8 - 1).f69761h;
            } else {
                c2033c3.f5298d = -1;
            }
            C2033c c2033c4 = this.f5262k;
            c2033c4.f5297c = i8 > 0 ? i8 - 1 : 0;
            if (z2) {
                c2033c4.f5299e = this.f5264m.mo3134b(m39164o);
                this.f5262k.f5300f = this.f5264m.mo3134b(m39164o) - this.f5264m.mo3129g();
                C2033c c2033c5 = this.f5262k;
                int i9 = c2033c5.f5300f;
                if (i9 < 0) {
                    i9 = 0;
                }
                c2033c5.f5300f = i9;
            } else {
                c2033c4.f5299e = this.f5264m.mo3131e(m39164o);
                this.f5262k.f5300f = this.f5264m.mo3125k() + (-this.f5264m.mo3131e(m39164o));
            }
        }
        C2033c c2033c6 = this.f5262k;
        int i10 = c2033c6.f5300f;
        c2033c6.f5295a = abs - i10;
        int m39166m = m39166m(c0341v, c0347z, c2033c6) + i10;
        if (m39166m < 0) {
            return 0;
        }
        if (z) {
            if (abs > m39166m) {
                i = (-i2) * m39166m;
            }
        } else if (abs > m39166m) {
            i = i2 * m39166m;
        }
        this.f5264m.mo3120p(-i);
        this.f5262k.f5301g = i;
        return i;
    }

    /* renamed from: u */
    public final int m39158u(int i) {
        int i2;
        int i3;
        boolean z = false;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m39167l();
        boolean mo4334j = mo4334j();
        View view = this.f5273v;
        int width = mo4334j ? view.getWidth() : view.getHeight();
        int width2 = mo4334j ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            z = true;
        }
        if (!z) {
            if (i > 0) {
                i2 = Math.min((width2 - this.f5263l.f5290d) - width, i);
            } else {
                int i4 = this.f5263l.f5290d;
                i3 = i4;
                if (i4 + i >= 0) {
                    i2 = i;
                }
                i2 = -i3;
            }
            return i2;
        }
        int abs = Math.abs(i);
        if (i < 0) {
            i2 = -Math.min((width2 + this.f5263l.f5290d) - width, abs);
        } else {
            int i5 = this.f5263l.f5290d;
            i2 = i;
            if (i5 + i > 0) {
                i3 = i5;
                i2 = -i3;
            }
        }
        return i2;
    }

    /* renamed from: v */
    public final void m39157v(RecyclerView.C0341v c0341v, C2033c c2033c) {
        int childCount;
        int i;
        int i2;
        int i3;
        if (!c2033c.f5304j) {
            return;
        }
        int i4 = -1;
        if (c2033c.f5303i != -1) {
            if (c2033c.f5300f < 0 || (childCount = getChildCount()) == 0) {
                return;
            }
            int i5 = this.f5259h.f69774c[getPosition(getChildAt(0))];
            if (i5 == -1) {
                return;
            }
            C24872b c24872b = this.f5258g.get(i5);
            int i6 = 0;
            while (true) {
                i = i4;
                if (i6 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i6);
                int i7 = c2033c.f5300f;
                i = i4;
                if (!(mo4334j() || !this.f5256e ? this.f5264m.mo3134b(childAt) <= i7 : this.f5264m.mo3130f() - this.f5264m.mo3131e(childAt) <= i7)) {
                    break;
                }
                int i8 = i5;
                C24872b c24872b2 = c24872b;
                if (c24872b.f69769p == getPosition(childAt)) {
                    if (i5 >= this.f5258g.size() - 1) {
                        i = i6;
                        break;
                    }
                    i8 = i5 + c2033c.f5303i;
                    c24872b2 = this.f5258g.get(i8);
                    i4 = i6;
                }
                i6++;
                i5 = i8;
                c24872b = c24872b2;
            }
            while (i >= 0) {
                removeAndRecycleViewAt(i, c0341v);
                i--;
            }
        } else if (c2033c.f5300f < 0) {
        } else {
            this.f5264m.mo3130f();
            int childCount2 = getChildCount();
            if (childCount2 == 0) {
                return;
            }
            int i9 = childCount2 - 1;
            int i10 = this.f5259h.f69774c[getPosition(getChildAt(i9))];
            if (i10 == -1) {
                return;
            }
            C24872b c24872b3 = this.f5258g.get(i10);
            int i11 = i9;
            while (true) {
                i2 = childCount2;
                i3 = i9;
                if (i11 < 0) {
                    break;
                }
                View childAt2 = getChildAt(i11);
                int i12 = c2033c.f5300f;
                i2 = childCount2;
                i3 = i9;
                if (!(mo4334j() || !this.f5256e ? this.f5264m.mo3131e(childAt2) >= this.f5264m.mo3130f() - i12 : this.f5264m.mo3134b(childAt2) <= i12)) {
                    break;
                }
                C24872b c24872b4 = c24872b3;
                int i13 = i10;
                if (c24872b3.f69768o == getPosition(childAt2)) {
                    if (i10 <= 0) {
                        i2 = i11;
                        i3 = i9;
                        break;
                    }
                    i13 = i10 + c2033c.f5303i;
                    c24872b4 = this.f5258g.get(i13);
                    childCount2 = i11;
                }
                i11--;
                c24872b3 = c24872b4;
                i10 = i13;
            }
            while (i3 >= i2) {
                removeAndRecycleViewAt(i3, c0341v);
                i3--;
            }
        }
    }

    /* renamed from: w */
    public final void m39156w() {
        int heightMode = mo4334j() ? getHeightMode() : getWidthMode();
        this.f5262k.f5296b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    /* renamed from: x */
    public void m39155x(int i) {
        if (this.f5252a != i) {
            removeAllViews();
            this.f5252a = i;
            this.f5264m = null;
            this.f5265n = null;
            m39168k();
            requestLayout();
        }
    }

    /* renamed from: y */
    public final void m39154y(int i) {
        if (i >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f5259h.m4320j(childCount);
        this.f5259h.m4319k(childCount);
        this.f5259h.m4321i(childCount);
        if (i >= this.f5259h.f69774c.length) {
            return;
        }
        this.f5274w = i;
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.f5267p = getPosition(childAt);
        if (mo4334j() || !this.f5256e) {
            this.f5268q = this.f5264m.mo3131e(childAt) - this.f5264m.mo3125k();
            return;
        }
        this.f5268q = this.f5264m.mo3128h() + this.f5264m.mo3134b(childAt);
    }

    /* renamed from: z */
    public final void m39153z(C2032b c2032b, boolean z, boolean z2) {
        int i;
        if (z2) {
            m39156w();
        } else {
            this.f5262k.f5296b = false;
        }
        if (mo4334j() || !this.f5256e) {
            this.f5262k.f5295a = this.f5264m.mo3129g() - c2032b.f5289c;
        } else {
            this.f5262k.f5295a = c2032b.f5289c - getPaddingRight();
        }
        C2033c c2033c = this.f5262k;
        c2033c.f5298d = c2032b.f5287a;
        c2033c.f5302h = 1;
        c2033c.f5303i = 1;
        c2033c.f5299e = c2032b.f5289c;
        c2033c.f5300f = Integer.MIN_VALUE;
        c2033c.f5297c = c2032b.f5288b;
        if (!z || this.f5258g.size() <= 1 || (i = c2032b.f5288b) < 0 || i >= this.f5258g.size() - 1) {
            return;
        }
        C24872b c24872b = this.f5258g.get(c2032b.f5288b);
        C2033c c2033c2 = this.f5262k;
        c2033c2.f5297c++;
        c2033c2.f5298d += c24872b.f69761h;
    }
}
