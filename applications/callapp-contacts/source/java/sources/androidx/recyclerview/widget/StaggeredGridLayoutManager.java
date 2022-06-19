package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC2637i implements RecyclerView.AbstractC2651r.AbstractC2653b {

    /* renamed from: A */
    private SavedState f10116A;

    /* renamed from: B */
    private int f10117B;

    /* renamed from: C */
    private final Rect f10118C;

    /* renamed from: D */
    private final C2661a f10119D;

    /* renamed from: E */
    private boolean f10120E;

    /* renamed from: F */
    private boolean f10121F;

    /* renamed from: G */
    private int[] f10122G;

    /* renamed from: H */
    private final Runnable f10123H;

    /* renamed from: a */
    C2662b[] f10124a;

    /* renamed from: b */
    AbstractC2694j f10125b;

    /* renamed from: c */
    AbstractC2694j f10126c;

    /* renamed from: d */
    boolean f10127d;

    /* renamed from: e */
    boolean f10128e;

    /* renamed from: f */
    int f10129f;

    /* renamed from: g */
    int f10130g;

    /* renamed from: h */
    LazySpanLookup f10131h;

    /* renamed from: i */
    private int f10132i;

    /* renamed from: j */
    private int f10133j;

    /* renamed from: k */
    private int f10134k;

    /* renamed from: l */
    private final C2689f f10135l;

    /* renamed from: m */
    private BitSet f10136m;

    /* renamed from: n */
    private int f10137n;

    /* renamed from: o */
    private boolean f10138o;

    /* renamed from: z */
    private boolean f10139z;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a */
        C2662b f10141a;

        /* renamed from: b */
        boolean f10142b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static final class LazySpanLookup {

        /* renamed from: a */
        int[] f10143a;

        /* renamed from: b */
        List<FullSpanItem> f10144b;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                @Override // android.os.Parcelable.Creator
                public final /* synthetic */ FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public final /* bridge */ /* synthetic */ FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };
            int mGapDir;
            int[] mGapPerSpan;
            boolean mHasUnwantedGapAfter;
            int mPosition;

            FullSpanItem() {
            }

            FullSpanItem(Parcel parcel) {
                this.mPosition = parcel.readInt();
                this.mGapDir = parcel.readInt();
                this.mHasUnwantedGapAfter = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.mGapPerSpan = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            int getGapForSpan(int i) {
                int[] iArr = this.mGapPerSpan;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.mPosition);
                parcel.writeInt(this.mGapDir);
                parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
                int[] iArr = this.mGapPerSpan;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.mGapPerSpan);
            }
        }

        LazySpanLookup() {
        }

        /* renamed from: c */
        private void m40196c(int i, int i2) {
            List<FullSpanItem> list = this.f10144b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f10144b.get(size);
                if (fullSpanItem.mPosition >= i) {
                    if (fullSpanItem.mPosition < i + i2) {
                        this.f10144b.remove(size);
                    } else {
                        fullSpanItem.mPosition -= i2;
                    }
                }
            }
        }

        /* renamed from: d */
        private void m40194d(int i, int i2) {
            List<FullSpanItem> list = this.f10144b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f10144b.get(size);
                if (fullSpanItem.mPosition >= i) {
                    fullSpanItem.mPosition += i2;
                }
            }
        }

        /* renamed from: e */
        private int m40193e(int i) {
            int length = this.f10143a.length;
            while (true) {
                int i2 = length;
                if (i2 <= i) {
                    length = i2 * 2;
                } else {
                    return i2;
                }
            }
        }

        /* renamed from: f */
        private void m40192f(int i) {
            int[] iArr = this.f10143a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f10143a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i < iArr.length) {
            } else {
                int[] iArr3 = new int[m40193e(i)];
                this.f10143a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f10143a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* renamed from: g */
        private int m40191g(int i) {
            if (this.f10144b == null) {
                return -1;
            }
            FullSpanItem m40195d = m40195d(i);
            if (m40195d != null) {
                this.f10144b.remove(m40195d);
            }
            int size = this.f10144b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f10144b.get(i2).mPosition >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f10144b.get(i2);
            this.f10144b.remove(i2);
            return fullSpanItem.mPosition;
        }

        /* renamed from: a */
        final int m40204a(int i) {
            List<FullSpanItem> list = this.f10144b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f10144b.get(size).mPosition >= i) {
                        this.f10144b.remove(size);
                    }
                }
            }
            return m40199b(i);
        }

        /* renamed from: a */
        public final FullSpanItem m40202a(int i, int i2, int i3) {
            List<FullSpanItem> list = this.f10144b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f10144b.get(i4);
                if (fullSpanItem.mPosition >= i2) {
                    return null;
                }
                if (fullSpanItem.mPosition >= i && (i3 == 0 || fullSpanItem.mGapDir == i3 || fullSpanItem.mHasUnwantedGapAfter)) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: a */
        final void m40205a() {
            int[] iArr = this.f10143a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f10144b = null;
        }

        /* renamed from: a */
        final void m40203a(int i, int i2) {
            int[] iArr = this.f10143a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m40192f(i3);
            int[] iArr2 = this.f10143a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f10143a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m40196c(i, i2);
        }

        /* renamed from: a */
        final void m40201a(int i, C2662b c2662b) {
            m40192f(i);
            this.f10143a[i] = c2662b.f10156e;
        }

        /* renamed from: a */
        public final void m40200a(FullSpanItem fullSpanItem) {
            if (this.f10144b == null) {
                this.f10144b = new ArrayList();
            }
            int size = this.f10144b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f10144b.get(i);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.f10144b.remove(i);
                }
                if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                    this.f10144b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f10144b.add(fullSpanItem);
        }

        /* renamed from: b */
        final int m40199b(int i) {
            int[] iArr = this.f10143a;
            if (iArr != null && i < iArr.length) {
                int m40191g = m40191g(i);
                if (m40191g == -1) {
                    int[] iArr2 = this.f10143a;
                    Arrays.fill(iArr2, i, iArr2.length, -1);
                    return this.f10143a.length;
                }
                int min = Math.min(m40191g + 1, this.f10143a.length);
                Arrays.fill(this.f10143a, i, min, -1);
                return min;
            }
            return -1;
        }

        /* renamed from: b */
        final void m40198b(int i, int i2) {
            int[] iArr = this.f10143a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m40192f(i3);
            int[] iArr2 = this.f10143a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f10143a, i, i3, -1);
            m40194d(i, i2);
        }

        /* renamed from: c */
        final int m40197c(int i) {
            int[] iArr = this.f10143a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: d */
        public final FullSpanItem m40195d(int i) {
            List<FullSpanItem> list = this.f10144b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f10144b.get(size);
                if (fullSpanItem.mPosition == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            int readInt = parcel.readInt();
            this.mSpanOffsetsSize = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.mSpanLookupSize = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    final class C2661a {

        /* renamed from: a */
        int f10145a;

        /* renamed from: b */
        int f10146b;

        /* renamed from: c */
        boolean f10147c;

        /* renamed from: d */
        boolean f10148d;

        /* renamed from: e */
        boolean f10149e;

        /* renamed from: f */
        int[] f10150f;

        C2661a() {
            StaggeredGridLayoutManager.this = r4;
            m40190a();
        }

        /* renamed from: a */
        final void m40190a() {
            this.f10145a = -1;
            this.f10146b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f10147c = false;
            this.f10148d = false;
            this.f10149e = false;
            int[] iArr = this.f10150f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public final class C2662b {

        /* renamed from: a */
        ArrayList<View> f10152a = new ArrayList<>();

        /* renamed from: b */
        int f10153b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        /* renamed from: c */
        int f10154c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        /* renamed from: d */
        int f10155d = 0;

        /* renamed from: e */
        final int f10156e;

        C2662b(int i) {
            StaggeredGridLayoutManager.this = r5;
            this.f10156e = i;
        }

        /* renamed from: a */
        private int m40186a(int i, int i2, boolean z) {
            int mo40070b = StaggeredGridLayoutManager.this.f10125b.mo40070b();
            int mo40068c = StaggeredGridLayoutManager.this.f10125b.mo40068c();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f10152a.get(i);
                int mo40071a = StaggeredGridLayoutManager.this.f10125b.mo40071a(view);
                int mo40069b = StaggeredGridLayoutManager.this.f10125b.mo40069b(view);
                boolean z2 = false;
                boolean z3 = mo40071a <= mo40068c;
                if (mo40069b >= mo40070b) {
                    z2 = true;
                }
                if (z3 && z2 && (mo40071a < mo40070b || mo40069b > mo40068c)) {
                    return StaggeredGridLayoutManager.m40366c(view);
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: h */
        private void m40174h() {
            LazySpanLookup.FullSpanItem m40195d;
            View view = this.f10152a.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f10153b = StaggeredGridLayoutManager.this.f10125b.mo40071a(view);
            if (!layoutParams.f10142b || (m40195d = StaggeredGridLayoutManager.this.f10131h.m40195d(layoutParams.f10000c.getLayoutPosition())) == null || m40195d.mGapDir != -1) {
                return;
            }
            this.f10153b -= m40195d.getGapForSpan(this.f10156e);
        }

        /* renamed from: i */
        private void m40173i() {
            LazySpanLookup.FullSpanItem m40195d;
            ArrayList<View> arrayList = this.f10152a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f10154c = StaggeredGridLayoutManager.this.f10125b.mo40069b(view);
            if (!layoutParams.f10142b || (m40195d = StaggeredGridLayoutManager.this.f10131h.m40195d(layoutParams.f10000c.getLayoutPosition())) == null || m40195d.mGapDir != 1) {
                return;
            }
            this.f10154c += m40195d.getGapForSpan(this.f10156e);
        }

        /* renamed from: j */
        private void m40172j() {
            this.f10153b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f10154c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        /* renamed from: a */
        final int m40189a() {
            int i = this.f10153b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m40174h();
            return this.f10153b;
        }

        /* renamed from: a */
        final int m40188a(int i) {
            int i2 = this.f10153b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f10152a.size() == 0) {
                return i;
            }
            m40174h();
            return this.f10153b;
        }

        /* renamed from: a */
        public final View m40187a(int i, int i2) {
            View view;
            View view2 = null;
            if (i2 != -1) {
                int size = this.f10152a.size() - 1;
                View view3 = null;
                while (true) {
                    View view4 = view3;
                    view = view4;
                    if (size < 0) {
                        break;
                    }
                    View view5 = this.f10152a.get(size);
                    if (StaggeredGridLayoutManager.this.f10127d) {
                        view = view4;
                        if (StaggeredGridLayoutManager.m40366c(view5) >= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f10127d) {
                        view = view4;
                        if (StaggeredGridLayoutManager.m40366c(view5) <= i) {
                            break;
                        }
                    }
                    view = view4;
                    if (!view5.hasFocusable()) {
                        break;
                    }
                    size--;
                    view3 = view5;
                }
            } else {
                int size2 = this.f10152a.size();
                int i3 = 0;
                while (true) {
                    view = view2;
                    if (i3 >= size2) {
                        break;
                    }
                    View view6 = this.f10152a.get(i3);
                    if (StaggeredGridLayoutManager.this.f10127d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.m40366c(view6) <= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f10127d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.m40366c(view6) >= i) {
                            break;
                        }
                    }
                    view = view2;
                    if (!view6.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view2 = view6;
                }
            }
            return view;
        }

        /* renamed from: a */
        final void m40185a(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f10141a = this;
            this.f10152a.add(0, view);
            this.f10153b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            if (this.f10152a.size() == 1) {
                this.f10154c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (layoutParams.f10000c.isRemoved() || layoutParams.f10000c.isUpdated()) {
                this.f10155d += StaggeredGridLayoutManager.this.f10125b.mo40063e(view);
            }
        }

        /* renamed from: b */
        final int m40184b() {
            int i = this.f10154c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m40173i();
            return this.f10154c;
        }

        /* renamed from: b */
        final int m40183b(int i) {
            int i2 = this.f10154c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f10152a.size() == 0) {
                return i;
            }
            m40173i();
            return this.f10154c;
        }

        /* renamed from: b */
        final void m40182b(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f10141a = this;
            this.f10152a.add(view);
            this.f10154c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            if (this.f10152a.size() == 1) {
                this.f10153b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (layoutParams.f10000c.isRemoved() || layoutParams.f10000c.isUpdated()) {
                this.f10155d += StaggeredGridLayoutManager.this.f10125b.mo40063e(view);
            }
        }

        /* renamed from: c */
        final void m40181c() {
            this.f10152a.clear();
            m40172j();
            this.f10155d = 0;
        }

        /* renamed from: c */
        final void m40180c(int i) {
            this.f10153b = i;
            this.f10154c = i;
        }

        /* renamed from: d */
        final void m40179d() {
            int size = this.f10152a.size();
            View remove = this.f10152a.remove(size - 1);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.f10141a = null;
            if (layoutParams.f10000c.isRemoved() || layoutParams.f10000c.isUpdated()) {
                this.f10155d -= StaggeredGridLayoutManager.this.f10125b.mo40063e(remove);
            }
            if (size == 1) {
                this.f10153b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            this.f10154c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        /* renamed from: d */
        final void m40178d(int i) {
            int i2 = this.f10153b;
            if (i2 != Integer.MIN_VALUE) {
                this.f10153b = i2 + i;
            }
            int i3 = this.f10154c;
            if (i3 != Integer.MIN_VALUE) {
                this.f10154c = i3 + i;
            }
        }

        /* renamed from: e */
        final void m40177e() {
            View remove = this.f10152a.remove(0);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.f10141a = null;
            if (this.f10152a.size() == 0) {
                this.f10154c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (layoutParams.f10000c.isRemoved() || layoutParams.f10000c.isUpdated()) {
                this.f10155d -= StaggeredGridLayoutManager.this.f10125b.mo40063e(remove);
            }
            this.f10153b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        /* renamed from: f */
        public final int m40176f() {
            return StaggeredGridLayoutManager.this.f10127d ? m40186a(this.f10152a.size() - 1, -1, true) : m40186a(0, this.f10152a.size(), true);
        }

        /* renamed from: g */
        public final int m40175g() {
            return StaggeredGridLayoutManager.this.f10127d ? m40186a(0, this.f10152a.size(), true) : m40186a(this.f10152a.size() - 1, -1, true);
        }
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.f10132i = -1;
        this.f10127d = false;
        this.f10128e = false;
        this.f10129f = -1;
        this.f10130g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f10131h = new LazySpanLookup();
        this.f10137n = 2;
        this.f10118C = new Rect();
        this.f10119D = new C2661a();
        this.f10120E = false;
        this.f10121F = true;
        this.f10123H = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                StaggeredGridLayoutManager.this.m40232g();
            }
        };
        this.f10133j = i2;
        m40280a(i);
        this.f10135l = new C2689f();
        m40227i();
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f10132i = -1;
        this.f10127d = false;
        this.f10128e = false;
        this.f10129f = -1;
        this.f10130g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f10131h = new LazySpanLookup();
        this.f10137n = 2;
        this.f10118C = new Rect();
        this.f10119D = new C2661a();
        this.f10120E = false;
        this.f10121F = true;
        this.f10123H = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                StaggeredGridLayoutManager.this.m40232g();
            }
        };
        RecyclerView.AbstractC2637i.C2641b a = m40390a(context, attributeSet, i, i2);
        int i3 = a.f10038a;
        if (i3 == 0 || i3 == 1) {
            mo40259a((String) null);
            if (i3 != this.f10133j) {
                this.f10133j = i3;
                AbstractC2694j abstractC2694j = this.f10125b;
                this.f10125b = this.f10126c;
                this.f10126c = abstractC2694j;
                m40353k();
            }
            m40280a(a.f10039b);
            m40258a(a.f10040c);
            this.f10135l = new C2689f();
            m40227i();
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    /* renamed from: a */
    private int m40265a(RecyclerView.C2648o c2648o, C2689f c2689f, RecyclerView.C2654s c2654s) {
        boolean z;
        C2662b c2662b;
        int i;
        int i2;
        int i3;
        int i4;
        this.f10136m.set(0, this.f10132i, true);
        int i5 = this.f10135l.f10285i ? c2689f.f10281e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c2689f.f10281e == 1 ? c2689f.f10283g + c2689f.f10278b : c2689f.f10282f - c2689f.f10278b;
        m40236e(c2689f.f10281e, i5);
        int mo40068c = this.f10128e ? this.f10125b.mo40068c() : this.f10125b.mo40070b();
        boolean z2 = false;
        while (true) {
            z = z2;
            if (!c2689f.m40089a(c2654s) || (!this.f10135l.f10285i && this.f10136m.isEmpty())) {
                break;
            }
            View m40090a = c2689f.m40090a(c2648o);
            LayoutParams layoutParams = (LayoutParams) m40090a.getLayoutParams();
            int layoutPosition = layoutParams.f10000c.getLayoutPosition();
            int m40197c = this.f10131h.m40197c(layoutPosition);
            boolean z3 = m40197c == -1;
            if (z3) {
                c2662b = layoutParams.f10142b ? this.f10124a[0] : m40260a(c2689f);
                this.f10131h.m40201a(layoutPosition, c2662b);
            } else {
                c2662b = this.f10124a[m40197c];
            }
            layoutParams.f10141a = c2662b;
            if (c2689f.f10281e == 1) {
                m40374b(m40090a);
            } else {
                m40373b(m40090a, 0);
            }
            m40271a(m40090a, layoutParams);
            if (c2689f.f10281e == 1) {
                int m40216n = layoutParams.f10142b ? m40216n(mo40068c) : c2662b.m40183b(mo40068c);
                int mo40063e = this.f10125b.mo40063e(m40090a) + m40216n;
                i2 = m40216n;
                i = mo40063e;
                if (z3) {
                    i2 = m40216n;
                    i = mo40063e;
                    if (layoutParams.f10142b) {
                        LazySpanLookup.FullSpanItem m40223j = m40223j(m40216n);
                        m40223j.mGapDir = -1;
                        m40223j.mPosition = layoutPosition;
                        this.f10131h.m40200a(m40223j);
                        i2 = m40216n;
                        i = mo40063e;
                    }
                }
            } else {
                int m40218m = layoutParams.f10142b ? m40218m(mo40068c) : c2662b.m40188a(mo40068c);
                int mo40063e2 = m40218m - this.f10125b.mo40063e(m40090a);
                i2 = mo40063e2;
                i = m40218m;
                if (z3) {
                    i2 = mo40063e2;
                    i = m40218m;
                    if (layoutParams.f10142b) {
                        LazySpanLookup.FullSpanItem m40221k = m40221k(m40218m);
                        m40221k.mGapDir = 1;
                        m40221k.mPosition = layoutPosition;
                        this.f10131h.m40200a(m40221k);
                        i = m40218m;
                        i2 = mo40063e2;
                    }
                }
            }
            if (layoutParams.f10142b && c2689f.f10280d == -1) {
                if (!z3) {
                    if (!(c2689f.f10281e == 1 ? m40212p() : m40209q())) {
                        LazySpanLookup.FullSpanItem m40195d = this.f10131h.m40195d(layoutPosition);
                        if (m40195d != null) {
                            m40195d.mHasUnwantedGapAfter = true;
                        }
                    }
                }
                this.f10120E = true;
            }
            m40270a(m40090a, layoutParams, c2689f);
            if (!m40215o() || this.f10133j != 1) {
                int mo40070b = layoutParams.f10142b ? this.f10126c.mo40070b() : (c2662b.f10156e * this.f10134k) + this.f10126c.mo40070b();
                i3 = mo40070b;
                i4 = this.f10126c.mo40063e(m40090a) + mo40070b;
            } else {
                i4 = layoutParams.f10142b ? this.f10126c.mo40068c() : this.f10126c.mo40068c() - (((this.f10132i - 1) - c2662b.f10156e) * this.f10134k);
                i3 = i4 - this.f10126c.mo40063e(m40090a);
            }
            if (this.f10133j == 1) {
                m40387a(m40090a, i3, i2, i4, i);
            } else {
                m40387a(m40090a, i2, i3, i, i4);
            }
            if (layoutParams.f10142b) {
                m40236e(this.f10135l.f10281e, i5);
            } else {
                m40261a(c2662b, this.f10135l.f10281e, i5);
            }
            m40266a(c2648o, this.f10135l);
            if (this.f10135l.f10284h && m40090a.hasFocusable()) {
                if (layoutParams.f10142b) {
                    this.f10136m.clear();
                } else {
                    this.f10136m.set(c2662b.f10156e, false);
                }
            }
            z2 = true;
        }
        if (!z) {
            m40266a(c2648o, this.f10135l);
        }
        int mo40070b2 = this.f10135l.f10281e == -1 ? this.f10125b.mo40070b() - m40218m(this.f10125b.mo40070b()) : m40216n(this.f10125b.mo40068c()) - this.f10125b.mo40068c();
        if (mo40070b2 > 0) {
            return Math.min(c2689f.f10278b, mo40070b2);
        }
        return 0;
    }

    /* renamed from: a */
    private C2662b m40260a(C2689f c2689f) {
        int i;
        int i2;
        int i3 = -1;
        if (m40211p(c2689f.f10281e)) {
            i2 = this.f10132i - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.f10132i;
            i = 1;
        }
        int i4 = c2689f.f10281e;
        C2662b c2662b = null;
        if (i4 == 1) {
            int i5 = Integer.MAX_VALUE;
            int mo40070b = this.f10125b.mo40070b();
            int i6 = i2;
            while (i6 != i3) {
                C2662b c2662b2 = this.f10124a[i6];
                int m40183b = c2662b2.m40183b(mo40070b);
                int i7 = i5;
                if (m40183b < i5) {
                    c2662b = c2662b2;
                    i7 = m40183b;
                }
                i6 += i;
                i5 = i7;
            }
            return c2662b;
        }
        int i8 = Integer.MIN_VALUE;
        int mo40068c = this.f10125b.mo40068c();
        C2662b c2662b3 = null;
        while (i2 != i3) {
            C2662b c2662b4 = this.f10124a[i2];
            int m40188a = c2662b4.m40188a(mo40068c);
            int i9 = i8;
            if (m40188a > i8) {
                c2662b3 = c2662b4;
                i9 = m40188a;
            }
            i2 += i;
            i8 = i9;
        }
        return c2662b3;
    }

    /* renamed from: a */
    private void m40280a(int i) {
        mo40259a((String) null);
        if (i != this.f10132i) {
            this.f10131h.m40205a();
            m40353k();
            this.f10132i = i;
            this.f10136m = new BitSet(this.f10132i);
            this.f10124a = new C2662b[this.f10132i];
            for (int i2 = 0; i2 < this.f10132i; i2++) {
                this.f10124a[i2] = new C2662b(i2);
            }
            m40353k();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ca  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40276a(int r5, androidx.recyclerview.widget.RecyclerView.C2654s r6) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m40276a(int, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    /* renamed from: a */
    private void m40273a(View view, int i, int i2, boolean z) {
        m40371b(view, this.f10118C);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int m40256b = m40256b(i, layoutParams.leftMargin + this.f10118C.left, layoutParams.rightMargin + this.f10118C.right);
        int m40256b2 = m40256b(i2, layoutParams.topMargin + this.f10118C.top, layoutParams.bottomMargin + this.f10118C.bottom);
        if (m40372b(view, m40256b, m40256b2, layoutParams)) {
            view.measure(m40256b, m40256b2);
        }
    }

    /* renamed from: a */
    private void m40271a(View view, LayoutParams layoutParams) {
        if (layoutParams.f10142b) {
            if (this.f10133j == 1) {
                m40273a(view, this.f10117B, m40393a(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), layoutParams.height, true), false);
            } else {
                m40273a(view, m40393a(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), layoutParams.width, true), this.f10117B, false);
            }
        } else if (this.f10133j == 1) {
            m40273a(view, m40393a(this.f10134k, getWidthMode(), 0, layoutParams.width, false), m40393a(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), layoutParams.height, true), false);
        } else {
            m40273a(view, m40393a(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), layoutParams.width, true), m40393a(this.f10134k, getHeightMode(), 0, layoutParams.height, false), false);
        }
    }

    /* renamed from: a */
    private void m40270a(View view, LayoutParams layoutParams, C2689f c2689f) {
        if (c2689f.f10281e == 1) {
            if (layoutParams.f10142b) {
                m40213o(view);
            } else {
                layoutParams.f10141a.m40182b(view);
            }
        } else if (layoutParams.f10142b) {
            m40210p(view);
        } else {
            layoutParams.f10141a.m40185a(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r11 >= r4.f10132i) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r4.f10124a[r11].m40177e();
        r11 = r11 + 1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40268a(androidx.recyclerview.widget.RecyclerView.C2648o r5, int r6) {
        /*
            r4 = this;
        L0:
            r0 = r4
            int r0 = r0.getChildCount()
            if (r0 <= 0) goto L9e
            r0 = 0
            r7 = r0
            r0 = r4
            r1 = 0
            android.view.View r0 = r0.getChildAt(r1)
            r8 = r0
            r0 = r4
            androidx.recyclerview.widget.j r0 = r0.f10125b
            r1 = r8
            int r0 = r0.mo40069b(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r4
            androidx.recyclerview.widget.j r0 = r0.f10125b
            r1 = r8
            int r0 = r0.mo40067c(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f10142b
            if (r0 == 0) goto L7c
            r0 = 0
            r10 = r0
        L3f:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r4
            int r1 = r1.f10132i
            if (r0 >= r1) goto L63
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b[] r0 = r0.f10124a
            r1 = r10
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f10152a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L5d
            return
        L5d:
            int r10 = r10 + 1
            goto L3f
        L63:
            r0 = r11
            r1 = r4
            int r1 = r1.f10132i
            if (r0 >= r1) goto L94
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b[] r0 = r0.f10124a
            r1 = r11
            r0 = r0[r1]
            r0.m40177e()
            int r11 = r11 + 1
            goto L63
        L7c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r0 = r0.f10141a
            java.util.ArrayList<android.view.View> r0 = r0.f10152a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L8c
            return
        L8c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r0 = r0.f10141a
            r0.m40177e()
        L94:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.m40382a(r1, r2)
            goto L0
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m40268a(androidx.recyclerview.widget.RecyclerView$o, int):void");
    }

    /* renamed from: a */
    private void m40267a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, boolean z) {
        int mo40068c;
        int m40216n = m40216n(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        if (m40216n != Integer.MIN_VALUE && (mo40068c = this.f10125b.mo40068c() - m40216n) > 0) {
            int i = mo40068c - (-m40245c(-mo40068c, c2648o, c2654s));
            if (!z || i <= 0) {
                return;
            }
            this.f10125b.mo40072a(i);
        }
    }

    /* renamed from: a */
    private void m40266a(RecyclerView.C2648o c2648o, C2689f c2689f) {
        if (!c2689f.f10277a || c2689f.f10285i) {
            return;
        }
        if (c2689f.f10278b == 0) {
            if (c2689f.f10281e == -1) {
                m40253b(c2648o, c2689f.f10283g);
            } else {
                m40268a(c2648o, c2689f.f10282f);
            }
        } else if (c2689f.f10281e == -1) {
            int m40219l = c2689f.f10282f - m40219l(c2689f.f10282f);
            m40253b(c2648o, m40219l < 0 ? c2689f.f10283g : c2689f.f10283g - Math.min(m40219l, c2689f.f10278b));
        } else {
            int m40214o = m40214o(c2689f.f10283g) - c2689f.f10283g;
            m40268a(c2648o, m40214o < 0 ? c2689f.f10282f : Math.min(m40214o, c2689f.f10278b) + c2689f.f10282f);
        }
    }

    /* renamed from: a */
    private void m40261a(C2662b c2662b, int i, int i2) {
        int i3 = c2662b.f10155d;
        if (i == -1) {
            if (c2662b.m40189a() + i3 > i2) {
                return;
            }
            this.f10136m.set(c2662b.f10156e, false);
        } else if (c2662b.m40184b() - i3 < i2) {
        } else {
            this.f10136m.set(c2662b.f10156e, false);
        }
    }

    /* renamed from: a */
    private void m40258a(boolean z) {
        mo40259a((String) null);
        SavedState savedState = this.f10116A;
        if (savedState != null && savedState.mReverseLayout != z) {
            this.f10116A.mReverseLayout = z;
        }
        this.f10127d = z;
        m40353k();
    }

    /* renamed from: a */
    private boolean m40262a(C2662b c2662b) {
        return this.f10128e ? c2662b.m40184b() < this.f10125b.mo40068c() && !((LayoutParams) c2662b.f10152a.get(c2662b.f10152a.size() - 1).getLayoutParams()).f10142b : c2662b.m40189a() > this.f10125b.mo40070b() && !((LayoutParams) c2662b.f10152a.get(0).getLayoutParams()).f10142b;
    }

    /* renamed from: b */
    private static int m40256b(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: b */
    private View m40250b(boolean z) {
        int mo40070b = this.f10125b.mo40070b();
        int mo40068c = this.f10125b.mo40068c();
        int childCount = getChildCount();
        View view = null;
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            int mo40071a = this.f10125b.mo40071a(childAt);
            View view2 = view;
            if (this.f10125b.mo40069b(childAt) > mo40070b) {
                view2 = view;
                if (mo40071a >= mo40068c) {
                    continue;
                } else if (mo40071a >= mo40070b || !z) {
                    return childAt;
                } else {
                    view2 = view;
                    if (view == null) {
                        view2 = childAt;
                    }
                }
            }
            i++;
            view = view2;
        }
        return view;
    }

    /* renamed from: b */
    private void m40254b(int i, RecyclerView.C2654s c2654s) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m40207r();
            i2 = 1;
        } else {
            i3 = m40206s();
            i2 = -1;
        }
        this.f10135l.f10277a = true;
        m40276a(i3, c2654s);
        m40226i(i2);
        C2689f c2689f = this.f10135l;
        c2689f.f10279c = i3 + c2689f.f10280d;
        this.f10135l.f10278b = Math.abs(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        if (r12 >= r4.f10132i) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        r4.f10124a[r12].m40179d();
        r12 = r12 + 1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40253b(androidx.recyclerview.widget.RecyclerView.C2648o r5, int r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.getChildCount()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L7:
            r0 = r7
            if (r0 < 0) goto La7
            r0 = r4
            r1 = r7
            android.view.View r0 = r0.getChildAt(r1)
            r8 = r0
            r0 = r4
            androidx.recyclerview.widget.j r0 = r0.f10125b
            r1 = r8
            int r0 = r0.mo40071a(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r4
            androidx.recyclerview.widget.j r0 = r0.f10125b
            r1 = r8
            int r0 = r0.mo40065d(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f10142b
            if (r0 == 0) goto L82
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L44:
            r0 = r10
            r12 = r0
            r0 = r11
            r1 = r4
            int r1 = r1.f10132i
            if (r0 >= r1) goto L69
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b[] r0 = r0.f10124a
            r1 = r11
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f10152a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L63
            return
        L63:
            int r11 = r11 + 1
            goto L44
        L69:
            r0 = r12
            r1 = r4
            int r1 = r1.f10132i
            if (r0 >= r1) goto L9a
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b[] r0 = r0.f10124a
            r1 = r12
            r0 = r0[r1]
            r0.m40179d()
            int r12 = r12 + 1
            goto L69
        L82:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r0 = r0.f10141a
            java.util.ArrayList<android.view.View> r0 = r0.f10152a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L92
            return
        L92:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r0 = r0.f10141a
            r0.m40179d()
        L9a:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.m40382a(r1, r2)
            int r7 = r7 + (-1)
            goto L7
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m40253b(androidx.recyclerview.widget.RecyclerView$o, int):void");
    }

    /* renamed from: b */
    private void m40252b(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, boolean z) {
        int mo40070b;
        int m40218m = m40218m(Integer.MAX_VALUE);
        if (m40218m != Integer.MAX_VALUE && (mo40070b = m40218m - this.f10125b.mo40070b()) > 0) {
            int m40245c = mo40070b - m40245c(mo40070b, c2648o, c2654s);
            if (!z || m40245c <= 0) {
                return;
            }
            this.f10125b.mo40072a(-m40245c);
        }
    }

    /* renamed from: c */
    private int m40245c(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m40254b(i, c2654s);
        int m40265a = m40265a(c2648o, this.f10135l, c2654s);
        if (this.f10135l.f10278b >= m40265a) {
            i = i < 0 ? -m40265a : m40265a;
        }
        this.f10125b.mo40072a(-i);
        this.f10138o = this.f10128e;
        this.f10135l.f10278b = 0;
        m40266a(c2648o, this.f10135l);
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0071, code lost:
        return r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View m40242c(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.j r0 = r0.f10125b
            int r0 = r0.mo40070b()
            r5 = r0
            r0 = r3
            androidx.recyclerview.widget.j r0 = r0.f10125b
            int r0 = r0.mo40068c()
            r6 = r0
            r0 = r3
            int r0 = r0.getChildCount()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = 0
            r8 = r0
        L1b:
            r0 = r7
            if (r0 < 0) goto L7c
            r0 = r3
            r1 = r7
            android.view.View r0 = r0.getChildAt(r1)
            r9 = r0
            r0 = r3
            androidx.recyclerview.widget.j r0 = r0.f10125b
            r1 = r9
            int r0 = r0.mo40071a(r1)
            r10 = r0
            r0 = r3
            androidx.recyclerview.widget.j r0 = r0.f10125b
            r1 = r9
            int r0 = r0.mo40069b(r1)
            r11 = r0
            r0 = r8
            r12 = r0
            r0 = r11
            r1 = r5
            if (r0 <= r1) goto L72
            r0 = r8
            r12 = r0
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L72
            r0 = r11
            r1 = r6
            if (r0 <= r1) goto L6f
            r0 = r4
            if (r0 != 0) goto L5f
            goto L6f
        L5f:
            r0 = r8
            r12 = r0
            r0 = r8
            if (r0 != 0) goto L72
            r0 = r9
            r12 = r0
            goto L72
        L6f:
            r0 = r9
            return r0
        L72:
            int r7 = r7 + (-1)
            r0 = r12
            r8 = r0
            goto L1b
        L7c:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m40242c(boolean):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40246c(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f10128e
            if (r0 == 0) goto L10
            r0 = r4
            int r0 = r0.m40207r()
            r8 = r0
            goto L16
        L10:
            r0 = r4
            int r0 = r0.m40206s()
            r8 = r0
        L16:
            r0 = r7
            r1 = 8
            if (r0 != r1) goto L34
            r0 = r5
            r1 = r6
            if (r0 >= r1) goto L29
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            goto L39
        L29:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r10 = r0
            goto L3c
        L34:
            r0 = r5
            r1 = r6
            int r0 = r0 + r1
            r9 = r0
        L39:
            r0 = r5
            r10 = r0
        L3c:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f10131h
            r1 = r10
            int r0 = r0.m40199b(r1)
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L7a
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L6e
            r0 = r7
            r1 = 8
            if (r0 == r1) goto L59
            goto L83
        L59:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f10131h
            r1 = r5
            r2 = 1
            r0.m40203a(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f10131h
            r1 = r6
            r2 = 1
            r0.m40198b(r1, r2)
            goto L83
        L6e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f10131h
            r1 = r5
            r2 = r6
            r0.m40203a(r1, r2)
            goto L83
        L7a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f10131h
            r1 = r5
            r2 = r6
            r0.m40198b(r1, r2)
        L83:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L8b
            return
        L8b:
            r0 = r4
            boolean r0 = r0.f10128e
            if (r0 == 0) goto L9a
            r0 = r4
            int r0 = r0.m40206s()
            r5 = r0
            goto L9f
        L9a:
            r0 = r4
            int r0 = r0.m40207r()
            r5 = r0
        L9f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto La9
            r0 = r4
            r0.m40353k()
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m40246c(int, int, int):void");
    }

    /* renamed from: e */
    private void m40237e(int i) {
        this.f10134k = i / this.f10132i;
        this.f10117B = View.MeasureSpec.makeMeasureSpec(i, this.f10126c.mo40060g());
    }

    /* renamed from: e */
    private void m40236e(int i, int i2) {
        for (int i3 = 0; i3 < this.f10132i; i3++) {
            if (!this.f10124a[i3].f10152a.isEmpty()) {
                m40261a(this.f10124a[i3], i, i2);
            }
        }
    }

    /* renamed from: h */
    private int m40228h(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C2701m.m40047a(c2654s, this.f10125b, m40250b(!this.f10121F), m40242c(!this.f10121F), this, this.f10121F, this.f10128e);
    }

    /* renamed from: i */
    private int m40225i(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C2701m.m40048a(c2654s, this.f10125b, m40250b(!this.f10121F), m40242c(!this.f10121F), this, this.f10121F);
    }

    /* renamed from: i */
    private void m40227i() {
        this.f10125b = AbstractC2694j.m40074a(this, this.f10133j);
        this.f10126c = AbstractC2694j.m40074a(this, 1 - this.f10133j);
    }

    /* renamed from: i */
    private void m40226i(int i) {
        this.f10135l.f10281e = i;
        this.f10135l.f10280d = this.f10128e == (i == -1) ? 1 : -1;
    }

    /* renamed from: j */
    private int m40222j(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C2701m.m40046b(c2654s, this.f10125b, m40250b(!this.f10121F), m40242c(!this.f10121F), this, this.f10121F);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e1, code lost:
        if (r0 == r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0108, code lost:
        if (r0 == r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010b, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0110, code lost:
        r6 = false;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View m40224j() {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m40224j():android.view.View");
    }

    /* renamed from: j */
    private LazySpanLookup.FullSpanItem m40223j(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.f10132i];
        for (int i2 = 0; i2 < this.f10132i; i2++) {
            fullSpanItem.mGapPerSpan[i2] = i - this.f10124a[i2].m40183b(i);
        }
        return fullSpanItem;
    }

    /* renamed from: k */
    private LazySpanLookup.FullSpanItem m40221k(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.f10132i];
        for (int i2 = 0; i2 < this.f10132i; i2++) {
            fullSpanItem.mGapPerSpan[i2] = this.f10124a[i2].m40188a(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: l */
    private int m40219l(int i) {
        int m40188a = this.f10124a[0].m40188a(i);
        int i2 = 1;
        while (i2 < this.f10132i) {
            int m40188a2 = this.f10124a[i2].m40188a(i);
            int i3 = m40188a;
            if (m40188a2 > m40188a) {
                i3 = m40188a2;
            }
            i2++;
            m40188a = i3;
        }
        return m40188a;
    }

    /* renamed from: m */
    private int m40218m(int i) {
        int m40188a = this.f10124a[0].m40188a(i);
        int i2 = 1;
        while (i2 < this.f10132i) {
            int m40188a2 = this.f10124a[i2].m40188a(i);
            int i3 = m40188a;
            if (m40188a2 < m40188a) {
                i3 = m40188a2;
            }
            i2++;
            m40188a = i3;
        }
        return m40188a;
    }

    /* renamed from: n */
    private int m40216n(int i) {
        int m40183b = this.f10124a[0].m40183b(i);
        int i2 = 1;
        while (i2 < this.f10132i) {
            int m40183b2 = this.f10124a[i2].m40183b(i);
            int i3 = m40183b;
            if (m40183b2 > m40183b) {
                i3 = m40183b2;
            }
            i2++;
            m40183b = i3;
        }
        return m40183b;
    }

    /* renamed from: n */
    private void m40217n() {
        boolean z = true;
        if (this.f10133j == 1 || !m40215o()) {
            z = this.f10127d;
        } else if (this.f10127d) {
            z = false;
        }
        this.f10128e = z;
    }

    /* renamed from: o */
    private int m40214o(int i) {
        int m40183b = this.f10124a[0].m40183b(i);
        int i2 = 1;
        while (i2 < this.f10132i) {
            int m40183b2 = this.f10124a[i2].m40183b(i);
            int i3 = m40183b;
            if (m40183b2 < m40183b) {
                i3 = m40183b2;
            }
            i2++;
            m40183b = i3;
        }
        return m40183b;
    }

    /* renamed from: o */
    private void m40213o(View view) {
        for (int i = this.f10132i - 1; i >= 0; i--) {
            this.f10124a[i].m40182b(view);
        }
    }

    /* renamed from: o */
    private boolean m40215o() {
        return getLayoutDirection() == 1;
    }

    /* renamed from: p */
    private void m40210p(View view) {
        for (int i = this.f10132i - 1; i >= 0; i--) {
            this.f10124a[i].m40185a(view);
        }
    }

    /* renamed from: p */
    private boolean m40212p() {
        int m40183b = this.f10124a[0].m40183b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        for (int i = 1; i < this.f10132i; i++) {
            if (this.f10124a[i].m40183b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) != m40183b) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: p */
    private boolean m40211p(int i) {
        if (this.f10133j == 0) {
            return (i == -1) != this.f10128e;
        }
        return ((i == -1) == this.f10128e) == m40215o();
    }

    /* renamed from: q */
    private int m40208q(int i) {
        if (getChildCount() == 0) {
            return this.f10128e ? 1 : -1;
        }
        return (i < m40206s()) != this.f10128e ? -1 : 1;
    }

    /* renamed from: q */
    private boolean m40209q() {
        int m40188a = this.f10124a[0].m40188a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        for (int i = 1; i < this.f10132i; i++) {
            if (this.f10124a[i].m40188a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) != m40188a) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: r */
    private int m40207r() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return m40366c(getChildAt(childCount - 1));
    }

    /* renamed from: s */
    private int m40206s() {
        if (getChildCount() == 0) {
            return 0;
        }
        return m40366c(getChildAt(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final int mo40277a(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        return m40245c(i, c2648o, c2654s);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
        if (r5.f10133j == 1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (r5.f10133j == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
        if (m40215o() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
        if (m40215o() == false) goto L36;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo40272a(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.C2648o r8, androidx.recyclerview.widget.RecyclerView.C2654s r9) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo40272a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo31649a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo31648a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40281a() {
        this.f10131h.m40205a();
        m40353k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40279a(int i, int i2) {
        m40246c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40278a(int i, int i2, RecyclerView.C2654s c2654s, RecyclerView.AbstractC2637i.AbstractC2640a abstractC2640a) {
        int i3;
        int i4;
        int i5;
        if (this.f10133j != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m40254b(i, c2654s);
        int[] iArr = this.f10122G;
        if (iArr == null || iArr.length < this.f10132i) {
            this.f10122G = new int[this.f10132i];
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f10132i) {
                break;
            }
            if (this.f10135l.f10280d == -1) {
                i5 = this.f10135l.f10282f;
                i4 = this.f10124a[i6].m40188a(this.f10135l.f10282f);
            } else {
                i5 = this.f10124a[i6].m40183b(this.f10135l.f10283g);
                i4 = this.f10135l.f10283g;
            }
            int i8 = i5 - i4;
            int i9 = i3;
            if (i8 >= 0) {
                this.f10122G[i3] = i8;
                i9 = i3 + 1;
            }
            i6++;
            i7 = i9;
        }
        Arrays.sort(this.f10122G, 0, i3);
        for (int i10 = 0; i10 < i3 && this.f10135l.m40089a(c2654s); i10++) {
            abstractC2640a.mo40092a(this.f10135l.f10279c, this.f10122G[i10]);
            this.f10135l.f10279c += this.f10135l.f10280d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40275a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f10133j == 1) {
            i3 = m40394a(i2, rect.height() + paddingTop, getMinimumHeight());
            i4 = m40394a(i, (this.f10134k * this.f10132i) + paddingLeft, getMinimumWidth());
        } else {
            i4 = m40394a(i, rect.width() + paddingLeft, getMinimumWidth());
            i3 = m40394a(i2, (this.f10134k * this.f10132i) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40274a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f10116A = savedState;
            if (this.f10129f != -1) {
                savedState.invalidateAnchorPositionInfo();
                this.f10116A.invalidateSpanInfo();
            }
            m40353k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40269a(AccessibilityEvent accessibilityEvent) {
        super.mo40269a(accessibilityEvent);
        if (getChildCount() > 0) {
            View m40250b = m40250b(false);
            View m40242c = m40242c(false);
            if (m40250b == null || m40242c == null) {
                return;
            }
            int c = m40366c(m40250b);
            int c2 = m40366c(m40242c);
            if (c < c2) {
                accessibilityEvent.setFromIndex(c);
                accessibilityEvent.setToIndex(c2);
                return;
            }
            accessibilityEvent.setFromIndex(c2);
            accessibilityEvent.setToIndex(c);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40264a(RecyclerView.C2654s c2654s) {
        super.mo40264a(c2654s);
        this.f10129f = -1;
        this.f10130g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f10116A = null;
        this.f10119D.m40190a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40263a(RecyclerView recyclerView, RecyclerView.C2648o c2648o) {
        super.mo40263a(recyclerView, c2648o);
        m40377a(this.f10123H);
        for (int i = 0; i < this.f10132i; i++) {
            this.f10124a[i].m40181c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo10800a(RecyclerView recyclerView, RecyclerView.C2654s c2654s, int i) {
        C2690g c2690g = new C2690g(recyclerView.getContext());
        c2690g.setTargetPosition(i);
        m40378a(c2690g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40259a(String str) {
        if (this.f10116A == null) {
            super.mo40259a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final boolean mo31647a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final int mo40255b(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        return m40245c(i, c2648o, c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final int mo40251b(RecyclerView.C2654s c2654s) {
        return m40222j(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final RecyclerView.LayoutParams mo31646b() {
        return this.f10133j == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final void mo40257b(int i, int i2) {
        m40246c(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final int mo40243c(RecyclerView.C2654s c2654s) {
        return m40222j(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r.AbstractC2653b
    /* renamed from: c */
    public final PointF mo40248c(int i) {
        int m40208q = m40208q(i);
        PointF pointF = new PointF();
        if (m40208q == 0) {
            return null;
        }
        if (this.f10133j == 0) {
            pointF.x = m40208q;
            pointF.y = BitmapDescriptorFactory.HUE_RED;
        } else {
            pointF.x = BitmapDescriptorFactory.HUE_RED;
            pointF.y = m40208q;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final void mo40247c(int i, int i2) {
        m40246c(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x085b A[LOOP:0: B:3:0x0002->B:262:0x085b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0867 A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo40244c(androidx.recyclerview.widget.RecyclerView.C2648o r6, androidx.recyclerview.widget.RecyclerView.C2654s r7) {
        /*
            Method dump skipped, instructions count: 2152
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo40244c(androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final boolean mo40249c() {
        return this.f10116A == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final int mo40238d(RecyclerView.C2654s c2654s) {
        return m40228h(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final Parcelable mo40241d() {
        int i;
        int i2;
        int i3;
        SavedState savedState = this.f10116A;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.mReverseLayout = this.f10127d;
        savedState2.mAnchorLayoutFromEnd = this.f10138o;
        savedState2.mLastLayoutRTL = this.f10139z;
        LazySpanLookup lazySpanLookup = this.f10131h;
        if (lazySpanLookup == null || lazySpanLookup.f10143a == null) {
            savedState2.mSpanLookupSize = 0;
        } else {
            savedState2.mSpanLookup = this.f10131h.f10143a;
            savedState2.mSpanLookupSize = savedState2.mSpanLookup.length;
            savedState2.mFullSpanItems = this.f10131h.f10144b;
        }
        if (getChildCount() > 0) {
            savedState2.mAnchorPosition = this.f10138o ? m40207r() : m40206s();
            View m40242c = this.f10128e ? m40242c(true) : m40250b(true);
            savedState2.mVisibleAnchorPosition = m40242c == null ? -1 : m40366c(m40242c);
            savedState2.mSpanOffsetsSize = this.f10132i;
            savedState2.mSpanOffsets = new int[this.f10132i];
            for (int i4 = 0; i4 < this.f10132i; i4++) {
                if (this.f10138o) {
                    i2 = this.f10124a[i4].m40183b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f10125b.mo40068c();
                        i = i2 - i3;
                        savedState2.mSpanOffsets[i4] = i;
                    } else {
                        savedState2.mSpanOffsets[i4] = i;
                    }
                } else {
                    i2 = this.f10124a[i4].m40188a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f10125b.mo40070b();
                        i = i2 - i3;
                        savedState2.mSpanOffsets[i4] = i;
                    } else {
                        savedState2.mSpanOffsets[i4] = i;
                    }
                }
            }
        } else {
            savedState2.mAnchorPosition = -1;
            savedState2.mVisibleAnchorPosition = -1;
            savedState2.mSpanOffsetsSize = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final void mo40240d(int i) {
        SavedState savedState = this.f10116A;
        if (savedState != null && savedState.mAnchorPosition != i) {
            this.f10116A.invalidateAnchorPositionInfo();
        }
        this.f10129f = i;
        this.f10130g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        m40353k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final void mo40239d(int i, int i2) {
        m40246c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: e */
    public final int mo40235e(RecyclerView.C2654s c2654s) {
        return m40228h(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: e */
    public final boolean mo31644e() {
        return this.f10133j == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: f */
    public final int mo40233f(RecyclerView.C2654s c2654s) {
        return m40225i(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: f */
    public final void mo40234f(int i) {
        super.mo40234f(i);
        for (int i2 = 0; i2 < this.f10132i; i2++) {
            this.f10124a[i2].m40178d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: f */
    public final boolean mo31643f() {
        return this.f10133j == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: g */
    public final int mo40230g(RecyclerView.C2654s c2654s) {
        return m40225i(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: g */
    public final void mo40231g(int i) {
        super.mo40231g(i);
        for (int i2 = 0; i2 < this.f10132i; i2++) {
            this.f10124a[i2].m40178d(i);
        }
    }

    /* renamed from: g */
    final boolean m40232g() {
        int i;
        int i2;
        if (getChildCount() == 0 || this.f10137n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f10128e) {
            i2 = m40207r();
            i = m40206s();
        } else {
            i2 = m40206s();
            i = m40207r();
        }
        if (i2 == 0 && m40224j() != null) {
            this.f10131h.m40205a();
            this.f10031u = true;
            m40353k();
            return true;
        } else if (!this.f10120E) {
            return false;
        } else {
            int i3 = this.f10128e ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem m40202a = this.f10131h.m40202a(i2, i4, i3);
            if (m40202a == null) {
                this.f10120E = false;
                this.f10131h.m40204a(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem m40202a2 = this.f10131h.m40202a(i2, m40202a.mPosition, i3 * (-1));
            if (m40202a2 == null) {
                this.f10131h.m40204a(m40202a.mPosition);
            } else {
                this.f10131h.m40204a(m40202a2.mPosition + 1);
            }
            this.f10031u = true;
            m40353k();
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: h */
    public final void mo40229h(int i) {
        if (i == 0) {
            m40232g();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    public boolean isAutoMeasureEnabled() {
        return this.f10137n != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: l */
    public final void mo40220l() {
        this.f10131h.m40205a();
        for (int i = 0; i < this.f10132i; i++) {
            this.f10124a[i].m40181c();
        }
    }
}
