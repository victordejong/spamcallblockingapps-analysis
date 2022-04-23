package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p122v.p123d.AbstractC1933h;
import p012b.p122v.p123d.C1930f;
import p012b.p122v.p123d.C1938j;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0511o {

    /* renamed from: B */
    public BitSet f2653B;

    /* renamed from: G */
    public boolean f2658G;

    /* renamed from: H */
    public boolean f2659H;

    /* renamed from: I */
    public SavedState f2660I;

    /* renamed from: J */
    public int f2661J;

    /* renamed from: O */
    public int[] f2666O;

    /* renamed from: t */
    public C0532c[] f2669t;

    /* renamed from: u */
    public AbstractC1933h f2670u;

    /* renamed from: v */
    public AbstractC1933h f2671v;

    /* renamed from: w */
    public int f2672w;

    /* renamed from: x */
    public int f2673x;

    /* renamed from: s */
    public int f2668s = -1;

    /* renamed from: z */
    public boolean f2675z = false;

    /* renamed from: A */
    public boolean f2652A = false;

    /* renamed from: C */
    public int f2654C = -1;

    /* renamed from: D */
    public int f2655D = Integer.MIN_VALUE;

    /* renamed from: E */
    public LazySpanLookup f2656E = new LazySpanLookup();

    /* renamed from: F */
    public int f2657F = 2;

    /* renamed from: K */
    public final Rect f2662K = new Rect();

    /* renamed from: L */
    public final C0531b f2663L = new C0531b();

    /* renamed from: M */
    public boolean f2664M = false;

    /* renamed from: N */
    public boolean f2665N = true;

    /* renamed from: P */
    public final Runnable f2667P = new RunnableC0530a();

    /* renamed from: y */
    public final C1930f f2674y = new C1930f();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e */
        public C0532c f2676e;

        /* renamed from: f */
        public boolean f2677f;

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

        /* renamed from: e */
        public final int m37098e() {
            C0532c cVar = this.f2676e;
            if (cVar == null) {
                return -1;
            }
            return cVar.f2706e;
        }

        /* renamed from: f */
        public boolean m37097f() {
            return this.f2677f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static class LazySpanLookup {

        /* renamed from: a */
        public int[] f2678a;

        /* renamed from: b */
        public List<FullSpanItem> f2679b;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new C0528a();

            /* renamed from: a */
            public int f2680a;

            /* renamed from: b */
            public int f2681b;

            /* renamed from: c */
            public int[] f2682c;

            /* renamed from: d */
            public boolean f2683d;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a */
            /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a.class */
            public static final class C0528a implements Parcelable.Creator<FullSpanItem> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            public FullSpanItem() {
            }

            public FullSpanItem(Parcel parcel) {
                this.f2680a = parcel.readInt();
                this.f2681b = parcel.readInt();
                this.f2683d = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f2682c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            /* renamed from: a */
            public int m37081a(int i) {
                int[] iArr = this.f2682c;
                return iArr == null ? 0 : iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f2680a + ", mGapDir=" + this.f2681b + ", mHasUnwantedGapAfter=" + this.f2683d + ", mGapPerSpan=" + Arrays.toString(this.f2682c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f2680a);
                parcel.writeInt(this.f2681b);
                parcel.writeInt(this.f2683d ? 1 : 0);
                int[] iArr = this.f2682c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f2682c);
            }
        }

        /* renamed from: a */
        public FullSpanItem m37093a(int i, int i2, int i3, boolean z) {
            FullSpanItem fullSpanItem;
            int i4;
            List<FullSpanItem> list = this.f2679b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size && (i4 = (fullSpanItem = this.f2679b.get(i5)).f2680a) < i2; i5++) {
                if (i4 >= i && (i3 == 0 || fullSpanItem.f2681b == i3 || (z && fullSpanItem.f2683d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m37096a() {
            int[] iArr = this.f2678a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2679b = null;
        }

        /* renamed from: a */
        public void m37095a(int i) {
            int[] iArr = this.f2678a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f2678a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[m37082g(i)];
                this.f2678a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2678a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* renamed from: a */
        public void m37094a(int i, int i2) {
            int[] iArr = this.f2678a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                m37095a(i3);
                int[] iArr2 = this.f2678a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.f2678a, i, i3, -1);
                m37087c(i, i2);
            }
        }

        /* renamed from: a */
        public void m37092a(int i, C0532c cVar) {
            m37095a(i);
            this.f2678a[i] = cVar.f2706e;
        }

        /* renamed from: a */
        public void m37091a(FullSpanItem fullSpanItem) {
            if (this.f2679b == null) {
                this.f2679b = new ArrayList();
            }
            int size = this.f2679b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f2679b.get(i);
                if (fullSpanItem2.f2680a == fullSpanItem.f2680a) {
                    this.f2679b.remove(i);
                }
                if (fullSpanItem2.f2680a >= fullSpanItem.f2680a) {
                    this.f2679b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f2679b.add(fullSpanItem);
        }

        /* renamed from: b */
        public int m37090b(int i) {
            List<FullSpanItem> list = this.f2679b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f2679b.get(size).f2680a >= i) {
                        this.f2679b.remove(size);
                    }
                }
            }
            return m37084e(i);
        }

        /* renamed from: b */
        public void m37089b(int i, int i2) {
            int[] iArr = this.f2678a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                m37095a(i3);
                int[] iArr2 = this.f2678a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.f2678a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                m37085d(i, i2);
            }
        }

        /* renamed from: c */
        public FullSpanItem m37088c(int i) {
            List<FullSpanItem> list = this.f2679b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2679b.get(size);
                if (fullSpanItem.f2680a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: c */
        public final void m37087c(int i, int i2) {
            List<FullSpanItem> list = this.f2679b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f2679b.get(size);
                    int i3 = fullSpanItem.f2680a;
                    if (i3 >= i) {
                        fullSpanItem.f2680a = i3 + i2;
                    }
                }
            }
        }

        /* renamed from: d */
        public int m37086d(int i) {
            int[] iArr = this.f2678a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: d */
        public final void m37085d(int i, int i2) {
            List<FullSpanItem> list = this.f2679b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f2679b.get(size);
                    int i3 = fullSpanItem.f2680a;
                    if (i3 >= i) {
                        if (i3 < i + i2) {
                            this.f2679b.remove(size);
                        } else {
                            fullSpanItem.f2680a = i3 - i2;
                        }
                    }
                }
            }
        }

        /* renamed from: e */
        public int m37084e(int i) {
            int[] iArr = this.f2678a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int f = m37083f(i);
            if (f == -1) {
                int[] iArr2 = this.f2678a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f2678a.length;
            }
            int i2 = f + 1;
            Arrays.fill(this.f2678a, i, i2, -1);
            return i2;
        }

        /* renamed from: f */
        public final int m37083f(int i) {
            if (this.f2679b == null) {
                return -1;
            }
            FullSpanItem c = m37088c(i);
            if (c != null) {
                this.f2679b.remove(c);
            }
            int size = this.f2679b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f2679b.get(i2).f2680a >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f2679b.get(i2);
            this.f2679b.remove(i2);
            return fullSpanItem.f2680a;
        }

        /* renamed from: g */
        public int m37082g(int i) {
            int length = this.f2678a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0529a();

        /* renamed from: a */
        public int f2684a;

        /* renamed from: b */
        public int f2685b;

        /* renamed from: c */
        public int f2686c;

        /* renamed from: d */
        public int[] f2687d;

        /* renamed from: e */
        public int f2688e;

        /* renamed from: f */
        public int[] f2689f;

        /* renamed from: g */
        public List<LazySpanLookup.FullSpanItem> f2690g;

        /* renamed from: h */
        public boolean f2691h;

        /* renamed from: i */
        public boolean f2692i;

        /* renamed from: j */
        public boolean f2693j;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$a.class */
        public static final class C0529a implements Parcelable.Creator<SavedState> {
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
            this.f2684a = parcel.readInt();
            this.f2685b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f2686c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f2687d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f2688e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f2689f = iArr2;
                parcel.readIntArray(iArr2);
            }
            boolean z = false;
            this.f2691h = parcel.readInt() == 1;
            this.f2692i = parcel.readInt() == 1;
            this.f2693j = parcel.readInt() == 1 ? true : z;
            this.f2690g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f2686c = savedState.f2686c;
            this.f2684a = savedState.f2684a;
            this.f2685b = savedState.f2685b;
            this.f2687d = savedState.f2687d;
            this.f2688e = savedState.f2688e;
            this.f2689f = savedState.f2689f;
            this.f2691h = savedState.f2691h;
            this.f2692i = savedState.f2692i;
            this.f2693j = savedState.f2693j;
            this.f2690g = savedState.f2690g;
        }

        /* renamed from: a */
        public void m37080a() {
            this.f2687d = null;
            this.f2686c = 0;
            this.f2688e = 0;
            this.f2689f = null;
            this.f2690g = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2684a);
            parcel.writeInt(this.f2685b);
            parcel.writeInt(this.f2686c);
            if (this.f2686c > 0) {
                parcel.writeIntArray(this.f2687d);
            }
            parcel.writeInt(this.f2688e);
            if (this.f2688e > 0) {
                parcel.writeIntArray(this.f2689f);
            }
            parcel.writeInt(this.f2691h ? 1 : 0);
            parcel.writeInt(this.f2692i ? 1 : 0);
            parcel.writeInt(this.f2693j ? 1 : 0);
            parcel.writeList(this.f2690g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    public class RunnableC0530a implements Runnable {
        public RunnableC0530a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m37190F();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public class C0531b {

        /* renamed from: a */
        public int f2695a;

        /* renamed from: b */
        public int f2696b;

        /* renamed from: c */
        public boolean f2697c;

        /* renamed from: d */
        public boolean f2698d;

        /* renamed from: e */
        public boolean f2699e;

        /* renamed from: f */
        public int[] f2700f;

        public C0531b() {
            m37076b();
        }

        /* renamed from: a */
        public void m37079a() {
            this.f2696b = this.f2697c ? StaggeredGridLayoutManager.this.f2670u.mo31598b() : StaggeredGridLayoutManager.this.f2670u.mo31590f();
        }

        /* renamed from: a */
        public void m37078a(int i) {
            if (this.f2697c) {
                this.f2696b = StaggeredGridLayoutManager.this.f2670u.mo31598b() - i;
            } else {
                this.f2696b = StaggeredGridLayoutManager.this.f2670u.mo31590f() + i;
            }
        }

        /* renamed from: a */
        public void m37077a(C0532c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f2700f;
            if (iArr == null || iArr.length < length) {
                this.f2700f = new int[StaggeredGridLayoutManager.this.f2669t.length];
            }
            for (int i = 0; i < length; i++) {
                this.f2700f[i] = cVarArr[i].m37067b(Integer.MIN_VALUE);
            }
        }

        /* renamed from: b */
        public void m37076b() {
            this.f2695a = -1;
            this.f2696b = Integer.MIN_VALUE;
            this.f2697c = false;
            this.f2698d = false;
            this.f2699e = false;
            int[] iArr = this.f2700f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
    public class C0532c {

        /* renamed from: a */
        public ArrayList<View> f2702a = new ArrayList<>();

        /* renamed from: b */
        public int f2703b = Integer.MIN_VALUE;

        /* renamed from: c */
        public int f2704c = Integer.MIN_VALUE;

        /* renamed from: d */
        public int f2705d = 0;

        /* renamed from: e */
        public final int f2706e;

        public C0532c(int i) {
            this.f2706e = i;
        }

        /* renamed from: a */
        public int m37074a(int i) {
            int i2 = this.f2704c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2702a.size() == 0) {
                return i;
            }
            m37075a();
            return this.f2704c;
        }

        /* renamed from: a */
        public int m37072a(int i, int i2, boolean z) {
            return m37071a(i, i2, false, false, z);
        }

        /* renamed from: a */
        public int m37071a(int i, int i2, boolean z, boolean z2, boolean z3) {
            int f = StaggeredGridLayoutManager.this.f2670u.mo31590f();
            int b = StaggeredGridLayoutManager.this.f2670u.mo31598b();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f2702a.get(i);
                int d = StaggeredGridLayoutManager.this.f2670u.mo31593d(view);
                int a = StaggeredGridLayoutManager.this.f2670u.mo31599a(view);
                boolean z4 = false;
                boolean z5 = !z3 ? d < b : d <= b;
                if (!z3 ? a > f : a >= f) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.m37281l(view);
                        }
                        if (d < f || a > b) {
                            return StaggeredGridLayoutManager.this.m37281l(view);
                        }
                    } else if (d >= f && a <= b) {
                        return StaggeredGridLayoutManager.this.m37281l(view);
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: a */
        public View m37073a(int i, int i2) {
            View view;
            View view2 = null;
            View view3 = null;
            if (i2 != -1) {
                int size = this.f2702a.size() - 1;
                while (true) {
                    view = view2;
                    if (size < 0) {
                        break;
                    }
                    View view4 = this.f2702a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f2675z) {
                        view = view2;
                        if (staggeredGridLayoutManager.m37281l(view4) >= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager2.f2675z && staggeredGridLayoutManager2.m37281l(view4) <= i) {
                        view = view2;
                        break;
                    }
                    view = view2;
                    if (!view4.hasFocusable()) {
                        break;
                    }
                    size--;
                    view2 = view4;
                }
            } else {
                int size2 = this.f2702a.size();
                int i3 = 0;
                while (true) {
                    view = view3;
                    if (i3 >= size2) {
                        break;
                    }
                    View view5 = this.f2702a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f2675z) {
                        view = view3;
                        if (staggeredGridLayoutManager3.m37281l(view5) <= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager4.f2675z && staggeredGridLayoutManager4.m37281l(view5) >= i) {
                        view = view3;
                        break;
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

        /* renamed from: a */
        public void m37075a() {
            LazySpanLookup.FullSpanItem c;
            ArrayList<View> arrayList = this.f2702a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams b = m37066b(view);
            this.f2704c = StaggeredGridLayoutManager.this.f2670u.mo31599a(view);
            if (b.f2677f && (c = StaggeredGridLayoutManager.this.f2656E.m37088c(b.m37407a())) != null && c.f2681b == 1) {
                this.f2704c += c.m37081a(this.f2706e);
            }
        }

        /* renamed from: a */
        public void m37070a(View view) {
            LayoutParams b = m37066b(view);
            b.f2676e = this;
            this.f2702a.add(view);
            this.f2704c = Integer.MIN_VALUE;
            if (this.f2702a.size() == 1) {
                this.f2703b = Integer.MIN_VALUE;
            }
            if (b.m37405c() || b.m37406b()) {
                this.f2705d += StaggeredGridLayoutManager.this.f2670u.mo31597b(view);
            }
        }

        /* renamed from: a */
        public void m37069a(boolean z, int i) {
            int a = z ? m37074a(Integer.MIN_VALUE) : m37067b(Integer.MIN_VALUE);
            m37065c();
            if (a != Integer.MIN_VALUE) {
                if (z && a < StaggeredGridLayoutManager.this.f2670u.mo31598b()) {
                    return;
                }
                if (z || a <= StaggeredGridLayoutManager.this.f2670u.mo31590f()) {
                    int i2 = a;
                    if (i != Integer.MIN_VALUE) {
                        i2 = a + i;
                    }
                    this.f2704c = i2;
                    this.f2703b = i2;
                }
            }
        }

        /* renamed from: b */
        public int m37067b(int i) {
            int i2 = this.f2703b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2702a.size() == 0) {
                return i;
            }
            m37068b();
            return this.f2703b;
        }

        /* renamed from: b */
        public LayoutParams m37066b(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        /* renamed from: b */
        public void m37068b() {
            LazySpanLookup.FullSpanItem c;
            View view = this.f2702a.get(0);
            LayoutParams b = m37066b(view);
            this.f2703b = StaggeredGridLayoutManager.this.f2670u.mo31593d(view);
            if (b.f2677f && (c = StaggeredGridLayoutManager.this.f2656E.m37088c(b.m37407a())) != null && c.f2681b == -1) {
                this.f2703b -= c.m37081a(this.f2706e);
            }
        }

        /* renamed from: c */
        public void m37065c() {
            this.f2702a.clear();
            m37056i();
            this.f2705d = 0;
        }

        /* renamed from: c */
        public void m37064c(int i) {
            int i2 = this.f2703b;
            if (i2 != Integer.MIN_VALUE) {
                this.f2703b = i2 + i;
            }
            int i3 = this.f2704c;
            if (i3 != Integer.MIN_VALUE) {
                this.f2704c = i3 + i;
            }
        }

        /* renamed from: c */
        public void m37063c(View view) {
            LayoutParams b = m37066b(view);
            b.f2676e = this;
            this.f2702a.add(0, view);
            this.f2703b = Integer.MIN_VALUE;
            if (this.f2702a.size() == 1) {
                this.f2704c = Integer.MIN_VALUE;
            }
            if (b.m37405c() || b.m37406b()) {
                this.f2705d += StaggeredGridLayoutManager.this.f2670u.mo31597b(view);
            }
        }

        /* renamed from: d */
        public int m37062d() {
            return StaggeredGridLayoutManager.this.f2675z ? m37072a(this.f2702a.size() - 1, -1, true) : m37072a(0, this.f2702a.size(), true);
        }

        /* renamed from: d */
        public void m37061d(int i) {
            this.f2703b = i;
            this.f2704c = i;
        }

        /* renamed from: e */
        public int m37060e() {
            return StaggeredGridLayoutManager.this.f2675z ? m37072a(0, this.f2702a.size(), true) : m37072a(this.f2702a.size() - 1, -1, true);
        }

        /* renamed from: f */
        public int m37059f() {
            return this.f2705d;
        }

        /* renamed from: g */
        public int m37058g() {
            int i = this.f2704c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m37075a();
            return this.f2704c;
        }

        /* renamed from: h */
        public int m37057h() {
            int i = this.f2703b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m37068b();
            return this.f2703b;
        }

        /* renamed from: i */
        public void m37056i() {
            this.f2703b = Integer.MIN_VALUE;
            this.f2704c = Integer.MIN_VALUE;
        }

        /* renamed from: j */
        public void m37055j() {
            int size = this.f2702a.size();
            View remove = this.f2702a.remove(size - 1);
            LayoutParams b = m37066b(remove);
            b.f2676e = null;
            if (b.m37405c() || b.m37406b()) {
                this.f2705d -= StaggeredGridLayoutManager.this.f2670u.mo31597b(remove);
            }
            if (size == 1) {
                this.f2703b = Integer.MIN_VALUE;
            }
            this.f2704c = Integer.MIN_VALUE;
        }

        /* renamed from: k */
        public void m37054k() {
            View remove = this.f2702a.remove(0);
            LayoutParams b = m37066b(remove);
            b.f2676e = null;
            if (this.f2702a.size() == 0) {
                this.f2704c = Integer.MIN_VALUE;
            }
            if (b.m37405c() || b.m37406b()) {
                this.f2705d -= StaggeredGridLayoutManager.this.f2670u.mo31597b(remove);
            }
            this.f2703b = Integer.MIN_VALUE;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0511o.C0515d a = RecyclerView.AbstractC0511o.m37354a(context, attributeSet, i, i2);
        m37103t(a.f2615a);
        m37101u(a.f2616b);
        m37132c(a.f2617c);
        m37189G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: C */
    public boolean mo37193C() {
        return this.f2660I == null;
    }

    /* renamed from: D */
    public boolean m37192D() {
        int a = this.f2669t[0].m37074a(Integer.MIN_VALUE);
        for (int i = 1; i < this.f2668s; i++) {
            if (this.f2669t[i].m37074a(Integer.MIN_VALUE) != a) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: E */
    public boolean m37191E() {
        int b = this.f2669t[0].m37067b(Integer.MIN_VALUE);
        for (int i = 1; i < this.f2668s; i++) {
            if (this.f2669t[i].m37067b(Integer.MIN_VALUE) != b) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: F */
    public boolean m37190F() {
        int i;
        int i2;
        if (m37299e() == 0 || this.f2657F == 0 || !m37270t()) {
            return false;
        }
        if (this.f2652A) {
            i2 = m37186J();
            i = m37187I();
        } else {
            i2 = m37187I();
            i = m37186J();
        }
        if (i2 == 0 && m37185K() != null) {
            this.f2656E.m37096a();
            m37266z();
            m37267y();
            return true;
        } else if (!this.f2664M) {
            return false;
        } else {
            int i3 = this.f2652A ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem a = this.f2656E.m37093a(i2, i4, i3, true);
            if (a == null) {
                this.f2664M = false;
                this.f2656E.m37090b(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem a2 = this.f2656E.m37093a(i2, a.f2680a, i3 * (-1), true);
            if (a2 == null) {
                this.f2656E.m37090b(a.f2680a);
            } else {
                this.f2656E.m37090b(a2.f2680a + 1);
            }
            m37266z();
            m37267y();
            return true;
        }
    }

    /* renamed from: G */
    public final void m37189G() {
        this.f2670u = AbstractC1933h.m31605a(this, this.f2672w);
        this.f2671v = AbstractC1933h.m31605a(this, 1 - this.f2672w);
    }

    /* renamed from: H */
    public int m37188H() {
        View a = this.f2652A ? m37151a(true) : m37140b(true);
        return a == null ? -1 : m37281l(a);
    }

    /* renamed from: I */
    public int m37187I() {
        int i = 0;
        if (m37299e() != 0) {
            i = m37281l(m37313c(0));
        }
        return i;
    }

    /* renamed from: J */
    public int m37186J() {
        int e = m37299e();
        return e == 0 ? 0 : m37281l(m37313c(e - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e4, code lost:
        if (r0 == r0) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010b, code lost:
        if (r0 == r0) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010e, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0113, code lost:
        r6 = false;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m37185K() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m37185K():android.view.View");
    }

    /* renamed from: L */
    public void m37184L() {
        this.f2656E.m37096a();
        m37267y();
    }

    /* renamed from: M */
    public boolean m37183M() {
        boolean z = true;
        if (m37286j() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: N */
    public final void m37182N() {
        if (this.f2671v.mo31594d() != 1073741824) {
            float f = 0.0f;
            int e = m37299e();
            for (int i = 0; i < e; i++) {
                View c = m37313c(i);
                float b = this.f2671v.mo31597b(c);
                if (b >= f) {
                    float f2 = b;
                    if (((LayoutParams) c.getLayoutParams()).m37097f()) {
                        f2 = (b * 1.0f) / this.f2668s;
                    }
                    f = Math.max(f, f2);
                }
            }
            int i2 = this.f2673x;
            int round = Math.round(f * this.f2668s);
            int i3 = round;
            if (this.f2671v.mo31594d() == Integer.MIN_VALUE) {
                i3 = Math.min(round, this.f2671v.mo31588g());
            }
            m37100v(i3);
            if (this.f2673x != i2) {
                for (int i4 = 0; i4 < e; i4++) {
                    View c2 = m37313c(i4);
                    LayoutParams layoutParams = (LayoutParams) c2.getLayoutParams();
                    if (!layoutParams.f2677f) {
                        if (!m37183M() || this.f2672w != 1) {
                            int i5 = layoutParams.f2676e.f2706e;
                            int i6 = this.f2673x * i5;
                            int i7 = i5 * i2;
                            if (this.f2672w == 1) {
                                c2.offsetLeftAndRight(i6 - i7);
                            } else {
                                c2.offsetTopAndBottom(i6 - i7);
                            }
                        } else {
                            int i8 = this.f2668s;
                            int i9 = layoutParams.f2676e.f2706e;
                            c2.offsetLeftAndRight(((-((i8 - 1) - i9)) * this.f2673x) - ((-((i8 - 1) - i9)) * i2));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: O */
    public final void m37181O() {
        if (this.f2672w == 1 || !m37183M()) {
            this.f2652A = this.f2675z;
        } else {
            this.f2652A = !this.f2675z;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37178a(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return m37137c(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37165a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return this.f2672w == 1 ? this.f2668s : super.mo37165a(uVar, yVar);
    }

    /* renamed from: a */
    public final int m37161a(RecyclerView.C0522u uVar, C1930f fVar, RecyclerView.C0526y yVar) {
        C0532c cVar;
        int i;
        int i2;
        int i3;
        int i4;
        this.f2653B.set(0, this.f2668s, true);
        int i5 = this.f2674y.f7627i ? fVar.f7623e == 1 ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : Integer.MIN_VALUE : fVar.f7623e == 1 ? fVar.f7625g + fVar.f7620b : fVar.f7624f - fVar.f7620b;
        m37126e(fVar.f7623e, i5);
        int b = this.f2652A ? this.f2670u.mo31598b() : this.f2670u.mo31590f();
        boolean z = false;
        while (fVar.m31615a(yVar) && (this.f2674y.f7627i || !this.f2653B.isEmpty())) {
            View a = fVar.m31616a(uVar);
            LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
            int a2 = layoutParams.m37407a();
            int d = this.f2656E.m37086d(a2);
            boolean z2 = d == -1;
            if (z2) {
                cVar = layoutParams.f2677f ? this.f2669t[0] : m37153a(fVar);
                this.f2656E.m37092a(a2, cVar);
            } else {
                cVar = this.f2669t[d];
            }
            layoutParams.f2676e = cVar;
            if (fVar.f7623e == 1) {
                m37319b(a);
            } else {
                m37318b(a, 0);
            }
            m37170a(a, layoutParams, false);
            if (fVar.f7623e == 1) {
                int n = layoutParams.f2677f ? m37111n(b) : cVar.m37074a(b);
                int b2 = this.f2670u.mo31597b(a);
                if (z2 && layoutParams.f2677f) {
                    LazySpanLookup.FullSpanItem j = m37116j(n);
                    j.f2681b = -1;
                    j.f2680a = a2;
                    this.f2656E.m37091a(j);
                }
                i = b2 + n;
                i2 = n;
            } else {
                int q = layoutParams.f2677f ? m37107q(b) : cVar.m37067b(b);
                i2 = q - this.f2670u.mo31597b(a);
                if (z2 && layoutParams.f2677f) {
                    LazySpanLookup.FullSpanItem k = m37114k(q);
                    k.f2681b = 1;
                    k.f2680a = a2;
                    this.f2656E.m37091a(k);
                }
                i = q;
            }
            if (layoutParams.f2677f && fVar.f7622d == -1) {
                if (z2) {
                    this.f2664M = true;
                } else {
                    if (!(fVar.f7623e == 1 ? m37192D() : m37191E())) {
                        LazySpanLookup.FullSpanItem c = this.f2656E.m37088c(a2);
                        if (c != null) {
                            c.f2683d = true;
                        }
                        this.f2664M = true;
                    }
                }
            }
            m37171a(a, layoutParams, fVar);
            if (!m37183M() || this.f2672w != 1) {
                int f = layoutParams.f2677f ? this.f2671v.mo31590f() : (cVar.f2706e * this.f2673x) + this.f2671v.mo31590f();
                i3 = this.f2671v.mo31597b(a) + f;
                i4 = f;
            } else {
                int b3 = layoutParams.f2677f ? this.f2671v.mo31598b() : this.f2671v.mo31598b() - (((this.f2668s - 1) - cVar.f2706e) * this.f2673x);
                i4 = b3 - this.f2671v.mo31597b(a);
                i3 = b3;
            }
            if (this.f2672w == 1) {
                m37350a(a, i4, i2, i3, i);
            } else {
                m37350a(a, i2, i4, i, i3);
            }
            if (layoutParams.f2677f) {
                m37126e(this.f2674y.f7623e, i5);
            } else {
                m37154a(cVar, this.f2674y.f7623e, i5);
            }
            m37162a(uVar, this.f2674y);
            if (this.f2674y.f7626h && a.hasFocusable()) {
                if (layoutParams.f2677f) {
                    this.f2653B.clear();
                } else {
                    this.f2653B.set(cVar.f2706e, false);
                }
            }
            z = true;
        }
        if (!z) {
            m37162a(uVar, this.f2674y);
        }
        int f2 = this.f2674y.f7623e == -1 ? this.f2670u.mo31590f() - m37107q(this.f2670u.mo31590f()) : m37111n(this.f2670u.mo31598b()) - this.f2670u.mo31598b();
        return f2 > 0 ? Math.min(fVar.f7620b, f2) : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37160a(RecyclerView.C0526y yVar) {
        return m37119h(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public View mo37172a(View view, int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        View c;
        View a;
        if (m37299e() == 0 || (c = m37311c(view)) == null) {
            return null;
        }
        m37181O();
        int i2 = m37118i(i);
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) c.getLayoutParams();
        boolean z = layoutParams.f2677f;
        C0532c cVar = layoutParams.f2676e;
        int J = i2 == 1 ? m37186J() : m37187I();
        m37148b(J, yVar);
        m37104s(i2);
        C1930f fVar = this.f2674y;
        fVar.f7621c = fVar.f7622d + J;
        fVar.f7620b = (int) (this.f2670u.mo31588g() * 0.33333334f);
        C1930f fVar2 = this.f2674y;
        fVar2.f7626h = true;
        fVar2.f7619a = false;
        m37161a(uVar, fVar2, yVar);
        this.f2658G = this.f2652A;
        if (!(z || (a = cVar.m37073a(J, i2)) == null || a == c)) {
            return a;
        }
        if (m37105r(i2)) {
            for (int i3 = this.f2668s - 1; i3 >= 0; i3--) {
                View a2 = this.f2669t[i3].m37073a(J, i2);
                if (!(a2 == null || a2 == c)) {
                    return a2;
                }
            }
        } else {
            for (int i4 = 0; i4 < this.f2668s; i4++) {
                View a3 = this.f2669t[i4].m37073a(J, i2);
                if (!(a3 == null || a3 == c)) {
                    return a3;
                }
            }
        }
        boolean z2 = (this.f2675z ^ true) == (i2 == -1);
        if (!z) {
            View b = mo37322b(z2 ? cVar.m37062d() : cVar.m37060e());
            if (!(b == null || b == c)) {
                return b;
            }
        }
        if (m37105r(i2)) {
            for (int i5 = this.f2668s - 1; i5 >= 0; i5--) {
                if (i5 != cVar.f2706e) {
                    View b2 = mo37322b(z2 ? this.f2669t[i5].m37062d() : this.f2669t[i5].m37060e());
                    if (!(b2 == null || b2 == c)) {
                        return b2;
                    }
                }
            }
            return null;
        }
        for (int i6 = 0; i6 < this.f2668s; i6++) {
            View b3 = mo37322b(z2 ? this.f2669t[i6].m37062d() : this.f2669t[i6].m37060e());
            if (!(b3 == null || b3 == c)) {
                return b3;
            }
        }
        return null;
    }

    /* renamed from: a */
    public View m37151a(boolean z) {
        int f = this.f2670u.mo31590f();
        int b = this.f2670u.mo31598b();
        View view = null;
        for (int e = m37299e() - 1; e >= 0; e--) {
            View c = m37313c(e);
            int d = this.f2670u.mo31593d(c);
            int a = this.f2670u.mo31599a(c);
            view = view;
            if (a > f) {
                if (d >= b) {
                    view = view;
                } else if (a <= b || !z) {
                    return c;
                } else {
                    view = view;
                    if (view == null) {
                        view = c;
                    }
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public RecyclerView.LayoutParams mo37176a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public RecyclerView.LayoutParams mo37169a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: a */
    public final C0532c m37153a(C1930f fVar) {
        int i;
        int i2;
        int i3 = -1;
        if (m37105r(fVar.f7623e)) {
            i2 = this.f2668s - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.f2668s;
            i = 1;
        }
        int i4 = fVar.f7623e;
        C0532c cVar = null;
        C0532c cVar2 = null;
        if (i4 == 1) {
            int i5 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            int f = this.f2670u.mo31590f();
            while (i2 != i3) {
                C0532c cVar3 = this.f2669t[i2];
                int a = cVar3.m37074a(f);
                i5 = i5;
                if (a < i5) {
                    cVar2 = cVar3;
                    i5 = a;
                }
                i2 += i;
            }
            return cVar2;
        }
        int i6 = Integer.MIN_VALUE;
        int b = this.f2670u.mo31598b();
        for (int i7 = i2; i7 != i3; i7 += i) {
            C0532c cVar4 = this.f2669t[i7];
            int b2 = cVar4.m37067b(b);
            i6 = i6;
            if (b2 > i6) {
                cVar = cVar4;
                i6 = b2;
            }
        }
        return cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37179a(int i, int i2, RecyclerView.C0526y yVar, RecyclerView.AbstractC0511o.AbstractC0514c cVar) {
        int i3;
        int i4;
        if (this.f2672w != 0) {
            i = i2;
        }
        if (!(m37299e() == 0 || i == 0)) {
            m37177a(i, yVar);
            int[] iArr = this.f2666O;
            if (iArr == null || iArr.length < this.f2668s) {
                this.f2666O = new int[this.f2668s];
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.f2668s; i6++) {
                C1930f fVar = this.f2674y;
                if (fVar.f7622d == -1) {
                    i4 = fVar.f7624f;
                    i3 = this.f2669t[i6].m37067b(i4);
                } else {
                    i4 = this.f2669t[i6].m37074a(fVar.f7625g);
                    i3 = this.f2674y.f7625g;
                }
                int i7 = i4 - i3;
                i5 = i5;
                if (i7 >= 0) {
                    this.f2666O[i5] = i7;
                    i5++;
                }
            }
            Arrays.sort(this.f2666O, 0, i5);
            for (int i8 = 0; i8 < i5 && this.f2674y.m31615a(yVar); i8++) {
                cVar.mo31620a(this.f2674y.f7621c, this.f2666O[i8]);
                C1930f fVar2 = this.f2674y;
                fVar2.f7621c += fVar2.f7622d;
            }
        }
    }

    /* renamed from: a */
    public void m37177a(int i, RecyclerView.C0526y yVar) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m37186J();
            i2 = 1;
        } else {
            i3 = m37187I();
            i2 = -1;
        }
        this.f2674y.f7619a = true;
        m37148b(i3, yVar);
        m37104s(i2);
        C1930f fVar = this.f2674y;
        fVar.f7621c = i3 + fVar.f7622d;
        fVar.f7620b = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37175a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int n = m37278n() + m37276o();
        int p = m37274p() + m37280m();
        if (this.f2672w == 1) {
            i4 = RecyclerView.AbstractC0511o.m37360a(i2, rect.height() + p, m37284k());
            i3 = RecyclerView.AbstractC0511o.m37360a(i, (this.f2673x * this.f2668s) + n, m37282l());
        } else {
            i3 = RecyclerView.AbstractC0511o.m37360a(i, rect.width() + n, m37282l());
            i4 = RecyclerView.AbstractC0511o.m37360a(i2, (this.f2673x * this.f2668s) + p, m37284k());
        }
        m37312c(i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37174a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f2660I = (SavedState) parcelable;
            m37267y();
        }
    }

    /* renamed from: a */
    public final void m37173a(View view, int i, int i2, boolean z) {
        m37345a(view, this.f2662K);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.f2662K;
        int d = m37130d(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.f2662K;
        int d2 = m37130d(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z ? m37317b(view, d, d2, layoutParams) : m37349a(view, d, d2, layoutParams)) {
            view.measure(d, d2);
        }
    }

    /* renamed from: a */
    public final void m37171a(View view, LayoutParams layoutParams, C1930f fVar) {
        if (fVar.f7623e == 1) {
            if (layoutParams.f2677f) {
                m37108p(view);
            } else {
                layoutParams.f2676e.m37070a(view);
            }
        } else if (layoutParams.f2677f) {
            m37106q(view);
        } else {
            layoutParams.f2676e.m37063c(view);
        }
    }

    /* renamed from: a */
    public final void m37170a(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.f2677f) {
            if (this.f2672w == 1) {
                m37173a(view, this.f2661J, RecyclerView.AbstractC0511o.m37359a(m37290h(), m37288i(), m37274p() + m37280m(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
            } else {
                m37173a(view, RecyclerView.AbstractC0511o.m37359a(m37273q(), m37272r(), m37278n() + m37276o(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.f2661J, z);
            }
        } else if (this.f2672w == 1) {
            m37173a(view, RecyclerView.AbstractC0511o.m37359a(this.f2673x, m37272r(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.AbstractC0511o.m37359a(m37290h(), m37288i(), m37274p() + m37280m(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
        } else {
            m37173a(view, RecyclerView.AbstractC0511o.m37359a(m37273q(), m37272r(), m37278n() + m37276o(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.AbstractC0511o.m37359a(this.f2673x, m37288i(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37168a(AccessibilityEvent accessibilityEvent) {
        super.mo37168a(accessibilityEvent);
        if (m37299e() > 0) {
            View b = m37140b(false);
            View a = m37151a(false);
            if (b != null && a != null) {
                int l = m37281l(b);
                int l2 = m37281l(a);
                if (l < l2) {
                    accessibilityEvent.setFromIndex(l);
                    accessibilityEvent.setToIndex(l2);
                    return;
                }
                accessibilityEvent.setFromIndex(l2);
                accessibilityEvent.setToIndex(l);
            }
        }
    }

    /* renamed from: a */
    public final void m37166a(RecyclerView.C0522u uVar, int i) {
        for (int e = m37299e() - 1; e >= 0; e--) {
            View c = m37313c(e);
            if (this.f2670u.mo31593d(c) >= i && this.f2670u.mo31589f(c) >= i) {
                LayoutParams layoutParams = (LayoutParams) c.getLayoutParams();
                if (layoutParams.f2677f) {
                    for (int i2 = 0; i2 < this.f2668s; i2++) {
                        if (this.f2669t[i2].f2702a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.f2668s; i3++) {
                        this.f2669t[i3].m37055j();
                    }
                } else if (layoutParams.f2676e.f2702a.size() != 1) {
                    layoutParams.f2676e.m37055j();
                } else {
                    return;
                }
                m37344a(c, uVar);
            } else {
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37164a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, View view, C0970c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m37343a(view, cVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.f2672w == 0) {
            cVar.m35362b(C0970c.C0973c.m35313a(layoutParams2.m37098e(), layoutParams2.f2677f ? this.f2668s : 1, -1, -1, false, false));
        } else {
            cVar.m35362b(C0970c.C0973c.m35313a(-1, -1, layoutParams2.m37098e(), layoutParams2.f2677f ? this.f2668s : 1, false, false));
        }
    }

    /* renamed from: a */
    public final void m37163a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, boolean z) {
        int b;
        int n = m37111n(Integer.MIN_VALUE);
        if (n != Integer.MIN_VALUE && (b = this.f2670u.mo31598b() - n) > 0) {
            int i = b - (-m37137c(-b, uVar, yVar));
            if (z && i > 0) {
                this.f2670u.mo31600a(i);
            }
        }
    }

    /* renamed from: a */
    public final void m37162a(RecyclerView.C0522u uVar, C1930f fVar) {
        if (fVar.f7619a && !fVar.f7627i) {
            if (fVar.f7620b == 0) {
                if (fVar.f7623e == -1) {
                    m37166a(uVar, fVar.f7625g);
                } else {
                    m37147b(uVar, fVar.f7624f);
                }
            } else if (fVar.f7623e == -1) {
                int i = fVar.f7624f;
                int o = i - m37110o(i);
                m37166a(uVar, o < 0 ? fVar.f7625g : fVar.f7625g - Math.min(o, fVar.f7620b));
            } else {
                int p = m37109p(fVar.f7625g) - fVar.f7625g;
                m37147b(uVar, p < 0 ? fVar.f7624f : Math.min(p, fVar.f7620b) + fVar.f7624f);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37158a(RecyclerView recyclerView, int i, int i2, int i3) {
        m37138c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37157a(RecyclerView recyclerView, int i, int i2, Object obj) {
        m37138c(i, i2, 4);
    }

    /* renamed from: a */
    public final void m37156a(C0531b bVar) {
        SavedState savedState = this.f2660I;
        int i = savedState.f2686c;
        if (i > 0) {
            if (i == this.f2668s) {
                for (int i2 = 0; i2 < this.f2668s; i2++) {
                    this.f2669t[i2].m37065c();
                    SavedState savedState2 = this.f2660I;
                    int i3 = savedState2.f2687d[i2];
                    int i4 = i3;
                    if (i3 != Integer.MIN_VALUE) {
                        i4 = i3 + (savedState2.f2692i ? this.f2670u.mo31598b() : this.f2670u.mo31590f());
                    }
                    this.f2669t[i2].m37061d(i4);
                }
            } else {
                savedState.m37080a();
                SavedState savedState3 = this.f2660I;
                savedState3.f2684a = savedState3.f2685b;
            }
        }
        SavedState savedState4 = this.f2660I;
        this.f2659H = savedState4.f2693j;
        m37132c(savedState4.f2691h);
        m37181O();
        SavedState savedState5 = this.f2660I;
        int i5 = savedState5.f2684a;
        if (i5 != -1) {
            this.f2654C = i5;
            bVar.f2697c = savedState5.f2692i;
        } else {
            bVar.f2697c = this.f2652A;
        }
        SavedState savedState6 = this.f2660I;
        if (savedState6.f2688e > 1) {
            LazySpanLookup lazySpanLookup = this.f2656E;
            lazySpanLookup.f2678a = savedState6.f2689f;
            lazySpanLookup.f2679b = savedState6.f2690g;
        }
    }

    /* renamed from: a */
    public final void m37154a(C0532c cVar, int i, int i2) {
        int f = cVar.m37059f();
        if (i == -1) {
            if (cVar.m37057h() + f <= i2) {
                this.f2653B.set(cVar.f2706e, false);
            }
        } else if (cVar.m37058g() - f >= i2) {
            this.f2653B.set(cVar.f2706e, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37152a(String str) {
        if (this.f2660I == null) {
            super.mo37152a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public boolean mo37180a() {
        return this.f2672w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public boolean mo37167a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: a */
    public final boolean m37159a(RecyclerView.C0526y yVar, C0531b bVar) {
        bVar.f2695a = this.f2658G ? m37112m(yVar.m37201a()) : m37113l(yVar.m37201a());
        bVar.f2696b = Integer.MIN_VALUE;
        return true;
    }

    /* renamed from: a */
    public final boolean m37155a(C0532c cVar) {
        if (this.f2652A) {
            if (cVar.m37058g() >= this.f2670u.mo31598b()) {
                return false;
            }
            ArrayList<View> arrayList = cVar.f2702a;
            return !cVar.m37066b(arrayList.get(arrayList.size() - 1)).f2677f;
        } else if (cVar.m37057h() > this.f2670u.mo31590f()) {
            return !cVar.m37066b(cVar.f2702a.get(0)).f2677f;
        } else {
            return false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37149b(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return m37137c(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37146b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return this.f2672w == 0 ? this.f2668s : super.mo37146b(uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37144b(RecyclerView.C0526y yVar) {
        return m37117i(yVar);
    }

    /* renamed from: b */
    public View m37140b(boolean z) {
        int f = this.f2670u.mo31590f();
        int b = this.f2670u.mo31598b();
        int e = m37299e();
        View view = null;
        for (int i = 0; i < e; i++) {
            View c = m37313c(i);
            int d = this.f2670u.mo31593d(c);
            view = view;
            if (this.f2670u.mo31599a(c) > f) {
                if (d >= b) {
                    view = view;
                } else if (d >= f || !z) {
                    return c;
                } else {
                    view = view;
                    if (view == null) {
                        view = c;
                    }
                }
            }
        }
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37148b(int r5, androidx.recyclerview.widget.RecyclerView.C0526y r6) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m37148b(int, androidx.recyclerview.widget.RecyclerView$y):void");
    }

    /* renamed from: b */
    public final void m37147b(RecyclerView.C0522u uVar, int i) {
        while (m37299e() > 0) {
            View c = m37313c(0);
            if (this.f2670u.mo31599a(c) <= i && this.f2670u.mo31591e(c) <= i) {
                LayoutParams layoutParams = (LayoutParams) c.getLayoutParams();
                if (layoutParams.f2677f) {
                    for (int i2 = 0; i2 < this.f2668s; i2++) {
                        if (this.f2669t[i2].f2702a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.f2668s; i3++) {
                        this.f2669t[i3].m37054k();
                    }
                } else if (layoutParams.f2676e.f2702a.size() != 1) {
                    layoutParams.f2676e.m37054k();
                } else {
                    return;
                }
                m37344a(c, uVar);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m37145b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, boolean z) {
        int f;
        int q = m37107q(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        if (q != Integer.MAX_VALUE && (f = q - this.f2670u.mo31590f()) > 0) {
            int c = f - m37137c(f, uVar, yVar);
            if (z && c > 0) {
                this.f2670u.mo31600a(-c);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public void mo37142b(RecyclerView recyclerView, int i, int i2) {
        m37138c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public void mo37141b(RecyclerView recyclerView, RecyclerView.C0522u uVar) {
        super.mo37141b(recyclerView, uVar);
        m37323a(this.f2667P);
        for (int i = 0; i < this.f2668s; i++) {
            this.f2669t[i].m37065c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public boolean mo37150b() {
        boolean z = true;
        if (this.f2672w != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m37143b(RecyclerView.C0526y yVar, C0531b bVar) {
        int i;
        boolean z = false;
        if (yVar.m37196d() || (i = this.f2654C) == -1) {
            return false;
        }
        if (i < 0 || i >= yVar.m37201a()) {
            this.f2654C = -1;
            this.f2655D = Integer.MIN_VALUE;
            return false;
        }
        SavedState savedState = this.f2660I;
        if (savedState == null || savedState.f2684a == -1 || savedState.f2686c < 1) {
            View b = mo37322b(this.f2654C);
            if (b != null) {
                bVar.f2695a = this.f2652A ? m37186J() : m37187I();
                if (this.f2655D != Integer.MIN_VALUE) {
                    if (bVar.f2697c) {
                        bVar.f2696b = (this.f2670u.mo31598b() - this.f2655D) - this.f2670u.mo31599a(b);
                        return true;
                    }
                    bVar.f2696b = (this.f2670u.mo31590f() + this.f2655D) - this.f2670u.mo31593d(b);
                    return true;
                } else if (this.f2670u.mo31597b(b) > this.f2670u.mo31588g()) {
                    bVar.f2696b = bVar.f2697c ? this.f2670u.mo31598b() : this.f2670u.mo31590f();
                    return true;
                } else {
                    int d = this.f2670u.mo31593d(b) - this.f2670u.mo31590f();
                    if (d < 0) {
                        bVar.f2696b = -d;
                        return true;
                    }
                    int b2 = this.f2670u.mo31598b() - this.f2670u.mo31599a(b);
                    if (b2 < 0) {
                        bVar.f2696b = b2;
                        return true;
                    }
                    bVar.f2696b = Integer.MIN_VALUE;
                    return true;
                }
            } else {
                int i2 = this.f2654C;
                bVar.f2695a = i2;
                int i3 = this.f2655D;
                if (i3 == Integer.MIN_VALUE) {
                    if (m37120h(i2) == 1) {
                        z = true;
                    }
                    bVar.f2697c = z;
                    bVar.m37079a();
                } else {
                    bVar.m37078a(i3);
                }
                bVar.f2698d = true;
                return true;
            }
        } else {
            bVar.f2696b = Integer.MIN_VALUE;
            bVar.f2695a = this.f2654C;
            return true;
        }
    }

    /* renamed from: c */
    public int m37137c(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (m37299e() == 0 || i == 0) {
            return 0;
        }
        m37177a(i, yVar);
        int a = m37161a(uVar, this.f2674y, yVar);
        if (this.f2674y.f7620b >= a) {
            i = i < 0 ? -a : a;
        }
        this.f2670u.mo31600a(-i);
        this.f2658G = this.f2652A;
        C1930f fVar = this.f2674y;
        fVar.f7620b = 0;
        m37162a(uVar, fVar);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public int mo37135c(RecyclerView.C0526y yVar) {
        return m37115j(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public RecyclerView.LayoutParams mo37139c() {
        return this.f2672w == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
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
    public final void m37138c(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f2652A
            if (r0 == 0) goto L_0x0010
            r0 = r4
            int r0 = r0.m37186J()
            r8 = r0
            goto L_0x0016
        L_0x0010:
            r0 = r4
            int r0 = r0.m37187I()
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f2656E
            r1 = r10
            int r0 = r0.m37084e(r1)
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f2656E
            r1 = r5
            r2 = 1
            r0.m37089b(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f2656E
            r1 = r6
            r2 = 1
            r0.m37094a(r1, r2)
            goto L_0x0083
        L_0x006e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f2656E
            r1 = r5
            r2 = r6
            r0.m37089b(r1, r2)
            goto L_0x0083
        L_0x007a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f2656E
            r1 = r5
            r2 = r6
            r0.m37094a(r1, r2)
        L_0x0083:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L_0x008b
            return
        L_0x008b:
            r0 = r4
            boolean r0 = r0.f2652A
            if (r0 == 0) goto L_0x009a
            r0 = r4
            int r0 = r0.m37187I()
            r5 = r0
            goto L_0x009f
        L_0x009a:
            r0 = r4
            int r0 = r0.m37186J()
            r5 = r0
        L_0x009f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto L_0x00a9
            r0 = r4
            r0.m37267y()
        L_0x00a9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m37138c(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02c0  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37136c(androidx.recyclerview.widget.RecyclerView.C0522u r6, androidx.recyclerview.widget.RecyclerView.C0526y r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m37136c(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y, boolean):void");
    }

    /* renamed from: c */
    public void m37134c(RecyclerView.C0526y yVar, C0531b bVar) {
        if (!m37143b(yVar, bVar) && !m37159a(yVar, bVar)) {
            bVar.m37079a();
            bVar.f2695a = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public void mo37133c(RecyclerView recyclerView, int i, int i2) {
        m37138c(i, i2, 2);
    }

    /* renamed from: c */
    public void m37132c(boolean z) {
        mo37152a((String) null);
        SavedState savedState = this.f2660I;
        if (!(savedState == null || savedState.f2691h == z)) {
            savedState.f2691h = z;
        }
        this.f2675z = z;
        m37267y();
    }

    /* renamed from: d */
    public final int m37130d(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: d */
    public int mo37129d(RecyclerView.C0526y yVar) {
        return m37119h(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: d */
    public void mo37131d(int i) {
        super.mo37131d(i);
        for (int i2 = 0; i2 < this.f2668s; i2++) {
            this.f2669t[i2].m37064c(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: d */
    public void mo37128d(RecyclerView recyclerView) {
        this.f2656E.m37096a();
        m37267y();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public int mo37124e(RecyclerView.C0526y yVar) {
        return m37117i(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public void mo37127e(int i) {
        super.mo37127e(i);
        for (int i2 = 0; i2 < this.f2668s; i2++) {
            this.f2669t[i2].m37064c(i);
        }
    }

    /* renamed from: e */
    public final void m37126e(int i, int i2) {
        for (int i3 = 0; i3 < this.f2668s; i3++) {
            if (!this.f2669t[i3].f2702a.isEmpty()) {
                m37154a(this.f2669t[i3], i, i2);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public void mo37125e(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        m37136c(uVar, yVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: f */
    public int mo37122f(RecyclerView.C0526y yVar) {
        return m37115j(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: f */
    public void mo37123f(int i) {
        if (i == 0) {
            m37190F();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: g */
    public void mo37121g(RecyclerView.C0526y yVar) {
        super.mo37121g(yVar);
        this.f2654C = -1;
        this.f2655D = Integer.MIN_VALUE;
        this.f2660I = null;
        this.f2663L.m37076b();
    }

    /* renamed from: h */
    public final int m37120h(int i) {
        int i2 = -1;
        if (m37299e() == 0) {
            if (this.f2652A) {
                i2 = 1;
            }
            return i2;
        }
        if ((i < m37187I()) == this.f2652A) {
            i2 = 1;
        }
        return i2;
    }

    /* renamed from: h */
    public final int m37119h(RecyclerView.C0526y yVar) {
        if (m37299e() == 0) {
            return 0;
        }
        return C1938j.m31574a(yVar, this.f2670u, m37140b(!this.f2665N), m37151a(!this.f2665N), this, this.f2665N);
    }

    /* renamed from: i */
    public final int m37118i(int i) {
        int i2 = -1;
        int i3 = 1;
        int i4 = 1;
        if (i == 1) {
            return (this.f2672w != 1 && m37183M()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.f2672w != 1 && m37183M()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.f2672w != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f2672w != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            if (this.f2672w != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.f2672w != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    /* renamed from: i */
    public final int m37117i(RecyclerView.C0526y yVar) {
        if (m37299e() == 0) {
            return 0;
        }
        return C1938j.m31573a(yVar, this.f2670u, m37140b(!this.f2665N), m37151a(!this.f2665N), this, this.f2665N, this.f2652A);
    }

    /* renamed from: j */
    public final int m37115j(RecyclerView.C0526y yVar) {
        if (m37299e() == 0) {
            return 0;
        }
        return C1938j.m31572b(yVar, this.f2670u, m37140b(!this.f2665N), m37151a(!this.f2665N), this, this.f2665N);
    }

    /* renamed from: j */
    public final LazySpanLookup.FullSpanItem m37116j(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f2682c = new int[this.f2668s];
        for (int i2 = 0; i2 < this.f2668s; i2++) {
            fullSpanItem.f2682c[i2] = i - this.f2669t[i2].m37074a(i);
        }
        return fullSpanItem;
    }

    /* renamed from: k */
    public final LazySpanLookup.FullSpanItem m37114k(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f2682c = new int[this.f2668s];
        for (int i2 = 0; i2 < this.f2668s; i2++) {
            fullSpanItem.f2682c[i2] = this.f2669t[i2].m37067b(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: l */
    public final int m37113l(int i) {
        int e = m37299e();
        for (int i2 = 0; i2 < e; i2++) {
            int l = m37281l(m37313c(i2));
            if (l >= 0 && l < i) {
                return l;
            }
        }
        return 0;
    }

    /* renamed from: m */
    public final int m37112m(int i) {
        for (int e = m37299e() - 1; e >= 0; e--) {
            int l = m37281l(m37313c(e));
            if (l >= 0 && l < i) {
                return l;
            }
        }
        return 0;
    }

    /* renamed from: n */
    public final int m37111n(int i) {
        int a = this.f2669t[0].m37074a(i);
        for (int i2 = 1; i2 < this.f2668s; i2++) {
            int a2 = this.f2669t[i2].m37074a(i);
            a = a;
            if (a2 > a) {
                a = a2;
            }
        }
        return a;
    }

    /* renamed from: o */
    public final int m37110o(int i) {
        int b = this.f2669t[0].m37067b(i);
        for (int i2 = 1; i2 < this.f2668s; i2++) {
            int b2 = this.f2669t[i2].m37067b(i);
            b = b;
            if (b2 > b) {
                b = b2;
            }
        }
        return b;
    }

    /* renamed from: p */
    public final int m37109p(int i) {
        int a = this.f2669t[0].m37074a(i);
        for (int i2 = 1; i2 < this.f2668s; i2++) {
            int a2 = this.f2669t[i2].m37074a(i);
            a = a;
            if (a2 < a) {
                a = a2;
            }
        }
        return a;
    }

    /* renamed from: p */
    public final void m37108p(View view) {
        for (int i = this.f2668s - 1; i >= 0; i--) {
            this.f2669t[i].m37070a(view);
        }
    }

    /* renamed from: q */
    public final int m37107q(int i) {
        int b = this.f2669t[0].m37067b(i);
        for (int i2 = 1; i2 < this.f2668s; i2++) {
            int b2 = this.f2669t[i2].m37067b(i);
            b = b;
            if (b2 < b) {
                b = b2;
            }
        }
        return b;
    }

    /* renamed from: q */
    public final void m37106q(View view) {
        for (int i = this.f2668s - 1; i >= 0; i--) {
            this.f2669t[i].m37063c(view);
        }
    }

    /* renamed from: r */
    public final boolean m37105r(int i) {
        boolean z = true;
        boolean z2 = true;
        if (this.f2672w == 0) {
            if ((i == -1) == this.f2652A) {
                z2 = false;
            }
            return z2;
        }
        if (((i == -1) == this.f2652A) != m37183M()) {
            z = false;
        }
        return z;
    }

    /* renamed from: s */
    public final void m37104s(int i) {
        C1930f fVar = this.f2674y;
        fVar.f7623e = i;
        int i2 = 1;
        if (this.f2652A != (i == -1)) {
            i2 = -1;
        }
        fVar.f7622d = i2;
    }

    /* renamed from: t */
    public void m37103t(int i) {
        if (i == 0 || i == 1) {
            mo37152a((String) null);
            if (i != this.f2672w) {
                this.f2672w = i;
                AbstractC1933h hVar = this.f2670u;
                this.f2670u = this.f2671v;
                this.f2671v = hVar;
                m37267y();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    /* renamed from: u */
    public void m37101u(int i) {
        mo37152a((String) null);
        if (i != this.f2668s) {
            m37184L();
            this.f2668s = i;
            this.f2653B = new BitSet(this.f2668s);
            this.f2669t = new C0532c[this.f2668s];
            for (int i2 = 0; i2 < this.f2668s; i2++) {
                this.f2669t[i2] = new C0532c(i2);
            }
            m37267y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: u */
    public boolean mo37102u() {
        return this.f2657F != 0;
    }

    /* renamed from: v */
    public void m37100v(int i) {
        this.f2673x = i / this.f2668s;
        this.f2661J = View.MeasureSpec.makeMeasureSpec(i, this.f2671v.mo31594d());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: x */
    public Parcelable mo37099x() {
        int i;
        int i2;
        int i3;
        int[] iArr;
        if (this.f2660I != null) {
            return new SavedState(this.f2660I);
        }
        SavedState savedState = new SavedState();
        savedState.f2691h = this.f2675z;
        savedState.f2692i = this.f2658G;
        savedState.f2693j = this.f2659H;
        LazySpanLookup lazySpanLookup = this.f2656E;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f2678a) == null) {
            savedState.f2688e = 0;
        } else {
            savedState.f2689f = iArr;
            savedState.f2688e = iArr.length;
            savedState.f2690g = lazySpanLookup.f2679b;
        }
        if (m37299e() > 0) {
            savedState.f2684a = this.f2658G ? m37186J() : m37187I();
            savedState.f2685b = m37188H();
            int i4 = this.f2668s;
            savedState.f2686c = i4;
            savedState.f2687d = new int[i4];
            for (int i5 = 0; i5 < this.f2668s; i5++) {
                if (this.f2658G) {
                    i2 = this.f2669t[i5].m37074a(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f2670u.mo31598b();
                        i = i2 - i3;
                        savedState.f2687d[i5] = i;
                    } else {
                        savedState.f2687d[i5] = i;
                    }
                } else {
                    i2 = this.f2669t[i5].m37067b(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f2670u.mo31590f();
                        i = i2 - i3;
                        savedState.f2687d[i5] = i;
                    } else {
                        savedState.f2687d[i5] = i;
                    }
                }
            }
        } else {
            savedState.f2684a = -1;
            savedState.f2685b = -1;
            savedState.f2686c = 0;
        }
        return savedState;
    }
}
