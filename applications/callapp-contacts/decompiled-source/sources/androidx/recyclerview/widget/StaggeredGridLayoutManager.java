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
public class StaggeredGridLayoutManager extends RecyclerView.i implements RecyclerView.r.b {
    private SavedState A;
    private int B;
    private final Rect C;
    private final a D;
    private boolean E;
    private boolean F;
    private int[] G;
    private final Runnable H;

    /* renamed from: a  reason: collision with root package name */
    b[] f5381a;

    /* renamed from: b  reason: collision with root package name */
    j f5382b;

    /* renamed from: c  reason: collision with root package name */
    j f5383c;

    /* renamed from: d  reason: collision with root package name */
    boolean f5384d;
    boolean e;
    int f;
    int g;
    LazySpanLookup h;
    private int i;
    private int j;
    private int k;
    private final f l;
    private BitSet m;
    private int n;
    private boolean o;
    private boolean z;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        b f5386a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5387b;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static final class LazySpanLookup {

        /* renamed from: a  reason: collision with root package name */
        int[] f5388a;

        /* renamed from: b  reason: collision with root package name */
        List<FullSpanItem> f5389b;

        /* JADX INFO: Access modifiers changed from: package-private */
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

        private void c(int i, int i2) {
            List<FullSpanItem> list = this.f5389b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f5389b.get(size);
                    if (fullSpanItem.mPosition >= i) {
                        if (fullSpanItem.mPosition < i + i2) {
                            this.f5389b.remove(size);
                        } else {
                            fullSpanItem.mPosition -= i2;
                        }
                    }
                }
            }
        }

        private void d(int i, int i2) {
            List<FullSpanItem> list = this.f5389b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f5389b.get(size);
                    if (fullSpanItem.mPosition >= i) {
                        fullSpanItem.mPosition += i2;
                    }
                }
            }
        }

        private int e(int i) {
            int length = this.f5388a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        private void f(int i) {
            int[] iArr = this.f5388a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f5388a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[e(i)];
                this.f5388a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f5388a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        private int g(int i) {
            if (this.f5389b == null) {
                return -1;
            }
            FullSpanItem d2 = d(i);
            if (d2 != null) {
                this.f5389b.remove(d2);
            }
            int size = this.f5389b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f5389b.get(i2).mPosition >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f5389b.get(i2);
            this.f5389b.remove(i2);
            return fullSpanItem.mPosition;
        }

        final int a(int i) {
            List<FullSpanItem> list = this.f5389b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f5389b.get(size).mPosition >= i) {
                        this.f5389b.remove(size);
                    }
                }
            }
            return b(i);
        }

        public final FullSpanItem a(int i, int i2, int i3) {
            List<FullSpanItem> list = this.f5389b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f5389b.get(i4);
                if (fullSpanItem.mPosition >= i2) {
                    return null;
                }
                if (fullSpanItem.mPosition >= i && (i3 == 0 || fullSpanItem.mGapDir == i3 || fullSpanItem.mHasUnwantedGapAfter)) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        final void a() {
            int[] iArr = this.f5388a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f5389b = null;
        }

        final void a(int i, int i2) {
            int[] iArr = this.f5388a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                f(i3);
                int[] iArr2 = this.f5388a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.f5388a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                c(i, i2);
            }
        }

        final void a(int i, b bVar) {
            f(i);
            this.f5388a[i] = bVar.e;
        }

        public final void a(FullSpanItem fullSpanItem) {
            if (this.f5389b == null) {
                this.f5389b = new ArrayList();
            }
            int size = this.f5389b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f5389b.get(i);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.f5389b.remove(i);
                }
                if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                    this.f5389b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f5389b.add(fullSpanItem);
        }

        final int b(int i) {
            int[] iArr = this.f5388a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int g = g(i);
            if (g == -1) {
                int[] iArr2 = this.f5388a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f5388a.length;
            }
            int min = Math.min(g + 1, this.f5388a.length);
            Arrays.fill(this.f5388a, i, min, -1);
            return min;
        }

        final void b(int i, int i2) {
            int[] iArr = this.f5388a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                f(i3);
                int[] iArr2 = this.f5388a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.f5388a, i, i3, -1);
                d(i, i2);
            }
        }

        final int c(int i) {
            int[] iArr = this.f5388a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        public final FullSpanItem d(int i) {
            List<FullSpanItem> list = this.f5389b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f5389b.get(size);
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
            boolean z = false;
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1 ? true : z;
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

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    final class a {

        /* renamed from: a  reason: collision with root package name */
        int f5390a;

        /* renamed from: b  reason: collision with root package name */
        int f5391b;

        /* renamed from: c  reason: collision with root package name */
        boolean f5392c;

        /* renamed from: d  reason: collision with root package name */
        boolean f5393d;
        boolean e;
        int[] f;

        a() {
            a();
        }

        final void a() {
            this.f5390a = -1;
            this.f5391b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f5392c = false;
            this.f5393d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<View> f5394a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        int f5395b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        /* renamed from: c  reason: collision with root package name */
        int f5396c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        /* renamed from: d  reason: collision with root package name */
        int f5397d = 0;
        final int e;

        b(int i) {
            this.e = i;
        }

        private int a(int i, int i2, boolean z) {
            int b2 = StaggeredGridLayoutManager.this.f5382b.b();
            int c2 = StaggeredGridLayoutManager.this.f5382b.c();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f5394a.get(i);
                int a2 = StaggeredGridLayoutManager.this.f5382b.a(view);
                int b3 = StaggeredGridLayoutManager.this.f5382b.b(view);
                boolean z2 = false;
                boolean z3 = a2 <= c2;
                if (b3 >= b2) {
                    z2 = true;
                }
                if (z3 && z2 && (a2 < b2 || b3 > c2)) {
                    return StaggeredGridLayoutManager.c(view);
                }
                i += i3;
            }
            return -1;
        }

        private void h() {
            LazySpanLookup.FullSpanItem d2;
            View view = this.f5394a.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f5395b = StaggeredGridLayoutManager.this.f5382b.a(view);
            if (layoutParams.f5387b && (d2 = StaggeredGridLayoutManager.this.h.d(layoutParams.f5332c.getLayoutPosition())) != null && d2.mGapDir == -1) {
                this.f5395b -= d2.getGapForSpan(this.e);
            }
        }

        private void i() {
            LazySpanLookup.FullSpanItem d2;
            ArrayList<View> arrayList = this.f5394a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f5396c = StaggeredGridLayoutManager.this.f5382b.b(view);
            if (layoutParams.f5387b && (d2 = StaggeredGridLayoutManager.this.h.d(layoutParams.f5332c.getLayoutPosition())) != null && d2.mGapDir == 1) {
                this.f5396c += d2.getGapForSpan(this.e);
            }
        }

        private void j() {
            this.f5395b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f5396c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        final int a() {
            int i = this.f5395b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            h();
            return this.f5395b;
        }

        final int a(int i) {
            int i2 = this.f5395b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f5394a.size() == 0) {
                return i;
            }
            h();
            return this.f5395b;
        }

        public final View a(int i, int i2) {
            View view;
            View view2 = null;
            View view3 = null;
            if (i2 != -1) {
                int size = this.f5394a.size() - 1;
                while (true) {
                    view = view2;
                    if (size < 0) {
                        break;
                    }
                    View view4 = this.f5394a.get(size);
                    if (StaggeredGridLayoutManager.this.f5384d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.c(view4) >= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f5384d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.c(view4) <= i) {
                            break;
                        }
                    }
                    view = view2;
                    if (!view4.hasFocusable()) {
                        break;
                    }
                    size--;
                    view2 = view4;
                }
            } else {
                int size2 = this.f5394a.size();
                int i3 = 0;
                while (true) {
                    view = view3;
                    if (i3 >= size2) {
                        break;
                    }
                    View view5 = this.f5394a.get(i3);
                    if (StaggeredGridLayoutManager.this.f5384d) {
                        view = view3;
                        if (StaggeredGridLayoutManager.c(view5) <= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f5384d) {
                        view = view3;
                        if (StaggeredGridLayoutManager.c(view5) >= i) {
                            break;
                        }
                    }
                    view = view3;
                    if (!view5.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view3 = view5;
                }
            }
            return view;
        }

        final void a(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f5386a = this;
            this.f5394a.add(0, view);
            this.f5395b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            if (this.f5394a.size() == 1) {
                this.f5396c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (layoutParams.f5332c.isRemoved() || layoutParams.f5332c.isUpdated()) {
                this.f5397d += StaggeredGridLayoutManager.this.f5382b.e(view);
            }
        }

        final int b() {
            int i = this.f5396c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            i();
            return this.f5396c;
        }

        final int b(int i) {
            int i2 = this.f5396c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f5394a.size() == 0) {
                return i;
            }
            i();
            return this.f5396c;
        }

        final void b(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f5386a = this;
            this.f5394a.add(view);
            this.f5396c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            if (this.f5394a.size() == 1) {
                this.f5395b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (layoutParams.f5332c.isRemoved() || layoutParams.f5332c.isUpdated()) {
                this.f5397d += StaggeredGridLayoutManager.this.f5382b.e(view);
            }
        }

        final void c() {
            this.f5394a.clear();
            j();
            this.f5397d = 0;
        }

        final void c(int i) {
            this.f5395b = i;
            this.f5396c = i;
        }

        final void d() {
            int size = this.f5394a.size();
            View remove = this.f5394a.remove(size - 1);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.f5386a = null;
            if (layoutParams.f5332c.isRemoved() || layoutParams.f5332c.isUpdated()) {
                this.f5397d -= StaggeredGridLayoutManager.this.f5382b.e(remove);
            }
            if (size == 1) {
                this.f5395b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            this.f5396c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        final void d(int i) {
            int i2 = this.f5395b;
            if (i2 != Integer.MIN_VALUE) {
                this.f5395b = i2 + i;
            }
            int i3 = this.f5396c;
            if (i3 != Integer.MIN_VALUE) {
                this.f5396c = i3 + i;
            }
        }

        final void e() {
            View remove = this.f5394a.remove(0);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.f5386a = null;
            if (this.f5394a.size() == 0) {
                this.f5396c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (layoutParams.f5332c.isRemoved() || layoutParams.f5332c.isUpdated()) {
                this.f5397d -= StaggeredGridLayoutManager.this.f5382b.e(remove);
            }
            this.f5395b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }

        public final int f() {
            return StaggeredGridLayoutManager.this.f5384d ? a(this.f5394a.size() - 1, -1, true) : a(0, this.f5394a.size(), true);
        }

        public final int g() {
            return StaggeredGridLayoutManager.this.f5384d ? a(0, this.f5394a.size(), true) : a(this.f5394a.size() - 1, -1, true);
        }
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.i = -1;
        this.f5384d = false;
        this.e = false;
        this.f = -1;
        this.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.h = new LazySpanLookup();
        this.n = 2;
        this.C = new Rect();
        this.D = new a();
        this.E = false;
        this.F = true;
        this.H = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                StaggeredGridLayoutManager.this.g();
            }
        };
        this.j = i2;
        a(i);
        this.l = new f();
        i();
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = -1;
        this.f5384d = false;
        this.e = false;
        this.f = -1;
        this.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.h = new LazySpanLookup();
        this.n = 2;
        this.C = new Rect();
        this.D = new a();
        this.E = false;
        this.F = true;
        this.H = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                StaggeredGridLayoutManager.this.g();
            }
        };
        RecyclerView.i.b a2 = a(context, attributeSet, i, i2);
        int i3 = a2.f5350a;
        if (i3 == 0 || i3 == 1) {
            a((String) null);
            if (i3 != this.j) {
                this.j = i3;
                j jVar = this.f5382b;
                this.f5382b = this.f5383c;
                this.f5383c = jVar;
                k();
            }
            a(a2.f5351b);
            a(a2.f5352c);
            this.l = new f();
            i();
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    private int a(RecyclerView.o oVar, f fVar, RecyclerView.s sVar) {
        b bVar;
        int i;
        int i2;
        int i3;
        int i4;
        this.m.set(0, this.i, true);
        int i5 = this.l.i ? fVar.e == 1 ? Integer.MAX_VALUE : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : fVar.e == 1 ? fVar.g + fVar.f5471b : fVar.f - fVar.f5471b;
        e(fVar.e, i5);
        int c2 = this.e ? this.f5382b.c() : this.f5382b.b();
        boolean z = false;
        while (fVar.a(sVar) && (this.l.i || !this.m.isEmpty())) {
            View a2 = fVar.a(oVar);
            LayoutParams layoutParams = (LayoutParams) a2.getLayoutParams();
            int layoutPosition = layoutParams.f5332c.getLayoutPosition();
            int c3 = this.h.c(layoutPosition);
            boolean z2 = c3 == -1;
            if (z2) {
                bVar = layoutParams.f5387b ? this.f5381a[0] : a(fVar);
                this.h.a(layoutPosition, bVar);
            } else {
                bVar = this.f5381a[c3];
            }
            layoutParams.f5386a = bVar;
            if (fVar.e == 1) {
                b(a2);
            } else {
                b(a2, 0);
            }
            a(a2, layoutParams);
            if (fVar.e == 1) {
                int n = layoutParams.f5387b ? n(c2) : bVar.b(c2);
                int e = this.f5382b.e(a2) + n;
                i2 = n;
                i = e;
                if (z2) {
                    i2 = n;
                    i = e;
                    if (layoutParams.f5387b) {
                        LazySpanLookup.FullSpanItem j = j(n);
                        j.mGapDir = -1;
                        j.mPosition = layoutPosition;
                        this.h.a(j);
                        i2 = n;
                        i = e;
                    }
                }
            } else {
                int m = layoutParams.f5387b ? m(c2) : bVar.a(c2);
                int e2 = m - this.f5382b.e(a2);
                i2 = e2;
                i = m;
                if (z2) {
                    i2 = e2;
                    i = m;
                    if (layoutParams.f5387b) {
                        LazySpanLookup.FullSpanItem k = k(m);
                        k.mGapDir = 1;
                        k.mPosition = layoutPosition;
                        this.h.a(k);
                        i = m;
                        i2 = e2;
                    }
                }
            }
            if (layoutParams.f5387b && fVar.f5473d == -1) {
                if (!z2) {
                    if (!(fVar.e == 1 ? p() : q())) {
                        LazySpanLookup.FullSpanItem d2 = this.h.d(layoutPosition);
                        if (d2 != null) {
                            d2.mHasUnwantedGapAfter = true;
                        }
                    }
                }
                this.E = true;
            }
            a(a2, layoutParams, fVar);
            if (!o() || this.j != 1) {
                int b2 = layoutParams.f5387b ? this.f5383c.b() : (bVar.e * this.k) + this.f5383c.b();
                i4 = this.f5383c.e(a2) + b2;
                i3 = b2;
            } else {
                i4 = layoutParams.f5387b ? this.f5383c.c() : this.f5383c.c() - (((this.i - 1) - bVar.e) * this.k);
                i3 = i4 - this.f5383c.e(a2);
            }
            if (this.j == 1) {
                a(a2, i3, i2, i4, i);
            } else {
                a(a2, i2, i3, i, i4);
            }
            if (layoutParams.f5387b) {
                e(this.l.e, i5);
            } else {
                a(bVar, this.l.e, i5);
            }
            a(oVar, this.l);
            if (this.l.h && a2.hasFocusable()) {
                if (layoutParams.f5387b) {
                    this.m.clear();
                } else {
                    this.m.set(bVar.e, false);
                }
            }
            z = true;
        }
        if (!z) {
            a(oVar, this.l);
        }
        int b3 = this.l.e == -1 ? this.f5382b.b() - m(this.f5382b.b()) : n(this.f5382b.c()) - this.f5382b.c();
        if (b3 > 0) {
            return Math.min(fVar.f5471b, b3);
        }
        return 0;
    }

    private b a(f fVar) {
        int i;
        int i2;
        int i3 = -1;
        if (p(fVar.e)) {
            i2 = this.i - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.i;
            i = 1;
        }
        int i4 = fVar.e;
        b bVar = null;
        b bVar2 = null;
        if (i4 == 1) {
            int i5 = Integer.MAX_VALUE;
            int b2 = this.f5382b.b();
            for (int i6 = i2; i6 != i3; i6 += i) {
                b bVar3 = this.f5381a[i6];
                int b3 = bVar3.b(b2);
                i5 = i5;
                if (b3 < i5) {
                    bVar2 = bVar3;
                    i5 = b3;
                }
            }
            return bVar2;
        }
        int i7 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        int c2 = this.f5382b.c();
        while (i2 != i3) {
            b bVar4 = this.f5381a[i2];
            int a2 = bVar4.a(c2);
            i7 = i7;
            if (a2 > i7) {
                bVar = bVar4;
                i7 = a2;
            }
            i2 += i;
        }
        return bVar;
    }

    private void a(int i) {
        a((String) null);
        if (i != this.i) {
            this.h.a();
            k();
            this.i = i;
            this.m = new BitSet(this.i);
            this.f5381a = new b[this.i];
            for (int i2 = 0; i2 < this.i; i2++) {
                this.f5381a[i2] = new b(i2);
            }
            k();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(int r5, androidx.recyclerview.widget.RecyclerView.s r6) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.a(int, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    private void a(View view, int i, int i2, boolean z) {
        b(view, this.C);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int b2 = b(i, layoutParams.leftMargin + this.C.left, layoutParams.rightMargin + this.C.right);
        int b3 = b(i2, layoutParams.topMargin + this.C.top, layoutParams.bottomMargin + this.C.bottom);
        if (b(view, b2, b3, layoutParams)) {
            view.measure(b2, b3);
        }
    }

    private void a(View view, LayoutParams layoutParams) {
        if (layoutParams.f5387b) {
            if (this.j == 1) {
                a(view, this.B, a(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), layoutParams.height, true), false);
            } else {
                a(view, a(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), layoutParams.width, true), this.B, false);
            }
        } else if (this.j == 1) {
            a(view, a(this.k, getWidthMode(), 0, layoutParams.width, false), a(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), layoutParams.height, true), false);
        } else {
            a(view, a(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), layoutParams.width, true), a(this.k, getHeightMode(), 0, layoutParams.height, false), false);
        }
    }

    private void a(View view, LayoutParams layoutParams, f fVar) {
        if (fVar.e == 1) {
            if (layoutParams.f5387b) {
                o(view);
            } else {
                layoutParams.f5386a.b(view);
            }
        } else if (layoutParams.f5387b) {
            p(view);
        } else {
            layoutParams.f5386a.a(view);
        }
    }

    private void a(RecyclerView.o oVar, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f5382b.b(childAt) <= i && this.f5382b.c(childAt) <= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f5387b) {
                    for (int i2 = 0; i2 < this.i; i2++) {
                        if (this.f5381a[i2].f5394a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.i; i3++) {
                        this.f5381a[i3].e();
                    }
                } else if (layoutParams.f5386a.f5394a.size() != 1) {
                    layoutParams.f5386a.e();
                } else {
                    return;
                }
                a(childAt, oVar);
            } else {
                return;
            }
        }
    }

    private void a(RecyclerView.o oVar, RecyclerView.s sVar, boolean z) {
        int c2;
        int n = n(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        if (n != Integer.MIN_VALUE && (c2 = this.f5382b.c() - n) > 0) {
            int i = c2 - (-c(-c2, oVar, sVar));
            if (z && i > 0) {
                this.f5382b.a(i);
            }
        }
    }

    private void a(RecyclerView.o oVar, f fVar) {
        if (fVar.f5470a && !fVar.i) {
            if (fVar.f5471b == 0) {
                if (fVar.e == -1) {
                    b(oVar, fVar.g);
                } else {
                    a(oVar, fVar.f);
                }
            } else if (fVar.e == -1) {
                int l = fVar.f - l(fVar.f);
                b(oVar, l < 0 ? fVar.g : fVar.g - Math.min(l, fVar.f5471b));
            } else {
                int o = o(fVar.g) - fVar.g;
                a(oVar, o < 0 ? fVar.f : Math.min(o, fVar.f5471b) + fVar.f);
            }
        }
    }

    private void a(b bVar, int i, int i2) {
        int i3 = bVar.f5397d;
        if (i == -1) {
            if (bVar.a() + i3 <= i2) {
                this.m.set(bVar.e, false);
            }
        } else if (bVar.b() - i3 >= i2) {
            this.m.set(bVar.e, false);
        }
    }

    private void a(boolean z) {
        a((String) null);
        SavedState savedState = this.A;
        if (!(savedState == null || savedState.mReverseLayout == z)) {
            this.A.mReverseLayout = z;
        }
        this.f5384d = z;
        k();
    }

    private boolean a(b bVar) {
        return this.e ? bVar.b() < this.f5382b.c() && !((LayoutParams) bVar.f5394a.get(bVar.f5394a.size() - 1).getLayoutParams()).f5387b : bVar.a() > this.f5382b.b() && !((LayoutParams) bVar.f5394a.get(0).getLayoutParams()).f5387b;
    }

    private static int b(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    private View b(boolean z) {
        int b2 = this.f5382b.b();
        int c2 = this.f5382b.c();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int a2 = this.f5382b.a(childAt);
            view = view;
            if (this.f5382b.b(childAt) > b2) {
                view = view;
                if (a2 >= c2) {
                    continue;
                } else if (a2 >= b2 || !z) {
                    return childAt;
                } else {
                    view = view;
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
        }
        return view;
    }

    private void b(int i, RecyclerView.s sVar) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = r();
            i2 = 1;
        } else {
            i3 = s();
            i2 = -1;
        }
        this.l.f5470a = true;
        a(i3, sVar);
        i(i2);
        f fVar = this.l;
        fVar.f5472c = i3 + fVar.f5473d;
        this.l.f5471b = Math.abs(i);
    }

    private void b(RecyclerView.o oVar, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f5382b.a(childAt) >= i && this.f5382b.d(childAt) >= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f5387b) {
                    for (int i2 = 0; i2 < this.i; i2++) {
                        if (this.f5381a[i2].f5394a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.i; i3++) {
                        this.f5381a[i3].d();
                    }
                } else if (layoutParams.f5386a.f5394a.size() != 1) {
                    layoutParams.f5386a.d();
                } else {
                    return;
                }
                a(childAt, oVar);
            } else {
                return;
            }
        }
    }

    private void b(RecyclerView.o oVar, RecyclerView.s sVar, boolean z) {
        int b2;
        int m = m(Integer.MAX_VALUE);
        if (m != Integer.MAX_VALUE && (b2 = m - this.f5382b.b()) > 0) {
            int c2 = b2 - c(b2, oVar, sVar);
            if (z && c2 > 0) {
                this.f5382b.a(-c2);
            }
        }
    }

    private int c(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        b(i, sVar);
        int a2 = a(oVar, this.l, sVar);
        if (this.l.f5471b >= a2) {
            i = i < 0 ? -a2 : a2;
        }
        this.f5382b.a(-i);
        this.o = this.e;
        this.l.f5471b = 0;
        a(oVar, this.l);
        return i;
    }

    private View c(boolean z) {
        int b2 = this.f5382b.b();
        int c2 = this.f5382b.c();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int a2 = this.f5382b.a(childAt);
            int b3 = this.f5382b.b(childAt);
            view = view;
            if (b3 > b2) {
                view = view;
                if (a2 >= c2) {
                    continue;
                } else if (b3 <= c2 || !z) {
                    return childAt;
                } else {
                    view = view;
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
        }
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x0010
            r0 = r4
            int r0 = r0.r()
            r8 = r0
            goto L_0x0016
        L_0x0010:
            r0 = r4
            int r0 = r0.s()
            r8 = r0
        L_0x0016:
            r0 = r7
            r1 = 8
            if (r0 != r1) goto L_0x0034
            r0 = r5
            r1 = r6
            if (r0 >= r1) goto L_0x0029
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            goto L_0x0039
        L_0x0029:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r10 = r0
            goto L_0x003c
        L_0x0034:
            r0 = r5
            r1 = r6
            int r0 = r0 + r1
            r9 = r0
        L_0x0039:
            r0 = r5
            r10 = r0
        L_0x003c:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.h
            r1 = r10
            int r0 = r0.b(r1)
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x007a
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x006e
            r0 = r7
            r1 = 8
            if (r0 == r1) goto L_0x0059
            goto L_0x0083
        L_0x0059:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.h
            r1 = r5
            r2 = 1
            r0.a(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.h
            r1 = r6
            r2 = 1
            r0.b(r1, r2)
            goto L_0x0083
        L_0x006e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.h
            r1 = r5
            r2 = r6
            r0.a(r1, r2)
            goto L_0x0083
        L_0x007a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.h
            r1 = r5
            r2 = r6
            r0.b(r1, r2)
        L_0x0083:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L_0x008b
            return
        L_0x008b:
            r0 = r4
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x009a
            r0 = r4
            int r0 = r0.s()
            r5 = r0
            goto L_0x009f
        L_0x009a:
            r0 = r4
            int r0 = r0.r()
            r5 = r0
        L_0x009f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto L_0x00a9
            r0 = r4
            r0.k()
        L_0x00a9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(int, int, int):void");
    }

    private void e(int i) {
        this.k = i / this.i;
        this.B = View.MeasureSpec.makeMeasureSpec(i, this.f5383c.g());
    }

    private void e(int i, int i2) {
        for (int i3 = 0; i3 < this.i; i3++) {
            if (!this.f5381a[i3].f5394a.isEmpty()) {
                a(this.f5381a[i3], i, i2);
            }
        }
    }

    private int h(RecyclerView.s sVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return m.a(sVar, this.f5382b, b(!this.F), c(!this.F), this, this.F, this.e);
    }

    private int i(RecyclerView.s sVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return m.a(sVar, this.f5382b, b(!this.F), c(!this.F), this, this.F);
    }

    private void i() {
        this.f5382b = j.a(this, this.j);
        this.f5383c = j.a(this, 1 - this.j);
    }

    private void i(int i) {
        this.l.e = i;
        f fVar = this.l;
        int i2 = 1;
        if (this.e != (i == -1)) {
            i2 = -1;
        }
        fVar.f5473d = i2;
    }

    private int j(RecyclerView.s sVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return m.b(sVar, this.f5382b, b(!this.F), c(!this.F), this, this.F);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e1, code lost:
        if (r0 == r0) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0108, code lost:
        if (r0 == r0) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010b, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0110, code lost:
        r6 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View j() {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.j():android.view.View");
    }

    private LazySpanLookup.FullSpanItem j(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.i];
        for (int i2 = 0; i2 < this.i; i2++) {
            fullSpanItem.mGapPerSpan[i2] = i - this.f5381a[i2].b(i);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem k(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.i];
        for (int i2 = 0; i2 < this.i; i2++) {
            fullSpanItem.mGapPerSpan[i2] = this.f5381a[i2].a(i) - i;
        }
        return fullSpanItem;
    }

    private int l(int i) {
        int a2 = this.f5381a[0].a(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int a3 = this.f5381a[i2].a(i);
            a2 = a2;
            if (a3 > a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private int m(int i) {
        int a2 = this.f5381a[0].a(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int a3 = this.f5381a[i2].a(i);
            a2 = a2;
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private int n(int i) {
        int b2 = this.f5381a[0].b(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int b3 = this.f5381a[i2].b(i);
            b2 = b2;
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private void n() {
        boolean z = true;
        if (this.j == 1 || !o()) {
            z = this.f5384d;
        } else if (this.f5384d) {
            z = false;
        }
        this.e = z;
    }

    private int o(int i) {
        int b2 = this.f5381a[0].b(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int b3 = this.f5381a[i2].b(i);
            b2 = b2;
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private void o(View view) {
        for (int i = this.i - 1; i >= 0; i--) {
            this.f5381a[i].b(view);
        }
    }

    private boolean o() {
        return getLayoutDirection() == 1;
    }

    private void p(View view) {
        for (int i = this.i - 1; i >= 0; i--) {
            this.f5381a[i].a(view);
        }
    }

    private boolean p() {
        int b2 = this.f5381a[0].b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        for (int i = 1; i < this.i; i++) {
            if (this.f5381a[i].b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) != b2) {
                return false;
            }
        }
        return true;
    }

    private boolean p(int i) {
        if (this.j == 0) {
            return (i == -1) != this.e;
        }
        return ((i == -1) == this.e) == o();
    }

    private int q(int i) {
        if (getChildCount() == 0) {
            return this.e ? 1 : -1;
        }
        return (i < s()) != this.e ? -1 : 1;
    }

    private boolean q() {
        int a2 = this.f5381a[0].a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        for (int i = 1; i < this.i; i++) {
            if (this.f5381a[i].a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW) != a2) {
                return false;
            }
        }
        return true;
    }

    private int r() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return c(getChildAt(childCount - 1));
    }

    private int s() {
        if (getChildCount() == 0) {
            return 0;
        }
        return c(getChildAt(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int a(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        return c(i, oVar, sVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
        if (r5.j == 1) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (r5.j == 0) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
        if (o() == false) goto L_0x0074;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
        if (o() == false) goto L_0x008b;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.o r8, androidx.recyclerview.widget.RecyclerView.s r9) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a() {
        this.h.a();
        k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(int i, int i2) {
        c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(int i, int i2, RecyclerView.s sVar, RecyclerView.i.a aVar) {
        int i3;
        int i4;
        if (this.j != 0) {
            i = i2;
        }
        if (!(getChildCount() == 0 || i == 0)) {
            b(i, sVar);
            int[] iArr = this.G;
            if (iArr == null || iArr.length < this.i) {
                this.G = new int[this.i];
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.i; i6++) {
                if (this.l.f5473d == -1) {
                    i4 = this.l.f;
                    i3 = this.f5381a[i6].a(this.l.f);
                } else {
                    i4 = this.f5381a[i6].b(this.l.g);
                    i3 = this.l.g;
                }
                int i7 = i4 - i3;
                i5 = i5;
                if (i7 >= 0) {
                    this.G[i5] = i7;
                    i5++;
                }
            }
            Arrays.sort(this.G, 0, i5);
            for (int i8 = 0; i8 < i5 && this.l.a(sVar); i8++) {
                aVar.a(this.l.f5472c, this.G[i8]);
                this.l.f5472c += this.l.f5473d;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.j == 1) {
            i3 = a(i2, rect.height() + paddingTop, getMinimumHeight());
            i4 = a(i, (this.k * this.i) + paddingLeft, getMinimumWidth());
        } else {
            i4 = a(i, rect.width() + paddingLeft, getMinimumWidth());
            i3 = a(i2, (this.k * this.i) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.A = savedState;
            if (this.f != -1) {
                savedState.invalidateAnchorPositionInfo();
                this.A.invalidateSpanInfo();
            }
            k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (getChildCount() > 0) {
            View b2 = b(false);
            View c2 = c(false);
            if (b2 != null && c2 != null) {
                int c3 = c(b2);
                int c4 = c(c2);
                if (c3 < c4) {
                    accessibilityEvent.setFromIndex(c3);
                    accessibilityEvent.setToIndex(c4);
                    return;
                }
                accessibilityEvent.setFromIndex(c4);
                accessibilityEvent.setToIndex(c3);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView.s sVar) {
        super.a(sVar);
        this.f = -1;
        this.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.A = null;
        this.D.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView recyclerView, RecyclerView.o oVar) {
        super.a(recyclerView, oVar);
        a(this.H);
        for (int i = 0; i < this.i; i++) {
            this.f5381a[i].c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView recyclerView, RecyclerView.s sVar, int i) {
        g gVar = new g(recyclerView.getContext());
        gVar.setTargetPosition(i);
        a(gVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(String str) {
        if (this.A == null) {
            super.a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final boolean a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int b(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        return c(i, oVar, sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int b(RecyclerView.s sVar) {
        return j(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams b() {
        return this.j == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void b(int i, int i2) {
        c(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int c(RecyclerView.s sVar) {
        return j(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r.b
    public final PointF c(int i) {
        int q = q(i);
        PointF pointF = new PointF();
        if (q == 0) {
            return null;
        }
        if (this.j == 0) {
            pointF.x = q;
            pointF.y = BitmapDescriptorFactory.HUE_RED;
        } else {
            pointF.x = BitmapDescriptorFactory.HUE_RED;
            pointF.y = q;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void c(int i, int i2) {
        c(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x085b A[LOOP:0: B:3:0x0002->B:262:0x085b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0867 A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(androidx.recyclerview.widget.RecyclerView.o r6, androidx.recyclerview.widget.RecyclerView.s r7) {
        /*
            Method dump skipped, instructions count: 2152
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final boolean c() {
        return this.A == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int d(RecyclerView.s sVar) {
        return h(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final Parcelable d() {
        int i;
        int i2;
        int i3;
        SavedState savedState = this.A;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.mReverseLayout = this.f5384d;
        savedState2.mAnchorLayoutFromEnd = this.o;
        savedState2.mLastLayoutRTL = this.z;
        LazySpanLookup lazySpanLookup = this.h;
        if (lazySpanLookup == null || lazySpanLookup.f5388a == null) {
            savedState2.mSpanLookupSize = 0;
        } else {
            savedState2.mSpanLookup = this.h.f5388a;
            savedState2.mSpanLookupSize = savedState2.mSpanLookup.length;
            savedState2.mFullSpanItems = this.h.f5389b;
        }
        int i4 = -1;
        if (getChildCount() > 0) {
            savedState2.mAnchorPosition = this.o ? r() : s();
            View c2 = this.e ? c(true) : b(true);
            if (c2 != null) {
                i4 = c(c2);
            }
            savedState2.mVisibleAnchorPosition = i4;
            savedState2.mSpanOffsetsSize = this.i;
            savedState2.mSpanOffsets = new int[this.i];
            for (int i5 = 0; i5 < this.i; i5++) {
                if (this.o) {
                    i2 = this.f5381a[i5].b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f5382b.c();
                        i = i2 - i3;
                        savedState2.mSpanOffsets[i5] = i;
                    } else {
                        savedState2.mSpanOffsets[i5] = i;
                    }
                } else {
                    i2 = this.f5381a[i5].a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f5382b.b();
                        i = i2 - i3;
                        savedState2.mSpanOffsets[i5] = i;
                    } else {
                        savedState2.mSpanOffsets[i5] = i;
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

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void d(int i) {
        SavedState savedState = this.A;
        if (!(savedState == null || savedState.mAnchorPosition == i)) {
            this.A.invalidateAnchorPositionInfo();
        }
        this.f = i;
        this.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void d(int i, int i2) {
        c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int e(RecyclerView.s sVar) {
        return h(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final boolean e() {
        return this.j == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int f(RecyclerView.s sVar) {
        return i(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void f(int i) {
        super.f(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f5381a[i2].d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final boolean f() {
        return this.j == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int g(RecyclerView.s sVar) {
        return i(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void g(int i) {
        super.g(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f5381a[i2].d(i);
        }
    }

    final boolean g() {
        int i;
        int i2;
        if (getChildCount() == 0 || this.n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.e) {
            i2 = r();
            i = s();
        } else {
            i2 = s();
            i = r();
        }
        if (i2 == 0 && j() != null) {
            this.h.a();
            this.u = true;
            k();
            return true;
        } else if (!this.E) {
            return false;
        } else {
            int i3 = this.e ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem a2 = this.h.a(i2, i4, i3);
            if (a2 == null) {
                this.E = false;
                this.h.a(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem a3 = this.h.a(i2, a2.mPosition, i3 * (-1));
            if (a3 == null) {
                this.h.a(a2.mPosition);
            } else {
                this.h.a(a3.mPosition + 1);
            }
            this.u = true;
            k();
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void h(int i) {
        if (i == 0) {
            g();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean isAutoMeasureEnabled() {
        return this.n != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void l() {
        this.h.a();
        for (int i = 0; i < this.i; i++) {
            this.f5381a[i].c();
        }
    }
}
