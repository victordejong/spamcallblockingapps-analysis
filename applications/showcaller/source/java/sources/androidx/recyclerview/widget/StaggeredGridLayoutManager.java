package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0921o implements RecyclerView.AbstractC0935x.AbstractC0937b {

    /* renamed from: B */
    private BitSet f4177B;

    /* renamed from: G */
    private boolean f4182G;

    /* renamed from: H */
    private boolean f4183H;

    /* renamed from: I */
    private SavedState f4184I;

    /* renamed from: J */
    private int f4185J;

    /* renamed from: O */
    private int[] f4190O;

    /* renamed from: t */
    C0944c[] f4193t;

    /* renamed from: u */
    AbstractC0975i f4194u;

    /* renamed from: v */
    AbstractC0975i f4195v;

    /* renamed from: w */
    private int f4196w;

    /* renamed from: x */
    private int f4197x;

    /* renamed from: s */
    private int f4192s = -1;

    /* renamed from: z */
    boolean f4199z = false;

    /* renamed from: A */
    boolean f4176A = false;

    /* renamed from: C */
    int f4178C = -1;

    /* renamed from: D */
    int f4179D = Integer.MIN_VALUE;

    /* renamed from: E */
    LazySpanLookup f4180E = new LazySpanLookup();

    /* renamed from: F */
    private int f4181F = 2;

    /* renamed from: K */
    private final Rect f4186K = new Rect();

    /* renamed from: L */
    private final C0943b f4187L = new C0943b();

    /* renamed from: M */
    private boolean f4188M = false;

    /* renamed from: N */
    private boolean f4189N = true;

    /* renamed from: P */
    private final Runnable f4191P = new RunnableC0942a();

    /* renamed from: y */
    private final C0971f f4198y = new C0971f();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e */
        C0944c f4200e;

        /* renamed from: f */
        boolean f4201f;

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
        public boolean m31603e() {
            return this.f4201f;
        }

        /* renamed from: f */
        public void m31602f(boolean z) {
            this.f4201f = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static class LazySpanLookup {

        /* renamed from: a */
        int[] f4202a;

        /* renamed from: b */
        List<FullSpanItem> f4203b;

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new C0940a();

            /* renamed from: d */
            int f4204d;

            /* renamed from: e */
            int f4205e;

            /* renamed from: f */
            int[] f4206f;

            /* renamed from: g */
            boolean f4207g;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a */
            /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a.class */
            class C0940a implements Parcelable.Creator<FullSpanItem> {
                C0940a() {
                }

                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* renamed from: b */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            FullSpanItem() {
            }

            FullSpanItem(Parcel parcel) {
                this.f4204d = parcel.readInt();
                this.f4205e = parcel.readInt();
                this.f4207g = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f4206f = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            /* renamed from: a */
            int m31586a(int i) {
                int[] iArr = this.f4206f;
                return iArr == null ? 0 : iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f4204d + ", mGapDir=" + this.f4205e + ", mHasUnwantedGapAfter=" + this.f4207g + ", mGapPerSpan=" + Arrays.toString(this.f4206f) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f4204d);
                parcel.writeInt(this.f4205e);
                parcel.writeInt(this.f4207g ? 1 : 0);
                int[] iArr = this.f4206f;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f4206f);
            }
        }

        LazySpanLookup() {
        }

        /* renamed from: i */
        private int m31593i(int i) {
            if (this.f4203b == null) {
                return -1;
            }
            FullSpanItem m31596f = m31596f(i);
            if (m31596f != null) {
                this.f4203b.remove(m31596f);
            }
            int size = this.f4203b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f4203b.get(i2).f4204d >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f4203b.get(i2);
            this.f4203b.remove(i2);
            return fullSpanItem.f4204d;
        }

        /* renamed from: l */
        private void m31590l(int i, int i2) {
            List<FullSpanItem> list = this.f4203b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f4203b.get(size);
                int i3 = fullSpanItem.f4204d;
                if (i3 >= i) {
                    fullSpanItem.f4204d = i3 + i2;
                }
            }
        }

        /* renamed from: m */
        private void m31589m(int i, int i2) {
            List<FullSpanItem> list = this.f4203b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f4203b.get(size);
                int i3 = fullSpanItem.f4204d;
                if (i3 >= i) {
                    if (i3 < i + i2) {
                        this.f4203b.remove(size);
                    } else {
                        fullSpanItem.f4204d = i3 - i2;
                    }
                }
            }
        }

        /* renamed from: a */
        public void m31601a(FullSpanItem fullSpanItem) {
            if (this.f4203b == null) {
                this.f4203b = new ArrayList();
            }
            int size = this.f4203b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f4203b.get(i);
                if (fullSpanItem2.f4204d == fullSpanItem.f4204d) {
                    this.f4203b.remove(i);
                }
                if (fullSpanItem2.f4204d >= fullSpanItem.f4204d) {
                    this.f4203b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f4203b.add(fullSpanItem);
        }

        /* renamed from: b */
        void m31600b() {
            int[] iArr = this.f4202a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f4203b = null;
        }

        /* renamed from: c */
        void m31599c(int i) {
            int[] iArr = this.f4202a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f4202a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i < iArr.length) {
            } else {
                int[] iArr3 = new int[m31587o(i)];
                this.f4202a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f4202a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* renamed from: d */
        int m31598d(int i) {
            List<FullSpanItem> list = this.f4203b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f4203b.get(size).f4204d >= i) {
                        this.f4203b.remove(size);
                    }
                }
            }
            return m31594h(i);
        }

        /* renamed from: e */
        public FullSpanItem m31597e(int i, int i2, int i3, boolean z) {
            FullSpanItem fullSpanItem;
            int i4;
            List<FullSpanItem> list = this.f4203b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size && (i4 = (fullSpanItem = this.f4203b.get(i5)).f4204d) < i2; i5++) {
                if (i4 >= i && (i3 == 0 || fullSpanItem.f4205e == i3 || (z && fullSpanItem.f4207g))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: f */
        public FullSpanItem m31596f(int i) {
            List<FullSpanItem> list = this.f4203b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f4203b.get(size);
                if (fullSpanItem.f4204d == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: g */
        int m31595g(int i) {
            int[] iArr = this.f4202a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: h */
        int m31594h(int i) {
            int[] iArr = this.f4202a;
            if (iArr != null && i < iArr.length) {
                int m31593i = m31593i(i);
                if (m31593i == -1) {
                    int[] iArr2 = this.f4202a;
                    Arrays.fill(iArr2, i, iArr2.length, -1);
                    return this.f4202a.length;
                }
                int min = Math.min(m31593i + 1, this.f4202a.length);
                Arrays.fill(this.f4202a, i, min, -1);
                return min;
            }
            return -1;
        }

        /* renamed from: j */
        void m31592j(int i, int i2) {
            int[] iArr = this.f4202a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m31599c(i3);
            int[] iArr2 = this.f4202a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f4202a, i, i3, -1);
            m31590l(i, i2);
        }

        /* renamed from: k */
        void m31591k(int i, int i2) {
            int[] iArr = this.f4202a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m31599c(i3);
            int[] iArr2 = this.f4202a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f4202a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m31589m(i, i2);
        }

        /* renamed from: n */
        void m31588n(int i, C0944c c0944c) {
            m31599c(i);
            this.f4202a[i] = c0944c.f4230e;
        }

        /* renamed from: o */
        int m31587o(int i) {
            int length = this.f4202a.length;
            while (true) {
                int i2 = length;
                if (i2 <= i) {
                    length = i2 * 2;
                } else {
                    return i2;
                }
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0941a();

        /* renamed from: d */
        int f4208d;

        /* renamed from: e */
        int f4209e;

        /* renamed from: f */
        int f4210f;

        /* renamed from: g */
        int[] f4211g;

        /* renamed from: h */
        int f4212h;

        /* renamed from: i */
        int[] f4213i;

        /* renamed from: j */
        List<LazySpanLookup.FullSpanItem> f4214j;

        /* renamed from: k */
        boolean f4215k;

        /* renamed from: l */
        boolean f4216l;

        /* renamed from: m */
        boolean f4217m;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$a.class */
        class C0941a implements Parcelable.Creator<SavedState> {
            C0941a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f4208d = parcel.readInt();
            this.f4209e = parcel.readInt();
            int readInt = parcel.readInt();
            this.f4210f = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f4211g = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f4212h = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f4213i = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f4215k = parcel.readInt() == 1;
            this.f4216l = parcel.readInt() == 1;
            this.f4217m = parcel.readInt() == 1;
            this.f4214j = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f4210f = savedState.f4210f;
            this.f4208d = savedState.f4208d;
            this.f4209e = savedState.f4209e;
            this.f4211g = savedState.f4211g;
            this.f4212h = savedState.f4212h;
            this.f4213i = savedState.f4213i;
            this.f4215k = savedState.f4215k;
            this.f4216l = savedState.f4216l;
            this.f4217m = savedState.f4217m;
            this.f4214j = savedState.f4214j;
        }

        /* renamed from: a */
        void m31583a() {
            this.f4211g = null;
            this.f4210f = 0;
            this.f4208d = -1;
            this.f4209e = -1;
        }

        /* renamed from: b */
        void m31582b() {
            this.f4211g = null;
            this.f4210f = 0;
            this.f4212h = 0;
            this.f4213i = null;
            this.f4214j = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f4208d);
            parcel.writeInt(this.f4209e);
            parcel.writeInt(this.f4210f);
            if (this.f4210f > 0) {
                parcel.writeIntArray(this.f4211g);
            }
            parcel.writeInt(this.f4212h);
            if (this.f4212h > 0) {
                parcel.writeIntArray(this.f4213i);
            }
            parcel.writeInt(this.f4215k ? 1 : 0);
            parcel.writeInt(this.f4216l ? 1 : 0);
            parcel.writeInt(this.f4217m ? 1 : 0);
            parcel.writeList(this.f4214j);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    class RunnableC0942a implements Runnable {
        RunnableC0942a() {
            StaggeredGridLayoutManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m31659T1();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public class C0943b {

        /* renamed from: a */
        int f4219a;

        /* renamed from: b */
        int f4220b;

        /* renamed from: c */
        boolean f4221c;

        /* renamed from: d */
        boolean f4222d;

        /* renamed from: e */
        boolean f4223e;

        /* renamed from: f */
        int[] f4224f;

        C0943b() {
            StaggeredGridLayoutManager.this = r4;
            m31577c();
        }

        /* renamed from: a */
        void m31579a() {
            this.f4220b = this.f4221c ? StaggeredGridLayoutManager.this.f4194u.mo31391i() : StaggeredGridLayoutManager.this.f4194u.mo31387m();
        }

        /* renamed from: b */
        void m31578b(int i) {
            if (this.f4221c) {
                this.f4220b = StaggeredGridLayoutManager.this.f4194u.mo31391i() - i;
            } else {
                this.f4220b = StaggeredGridLayoutManager.this.f4194u.mo31387m() + i;
            }
        }

        /* renamed from: c */
        void m31577c() {
            this.f4219a = -1;
            this.f4220b = Integer.MIN_VALUE;
            this.f4221c = false;
            this.f4222d = false;
            this.f4223e = false;
            int[] iArr = this.f4224f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        /* renamed from: d */
        void m31576d(C0944c[] c0944cArr) {
            int length = c0944cArr.length;
            int[] iArr = this.f4224f;
            if (iArr == null || iArr.length < length) {
                this.f4224f = new int[StaggeredGridLayoutManager.this.f4193t.length];
            }
            for (int i = 0; i < length; i++) {
                this.f4224f[i] = c0944cArr[i].m31557s(Integer.MIN_VALUE);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
    public class C0944c {

        /* renamed from: a */
        ArrayList<View> f4226a = new ArrayList<>();

        /* renamed from: b */
        int f4227b = Integer.MIN_VALUE;

        /* renamed from: c */
        int f4228c = Integer.MIN_VALUE;

        /* renamed from: d */
        int f4229d = 0;

        /* renamed from: e */
        final int f4230e;

        C0944c(int i) {
            StaggeredGridLayoutManager.this = r5;
            this.f4230e = i;
        }

        /* renamed from: a */
        void m31575a(View view) {
            LayoutParams m31559q = m31559q(view);
            m31559q.f4200e = this;
            this.f4226a.add(view);
            this.f4228c = Integer.MIN_VALUE;
            if (this.f4226a.size() == 1) {
                this.f4227b = Integer.MIN_VALUE;
            }
            if (m31559q.m31955c() || m31559q.m31956b()) {
                this.f4229d += StaggeredGridLayoutManager.this.f4194u.mo31395e(view);
            }
        }

        /* renamed from: b */
        void m31574b(boolean z, int i) {
            int m31561o = z ? m31561o(Integer.MIN_VALUE) : m31557s(Integer.MIN_VALUE);
            m31571e();
            if (m31561o == Integer.MIN_VALUE) {
                return;
            }
            if (z && m31561o < StaggeredGridLayoutManager.this.f4194u.mo31391i()) {
                return;
            }
            if (!z && m31561o > StaggeredGridLayoutManager.this.f4194u.mo31387m()) {
                return;
            }
            int i2 = m31561o;
            if (i != Integer.MIN_VALUE) {
                i2 = m31561o + i;
            }
            this.f4228c = i2;
            this.f4227b = i2;
        }

        /* renamed from: c */
        void m31573c() {
            LazySpanLookup.FullSpanItem m31596f;
            ArrayList<View> arrayList = this.f4226a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams m31559q = m31559q(view);
            this.f4228c = StaggeredGridLayoutManager.this.f4194u.mo31396d(view);
            if (!m31559q.f4201f || (m31596f = StaggeredGridLayoutManager.this.f4180E.m31596f(m31559q.m31957a())) == null || m31596f.f4205e != 1) {
                return;
            }
            this.f4228c += m31596f.m31586a(this.f4230e);
        }

        /* renamed from: d */
        void m31572d() {
            LazySpanLookup.FullSpanItem m31596f;
            View view = this.f4226a.get(0);
            LayoutParams m31559q = m31559q(view);
            this.f4227b = StaggeredGridLayoutManager.this.f4194u.mo31393g(view);
            if (!m31559q.f4201f || (m31596f = StaggeredGridLayoutManager.this.f4180E.m31596f(m31559q.m31957a())) == null || m31596f.f4205e != -1) {
                return;
            }
            this.f4227b -= m31596f.m31586a(this.f4230e);
        }

        /* renamed from: e */
        void m31571e() {
            this.f4226a.clear();
            m31556t();
            this.f4229d = 0;
        }

        /* renamed from: f */
        public int m31570f() {
            return StaggeredGridLayoutManager.this.f4199z ? m31564l(this.f4226a.size() - 1, -1, true) : m31564l(0, this.f4226a.size(), true);
        }

        /* renamed from: g */
        public int m31569g() {
            return StaggeredGridLayoutManager.this.f4199z ? m31565k(this.f4226a.size() - 1, -1, true) : m31565k(0, this.f4226a.size(), true);
        }

        /* renamed from: h */
        public int m31568h() {
            return StaggeredGridLayoutManager.this.f4199z ? m31565k(0, this.f4226a.size(), true) : m31565k(this.f4226a.size() - 1, -1, true);
        }

        /* renamed from: i */
        public int m31567i() {
            return StaggeredGridLayoutManager.this.f4199z ? m31564l(0, this.f4226a.size(), false) : m31564l(this.f4226a.size() - 1, -1, false);
        }

        /* renamed from: j */
        int m31566j(int i, int i2, boolean z, boolean z2, boolean z3) {
            int mo31387m = StaggeredGridLayoutManager.this.f4194u.mo31387m();
            int mo31391i = StaggeredGridLayoutManager.this.f4194u.mo31391i();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f4226a.get(i);
                int mo31393g = StaggeredGridLayoutManager.this.f4194u.mo31393g(view);
                int mo31396d = StaggeredGridLayoutManager.this.f4194u.mo31396d(view);
                boolean z4 = false;
                boolean z5 = !z3 ? mo31393g < mo31391i : mo31393g <= mo31391i;
                if (!z3 ? mo31396d > mo31387m : mo31396d >= mo31387m) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.m31816h0(view);
                        }
                        if (mo31393g < mo31387m || mo31396d > mo31391i) {
                            return StaggeredGridLayoutManager.this.m31816h0(view);
                        }
                    } else if (mo31393g >= mo31387m && mo31396d <= mo31391i) {
                        return StaggeredGridLayoutManager.this.m31816h0(view);
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: k */
        int m31565k(int i, int i2, boolean z) {
            return m31566j(i, i2, false, false, z);
        }

        /* renamed from: l */
        int m31564l(int i, int i2, boolean z) {
            return m31566j(i, i2, z, true, false);
        }

        /* renamed from: m */
        public int m31563m() {
            return this.f4229d;
        }

        /* renamed from: n */
        int m31562n() {
            int i = this.f4228c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m31573c();
            return this.f4228c;
        }

        /* renamed from: o */
        int m31561o(int i) {
            int i2 = this.f4228c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f4226a.size() == 0) {
                return i;
            }
            m31573c();
            return this.f4228c;
        }

        /* renamed from: p */
        public View m31560p(int i, int i2) {
            View view;
            View view2 = null;
            if (i2 != -1) {
                int size = this.f4226a.size() - 1;
                View view3 = null;
                while (true) {
                    View view4 = view3;
                    view = view4;
                    if (size < 0) {
                        break;
                    }
                    View view5 = this.f4226a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f4199z) {
                        view = view4;
                        if (staggeredGridLayoutManager.m31816h0(view5) >= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager2.f4199z && staggeredGridLayoutManager2.m31816h0(view5) <= i) {
                        view = view4;
                        break;
                    }
                    view = view4;
                    if (!view5.hasFocusable()) {
                        break;
                    }
                    size--;
                    view3 = view5;
                }
            } else {
                int size2 = this.f4226a.size();
                int i3 = 0;
                while (true) {
                    view = view2;
                    if (i3 >= size2) {
                        break;
                    }
                    View view6 = this.f4226a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f4199z) {
                        view = view2;
                        if (staggeredGridLayoutManager3.m31816h0(view6) <= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager4.f4199z && staggeredGridLayoutManager4.m31816h0(view6) >= i) {
                        view = view2;
                        break;
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

        /* renamed from: q */
        LayoutParams m31559q(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        /* renamed from: r */
        int m31558r() {
            int i = this.f4227b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m31572d();
            return this.f4227b;
        }

        /* renamed from: s */
        int m31557s(int i) {
            int i2 = this.f4227b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f4226a.size() == 0) {
                return i;
            }
            m31572d();
            return this.f4227b;
        }

        /* renamed from: t */
        void m31556t() {
            this.f4227b = Integer.MIN_VALUE;
            this.f4228c = Integer.MIN_VALUE;
        }

        /* renamed from: u */
        void m31555u(int i) {
            int i2 = this.f4227b;
            if (i2 != Integer.MIN_VALUE) {
                this.f4227b = i2 + i;
            }
            int i3 = this.f4228c;
            if (i3 != Integer.MIN_VALUE) {
                this.f4228c = i3 + i;
            }
        }

        /* renamed from: v */
        void m31554v() {
            int size = this.f4226a.size();
            View remove = this.f4226a.remove(size - 1);
            LayoutParams m31559q = m31559q(remove);
            m31559q.f4200e = null;
            if (m31559q.m31955c() || m31559q.m31956b()) {
                this.f4229d -= StaggeredGridLayoutManager.this.f4194u.mo31395e(remove);
            }
            if (size == 1) {
                this.f4227b = Integer.MIN_VALUE;
            }
            this.f4228c = Integer.MIN_VALUE;
        }

        /* renamed from: w */
        void m31553w() {
            View remove = this.f4226a.remove(0);
            LayoutParams m31559q = m31559q(remove);
            m31559q.f4200e = null;
            if (this.f4226a.size() == 0) {
                this.f4228c = Integer.MIN_VALUE;
            }
            if (m31559q.m31955c() || m31559q.m31956b()) {
                this.f4229d -= StaggeredGridLayoutManager.this.f4194u.mo31395e(remove);
            }
            this.f4227b = Integer.MIN_VALUE;
        }

        /* renamed from: x */
        void m31552x(View view) {
            LayoutParams m31559q = m31559q(view);
            m31559q.f4200e = this;
            this.f4226a.add(0, view);
            this.f4227b = Integer.MIN_VALUE;
            if (this.f4226a.size() == 1) {
                this.f4228c = Integer.MIN_VALUE;
            }
            if (m31559q.m31955c() || m31559q.m31956b()) {
                this.f4229d += StaggeredGridLayoutManager.this.f4194u.mo31395e(view);
            }
        }

        /* renamed from: y */
        void m31551y(int i) {
            this.f4227b = i;
            this.f4228c = i;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0921o.C0925d m31814i0 = RecyclerView.AbstractC0921o.m31814i0(context, attributeSet, i, i2);
        m31677L2(m31814i0.f4124a);
        m31673N2(m31814i0.f4125b);
        m31675M2(m31814i0.f4126c);
        m31644b2();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02c0  */
    /* renamed from: A2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31697A2(androidx.recyclerview.widget.RecyclerView.C0932u r6, androidx.recyclerview.widget.RecyclerView.C0938y r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31697A2(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y, boolean):void");
    }

    /* renamed from: B2 */
    private boolean m31696B2(int i) {
        if (this.f4196w == 0) {
            return (i == -1) != this.f4176A;
        }
        return ((i == -1) == this.f4176A) == m31606x2();
    }

    /* renamed from: D2 */
    private void m31691D2(View view) {
        for (int i = this.f4192s - 1; i >= 0; i--) {
            this.f4193t[i].m31552x(view);
        }
    }

    /* renamed from: E2 */
    private void m31688E2(RecyclerView.C0932u c0932u, C0971f c0971f) {
        if (!c0971f.f4351a || c0971f.f4359i) {
            return;
        }
        if (c0971f.f4352b == 0) {
            if (c0971f.f4355e == -1) {
                m31686F2(c0932u, c0971f.f4357g);
            } else {
                m31685G2(c0932u, c0971f.f4356f);
            }
        } else if (c0971f.f4355e != -1) {
            int m31621q2 = m31621q2(c0971f.f4357g) - c0971f.f4357g;
            m31685G2(c0932u, m31621q2 < 0 ? c0971f.f4356f : Math.min(m31621q2, c0971f.f4352b) + c0971f.f4356f);
        } else {
            int i = c0971f.f4356f;
            int m31623p2 = i - m31623p2(i);
            m31686F2(c0932u, m31623p2 < 0 ? c0971f.f4357g : c0971f.f4357g - Math.min(m31623p2, c0971f.f4352b));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        if (r12 >= r4.f4192s) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        r4.f4193t[r12].m31554v();
        r12 = r12 + 1;
     */
    /* renamed from: F2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31686F2(androidx.recyclerview.widget.RecyclerView.C0932u r5, int r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.m31858J()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L7:
            r0 = r7
            if (r0 < 0) goto La7
            r0 = r4
            r1 = r7
            android.view.View r0 = r0.m31860I(r1)
            r8 = r0
            r0 = r4
            androidx.recyclerview.widget.i r0 = r0.f4194u
            r1 = r8
            int r0 = r0.mo31393g(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r4
            androidx.recyclerview.widget.i r0 = r0.f4194u
            r1 = r8
            int r0 = r0.mo31384q(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f4201f
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
            int r1 = r1.f4192s
            if (r0 >= r1) goto L69
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f4193t
            r1 = r11
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f4226a
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
            int r1 = r1.f4192s
            if (r0 >= r1) goto L9a
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f4193t
            r1 = r12
            r0 = r0[r1]
            r0.m31554v()
            int r12 = r12 + 1
            goto L69
        L82:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f4200e
            java.util.ArrayList<android.view.View> r0 = r0.f4226a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L92
            return
        L92:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f4200e
            r0.m31554v()
        L9a:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.m31804m1(r1, r2)
            int r7 = r7 + (-1)
            goto L7
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31686F2(androidx.recyclerview.widget.RecyclerView$u, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r11 >= r4.f4192s) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r4.f4193t[r11].m31553w();
        r11 = r11 + 1;
     */
    /* renamed from: G2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31685G2(androidx.recyclerview.widget.RecyclerView.C0932u r5, int r6) {
        /*
            r4 = this;
        L0:
            r0 = r4
            int r0 = r0.m31858J()
            if (r0 <= 0) goto L9e
            r0 = 0
            r7 = r0
            r0 = r4
            r1 = 0
            android.view.View r0 = r0.m31860I(r1)
            r8 = r0
            r0 = r4
            androidx.recyclerview.widget.i r0 = r0.f4194u
            r1 = r8
            int r0 = r0.mo31396d(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r4
            androidx.recyclerview.widget.i r0 = r0.f4194u
            r1 = r8
            int r0 = r0.mo31385p(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f4201f
            if (r0 == 0) goto L7c
            r0 = 0
            r10 = r0
        L3f:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r4
            int r1 = r1.f4192s
            if (r0 >= r1) goto L63
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f4193t
            r1 = r10
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f4226a
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
            int r1 = r1.f4192s
            if (r0 >= r1) goto L94
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f4193t
            r1 = r11
            r0 = r0[r1]
            r0.m31553w()
            int r11 = r11 + 1
            goto L63
        L7c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f4200e
            java.util.ArrayList<android.view.View> r0 = r0.f4226a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L8c
            return
        L8c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f4200e
            r0.m31553w()
        L94:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.m31804m1(r1, r2)
            goto L0
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31685G2(androidx.recyclerview.widget.RecyclerView$u, int):void");
    }

    /* renamed from: H2 */
    private void m31684H2() {
        if (this.f4195v.mo31389k() == 1073741824) {
            return;
        }
        float f = 0.0f;
        int m31858J = m31858J();
        for (int i = 0; i < m31858J; i++) {
            View m31860I = m31860I(i);
            float mo31395e = this.f4195v.mo31395e(m31860I);
            if (mo31395e >= f) {
                float f2 = mo31395e;
                if (((LayoutParams) m31860I.getLayoutParams()).m31603e()) {
                    f2 = (mo31395e * 1.0f) / this.f4192s;
                }
                f = Math.max(f, f2);
            }
        }
        int i2 = this.f4197x;
        int round = Math.round(f * this.f4192s);
        int i3 = round;
        if (this.f4195v.mo31389k() == Integer.MIN_VALUE) {
            i3 = Math.min(round, this.f4195v.mo31386n());
        }
        m31658T2(i3);
        if (this.f4197x == i2) {
            return;
        }
        for (int i4 = 0; i4 < m31858J; i4++) {
            View m31860I2 = m31860I(i4);
            LayoutParams layoutParams = (LayoutParams) m31860I2.getLayoutParams();
            if (!layoutParams.f4201f) {
                if (!m31606x2() || this.f4196w != 1) {
                    int i5 = layoutParams.f4200e.f4230e;
                    int i6 = this.f4197x * i5;
                    int i7 = i5 * i2;
                    if (this.f4196w == 1) {
                        m31860I2.offsetLeftAndRight(i6 - i7);
                    } else {
                        m31860I2.offsetTopAndBottom(i6 - i7);
                    }
                } else {
                    int i8 = this.f4192s;
                    int i9 = layoutParams.f4200e.f4230e;
                    m31860I2.offsetLeftAndRight(((-((i8 - 1) - i9)) * this.f4197x) - ((-((i8 - 1) - i9)) * i2));
                }
            }
        }
    }

    /* renamed from: I2 */
    private void m31682I2() {
        if (this.f4196w == 1 || !m31606x2()) {
            this.f4176A = this.f4199z;
        } else {
            this.f4176A = !this.f4199z;
        }
    }

    /* renamed from: K2 */
    private void m31678K2(int i) {
        C0971f c0971f = this.f4198y;
        c0971f.f4355e = i;
        c0971f.f4354d = this.f4176A == (i == -1) ? 1 : -1;
    }

    /* renamed from: N1 */
    private void m31674N1(View view) {
        for (int i = this.f4192s - 1; i >= 0; i--) {
            this.f4193t[i].m31575a(view);
        }
    }

    /* renamed from: O1 */
    private void m31672O1(C0943b c0943b) {
        SavedState savedState = this.f4184I;
        int i = savedState.f4210f;
        if (i > 0) {
            if (i == this.f4192s) {
                for (int i2 = 0; i2 < this.f4192s; i2++) {
                    this.f4193t[i2].m31571e();
                    SavedState savedState2 = this.f4184I;
                    int i3 = savedState2.f4211g[i2];
                    int i4 = i3;
                    if (i3 != Integer.MIN_VALUE) {
                        i4 = i3 + (savedState2.f4216l ? this.f4194u.mo31391i() : this.f4194u.mo31387m());
                    }
                    this.f4193t[i2].m31551y(i4);
                }
            } else {
                savedState.m31582b();
                SavedState savedState3 = this.f4184I;
                savedState3.f4208d = savedState3.f4209e;
            }
        }
        SavedState savedState4 = this.f4184I;
        this.f4183H = savedState4.f4217m;
        m31675M2(savedState4.f4215k);
        m31682I2();
        SavedState savedState5 = this.f4184I;
        int i5 = savedState5.f4208d;
        if (i5 != -1) {
            this.f4178C = i5;
            c0943b.f4221c = savedState5.f4216l;
        } else {
            c0943b.f4221c = this.f4176A;
        }
        if (savedState5.f4212h > 1) {
            LazySpanLookup lazySpanLookup = this.f4180E;
            lazySpanLookup.f4202a = savedState5.f4213i;
            lazySpanLookup.f4203b = savedState5.f4214j;
        }
    }

    /* renamed from: O2 */
    private void m31671O2(int i, int i2) {
        for (int i3 = 0; i3 < this.f4192s; i3++) {
            if (!this.f4193t[i3].f4226a.isEmpty()) {
                m31655U2(this.f4193t[i3], i, i2);
            }
        }
    }

    /* renamed from: P2 */
    private boolean m31669P2(RecyclerView.C0938y c0938y, C0943b c0943b) {
        c0943b.f4219a = this.f4182G ? m31633i2(c0938y.m31703b()) : m31638e2(c0938y.m31703b());
        c0943b.f4220b = Integer.MIN_VALUE;
        return true;
    }

    /* renamed from: R1 */
    private void m31665R1(View view, LayoutParams layoutParams, C0971f c0971f) {
        if (c0971f.f4355e == 1) {
            if (layoutParams.f4201f) {
                m31674N1(view);
            } else {
                layoutParams.f4200e.m31575a(view);
            }
        } else if (layoutParams.f4201f) {
            m31691D2(view);
        } else {
            layoutParams.f4200e.m31552x(view);
        }
    }

    /* renamed from: S1 */
    private int m31662S1(int i) {
        int i2 = -1;
        if (m31858J() == 0) {
            if (this.f4176A) {
                i2 = 1;
            }
            return i2;
        }
        if ((i < m31627m2()) == this.f4176A) {
            i2 = 1;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c1  */
    /* renamed from: S2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31661S2(int r5, androidx.recyclerview.widget.RecyclerView.C0938y r6) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31661S2(int, androidx.recyclerview.widget.RecyclerView$y):void");
    }

    /* renamed from: U1 */
    private boolean m31656U1(C0944c c0944c) {
        if (!this.f4176A) {
            if (c0944c.m31558r() <= this.f4194u.mo31387m()) {
                return false;
            }
            return !c0944c.m31559q(c0944c.f4226a.get(0)).f4201f;
        } else if (c0944c.m31562n() >= this.f4194u.mo31391i()) {
            return false;
        } else {
            ArrayList<View> arrayList = c0944c.f4226a;
            return !c0944c.m31559q(arrayList.get(arrayList.size() - 1)).f4201f;
        }
    }

    /* renamed from: U2 */
    private void m31655U2(C0944c c0944c, int i, int i2) {
        int m31563m = c0944c.m31563m();
        if (i == -1) {
            if (c0944c.m31558r() + m31563m > i2) {
                return;
            }
            this.f4177B.set(c0944c.f4230e, false);
        } else if (c0944c.m31562n() - m31563m < i2) {
        } else {
            this.f4177B.set(c0944c.f4230e, false);
        }
    }

    /* renamed from: V1 */
    private int m31654V1(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0) {
            return 0;
        }
        return C0982l.m31369a(c0938y, this.f4194u, m31635g2(!this.f4189N), m31637f2(!this.f4189N), this, this.f4189N);
    }

    /* renamed from: V2 */
    private int m31653V2(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: W1 */
    private int m31651W1(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0) {
            return 0;
        }
        return C0982l.m31368b(c0938y, this.f4194u, m31635g2(!this.f4189N), m31637f2(!this.f4189N), this, this.f4189N, this.f4176A);
    }

    /* renamed from: X1 */
    private int m31650X1(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0) {
            return 0;
        }
        return C0982l.m31367c(c0938y, this.f4194u, m31635g2(!this.f4189N), m31637f2(!this.f4189N), this, this.f4189N);
    }

    /* renamed from: Y1 */
    private int m31648Y1(int i) {
        int i2 = -1;
        if (i == 1) {
            return (this.f4196w != 1 && m31606x2()) ? 1 : -1;
        } else if (i == 2) {
            return (this.f4196w != 1 && m31606x2()) ? -1 : 1;
        } else if (i == 17) {
            if (this.f4196w != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f4196w != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            return this.f4196w == 0 ? 1 : Integer.MIN_VALUE;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            return this.f4196w == 1 ? 1 : Integer.MIN_VALUE;
        }
    }

    /* renamed from: Z1 */
    private LazySpanLookup.FullSpanItem m31647Z1(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f4206f = new int[this.f4192s];
        for (int i2 = 0; i2 < this.f4192s; i2++) {
            fullSpanItem.f4206f[i2] = i - this.f4193t[i2].m31561o(i);
        }
        return fullSpanItem;
    }

    /* renamed from: a2 */
    private LazySpanLookup.FullSpanItem m31645a2(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f4206f = new int[this.f4192s];
        for (int i2 = 0; i2 < this.f4192s; i2++) {
            fullSpanItem.f4206f[i2] = this.f4193t[i2].m31557s(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: b2 */
    private void m31644b2() {
        this.f4194u = AbstractC0975i.m31400b(this, this.f4196w);
        this.f4195v = AbstractC0975i.m31400b(this, 1 - this.f4196w);
    }

    /* renamed from: c2 */
    private int m31642c2(RecyclerView.C0932u c0932u, C0971f c0971f, RecyclerView.C0938y c0938y) {
        boolean z;
        C0944c c0944c;
        int i;
        int i2;
        int i3;
        int i4;
        this.f4177B.set(0, this.f4192s, true);
        int i5 = this.f4198y.f4359i ? c0971f.f4355e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c0971f.f4355e == 1 ? c0971f.f4357g + c0971f.f4352b : c0971f.f4356f - c0971f.f4352b;
        m31671O2(c0971f.f4355e, i5);
        int mo31391i = this.f4176A ? this.f4194u.mo31391i() : this.f4194u.mo31387m();
        boolean z2 = false;
        while (true) {
            z = z2;
            if (!c0971f.m31423a(c0938y) || (!this.f4198y.f4359i && this.f4177B.isEmpty())) {
                break;
            }
            View m31422b = c0971f.m31422b(c0932u);
            LayoutParams layoutParams = (LayoutParams) m31422b.getLayoutParams();
            int m31957a = layoutParams.m31957a();
            int m31595g = this.f4180E.m31595g(m31957a);
            boolean z3 = m31595g == -1;
            if (z3) {
                c0944c = layoutParams.f4201f ? this.f4193t[0] : m31616s2(c0971f);
                this.f4180E.m31588n(m31957a, c0944c);
            } else {
                c0944c = this.f4193t[m31595g];
            }
            layoutParams.f4200e = c0944c;
            if (c0971f.f4355e == 1) {
                m31826d(m31422b);
            } else {
                m31824e(m31422b, 0);
            }
            m31604z2(m31422b, layoutParams, false);
            if (c0971f.f4355e == 1) {
                int m31624o2 = layoutParams.f4201f ? m31624o2(mo31391i) : c0944c.m31561o(mo31391i);
                int mo31395e = this.f4194u.mo31395e(m31422b);
                if (z3 && layoutParams.f4201f) {
                    LazySpanLookup.FullSpanItem m31647Z1 = m31647Z1(m31624o2);
                    m31647Z1.f4205e = -1;
                    m31647Z1.f4204d = m31957a;
                    this.f4180E.m31601a(m31647Z1);
                }
                i2 = mo31395e + m31624o2;
                i = m31624o2;
            } else {
                int m31619r2 = layoutParams.f4201f ? m31619r2(mo31391i) : c0944c.m31557s(mo31391i);
                i = m31619r2 - this.f4194u.mo31395e(m31422b);
                if (z3 && layoutParams.f4201f) {
                    LazySpanLookup.FullSpanItem m31645a2 = m31645a2(m31619r2);
                    m31645a2.f4205e = 1;
                    m31645a2.f4204d = m31957a;
                    this.f4180E.m31601a(m31645a2);
                }
                i2 = m31619r2;
            }
            if (layoutParams.f4201f && c0971f.f4354d == -1) {
                if (z3) {
                    this.f4188M = true;
                } else {
                    if (!(c0971f.f4355e == 1 ? m31670P1() : m31668Q1())) {
                        LazySpanLookup.FullSpanItem m31596f = this.f4180E.m31596f(m31957a);
                        if (m31596f != null) {
                            m31596f.f4207g = true;
                        }
                        this.f4188M = true;
                    }
                }
            }
            m31665R1(m31422b, layoutParams, c0971f);
            if (!m31606x2() || this.f4196w != 1) {
                int mo31387m = layoutParams.f4201f ? this.f4195v.mo31387m() : (c0944c.f4230e * this.f4197x) + this.f4195v.mo31387m();
                int mo31395e2 = this.f4195v.mo31395e(m31422b);
                int i6 = mo31387m;
                i4 = mo31395e2 + mo31387m;
                i3 = i6;
            } else {
                int mo31391i2 = layoutParams.f4201f ? this.f4195v.mo31391i() : this.f4195v.mo31391i() - (((this.f4192s - 1) - c0944c.f4230e) * this.f4197x);
                i3 = mo31391i2 - this.f4195v.mo31395e(m31422b);
                i4 = mo31391i2;
            }
            if (this.f4196w == 1) {
                m31778z0(m31422b, i3, i, i4, i2);
            } else {
                m31778z0(m31422b, i, i3, i2, i4);
            }
            if (layoutParams.f4201f) {
                m31671O2(this.f4198y.f4355e, i5);
            } else {
                m31655U2(c0944c, this.f4198y.f4355e, i5);
            }
            m31688E2(c0932u, this.f4198y);
            if (this.f4198y.f4358h && m31422b.hasFocusable()) {
                if (layoutParams.f4201f) {
                    this.f4177B.clear();
                } else {
                    this.f4177B.set(c0944c.f4230e, false);
                }
            }
            z2 = true;
        }
        if (!z) {
            m31688E2(c0932u, this.f4198y);
        }
        int mo31387m2 = this.f4198y.f4355e == -1 ? this.f4194u.mo31387m() - m31619r2(this.f4194u.mo31387m()) : m31624o2(this.f4194u.mo31391i()) - this.f4194u.mo31391i();
        return mo31387m2 > 0 ? Math.min(c0971f.f4352b, mo31387m2) : 0;
    }

    /* renamed from: e2 */
    private int m31638e2(int i) {
        int m31858J = m31858J();
        for (int i2 = 0; i2 < m31858J; i2++) {
            int m31816h0 = m31816h0(m31860I(i2));
            if (m31816h0 >= 0 && m31816h0 < i) {
                return m31816h0;
            }
        }
        return 0;
    }

    /* renamed from: i2 */
    private int m31633i2(int i) {
        for (int m31858J = m31858J() - 1; m31858J >= 0; m31858J--) {
            int m31816h0 = m31816h0(m31860I(m31858J));
            if (m31816h0 >= 0 && m31816h0 < i) {
                return m31816h0;
            }
        }
        return 0;
    }

    /* renamed from: k2 */
    private void m31630k2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, boolean z) {
        int mo31391i;
        int m31624o2 = m31624o2(Integer.MIN_VALUE);
        if (m31624o2 != Integer.MIN_VALUE && (mo31391i = this.f4194u.mo31391i() - m31624o2) > 0) {
            int i = mo31391i - (-m31680J2(-mo31391i, c0932u, c0938y));
            if (!z || i <= 0) {
                return;
            }
            this.f4194u.mo31383r(i);
        }
    }

    /* renamed from: l2 */
    private void m31629l2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, boolean z) {
        int mo31387m;
        int m31619r2 = m31619r2(Integer.MAX_VALUE);
        if (m31619r2 != Integer.MAX_VALUE && (mo31387m = m31619r2 - this.f4194u.mo31387m()) > 0) {
            int m31680J2 = mo31387m - m31680J2(mo31387m, c0932u, c0938y);
            if (!z || m31680J2 <= 0) {
                return;
            }
            this.f4194u.mo31383r(-m31680J2);
        }
    }

    /* renamed from: o2 */
    private int m31624o2(int i) {
        int m31561o = this.f4193t[0].m31561o(i);
        int i2 = 1;
        while (i2 < this.f4192s) {
            int m31561o2 = this.f4193t[i2].m31561o(i);
            int i3 = m31561o;
            if (m31561o2 > m31561o) {
                i3 = m31561o2;
            }
            i2++;
            m31561o = i3;
        }
        return m31561o;
    }

    /* renamed from: p2 */
    private int m31623p2(int i) {
        int m31557s = this.f4193t[0].m31557s(i);
        int i2 = 1;
        while (i2 < this.f4192s) {
            int m31557s2 = this.f4193t[i2].m31557s(i);
            int i3 = m31557s;
            if (m31557s2 > m31557s) {
                i3 = m31557s2;
            }
            i2++;
            m31557s = i3;
        }
        return m31557s;
    }

    /* renamed from: q2 */
    private int m31621q2(int i) {
        int m31561o = this.f4193t[0].m31561o(i);
        int i2 = 1;
        while (i2 < this.f4192s) {
            int m31561o2 = this.f4193t[i2].m31561o(i);
            int i3 = m31561o;
            if (m31561o2 < m31561o) {
                i3 = m31561o2;
            }
            i2++;
            m31561o = i3;
        }
        return m31561o;
    }

    /* renamed from: r2 */
    private int m31619r2(int i) {
        int m31557s = this.f4193t[0].m31557s(i);
        int i2 = 1;
        while (i2 < this.f4192s) {
            int m31557s2 = this.f4193t[i2].m31557s(i);
            int i3 = m31557s;
            if (m31557s2 < m31557s) {
                i3 = m31557s2;
            }
            i2++;
            m31557s = i3;
        }
        return m31557s;
    }

    /* renamed from: s2 */
    private C0944c m31616s2(C0971f c0971f) {
        int i;
        int i2;
        int i3 = -1;
        if (m31696B2(c0971f.f4355e)) {
            i2 = this.f4192s - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.f4192s;
            i = 1;
        }
        int i4 = c0971f.f4355e;
        C0944c c0944c = null;
        if (i4 == 1) {
            int i5 = Integer.MAX_VALUE;
            int mo31387m = this.f4194u.mo31387m();
            while (i2 != i3) {
                C0944c c0944c2 = this.f4193t[i2];
                int m31561o = c0944c2.m31561o(mo31387m);
                int i6 = i5;
                if (m31561o < i5) {
                    c0944c = c0944c2;
                    i6 = m31561o;
                }
                i2 += i;
                i5 = i6;
            }
            return c0944c;
        }
        int i7 = Integer.MIN_VALUE;
        int mo31391i = this.f4194u.mo31391i();
        C0944c c0944c3 = null;
        while (i2 != i3) {
            C0944c c0944c4 = this.f4193t[i2];
            int m31557s = c0944c4.m31557s(mo31391i);
            int i8 = i7;
            if (m31557s > i7) {
                c0944c3 = c0944c4;
                i8 = m31557s;
            }
            i2 += i;
            i7 = i8;
        }
        return c0944c3;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* renamed from: u2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m31612u2(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f4176A
            if (r0 == 0) goto L10
            r0 = r4
            int r0 = r0.m31626n2()
            r8 = r0
            goto L16
        L10:
            r0 = r4
            int r0 = r0.m31627m2()
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4180E
            r1 = r10
            int r0 = r0.m31594h(r1)
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4180E
            r1 = r5
            r2 = 1
            r0.m31591k(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4180E
            r1 = r6
            r2 = 1
            r0.m31592j(r1, r2)
            goto L83
        L6e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4180E
            r1 = r5
            r2 = r6
            r0.m31591k(r1, r2)
            goto L83
        L7a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4180E
            r1 = r5
            r2 = r6
            r0.m31592j(r1, r2)
        L83:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L8b
            return
        L8b:
            r0 = r4
            boolean r0 = r0.f4176A
            if (r0 == 0) goto L9a
            r0 = r4
            int r0 = r0.m31627m2()
            r5 = r0
            goto L9f
        L9a:
            r0 = r4
            int r0 = r0.m31626n2()
            r5 = r0
        L9f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto La9
            r0 = r4
            r0.m31790t1()
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31612u2(int, int, int):void");
    }

    /* renamed from: y2 */
    private void m31605y2(View view, int i, int i2, boolean z) {
        m31812j(view, this.f4186K);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.f4186K;
        int m31653V2 = m31653V2(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.f4186K;
        int m31653V22 = m31653V2(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z ? m31859I1(view, m31653V2, m31653V22, layoutParams) : m31864G1(view, m31653V2, m31653V22, layoutParams)) {
            view.measure(m31653V2, m31653V22);
        }
    }

    /* renamed from: z2 */
    private void m31604z2(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.f4201f) {
            if (this.f4196w == 1) {
                m31605y2(view, this.f4185J, RecyclerView.AbstractC0921o.m31857K(m31837W(), m31836X(), m31819g0() + m31825d0(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
            } else {
                m31605y2(view, RecyclerView.AbstractC0921o.m31857K(m31800o0(), m31797p0(), m31823e0() + m31821f0(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.f4185J, z);
            }
        } else if (this.f4196w == 1) {
            m31605y2(view, RecyclerView.AbstractC0921o.m31857K(this.f4197x, m31797p0(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.AbstractC0921o.m31857K(m31837W(), m31836X(), m31819g0() + m31825d0(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
        } else {
            m31605y2(view, RecyclerView.AbstractC0921o.m31857K(m31800o0(), m31797p0(), m31823e0() + m31821f0(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.AbstractC0921o.m31857K(this.f4197x, m31836X(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: C0 */
    public void mo31695C0(int i) {
        super.mo31695C0(i);
        for (int i2 = 0; i2 < this.f4192s; i2++) {
            this.f4193t[i2].m31555u(i);
        }
    }

    /* renamed from: C2 */
    void m31694C2(int i, RecyclerView.C0938y c0938y) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m31626n2();
            i2 = 1;
        } else {
            i3 = m31627m2();
            i2 = -1;
        }
        this.f4198y.f4351a = true;
        m31661S2(i3, c0938y);
        m31678K2(i2);
        C0971f c0971f = this.f4198y;
        c0971f.f4353c = i3 + c0971f.f4354d;
        c0971f.f4352b = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D */
    public RecyclerView.LayoutParams mo27390D() {
        return this.f4196w == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D0 */
    public void mo31693D0(int i) {
        super.mo31693D0(i);
        for (int i2 = 0; i2 < this.f4192s; i2++) {
            this.f4193t[i2].m31555u(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D1 */
    public void mo31692D1(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int m31823e0 = m31823e0() + m31821f0();
        int m31819g0 = m31819g0() + m31825d0();
        if (this.f4196w == 1) {
            i3 = RecyclerView.AbstractC0921o.m31803n(i2, rect.height() + m31819g0, m31830b0());
            i4 = RecyclerView.AbstractC0921o.m31803n(i, (this.f4197x * this.f4192s) + m31823e0, m31827c0());
        } else {
            i4 = RecyclerView.AbstractC0921o.m31803n(i, rect.width() + m31823e0, m31827c0());
            i3 = RecyclerView.AbstractC0921o.m31803n(i2, (this.f4197x * this.f4192s) + m31819g0, m31830b0());
        }
        m31869C1(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: E */
    public RecyclerView.LayoutParams mo31690E(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: E0 */
    public void mo31689E0(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        this.f4180E.m31600b();
        for (int i = 0; i < this.f4192s; i++) {
            this.f4193t[i].m31571e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: F */
    public RecyclerView.LayoutParams mo31687F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: I0 */
    public void mo31683I0(RecyclerView recyclerView, RecyclerView.C0932u c0932u) {
        super.mo31683I0(recyclerView, c0932u);
        m31799o1(this.f4191P);
        for (int i = 0; i < this.f4192s; i++) {
            this.f4193t[i].m31571e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: J0 */
    public View mo31681J0(View view, int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        View m31873B;
        View m31560p;
        if (m31858J() == 0 || (m31873B = m31873B(view)) == null) {
            return null;
        }
        m31682I2();
        int m31648Y1 = m31648Y1(i);
        if (m31648Y1 == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) m31873B.getLayoutParams();
        boolean z = layoutParams.f4201f;
        C0944c c0944c = layoutParams.f4200e;
        int m31626n2 = m31648Y1 == 1 ? m31626n2() : m31627m2();
        m31661S2(m31626n2, c0938y);
        m31678K2(m31648Y1);
        C0971f c0971f = this.f4198y;
        c0971f.f4353c = c0971f.f4354d + m31626n2;
        c0971f.f4352b = (int) (this.f4194u.mo31386n() * 0.33333334f);
        C0971f c0971f2 = this.f4198y;
        c0971f2.f4358h = true;
        c0971f2.f4351a = false;
        m31642c2(c0932u, c0971f2, c0938y);
        this.f4182G = this.f4176A;
        if (!z && (m31560p = c0944c.m31560p(m31626n2, m31648Y1)) != null && m31560p != m31873B) {
            return m31560p;
        }
        if (m31696B2(m31648Y1)) {
            for (int i2 = this.f4192s - 1; i2 >= 0; i2--) {
                View m31560p2 = this.f4193t[i2].m31560p(m31626n2, m31648Y1);
                if (m31560p2 != null && m31560p2 != m31873B) {
                    return m31560p2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.f4192s; i3++) {
                View m31560p3 = this.f4193t[i3].m31560p(m31626n2, m31648Y1);
                if (m31560p3 != null && m31560p3 != m31873B) {
                    return m31560p3;
                }
            }
        }
        boolean z2 = (this.f4199z ^ true) == (m31648Y1 == -1);
        if (!z) {
            View mo31870C = mo31870C(z2 ? c0944c.m31569g() : c0944c.m31568h());
            if (mo31870C != null && mo31870C != m31873B) {
                return mo31870C;
            }
        }
        if (!m31696B2(m31648Y1)) {
            for (int i4 = 0; i4 < this.f4192s; i4++) {
                View mo31870C2 = mo31870C(z2 ? this.f4193t[i4].m31569g() : this.f4193t[i4].m31568h());
                if (mo31870C2 != null && mo31870C2 != m31873B) {
                    return mo31870C2;
                }
            }
            return null;
        }
        for (int i5 = this.f4192s - 1; i5 >= 0; i5--) {
            if (i5 != c0944c.f4230e) {
                View mo31870C3 = mo31870C(z2 ? this.f4193t[i5].m31569g() : this.f4193t[i5].m31568h());
                if (mo31870C3 != null && mo31870C3 != m31873B) {
                    return mo31870C3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: J1 */
    public void mo4860J1(RecyclerView recyclerView, RecyclerView.C0938y c0938y, int i) {
        C0972g c0972g = new C0972g(recyclerView.getContext());
        c0972g.m31712p(i);
        m31856K1(c0972g);
    }

    /* renamed from: J2 */
    int m31680J2(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (m31858J() == 0 || i == 0) {
            return 0;
        }
        m31694C2(i, c0938y);
        int m31642c2 = m31642c2(c0932u, this.f4198y, c0938y);
        if (this.f4198y.f4352b >= m31642c2) {
            i = i < 0 ? -m31642c2 : m31642c2;
        }
        this.f4194u.mo31383r(-i);
        this.f4182G = this.f4176A;
        C0971f c0971f = this.f4198y;
        c0971f.f4352b = 0;
        m31688E2(c0932u, c0971f);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: K0 */
    public void mo31679K0(AccessibilityEvent accessibilityEvent) {
        super.mo31679K0(accessibilityEvent);
        if (m31858J() > 0) {
            View m31635g2 = m31635g2(false);
            View m31637f2 = m31637f2(false);
            if (m31635g2 == null || m31637f2 == null) {
                return;
            }
            int m31816h0 = m31816h0(m31635g2);
            int m31816h02 = m31816h0(m31637f2);
            if (m31816h0 < m31816h02) {
                accessibilityEvent.setFromIndex(m31816h0);
                accessibilityEvent.setToIndex(m31816h02);
                return;
            }
            accessibilityEvent.setFromIndex(m31816h02);
            accessibilityEvent.setToIndex(m31816h0);
        }
    }

    /* renamed from: L2 */
    public void m31677L2(int i) {
        if (i == 0 || i == 1) {
            mo31636g(null);
            if (i == this.f4196w) {
                return;
            }
            this.f4196w = i;
            AbstractC0975i abstractC0975i = this.f4194u;
            this.f4194u = this.f4195v;
            this.f4195v = abstractC0975i;
            m31790t1();
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: M1 */
    public boolean mo31676M1() {
        return this.f4184I == null;
    }

    /* renamed from: M2 */
    public void m31675M2(boolean z) {
        mo31636g(null);
        SavedState savedState = this.f4184I;
        if (savedState != null && savedState.f4215k != z) {
            savedState.f4215k = z;
        }
        this.f4199z = z;
        m31790t1();
    }

    /* renamed from: N2 */
    public void m31673N2(int i) {
        mo31636g(null);
        if (i != this.f4192s) {
            m31608w2();
            this.f4192s = i;
            this.f4177B = new BitSet(this.f4192s);
            this.f4193t = new C0944c[this.f4192s];
            for (int i2 = 0; i2 < this.f4192s; i2++) {
                this.f4193t[i2] = new C0944c(i2);
            }
            m31790t1();
        }
    }

    /* renamed from: P1 */
    boolean m31670P1() {
        int m31561o = this.f4193t[0].m31561o(Integer.MIN_VALUE);
        for (int i = 1; i < this.f4192s; i++) {
            if (this.f4193t[i].m31561o(Integer.MIN_VALUE) != m31561o) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: Q1 */
    boolean m31668Q1() {
        int m31557s = this.f4193t[0].m31557s(Integer.MIN_VALUE);
        for (int i = 1; i < this.f4192s; i++) {
            if (this.f4193t[i].m31557s(Integer.MIN_VALUE) != m31557s) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: Q2 */
    boolean m31667Q2(RecyclerView.C0938y c0938y, C0943b c0943b) {
        int i;
        boolean z = false;
        if (c0938y.m31700e() || (i = this.f4178C) == -1) {
            return false;
        }
        if (i < 0 || i >= c0938y.m31703b()) {
            this.f4178C = -1;
            this.f4179D = Integer.MIN_VALUE;
            return false;
        }
        SavedState savedState = this.f4184I;
        if (savedState != null && savedState.f4208d != -1 && savedState.f4210f >= 1) {
            c0943b.f4220b = Integer.MIN_VALUE;
            c0943b.f4219a = this.f4178C;
            return true;
        }
        View mo31870C = mo31870C(this.f4178C);
        if (mo31870C == null) {
            int i2 = this.f4178C;
            c0943b.f4219a = i2;
            int i3 = this.f4179D;
            if (i3 == Integer.MIN_VALUE) {
                if (m31662S1(i2) == 1) {
                    z = true;
                }
                c0943b.f4221c = z;
                c0943b.m31579a();
            } else {
                c0943b.m31578b(i3);
            }
            c0943b.f4222d = true;
            return true;
        }
        c0943b.f4219a = this.f4176A ? m31626n2() : m31627m2();
        if (this.f4179D != Integer.MIN_VALUE) {
            if (c0943b.f4221c) {
                c0943b.f4220b = (this.f4194u.mo31391i() - this.f4179D) - this.f4194u.mo31396d(mo31870C);
                return true;
            }
            c0943b.f4220b = (this.f4194u.mo31387m() + this.f4179D) - this.f4194u.mo31393g(mo31870C);
            return true;
        } else if (this.f4194u.mo31395e(mo31870C) > this.f4194u.mo31386n()) {
            c0943b.f4220b = c0943b.f4221c ? this.f4194u.mo31391i() : this.f4194u.mo31387m();
            return true;
        } else {
            int mo31393g = this.f4194u.mo31393g(mo31870C) - this.f4194u.mo31387m();
            if (mo31393g < 0) {
                c0943b.f4220b = -mo31393g;
                return true;
            }
            int mo31391i = this.f4194u.mo31391i() - this.f4194u.mo31396d(mo31870C);
            if (mo31391i < 0) {
                c0943b.f4220b = mo31391i;
                return true;
            }
            c0943b.f4220b = Integer.MIN_VALUE;
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: R0 */
    public void mo31666R0(RecyclerView recyclerView, int i, int i2) {
        m31612u2(i, i2, 1);
    }

    /* renamed from: R2 */
    void m31664R2(RecyclerView.C0938y c0938y, C0943b c0943b) {
        if (!m31667Q2(c0938y, c0943b) && !m31669P2(c0938y, c0943b)) {
            c0943b.m31579a();
            c0943b.f4219a = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: S0 */
    public void mo31663S0(RecyclerView recyclerView) {
        this.f4180E.m31600b();
        m31790t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: T0 */
    public void mo31660T0(RecyclerView recyclerView, int i, int i2, int i3) {
        m31612u2(i, i2, 8);
    }

    /* renamed from: T1 */
    boolean m31659T1() {
        int i;
        int i2;
        if (m31858J() == 0 || this.f4181F == 0 || !m31793r0()) {
            return false;
        }
        if (this.f4176A) {
            i2 = m31626n2();
            i = m31627m2();
        } else {
            i2 = m31627m2();
            i = m31626n2();
        }
        if (i2 == 0 && m31610v2() != null) {
            this.f4180E.m31600b();
            m31788u1();
            m31790t1();
            return true;
        } else if (!this.f4188M) {
            return false;
        } else {
            int i3 = this.f4176A ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem m31597e = this.f4180E.m31597e(i2, i4, i3, true);
            if (m31597e == null) {
                this.f4188M = false;
                this.f4180E.m31598d(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem m31597e2 = this.f4180E.m31597e(i2, m31597e.f4204d, i3 * (-1), true);
            if (m31597e2 == null) {
                this.f4180E.m31598d(m31597e.f4204d);
            } else {
                this.f4180E.m31598d(m31597e2.f4204d + 1);
            }
            m31788u1();
            m31790t1();
            return true;
        }
    }

    /* renamed from: T2 */
    void m31658T2(int i) {
        this.f4197x = i / this.f4192s;
        this.f4185J = View.MeasureSpec.makeMeasureSpec(i, this.f4195v.mo31389k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: U0 */
    public void mo31657U0(RecyclerView recyclerView, int i, int i2) {
        m31612u2(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: W0 */
    public void mo31652W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        m31612u2(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: X0 */
    public void mo27380X0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        m31697A2(c0932u, c0938y, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: Y0 */
    public void mo31649Y0(RecyclerView.C0938y c0938y) {
        super.mo31649Y0(c0938y);
        this.f4178C = -1;
        this.f4179D = Integer.MIN_VALUE;
        this.f4184I = null;
        this.f4187L.m31577c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0935x.AbstractC0937b
    /* renamed from: a */
    public PointF mo31646a(int i) {
        int m31662S1 = m31662S1(i);
        PointF pointF = new PointF();
        if (m31662S1 == 0) {
            return null;
        }
        if (this.f4196w == 0) {
            pointF.x = m31662S1;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = m31662S1;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: c1 */
    public void mo31643c1(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f4184I = savedState;
            if (this.f4178C != -1) {
                savedState.m31583a();
                this.f4184I.m31582b();
            }
            m31790t1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: d1 */
    public Parcelable mo31641d1() {
        int i;
        int i2;
        int i3;
        int[] iArr;
        if (this.f4184I != null) {
            return new SavedState(this.f4184I);
        }
        SavedState savedState = new SavedState();
        savedState.f4215k = this.f4199z;
        savedState.f4216l = this.f4182G;
        savedState.f4217m = this.f4183H;
        LazySpanLookup lazySpanLookup = this.f4180E;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f4202a) == null) {
            savedState.f4212h = 0;
        } else {
            savedState.f4213i = iArr;
            savedState.f4212h = iArr.length;
            savedState.f4214j = lazySpanLookup.f4203b;
        }
        if (m31858J() > 0) {
            savedState.f4208d = this.f4182G ? m31626n2() : m31627m2();
            savedState.f4209e = m31634h2();
            int i4 = this.f4192s;
            savedState.f4210f = i4;
            savedState.f4211g = new int[i4];
            for (int i5 = 0; i5 < this.f4192s; i5++) {
                if (this.f4182G) {
                    i2 = this.f4193t[i5].m31561o(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f4194u.mo31391i();
                        i = i2 - i3;
                        savedState.f4211g[i5] = i;
                    } else {
                        savedState.f4211g[i5] = i;
                    }
                } else {
                    i2 = this.f4193t[i5].m31557s(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f4194u.mo31387m();
                        i = i2 - i3;
                        savedState.f4211g[i5] = i;
                    } else {
                        savedState.f4211g[i5] = i;
                    }
                }
            }
        } else {
            savedState.f4208d = -1;
            savedState.f4209e = -1;
            savedState.f4210f = 0;
        }
        return savedState;
    }

    /* renamed from: d2 */
    public int[] m31640d2(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f4192s];
        } else if (iArr.length < this.f4192s) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f4192s + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f4192s; i++) {
            iArr[i] = this.f4193t[i].m31570f();
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: e1 */
    public void mo31639e1(int i) {
        if (i == 0) {
            m31659T1();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
        return r0;
     */
    /* renamed from: f2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View m31637f2(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f4194u
            int r0 = r0.mo31387m()
            r5 = r0
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f4194u
            int r0 = r0.mo31391i()
            r6 = r0
            r0 = r3
            int r0 = r0.m31858J()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = 0
            r8 = r0
        L1b:
            r0 = r7
            if (r0 < 0) goto L7f
            r0 = r3
            r1 = r7
            android.view.View r0 = r0.m31860I(r1)
            r9 = r0
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f4194u
            r1 = r9
            int r0 = r0.mo31393g(r1)
            r10 = r0
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f4194u
            r1 = r9
            int r0 = r0.mo31396d(r1)
            r11 = r0
            r0 = r8
            r12 = r0
            r0 = r11
            r1 = r5
            if (r0 <= r1) goto L75
            r0 = r10
            r1 = r6
            if (r0 < r1) goto L55
            r0 = r8
            r12 = r0
            goto L75
        L55:
            r0 = r11
            r1 = r6
            if (r0 <= r1) goto L72
            r0 = r4
            if (r0 != 0) goto L62
            goto L72
        L62:
            r0 = r8
            r12 = r0
            r0 = r8
            if (r0 != 0) goto L75
            r0 = r9
            r12 = r0
            goto L75
        L72:
            r0 = r9
            return r0
        L75:
            int r7 = r7 + (-1)
            r0 = r12
            r8 = r0
            goto L1b
        L7f:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31637f2(boolean):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: g */
    public void mo31636g(String str) {
        if (this.f4184I == null) {
            super.mo31636g(str);
        }
    }

    /* renamed from: g2 */
    View m31635g2(boolean z) {
        int mo31387m = this.f4194u.mo31387m();
        int mo31391i = this.f4194u.mo31391i();
        int m31858J = m31858J();
        View view = null;
        int i = 0;
        while (i < m31858J) {
            View m31860I = m31860I(i);
            int mo31393g = this.f4194u.mo31393g(m31860I);
            View view2 = view;
            if (this.f4194u.mo31396d(m31860I) > mo31387m) {
                if (mo31393g >= mo31391i) {
                    view2 = view;
                } else if (mo31393g >= mo31387m || !z) {
                    return m31860I;
                } else {
                    view2 = view;
                    if (view == null) {
                        view2 = m31860I;
                    }
                }
            }
            i++;
            view = view2;
        }
        return view;
    }

    /* renamed from: h2 */
    int m31634h2() {
        View m31637f2 = this.f4176A ? m31637f2(true) : m31635g2(true);
        return m31637f2 == null ? -1 : m31816h0(m31637f2);
    }

    /* renamed from: j2 */
    public int[] m31632j2(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f4192s];
        } else if (iArr.length < this.f4192s) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f4192s + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f4192s; i++) {
            iArr[i] = this.f4193t[i].m31567i();
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: k */
    public boolean mo31631k() {
        return this.f4196w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: l */
    public boolean mo27381l() {
        boolean z = true;
        if (this.f4196w != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: m */
    public boolean mo31628m(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: m2 */
    int m31627m2() {
        int i = 0;
        if (m31858J() != 0) {
            i = m31816h0(m31860I(0));
        }
        return i;
    }

    /* renamed from: n2 */
    int m31626n2() {
        int m31858J = m31858J();
        return m31858J == 0 ? 0 : m31816h0(m31860I(m31858J - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: o */
    public void mo31625o(int i, int i2, RecyclerView.C0938y c0938y, RecyclerView.AbstractC0921o.AbstractC0924c abstractC0924c) {
        int i3;
        int i4;
        int i5;
        if (this.f4196w != 0) {
            i = i2;
        }
        if (m31858J() == 0 || i == 0) {
            return;
        }
        m31694C2(i, c0938y);
        int[] iArr = this.f4190O;
        if (iArr == null || iArr.length < this.f4192s) {
            this.f4190O = new int[this.f4192s];
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f4192s) {
                break;
            }
            C0971f c0971f = this.f4198y;
            if (c0971f.f4354d == -1) {
                i5 = c0971f.f4356f;
                i4 = this.f4193t[i6].m31557s(i5);
            } else {
                i5 = this.f4193t[i6].m31561o(c0971f.f4357g);
                i4 = this.f4198y.f4357g;
            }
            int i8 = i5 - i4;
            int i9 = i3;
            if (i8 >= 0) {
                this.f4190O[i3] = i8;
                i9 = i3 + 1;
            }
            i6++;
            i7 = i9;
        }
        Arrays.sort(this.f4190O, 0, i3);
        for (int i10 = 0; i10 < i3 && this.f4198y.m31423a(c0938y); i10++) {
            abstractC0924c.mo31429a(this.f4198y.f4353c, this.f4190O[i10]);
            C0971f c0971f2 = this.f4198y;
            c0971f2.f4353c += c0971f2.f4354d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: q */
    public int mo31622q(RecyclerView.C0938y c0938y) {
        return m31654V1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: r */
    public int mo31620r(RecyclerView.C0938y c0938y) {
        return m31651W1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: s */
    public int mo31618s(RecyclerView.C0938y c0938y) {
        return m31650X1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: s0 */
    public boolean mo31617s0() {
        return this.f4181F != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: t */
    public int mo31615t(RecyclerView.C0938y c0938y) {
        return m31654V1(c0938y);
    }

    /* renamed from: t2 */
    public int m31614t2() {
        return this.f4192s;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: u */
    public int mo31613u(RecyclerView.C0938y c0938y) {
        return m31651W1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: v */
    public int mo31611v(RecyclerView.C0938y c0938y) {
        return m31650X1(c0938y);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e4, code lost:
        if (r0 == r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010b, code lost:
        if (r0 == r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010e, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0113, code lost:
        r6 = false;
     */
    /* renamed from: v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View m31610v2() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m31610v2():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: w1 */
    public int mo31609w1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        return m31680J2(i, c0932u, c0938y);
    }

    /* renamed from: w2 */
    public void m31608w2() {
        this.f4180E.m31600b();
        m31790t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: x1 */
    public void mo31607x1(int i) {
        SavedState savedState = this.f4184I;
        if (savedState != null && savedState.f4208d != i) {
            savedState.m31583a();
        }
        this.f4178C = i;
        this.f4179D = Integer.MIN_VALUE;
        m31790t1();
    }

    /* renamed from: x2 */
    boolean m31606x2() {
        boolean z = true;
        if (m31834Z() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: y1 */
    public int mo27387y1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        return m31680J2(i, c0932u, c0938y);
    }
}
