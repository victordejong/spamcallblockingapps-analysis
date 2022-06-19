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
import androidx.core.p023g.p024a.C0510d;
import androidx.customview.p026a.AbstractC0610a;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0956i implements RecyclerView.AbstractC0971s.AbstractC0973b {

    /* renamed from: a */
    C0983c[] f3012a;

    /* renamed from: b */
    AbstractC1014i f3013b;

    /* renamed from: c */
    AbstractC1014i f3014c;

    /* renamed from: j */
    private int f3021j;

    /* renamed from: k */
    private int f3022k;

    /* renamed from: m */
    private BitSet f3024m;

    /* renamed from: o */
    private boolean f3026o;

    /* renamed from: p */
    private boolean f3027p;

    /* renamed from: q */
    private SavedState f3028q;

    /* renamed from: r */
    private int f3029r;

    /* renamed from: w */
    private int[] f3034w;

    /* renamed from: i */
    private int f3020i = -1;

    /* renamed from: d */
    boolean f3015d = false;

    /* renamed from: e */
    boolean f3016e = false;

    /* renamed from: f */
    int f3017f = -1;

    /* renamed from: g */
    int f3018g = AbstractC0610a.INVALID_ID;

    /* renamed from: h */
    LazySpanLookup f3019h = new LazySpanLookup();

    /* renamed from: n */
    private int f3025n = 2;

    /* renamed from: s */
    private final Rect f3030s = new Rect();

    /* renamed from: t */
    private final C0981a f3031t = new C0981a();

    /* renamed from: u */
    private boolean f3032u = false;

    /* renamed from: v */
    private boolean f3033v = true;

    /* renamed from: x */
    private final Runnable f3035x = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m4829a();
        }
    };

    /* renamed from: l */
    private final C1010f f3023l = new C1010f();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static class LazySpanLookup {

        /* renamed from: a */
        int[] f3037a;

        /* renamed from: b */
        List<FullSpanItem> f3038b;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* renamed from: a */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };

            /* renamed from: a */
            int f3039a;

            /* renamed from: b */
            int f3040b;

            /* renamed from: c */
            int[] f3041c;

            /* renamed from: d */
            boolean f3042d;

            FullSpanItem() {
            }

            FullSpanItem(Parcel parcel) {
                this.f3039a = parcel.readInt();
                this.f3040b = parcel.readInt();
                this.f3042d = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.f3041c = new int[readInt];
                    parcel.readIntArray(this.f3041c);
                }
            }

            /* renamed from: a */
            int m4754a(int i) {
                int[] iArr = this.f3041c;
                return iArr == null ? 0 : iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f3039a + ", mGapDir=" + this.f3040b + ", mHasUnwantedGapAfter=" + this.f3042d + ", mGapPerSpan=" + Arrays.toString(this.f3041c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f3039a);
                parcel.writeInt(this.f3040b);
                parcel.writeInt(this.f3042d ? 1 : 0);
                int[] iArr = this.f3041c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f3041c);
            }
        }

        LazySpanLookup() {
        }

        /* renamed from: c */
        private void m4760c(int i, int i2) {
            List<FullSpanItem> list = this.f3038b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f3038b.get(size);
                if (fullSpanItem.f3039a >= i) {
                    if (fullSpanItem.f3039a < i + i2) {
                        this.f3038b.remove(size);
                    } else {
                        fullSpanItem.f3039a -= i2;
                    }
                }
            }
        }

        /* renamed from: d */
        private void m4758d(int i, int i2) {
            List<FullSpanItem> list = this.f3038b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f3038b.get(size);
                if (fullSpanItem.f3039a >= i) {
                    fullSpanItem.f3039a += i2;
                }
            }
        }

        /* renamed from: g */
        private int m4755g(int i) {
            if (this.f3038b == null) {
                return -1;
            }
            FullSpanItem m4756f = m4756f(i);
            if (m4756f != null) {
                this.f3038b.remove(m4756f);
            }
            int size = this.f3038b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f3038b.get(i2).f3039a >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f3038b.get(i2);
            this.f3038b.remove(i2);
            return fullSpanItem.f3039a;
        }

        /* renamed from: a */
        int m4768a(int i) {
            List<FullSpanItem> list = this.f3038b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f3038b.get(size).f3039a >= i) {
                        this.f3038b.remove(size);
                    }
                }
            }
            return m4763b(i);
        }

        /* renamed from: a */
        public FullSpanItem m4766a(int i, int i2, int i3, boolean z) {
            List<FullSpanItem> list = this.f3038b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f3038b.get(i4);
                if (fullSpanItem.f3039a >= i2) {
                    return null;
                }
                if (fullSpanItem.f3039a >= i && (i3 == 0 || fullSpanItem.f3040b == i3 || (z && fullSpanItem.f3042d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: a */
        void m4769a() {
            int[] iArr = this.f3037a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3038b = null;
        }

        /* renamed from: a */
        void m4767a(int i, int i2) {
            int[] iArr = this.f3037a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m4757e(i3);
            int[] iArr2 = this.f3037a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f3037a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m4760c(i, i2);
        }

        /* renamed from: a */
        void m4765a(int i, C0983c c0983c) {
            m4757e(i);
            this.f3037a[i] = c0983c.f3066e;
        }

        /* renamed from: a */
        public void m4764a(FullSpanItem fullSpanItem) {
            if (this.f3038b == null) {
                this.f3038b = new ArrayList();
            }
            int size = this.f3038b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f3038b.get(i);
                if (fullSpanItem2.f3039a == fullSpanItem.f3039a) {
                    this.f3038b.remove(i);
                }
                if (fullSpanItem2.f3039a >= fullSpanItem.f3039a) {
                    this.f3038b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f3038b.add(fullSpanItem);
        }

        /* renamed from: b */
        int m4763b(int i) {
            int[] iArr = this.f3037a;
            if (iArr != null && i < iArr.length) {
                int m4755g = m4755g(i);
                if (m4755g == -1) {
                    int[] iArr2 = this.f3037a;
                    Arrays.fill(iArr2, i, iArr2.length, -1);
                    return this.f3037a.length;
                }
                int i2 = m4755g + 1;
                Arrays.fill(this.f3037a, i, i2, -1);
                return i2;
            }
            return -1;
        }

        /* renamed from: b */
        void m4762b(int i, int i2) {
            int[] iArr = this.f3037a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m4757e(i3);
            int[] iArr2 = this.f3037a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f3037a, i, i3, -1);
            m4758d(i, i2);
        }

        /* renamed from: c */
        int m4761c(int i) {
            int[] iArr = this.f3037a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: d */
        int m4759d(int i) {
            int length = this.f3037a.length;
            while (true) {
                int i2 = length;
                if (i2 <= i) {
                    length = i2 * 2;
                } else {
                    return i2;
                }
            }
        }

        /* renamed from: e */
        void m4757e(int i) {
            int[] iArr = this.f3037a;
            if (iArr == null) {
                this.f3037a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f3037a, -1);
            } else if (i < iArr.length) {
            } else {
                this.f3037a = new int[m4759d(i)];
                System.arraycopy(iArr, 0, this.f3037a, 0, iArr.length);
                int[] iArr2 = this.f3037a;
                Arrays.fill(iArr2, iArr.length, iArr2.length, -1);
            }
        }

        /* renamed from: f */
        public FullSpanItem m4756f(int i) {
            List<FullSpanItem> list = this.f3038b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f3038b.get(size);
                if (fullSpanItem.f3039a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.1
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
        int f3043a;

        /* renamed from: b */
        int f3044b;

        /* renamed from: c */
        int f3045c;

        /* renamed from: d */
        int[] f3046d;

        /* renamed from: e */
        int f3047e;

        /* renamed from: f */
        int[] f3048f;

        /* renamed from: g */
        List<LazySpanLookup.FullSpanItem> f3049g;

        /* renamed from: h */
        boolean f3050h;

        /* renamed from: i */
        boolean f3051i;

        /* renamed from: j */
        boolean f3052j;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f3043a = parcel.readInt();
            this.f3044b = parcel.readInt();
            this.f3045c = parcel.readInt();
            int i = this.f3045c;
            if (i > 0) {
                this.f3046d = new int[i];
                parcel.readIntArray(this.f3046d);
            }
            this.f3047e = parcel.readInt();
            int i2 = this.f3047e;
            if (i2 > 0) {
                this.f3048f = new int[i2];
                parcel.readIntArray(this.f3048f);
            }
            this.f3050h = parcel.readInt() == 1;
            this.f3051i = parcel.readInt() == 1;
            this.f3052j = parcel.readInt() == 1;
            this.f3049g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f3045c = savedState.f3045c;
            this.f3043a = savedState.f3043a;
            this.f3044b = savedState.f3044b;
            this.f3046d = savedState.f3046d;
            this.f3047e = savedState.f3047e;
            this.f3048f = savedState.f3048f;
            this.f3050h = savedState.f3050h;
            this.f3051i = savedState.f3051i;
            this.f3052j = savedState.f3052j;
            this.f3049g = savedState.f3049g;
        }

        /* renamed from: a */
        void m4751a() {
            this.f3046d = null;
            this.f3045c = 0;
            this.f3047e = 0;
            this.f3048f = null;
            this.f3049g = null;
        }

        /* renamed from: b */
        void m4750b() {
            this.f3046d = null;
            this.f3045c = 0;
            this.f3043a = -1;
            this.f3044b = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3043a);
            parcel.writeInt(this.f3044b);
            parcel.writeInt(this.f3045c);
            if (this.f3045c > 0) {
                parcel.writeIntArray(this.f3046d);
            }
            parcel.writeInt(this.f3047e);
            if (this.f3047e > 0) {
                parcel.writeIntArray(this.f3048f);
            }
            parcel.writeInt(this.f3050h ? 1 : 0);
            parcel.writeInt(this.f3051i ? 1 : 0);
            parcel.writeInt(this.f3052j ? 1 : 0);
            parcel.writeList(this.f3049g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    public class C0981a {

        /* renamed from: a */
        int f3053a;

        /* renamed from: b */
        int f3054b;

        /* renamed from: c */
        boolean f3055c;

        /* renamed from: d */
        boolean f3056d;

        /* renamed from: e */
        boolean f3057e;

        /* renamed from: f */
        int[] f3058f;

        C0981a() {
            StaggeredGridLayoutManager.this = r4;
            m4747a();
        }

        /* renamed from: a */
        void m4747a() {
            this.f3053a = -1;
            this.f3054b = AbstractC0610a.INVALID_ID;
            this.f3055c = false;
            this.f3056d = false;
            this.f3057e = false;
            int[] iArr = this.f3058f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        /* renamed from: a */
        void m4746a(int i) {
            if (this.f3055c) {
                this.f3054b = StaggeredGridLayoutManager.this.f3013b.mo4568d() - i;
            } else {
                this.f3054b = StaggeredGridLayoutManager.this.f3013b.mo4570c() + i;
            }
        }

        /* renamed from: a */
        void m4745a(C0983c[] c0983cArr) {
            int length = c0983cArr.length;
            int[] iArr = this.f3058f;
            if (iArr == null || iArr.length < length) {
                this.f3058f = new int[StaggeredGridLayoutManager.this.f3012a.length];
            }
            for (int i = 0; i < length; i++) {
                this.f3058f[i] = c0983cArr[i].m4740a(AbstractC0610a.INVALID_ID);
            }
        }

        /* renamed from: b */
        void m4744b() {
            this.f3054b = this.f3055c ? StaggeredGridLayoutManager.this.f3013b.mo4568d() : StaggeredGridLayoutManager.this.f3013b.mo4570c();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public static class C0982b extends RecyclerView.C0961j {

        /* renamed from: a */
        C0983c f3060a;

        /* renamed from: b */
        boolean f3061b;

        public C0982b(int i, int i2) {
            super(i, i2);
        }

        public C0982b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0982b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0982b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        /* renamed from: a */
        public boolean m4743a() {
            return this.f3061b;
        }

        /* renamed from: b */
        public final int m4742b() {
            C0983c c0983c = this.f3060a;
            if (c0983c == null) {
                return -1;
            }
            return c0983c.f3066e;
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
    public class C0983c {

        /* renamed from: a */
        ArrayList<View> f3062a = new ArrayList<>();

        /* renamed from: b */
        int f3063b = AbstractC0610a.INVALID_ID;

        /* renamed from: c */
        int f3064c = AbstractC0610a.INVALID_ID;

        /* renamed from: d */
        int f3065d = 0;

        /* renamed from: e */
        final int f3066e;

        C0983c(int i) {
            StaggeredGridLayoutManager.this = r5;
            this.f3066e = i;
        }

        /* renamed from: a */
        int m4740a(int i) {
            int i2 = this.f3063b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f3062a.size() == 0) {
                return i;
            }
            m4741a();
            return this.f3063b;
        }

        /* renamed from: a */
        int m4738a(int i, int i2, boolean z) {
            return m4737a(i, i2, false, false, z);
        }

        /* renamed from: a */
        int m4737a(int i, int i2, boolean z, boolean z2, boolean z3) {
            int mo4570c = StaggeredGridLayoutManager.this.f3013b.mo4570c();
            int mo4568d = StaggeredGridLayoutManager.this.f3013b.mo4568d();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f3062a.get(i);
                int mo4572a = StaggeredGridLayoutManager.this.f3013b.mo4572a(view);
                int mo4571b = StaggeredGridLayoutManager.this.f3013b.mo4571b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? mo4572a < mo4568d : mo4572a <= mo4568d;
                if (!z3 ? mo4571b > mo4570c : mo4571b >= mo4570c) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (mo4572a < mo4570c || mo4571b > mo4568d) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else if (mo4572a >= mo4570c && mo4571b <= mo4568d) {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: a */
        public View m4739a(int i, int i2) {
            View view;
            View view2 = null;
            if (i2 != -1) {
                int size = this.f3062a.size() - 1;
                View view3 = null;
                while (true) {
                    View view4 = view3;
                    view = view4;
                    if (size < 0) {
                        break;
                    }
                    View view5 = this.f3062a.get(size);
                    if (StaggeredGridLayoutManager.this.f3015d) {
                        view = view4;
                        if (StaggeredGridLayoutManager.this.getPosition(view5) >= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f3015d && StaggeredGridLayoutManager.this.getPosition(view5) <= i) {
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
                int size2 = this.f3062a.size();
                int i3 = 0;
                while (true) {
                    view = view2;
                    if (i3 >= size2) {
                        break;
                    }
                    View view6 = this.f3062a.get(i3);
                    if (StaggeredGridLayoutManager.this.f3015d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.this.getPosition(view6) <= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f3015d && StaggeredGridLayoutManager.this.getPosition(view6) >= i) {
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

        /* renamed from: a */
        void m4741a() {
            LazySpanLookup.FullSpanItem m4756f;
            View view = this.f3062a.get(0);
            C0982b m4729c = m4729c(view);
            this.f3063b = StaggeredGridLayoutManager.this.f3013b.mo4572a(view);
            if (!m4729c.f3061b || (m4756f = StaggeredGridLayoutManager.this.f3019h.m4756f(m4729c.getViewLayoutPosition())) == null || m4756f.f3040b != -1) {
                return;
            }
            this.f3063b -= m4756f.m4754a(this.f3066e);
        }

        /* renamed from: a */
        void m4736a(View view) {
            C0982b m4729c = m4729c(view);
            m4729c.f3060a = this;
            this.f3062a.add(0, view);
            this.f3063b = AbstractC0610a.INVALID_ID;
            if (this.f3062a.size() == 1) {
                this.f3064c = AbstractC0610a.INVALID_ID;
            }
            if (m4729c.isItemRemoved() || m4729c.isItemChanged()) {
                this.f3065d += StaggeredGridLayoutManager.this.f3013b.mo4565e(view);
            }
        }

        /* renamed from: a */
        void m4735a(boolean z, int i) {
            int m4733b = z ? m4733b(AbstractC0610a.INVALID_ID) : m4740a(AbstractC0610a.INVALID_ID);
            m4726e();
            if (m4733b == Integer.MIN_VALUE) {
                return;
            }
            if (z && m4733b < StaggeredGridLayoutManager.this.f3013b.mo4568d()) {
                return;
            }
            if (!z && m4733b > StaggeredGridLayoutManager.this.f3013b.mo4570c()) {
                return;
            }
            int i2 = m4733b;
            if (i != Integer.MIN_VALUE) {
                i2 = m4733b + i;
            }
            this.f3064c = i2;
            this.f3063b = i2;
        }

        /* renamed from: b */
        int m4734b() {
            int i = this.f3063b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m4741a();
            return this.f3063b;
        }

        /* renamed from: b */
        int m4733b(int i) {
            int i2 = this.f3064c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f3062a.size() == 0) {
                return i;
            }
            m4731c();
            return this.f3064c;
        }

        /* renamed from: b */
        void m4732b(View view) {
            C0982b m4729c = m4729c(view);
            m4729c.f3060a = this;
            this.f3062a.add(view);
            this.f3064c = AbstractC0610a.INVALID_ID;
            if (this.f3062a.size() == 1) {
                this.f3063b = AbstractC0610a.INVALID_ID;
            }
            if (m4729c.isItemRemoved() || m4729c.isItemChanged()) {
                this.f3065d += StaggeredGridLayoutManager.this.f3013b.mo4565e(view);
            }
        }

        /* renamed from: c */
        C0982b m4729c(View view) {
            return (C0982b) view.getLayoutParams();
        }

        /* renamed from: c */
        void m4731c() {
            LazySpanLookup.FullSpanItem m4756f;
            ArrayList<View> arrayList = this.f3062a;
            View view = arrayList.get(arrayList.size() - 1);
            C0982b m4729c = m4729c(view);
            this.f3064c = StaggeredGridLayoutManager.this.f3013b.mo4571b(view);
            if (!m4729c.f3061b || (m4756f = StaggeredGridLayoutManager.this.f3019h.m4756f(m4729c.getViewLayoutPosition())) == null || m4756f.f3040b != 1) {
                return;
            }
            this.f3064c += m4756f.m4754a(this.f3066e);
        }

        /* renamed from: c */
        void m4730c(int i) {
            this.f3063b = i;
            this.f3064c = i;
        }

        /* renamed from: d */
        int m4728d() {
            int i = this.f3064c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m4731c();
            return this.f3064c;
        }

        /* renamed from: d */
        void m4727d(int i) {
            int i2 = this.f3063b;
            if (i2 != Integer.MIN_VALUE) {
                this.f3063b = i2 + i;
            }
            int i3 = this.f3064c;
            if (i3 != Integer.MIN_VALUE) {
                this.f3064c = i3 + i;
            }
        }

        /* renamed from: e */
        void m4726e() {
            this.f3062a.clear();
            m4725f();
            this.f3065d = 0;
        }

        /* renamed from: f */
        void m4725f() {
            this.f3063b = AbstractC0610a.INVALID_ID;
            this.f3064c = AbstractC0610a.INVALID_ID;
        }

        /* renamed from: g */
        void m4724g() {
            int size = this.f3062a.size();
            View remove = this.f3062a.remove(size - 1);
            C0982b m4729c = m4729c(remove);
            m4729c.f3060a = null;
            if (m4729c.isItemRemoved() || m4729c.isItemChanged()) {
                this.f3065d -= StaggeredGridLayoutManager.this.f3013b.mo4565e(remove);
            }
            if (size == 1) {
                this.f3063b = AbstractC0610a.INVALID_ID;
            }
            this.f3064c = AbstractC0610a.INVALID_ID;
        }

        /* renamed from: h */
        void m4723h() {
            View remove = this.f3062a.remove(0);
            C0982b m4729c = m4729c(remove);
            m4729c.f3060a = null;
            if (this.f3062a.size() == 0) {
                this.f3064c = AbstractC0610a.INVALID_ID;
            }
            if (m4729c.isItemRemoved() || m4729c.isItemChanged()) {
                this.f3065d -= StaggeredGridLayoutManager.this.f3013b.mo4565e(remove);
            }
            this.f3063b = AbstractC0610a.INVALID_ID;
        }

        /* renamed from: i */
        public int m4722i() {
            return this.f3065d;
        }

        /* renamed from: j */
        public int m4721j() {
            return StaggeredGridLayoutManager.this.f3015d ? m4738a(this.f3062a.size() - 1, -1, true) : m4738a(0, this.f3062a.size(), true);
        }

        /* renamed from: k */
        public int m4720k() {
            return StaggeredGridLayoutManager.this.f3015d ? m4738a(0, this.f3062a.size(), true) : m4738a(this.f3062a.size() - 1, -1, true);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0956i.C0960b properties = getProperties(context, attributeSet, i, i2);
        m4807b(properties.f2953a);
        m4828a(properties.f2954b);
        m4809a(properties.f2955c);
        m4776l();
    }

    /* renamed from: a */
    private int m4826a(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: a */
    private int m4816a(RecyclerView.C0968p c0968p, C1010f c1010f, RecyclerView.C0974t c0974t) {
        boolean z;
        C0983c c0983c;
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        this.f3024m.set(0, this.f3020i, true);
        int i6 = this.f3023l.f3195i ? c1010f.f3191e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c1010f.f3191e == 1 ? c1010f.f3193g + c1010f.f3188b : c1010f.f3192f - c1010f.f3188b;
        m4827a(c1010f.f3191e, i6);
        int mo4568d = this.f3016e ? this.f3013b.mo4568d() : this.f3013b.mo4570c();
        boolean z2 = false;
        while (true) {
            z = z2;
            if (!c1010f.m4599a(c0974t) || (!this.f3023l.f3195i && this.f3024m.isEmpty())) {
                break;
            }
            View m4600a = c1010f.m4600a(c0968p);
            C0982b c0982b = (C0982b) m4600a.getLayoutParams();
            int viewLayoutPosition = c0982b.getViewLayoutPosition();
            int m4761c = this.f3019h.m4761c(viewLayoutPosition);
            int i7 = m4761c == -1 ? 1 : i5;
            if (i7 != 0) {
                c0983c = c0982b.f3061b ? this.f3012a[i5] : m4810a(c1010f);
                this.f3019h.m4765a(viewLayoutPosition, c0983c);
            } else {
                c0983c = this.f3012a[m4761c];
            }
            c0982b.f3060a = c0983c;
            if (c1010f.f3191e == 1) {
                addView(m4600a);
            } else {
                addView(m4600a, i5);
            }
            m4820a(m4600a, c0982b, (boolean) i5);
            if (c1010f.f3191e == 1) {
                int m4781i = c0982b.f3061b ? m4781i(mo4568d) : c0983c.m4733b(mo4568d);
                int mo4565e = this.f3013b.mo4565e(m4600a);
                if (i7 != 0 && c0982b.f3061b) {
                    LazySpanLookup.FullSpanItem m4789e = m4789e(m4781i);
                    m4789e.f3040b = -1;
                    m4789e.f3039a = viewLayoutPosition;
                    this.f3019h.m4764a(m4789e);
                }
                i = mo4565e + m4781i;
                i2 = m4781i;
            } else {
                int m4783h = c0982b.f3061b ? m4783h(mo4568d) : c0983c.m4740a(mo4568d);
                i2 = m4783h - this.f3013b.mo4565e(m4600a);
                if (i7 != 0 && c0982b.f3061b) {
                    LazySpanLookup.FullSpanItem m4787f = m4787f(m4783h);
                    m4787f.f3040b = 1;
                    m4787f.f3039a = viewLayoutPosition;
                    this.f3019h.m4764a(m4787f);
                }
                i = m4783h;
            }
            if (c0982b.f3061b && c1010f.f3190d == -1) {
                if (i7 != 0) {
                    this.f3032u = true;
                } else {
                    if (!(c1010f.f3191e == 1 ? m4786g() : m4784h())) {
                        LazySpanLookup.FullSpanItem m4756f = this.f3019h.m4756f(viewLayoutPosition);
                        if (m4756f != null) {
                            m4756f.f3042d = true;
                        }
                        this.f3032u = true;
                    }
                }
            }
            m4821a(m4600a, c0982b, c1010f);
            if (!m4790e() || this.f3021j != 1) {
                int mo4570c = c0982b.f3061b ? this.f3014c.mo4570c() : (c0983c.f3066e * this.f3022k) + this.f3014c.mo4570c();
                i3 = this.f3014c.mo4565e(m4600a) + mo4570c;
                i4 = mo4570c;
            } else {
                int mo4568d2 = c0982b.f3061b ? this.f3014c.mo4568d() : this.f3014c.mo4568d() - (((this.f3020i - 1) - c0983c.f3066e) * this.f3022k);
                int mo4565e2 = this.f3014c.mo4565e(m4600a);
                int i8 = mo4568d2;
                i4 = mo4568d2 - mo4565e2;
                i3 = i8;
            }
            if (this.f3021j == 1) {
                layoutDecoratedWithMargins(m4600a, i4, i2, i3, i);
            } else {
                layoutDecoratedWithMargins(m4600a, i2, i4, i, i3);
            }
            if (c0982b.f3061b) {
                m4827a(this.f3023l.f3191e, i6);
            } else {
                m4811a(c0983c, this.f3023l.f3191e, i6);
            }
            m4817a(c0968p, this.f3023l);
            if (this.f3023l.f3194h && m4600a.hasFocusable()) {
                if (c0982b.f3061b) {
                    this.f3024m.clear();
                } else {
                    this.f3024m.set(c0983c.f3066e, false);
                }
            }
            i5 = 0;
            z2 = true;
        }
        if (!z) {
            m4817a(c0968p, this.f3023l);
        }
        int mo4570c2 = this.f3023l.f3191e == -1 ? this.f3013b.mo4570c() - m4783h(this.f3013b.mo4570c()) : m4781i(this.f3013b.mo4568d()) - this.f3013b.mo4568d();
        if (mo4570c2 > 0) {
            i5 = Math.min(c1010f.f3188b, mo4570c2);
        }
        return i5;
    }

    /* renamed from: a */
    private int m4815a(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C1019k.m4556a(c0974t, this.f3013b, m4799b(!this.f3033v), m4793c(!this.f3033v), this, this.f3033v, this.f3016e);
    }

    /* renamed from: a */
    private C0983c m4810a(C1010f c1010f) {
        int i;
        int i2;
        int i3 = -1;
        if (m4777k(c1010f.f3191e)) {
            i2 = this.f3020i - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.f3020i;
            i = 1;
        }
        int i4 = c1010f.f3191e;
        C0983c c0983c = null;
        if (i4 == 1) {
            int i5 = Integer.MAX_VALUE;
            int mo4570c = this.f3013b.mo4570c();
            while (i2 != i3) {
                C0983c c0983c2 = this.f3012a[i2];
                int m4733b = c0983c2.m4733b(mo4570c);
                int i6 = i5;
                if (m4733b < i5) {
                    c0983c = c0983c2;
                    i6 = m4733b;
                }
                i2 += i;
                i5 = i6;
            }
            return c0983c;
        }
        int i7 = Integer.MIN_VALUE;
        int mo4568d = this.f3013b.mo4568d();
        C0983c c0983c3 = null;
        int i8 = i2;
        while (i8 != i3) {
            C0983c c0983c4 = this.f3012a[i8];
            int m4740a = c0983c4.m4740a(mo4568d);
            int i9 = i7;
            if (m4740a > i7) {
                c0983c3 = c0983c4;
                i9 = m4740a;
            }
            i8 += i;
            i7 = i9;
        }
        return c0983c3;
    }

    /* renamed from: a */
    private void m4827a(int i, int i2) {
        for (int i3 = 0; i3 < this.f3020i; i3++) {
            if (!this.f3012a[i3].f3062a.isEmpty()) {
                m4811a(this.f3012a[i3], i, i2);
            }
        }
    }

    /* renamed from: a */
    private void m4823a(View view) {
        for (int i = this.f3020i - 1; i >= 0; i--) {
            this.f3012a[i].m4732b(view);
        }
    }

    /* renamed from: a */
    private void m4822a(View view, int i, int i2, boolean z) {
        calculateItemDecorationsForChild(view, this.f3030s);
        C0982b c0982b = (C0982b) view.getLayoutParams();
        int m4826a = m4826a(i, c0982b.leftMargin + this.f3030s.left, c0982b.rightMargin + this.f3030s.right);
        int m4826a2 = m4826a(i2, c0982b.topMargin + this.f3030s.top, c0982b.bottomMargin + this.f3030s.bottom);
        if (z ? shouldReMeasureChild(view, m4826a, m4826a2, c0982b) : shouldMeasureChild(view, m4826a, m4826a2, c0982b)) {
            view.measure(m4826a, m4826a2);
        }
    }

    /* renamed from: a */
    private void m4821a(View view, C0982b c0982b, C1010f c1010f) {
        if (c1010f.f3191e == 1) {
            if (c0982b.f3061b) {
                m4823a(view);
            } else {
                c0982b.f3060a.m4732b(view);
            }
        } else if (c0982b.f3061b) {
            m4804b(view);
        } else {
            c0982b.f3060a.m4736a(view);
        }
    }

    /* renamed from: a */
    private void m4820a(View view, C0982b c0982b, boolean z) {
        if (c0982b.f3061b) {
            if (this.f3021j == 1) {
                m4822a(view, this.f3029r, getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), c0982b.height, true), z);
            } else {
                m4822a(view, getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), c0982b.width, true), this.f3029r, z);
            }
        } else if (this.f3021j == 1) {
            m4822a(view, getChildMeasureSpec(this.f3022k, getWidthMode(), 0, c0982b.width, false), getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), c0982b.height, true), z);
        } else {
            m4822a(view, getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), c0982b.width, true), getChildMeasureSpec(this.f3022k, getHeightMode(), 0, c0982b.height, false), z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r11 >= r4.f3020i) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r4.f3012a[r11].m4723h();
        r11 = r11 + 1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4819a(androidx.recyclerview.widget.RecyclerView.C0968p r5, int r6) {
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
            androidx.recyclerview.widget.i r0 = r0.f3013b
            r1 = r8
            int r0 = r0.mo4571b(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r4
            androidx.recyclerview.widget.i r0 = r0.f3013b
            r1 = r8
            int r0 = r0.mo4569c(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.C0982b) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f3061b
            if (r0 == 0) goto L7c
            r0 = 0
            r10 = r0
        L3f:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r4
            int r1 = r1.f3020i
            if (r0 >= r1) goto L63
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f3012a
            r1 = r10
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f3062a
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
            int r1 = r1.f3020i
            if (r0 >= r1) goto L94
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f3012a
            r1 = r11
            r0 = r0[r1]
            r0.m4723h()
            int r11 = r11 + 1
            goto L63
        L7c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f3060a
            java.util.ArrayList<android.view.View> r0 = r0.f3062a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L8c
            return
        L8c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f3060a
            r0.m4723h()
        L94:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.removeAndRecycleView(r1, r2)
            goto L0
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m4819a(androidx.recyclerview.widget.RecyclerView$p, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02bf  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4818a(androidx.recyclerview.widget.RecyclerView.C0968p r6, androidx.recyclerview.widget.RecyclerView.C0974t r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m4818a(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t, boolean):void");
    }

    /* renamed from: a */
    private void m4817a(RecyclerView.C0968p c0968p, C1010f c1010f) {
        if (!c1010f.f3187a || c1010f.f3195i) {
            return;
        }
        if (c1010f.f3188b == 0) {
            if (c1010f.f3191e == -1) {
                m4803b(c0968p, c1010f.f3193g);
            } else {
                m4819a(c0968p, c1010f.f3192f);
            }
        } else if (c1010f.f3191e == -1) {
            int m4785g = c1010f.f3192f - m4785g(c1010f.f3192f);
            m4803b(c0968p, m4785g < 0 ? c1010f.f3193g : c1010f.f3193g - Math.min(m4785g, c1010f.f3188b));
        } else {
            int m4779j = m4779j(c1010f.f3193g) - c1010f.f3193g;
            m4819a(c0968p, m4779j < 0 ? c1010f.f3192f : Math.min(m4779j, c1010f.f3188b) + c1010f.f3192f);
        }
    }

    /* renamed from: a */
    private void m4813a(C0981a c0981a) {
        if (this.f3028q.f3045c > 0) {
            if (this.f3028q.f3045c == this.f3020i) {
                for (int i = 0; i < this.f3020i; i++) {
                    this.f3012a[i].m4726e();
                    int i2 = this.f3028q.f3046d[i];
                    int i3 = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = i2 + (this.f3028q.f3051i ? this.f3013b.mo4568d() : this.f3013b.mo4570c());
                    }
                    this.f3012a[i].m4730c(i3);
                }
            } else {
                this.f3028q.m4751a();
                SavedState savedState = this.f3028q;
                savedState.f3043a = savedState.f3044b;
            }
        }
        this.f3027p = this.f3028q.f3052j;
        m4809a(this.f3028q.f3050h);
        m4774m();
        if (this.f3028q.f3043a != -1) {
            this.f3017f = this.f3028q.f3043a;
            c0981a.f3055c = this.f3028q.f3051i;
        } else {
            c0981a.f3055c = this.f3016e;
        }
        if (this.f3028q.f3047e > 1) {
            this.f3019h.f3037a = this.f3028q.f3048f;
            this.f3019h.f3038b = this.f3028q.f3049g;
        }
    }

    /* renamed from: a */
    private void m4811a(C0983c c0983c, int i, int i2) {
        int m4722i = c0983c.m4722i();
        if (i == -1) {
            if (c0983c.m4734b() + m4722i > i2) {
                return;
            }
            this.f3024m.set(c0983c.f3066e, false);
        } else if (c0983c.m4728d() - m4722i < i2) {
        } else {
            this.f3024m.set(c0983c.f3066e, false);
        }
    }

    /* renamed from: a */
    private boolean m4812a(C0983c c0983c) {
        if (this.f3016e) {
            if (c0983c.m4728d() >= this.f3013b.mo4568d()) {
                return false;
            }
            return !c0983c.m4729c(c0983c.f3062a.get(c0983c.f3062a.size() - 1)).f3061b;
        } else if (c0983c.m4734b() <= this.f3013b.mo4570c()) {
            return false;
        } else {
            return !c0983c.m4729c(c0983c.f3062a.get(0)).f3061b;
        }
    }

    /* renamed from: b */
    private int m4801b(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C1019k.m4557a(c0974t, this.f3013b, m4799b(!this.f3033v), m4793c(!this.f3033v), this, this.f3033v);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4806b(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f3016e
            if (r0 == 0) goto L10
            r0 = r4
            int r0 = r0.m4782i()
            r8 = r0
            goto L16
        L10:
            r0 = r4
            int r0 = r0.m4780j()
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
            r10 = r0
            r0 = r6
            r9 = r0
            goto L40
        L34:
            r0 = r5
            r1 = r6
            int r0 = r0 + r1
            r9 = r0
        L39:
            r0 = r9
            r10 = r0
            r0 = r5
            r9 = r0
        L40:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f3019h
            r1 = r9
            int r0 = r0.m4763b(r1)
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L7e
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L72
            r0 = r7
            r1 = 8
            if (r0 == r1) goto L5d
            goto L87
        L5d:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f3019h
            r1 = r5
            r2 = 1
            r0.m4767a(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f3019h
            r1 = r6
            r2 = 1
            r0.m4762b(r1, r2)
            goto L87
        L72:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f3019h
            r1 = r5
            r2 = r6
            r0.m4767a(r1, r2)
            goto L87
        L7e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f3019h
            r1 = r5
            r2 = r6
            r0.m4762b(r1, r2)
        L87:
            r0 = r10
            r1 = r8
            if (r0 > r1) goto L8f
            return
        L8f:
            r0 = r4
            boolean r0 = r0.f3016e
            if (r0 == 0) goto L9e
            r0 = r4
            int r0 = r0.m4780j()
            r5 = r0
            goto La3
        L9e:
            r0 = r4
            int r0 = r0.m4782i()
            r5 = r0
        La3:
            r0 = r9
            r1 = r5
            if (r0 > r1) goto Lad
            r0 = r4
            r0.requestLayout()
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m4806b(int, int, int):void");
    }

    /* renamed from: b */
    private void m4805b(int i, RecyclerView.C0974t c0974t) {
        int i2;
        int i3;
        int m4845c;
        C1010f c1010f = this.f3023l;
        c1010f.f3188b = 0;
        c1010f.f3189c = i;
        if (!isSmoothScrolling() || (m4845c = c0974t.m4845c()) == -1) {
            i3 = 0;
            i2 = 0;
        } else {
            if (this.f3016e == (m4845c < i)) {
                i3 = this.f3013b.mo4564f();
                i2 = 0;
            } else {
                i2 = this.f3013b.mo4564f();
                i3 = 0;
            }
        }
        if (getClipToPadding()) {
            this.f3023l.f3192f = this.f3013b.mo4570c() - i2;
            this.f3023l.f3193g = this.f3013b.mo4568d() + i3;
        } else {
            this.f3023l.f3193g = this.f3013b.mo4566e() + i3;
            this.f3023l.f3192f = -i2;
        }
        C1010f c1010f2 = this.f3023l;
        c1010f2.f3194h = false;
        c1010f2.f3187a = true;
        boolean z = false;
        if (this.f3013b.mo4561h() == 0) {
            z = false;
            if (this.f3013b.mo4566e() == 0) {
                z = true;
            }
        }
        c1010f2.f3195i = z;
    }

    /* renamed from: b */
    private void m4804b(View view) {
        for (int i = this.f3020i - 1; i >= 0; i--) {
            this.f3012a[i].m4736a(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        if (r12 >= r4.f3020i) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        r4.f3012a[r12].m4724g();
        r12 = r12 + 1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4803b(androidx.recyclerview.widget.RecyclerView.C0968p r5, int r6) {
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
            androidx.recyclerview.widget.i r0 = r0.f3013b
            r1 = r8
            int r0 = r0.mo4572a(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r4
            androidx.recyclerview.widget.i r0 = r0.f3013b
            r1 = r8
            int r0 = r0.mo4567d(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.C0982b) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f3061b
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
            int r1 = r1.f3020i
            if (r0 >= r1) goto L69
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f3012a
            r1 = r11
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f3062a
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
            int r1 = r1.f3020i
            if (r0 >= r1) goto L9a
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r0 = r0.f3012a
            r1 = r12
            r0 = r0[r1]
            r0.m4724g()
            int r12 = r12 + 1
            goto L69
        L82:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f3060a
            java.util.ArrayList<android.view.View> r0 = r0.f3062a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L92
            return
        L92:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = r0.f3060a
            r0.m4724g()
        L9a:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.removeAndRecycleView(r1, r2)
            int r7 = r7 + (-1)
            goto L7
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m4803b(androidx.recyclerview.widget.RecyclerView$p, int):void");
    }

    /* renamed from: b */
    private void m4802b(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, boolean z) {
        int mo4568d;
        int m4781i = m4781i(AbstractC0610a.INVALID_ID);
        if (m4781i != Integer.MIN_VALUE && (mo4568d = this.f3013b.mo4568d() - m4781i) > 0) {
            int i = mo4568d - (-m4825a(-mo4568d, c0968p, c0974t));
            if (!z || i <= 0) {
                return;
            }
            this.f3013b.mo4573a(i);
        }
    }

    /* renamed from: c */
    private int m4795c(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C1019k.m4555b(c0974t, this.f3013b, m4799b(!this.f3033v), m4793c(!this.f3033v), this, this.f3033v);
    }

    /* renamed from: c */
    private void m4796c(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, boolean z) {
        int mo4570c;
        int m4783h = m4783h(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (m4783h != Integer.MAX_VALUE && (mo4570c = m4783h - this.f3013b.mo4570c()) > 0) {
            int m4825a = mo4570c - m4825a(mo4570c, c0968p, c0974t);
            if (!z || m4825a <= 0) {
                return;
            }
            this.f3013b.mo4573a(-m4825a);
        }
    }

    /* renamed from: c */
    private boolean m4794c(RecyclerView.C0974t c0974t, C0981a c0981a) {
        c0981a.f3053a = this.f3026o ? m4771n(c0974t.m4843e()) : m4773m(c0974t.m4843e());
        c0981a.f3054b = AbstractC0610a.INVALID_ID;
        return true;
    }

    /* renamed from: d */
    private void m4791d(int i) {
        C1010f c1010f = this.f3023l;
        c1010f.f3191e = i;
        c1010f.f3190d = this.f3016e == (i == -1) ? 1 : -1;
    }

    /* renamed from: e */
    private LazySpanLookup.FullSpanItem m4789e(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f3041c = new int[this.f3020i];
        for (int i2 = 0; i2 < this.f3020i; i2++) {
            fullSpanItem.f3041c[i2] = i - this.f3012a[i2].m4733b(i);
        }
        return fullSpanItem;
    }

    /* renamed from: f */
    private LazySpanLookup.FullSpanItem m4787f(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f3041c = new int[this.f3020i];
        for (int i2 = 0; i2 < this.f3020i; i2++) {
            fullSpanItem.f3041c[i2] = this.f3012a[i2].m4740a(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: g */
    private int m4785g(int i) {
        int m4740a = this.f3012a[0].m4740a(i);
        int i2 = 1;
        while (i2 < this.f3020i) {
            int m4740a2 = this.f3012a[i2].m4740a(i);
            int i3 = m4740a;
            if (m4740a2 > m4740a) {
                i3 = m4740a2;
            }
            i2++;
            m4740a = i3;
        }
        return m4740a;
    }

    /* renamed from: h */
    private int m4783h(int i) {
        int m4740a = this.f3012a[0].m4740a(i);
        int i2 = 1;
        while (i2 < this.f3020i) {
            int m4740a2 = this.f3012a[i2].m4740a(i);
            int i3 = m4740a;
            if (m4740a2 < m4740a) {
                i3 = m4740a2;
            }
            i2++;
            m4740a = i3;
        }
        return m4740a;
    }

    /* renamed from: i */
    private int m4781i(int i) {
        int m4733b = this.f3012a[0].m4733b(i);
        int i2 = 1;
        while (i2 < this.f3020i) {
            int m4733b2 = this.f3012a[i2].m4733b(i);
            int i3 = m4733b;
            if (m4733b2 > m4733b) {
                i3 = m4733b2;
            }
            i2++;
            m4733b = i3;
        }
        return m4733b;
    }

    /* renamed from: j */
    private int m4779j(int i) {
        int m4733b = this.f3012a[0].m4733b(i);
        int i2 = 1;
        while (i2 < this.f3020i) {
            int m4733b2 = this.f3012a[i2].m4733b(i);
            int i3 = m4733b;
            if (m4733b2 < m4733b) {
                i3 = m4733b2;
            }
            i2++;
            m4733b = i3;
        }
        return m4733b;
    }

    /* renamed from: k */
    private boolean m4777k(int i) {
        if (this.f3021j == 0) {
            return (i == -1) != this.f3016e;
        }
        return ((i == -1) == this.f3016e) == m4790e();
    }

    /* renamed from: l */
    private int m4775l(int i) {
        int i2 = -1;
        if (getChildCount() == 0) {
            if (this.f3016e) {
                i2 = 1;
            }
            return i2;
        }
        if ((i < m4780j()) == this.f3016e) {
            i2 = 1;
        }
        return i2;
    }

    /* renamed from: l */
    private void m4776l() {
        this.f3013b = AbstractC1014i.m4576a(this, this.f3021j);
        this.f3014c = AbstractC1014i.m4576a(this, 1 - this.f3021j);
    }

    /* renamed from: m */
    private int m4773m(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    /* renamed from: m */
    private void m4774m() {
        if (this.f3021j == 1 || !m4790e()) {
            this.f3016e = this.f3015d;
        } else {
            this.f3016e = !this.f3015d;
        }
    }

    /* renamed from: n */
    private int m4771n(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    /* renamed from: n */
    private void m4772n() {
        if (this.f3014c.mo4561h() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            float mo4565e = this.f3014c.mo4565e(childAt);
            if (mo4565e >= f) {
                float f2 = mo4565e;
                if (((C0982b) childAt.getLayoutParams()).m4743a()) {
                    f2 = (mo4565e * 1.0f) / this.f3020i;
                }
                f = Math.max(f, f2);
            }
        }
        int i2 = this.f3022k;
        int round = Math.round(f * this.f3020i);
        int i3 = round;
        if (this.f3014c.mo4561h() == Integer.MIN_VALUE) {
            i3 = Math.min(round, this.f3014c.mo4564f());
        }
        m4797c(i3);
        if (this.f3022k == i2) {
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            C0982b c0982b = (C0982b) childAt2.getLayoutParams();
            if (!c0982b.f3061b) {
                if (!m4790e() || this.f3021j != 1) {
                    int i5 = c0982b.f3060a.f3066e * this.f3022k;
                    int i6 = c0982b.f3060a.f3066e * i2;
                    if (this.f3021j == 1) {
                        childAt2.offsetLeftAndRight(i5 - i6);
                    } else {
                        childAt2.offsetTopAndBottom(i5 - i6);
                    }
                } else {
                    childAt2.offsetLeftAndRight(((-((this.f3020i - 1) - c0982b.f3060a.f3066e)) * this.f3022k) - ((-((this.f3020i - 1) - c0982b.f3060a.f3066e)) * i2));
                }
            }
        }
    }

    /* renamed from: o */
    private int m4770o(int i) {
        int i2 = -1;
        if (i == 1) {
            return (this.f3021j != 1 && m4790e()) ? 1 : -1;
        } else if (i == 2) {
            return (this.f3021j != 1 && m4790e()) ? -1 : 1;
        } else if (i == 17) {
            if (this.f3021j != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f3021j != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            return this.f3021j == 0 ? 1 : Integer.MIN_VALUE;
        } else if (i != 130) {
            return AbstractC0610a.INVALID_ID;
        } else {
            return this.f3021j == 1 ? 1 : Integer.MIN_VALUE;
        }
    }

    /* renamed from: a */
    int m4825a(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m4824a(i, c0974t);
        int m4816a = m4816a(c0968p, this.f3023l, c0974t);
        if (this.f3023l.f3188b >= m4816a) {
            i = i < 0 ? -m4816a : m4816a;
        }
        this.f3013b.mo4573a(-i);
        this.f3026o = this.f3016e;
        C1010f c1010f = this.f3023l;
        c1010f.f3188b = 0;
        m4817a(c0968p, c1010f);
        return i;
    }

    /* renamed from: a */
    public void m4828a(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.f3020i) {
            m4792d();
            this.f3020i = i;
            this.f3024m = new BitSet(this.f3020i);
            this.f3012a = new C0983c[this.f3020i];
            for (int i2 = 0; i2 < this.f3020i; i2++) {
                this.f3012a[i2] = new C0983c(i2);
            }
            requestLayout();
        }
    }

    /* renamed from: a */
    void m4824a(int i, RecyclerView.C0974t c0974t) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m4782i();
            i2 = 1;
        } else {
            i3 = m4780j();
            i2 = -1;
        }
        this.f3023l.f3187a = true;
        m4805b(i3, c0974t);
        m4791d(i2);
        C1010f c1010f = this.f3023l;
        c1010f.f3189c = i3 + c1010f.f3190d;
        this.f3023l.f3188b = Math.abs(i);
    }

    /* renamed from: a */
    void m4814a(RecyclerView.C0974t c0974t, C0981a c0981a) {
        if (!m4800b(c0974t, c0981a) && !m4794c(c0974t, c0981a)) {
            c0981a.m4744b();
            c0981a.f3053a = 0;
        }
    }

    /* renamed from: a */
    public void m4809a(boolean z) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f3028q;
        if (savedState != null && savedState.f3050h != z) {
            this.f3028q.f3050h = z;
        }
        this.f3015d = z;
        requestLayout();
    }

    /* renamed from: a */
    boolean m4829a() {
        int i;
        int i2;
        if (getChildCount() == 0 || this.f3025n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f3016e) {
            i2 = m4782i();
            i = m4780j();
        } else {
            i2 = m4780j();
            i = m4782i();
        }
        if (i2 == 0 && m4808b() != null) {
            this.f3019h.m4769a();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        } else if (!this.f3032u) {
            return false;
        } else {
            int i3 = this.f3016e ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem m4766a = this.f3019h.m4766a(i2, i4, i3, true);
            if (m4766a == null) {
                this.f3032u = false;
                this.f3019h.m4768a(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem m4766a2 = this.f3019h.m4766a(i2, m4766a.f3039a, i3 * (-1), true);
            if (m4766a2 == null) {
                this.f3019h.m4768a(m4766a.f3039a);
            } else {
                this.f3019h.m4768a(m4766a2.f3039a + 1);
            }
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f3028q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
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
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View m4808b() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m4808b():android.view.View");
    }

    /* renamed from: b */
    View m4799b(boolean z) {
        int mo4570c = this.f3013b.mo4570c();
        int mo4568d = this.f3013b.mo4568d();
        int childCount = getChildCount();
        View view = null;
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            int mo4572a = this.f3013b.mo4572a(childAt);
            View view2 = view;
            if (this.f3013b.mo4571b(childAt) > mo4570c) {
                if (mo4572a >= mo4568d) {
                    view2 = view;
                } else if (mo4572a >= mo4570c || !z) {
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
    public void m4807b(int i) {
        if (i == 0 || i == 1) {
            assertNotInLayoutOrScroll(null);
            if (i == this.f3021j) {
                return;
            }
            this.f3021j = i;
            AbstractC1014i abstractC1014i = this.f3013b;
            this.f3013b = this.f3014c;
            this.f3014c = abstractC1014i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    /* renamed from: b */
    boolean m4800b(RecyclerView.C0974t c0974t, C0981a c0981a) {
        int i;
        boolean z = false;
        if (c0974t.m4849a() || (i = this.f3017f) == -1) {
            return false;
        }
        if (i < 0 || i >= c0974t.m4843e()) {
            this.f3017f = -1;
            this.f3018g = AbstractC0610a.INVALID_ID;
            return false;
        }
        SavedState savedState = this.f3028q;
        if (savedState != null && savedState.f3043a != -1 && this.f3028q.f3045c >= 1) {
            c0981a.f3054b = AbstractC0610a.INVALID_ID;
            c0981a.f3053a = this.f3017f;
            return true;
        }
        View findViewByPosition = findViewByPosition(this.f3017f);
        if (findViewByPosition == null) {
            c0981a.f3053a = this.f3017f;
            int i2 = this.f3018g;
            if (i2 == Integer.MIN_VALUE) {
                if (m4775l(c0981a.f3053a) == 1) {
                    z = true;
                }
                c0981a.f3055c = z;
                c0981a.m4744b();
            } else {
                c0981a.m4746a(i2);
            }
            c0981a.f3056d = true;
            return true;
        }
        c0981a.f3053a = this.f3016e ? m4782i() : m4780j();
        if (this.f3018g != Integer.MIN_VALUE) {
            if (c0981a.f3055c) {
                c0981a.f3054b = (this.f3013b.mo4568d() - this.f3018g) - this.f3013b.mo4571b(findViewByPosition);
                return true;
            }
            c0981a.f3054b = (this.f3013b.mo4570c() + this.f3018g) - this.f3013b.mo4572a(findViewByPosition);
            return true;
        } else if (this.f3013b.mo4565e(findViewByPosition) > this.f3013b.mo4564f()) {
            c0981a.f3054b = c0981a.f3055c ? this.f3013b.mo4568d() : this.f3013b.mo4570c();
            return true;
        } else {
            int mo4572a = this.f3013b.mo4572a(findViewByPosition) - this.f3013b.mo4570c();
            if (mo4572a < 0) {
                c0981a.f3054b = -mo4572a;
                return true;
            }
            int mo4568d = this.f3013b.mo4568d() - this.f3013b.mo4571b(findViewByPosition);
            if (mo4568d < 0) {
                c0981a.f3054b = mo4568d;
                return true;
            }
            c0981a.f3054b = AbstractC0610a.INVALID_ID;
            return true;
        }
    }

    /* renamed from: c */
    public int m4798c() {
        return this.f3020i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
        return r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View m4793c(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f3013b
            int r0 = r0.mo4570c()
            r5 = r0
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f3013b
            int r0 = r0.mo4568d()
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
            if (r0 < 0) goto L7f
            r0 = r3
            r1 = r7
            android.view.View r0 = r0.getChildAt(r1)
            r9 = r0
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f3013b
            r1 = r9
            int r0 = r0.mo4572a(r1)
            r10 = r0
            r0 = r3
            androidx.recyclerview.widget.i r0 = r0.f3013b
            r1 = r9
            int r0 = r0.mo4571b(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m4793c(boolean):android.view.View");
    }

    /* renamed from: c */
    void m4797c(int i) {
        this.f3022k = i / this.f3020i;
        this.f3029r = View.MeasureSpec.makeMeasureSpec(i, this.f3014c.mo4561h());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollHorizontally() {
        return this.f3021j == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollVertically() {
        boolean z = true;
        if (this.f3021j != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean checkLayoutParams(RecyclerView.C0961j c0961j) {
        return c0961j instanceof C0982b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.C0974t c0974t, RecyclerView.AbstractC0956i.AbstractC0959a abstractC0959a) {
        int i3;
        int i4;
        int i5;
        if (this.f3021j != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m4824a(i, c0974t);
        int[] iArr = this.f3034w;
        if (iArr == null || iArr.length < this.f3020i) {
            this.f3034w = new int[this.f3020i];
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f3020i) {
                break;
            }
            if (this.f3023l.f3190d == -1) {
                i5 = this.f3023l.f3192f;
                i4 = this.f3012a[i6].m4740a(this.f3023l.f3192f);
            } else {
                i5 = this.f3012a[i6].m4733b(this.f3023l.f3193g);
                i4 = this.f3023l.f3193g;
            }
            int i8 = i5 - i4;
            int i9 = i3;
            if (i8 >= 0) {
                this.f3034w[i3] = i8;
                i9 = i3 + 1;
            }
            i6++;
            i7 = i9;
        }
        Arrays.sort(this.f3034w, 0, i3);
        for (int i10 = 0; i10 < i3 && this.f3023l.m4599a(c0974t); i10++) {
            abstractC0959a.mo4602b(this.f3023l.f3189c, this.f3034w[i10]);
            this.f3023l.f3189c += this.f3023l.f3190d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollExtent(RecyclerView.C0974t c0974t) {
        return m4801b(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollOffset(RecyclerView.C0974t c0974t) {
        return m4815a(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollRange(RecyclerView.C0974t c0974t) {
        return m4795c(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s.AbstractC0973b
    public PointF computeScrollVectorForPosition(int i) {
        int m4775l = m4775l(i);
        PointF pointF = new PointF();
        if (m4775l == 0) {
            return null;
        }
        if (this.f3021j == 0) {
            pointF.x = m4775l;
            pointF.y = FlexItem.FLEX_GROW_DEFAULT;
        } else {
            pointF.x = FlexItem.FLEX_GROW_DEFAULT;
            pointF.y = m4775l;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollExtent(RecyclerView.C0974t c0974t) {
        return m4801b(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollOffset(RecyclerView.C0974t c0974t) {
        return m4815a(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollRange(RecyclerView.C0974t c0974t) {
        return m4795c(c0974t);
    }

    /* renamed from: d */
    public void m4792d() {
        this.f3019h.m4769a();
        requestLayout();
    }

    /* renamed from: e */
    boolean m4790e() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    int m4788f() {
        View m4793c = this.f3016e ? m4793c(true) : m4799b(true);
        return m4793c == null ? -1 : getPosition(m4793c);
    }

    /* renamed from: g */
    boolean m4786g() {
        int m4733b = this.f3012a[0].m4733b(AbstractC0610a.INVALID_ID);
        for (int i = 1; i < this.f3020i; i++) {
            if (this.f3012a[i].m4733b(AbstractC0610a.INVALID_ID) != m4733b) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateDefaultLayoutParams() {
        return this.f3021j == 0 ? new C0982b(-2, -1) : new C0982b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C0982b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0982b((ViewGroup.MarginLayoutParams) layoutParams) : new C0982b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int getColumnCountForAccessibility(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return this.f3021j == 1 ? this.f3020i : super.getColumnCountForAccessibility(c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int getRowCountForAccessibility(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return this.f3021j == 0 ? this.f3020i : super.getRowCountForAccessibility(c0968p, c0974t);
    }

    /* renamed from: h */
    boolean m4784h() {
        int m4740a = this.f3012a[0].m4740a(AbstractC0610a.INVALID_ID);
        for (int i = 1; i < this.f3020i; i++) {
            if (this.f3012a[i].m4740a(AbstractC0610a.INVALID_ID) != m4740a) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    int m4782i() {
        int childCount = getChildCount();
        return childCount == 0 ? 0 : getPosition(getChildAt(childCount - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean isAutoMeasureEnabled() {
        return this.f3025n != 0;
    }

    /* renamed from: j */
    int m4780j() {
        int i = 0;
        if (getChildCount() != 0) {
            i = getPosition(getChildAt(0));
        }
        return i;
    }

    /* renamed from: k */
    public int m4778k() {
        return this.f3021j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.f3020i; i2++) {
            this.f3012a[i2].m4727d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.f3020i; i2++) {
            this.f3012a[i2].m4727d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0968p c0968p) {
        super.onDetachedFromWindow(recyclerView, c0968p);
        removeCallbacks(this.f3035x);
        for (int i = 0; i < this.f3020i; i++) {
            this.f3012a[i].m4726e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public View onFocusSearchFailed(View view, int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        View findContainingItemView;
        View m4739a;
        if (getChildCount() == 0 || (findContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        m4774m();
        int m4770o = m4770o(i);
        if (m4770o == Integer.MIN_VALUE) {
            return null;
        }
        C0982b c0982b = (C0982b) findContainingItemView.getLayoutParams();
        boolean z = c0982b.f3061b;
        C0983c c0983c = c0982b.f3060a;
        int m4782i = m4770o == 1 ? m4782i() : m4780j();
        m4805b(m4782i, c0974t);
        m4791d(m4770o);
        C1010f c1010f = this.f3023l;
        c1010f.f3189c = c1010f.f3190d + m4782i;
        this.f3023l.f3188b = (int) (this.f3013b.mo4564f() * 0.33333334f);
        C1010f c1010f2 = this.f3023l;
        c1010f2.f3194h = true;
        c1010f2.f3187a = false;
        m4816a(c0968p, c1010f2, c0974t);
        this.f3026o = this.f3016e;
        if (!z && (m4739a = c0983c.m4739a(m4782i, m4770o)) != null && m4739a != findContainingItemView) {
            return m4739a;
        }
        if (m4777k(m4770o)) {
            for (int i2 = this.f3020i - 1; i2 >= 0; i2--) {
                View m4739a2 = this.f3012a[i2].m4739a(m4782i, m4770o);
                if (m4739a2 != null && m4739a2 != findContainingItemView) {
                    return m4739a2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.f3020i; i3++) {
                View m4739a3 = this.f3012a[i3].m4739a(m4782i, m4770o);
                if (m4739a3 != null && m4739a3 != findContainingItemView) {
                    return m4739a3;
                }
            }
        }
        boolean z2 = (this.f3015d ^ true) == (m4770o == -1);
        if (!z) {
            View findViewByPosition = findViewByPosition(z2 ? c0983c.m4721j() : c0983c.m4720k());
            if (findViewByPosition != null && findViewByPosition != findContainingItemView) {
                return findViewByPosition;
            }
        }
        if (!m4777k(m4770o)) {
            for (int i4 = 0; i4 < this.f3020i; i4++) {
                View findViewByPosition2 = findViewByPosition(z2 ? this.f3012a[i4].m4721j() : this.f3012a[i4].m4720k());
                if (findViewByPosition2 != null && findViewByPosition2 != findContainingItemView) {
                    return findViewByPosition2;
                }
            }
            return null;
        }
        for (int i5 = this.f3020i - 1; i5 >= 0; i5--) {
            if (i5 != c0983c.f3066e) {
                View findViewByPosition3 = findViewByPosition(z2 ? this.f3012a[i5].m4721j() : this.f3012a[i5].m4720k());
                if (findViewByPosition3 != null && findViewByPosition3 != findContainingItemView) {
                    return findViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View m4799b = m4799b(false);
            View m4793c = m4793c(false);
            if (m4799b == null || m4793c == null) {
                return;
            }
            int position = getPosition(m4799b);
            int position2 = getPosition(m4793c);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
                return;
            }
            accessibilityEvent.setFromIndex(position2);
            accessibilityEvent.setToIndex(position);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, View view, C0510d c0510d) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0982b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, c0510d);
            return;
        }
        C0982b c0982b = (C0982b) layoutParams;
        int i = 1;
        if (this.f3021j == 0) {
            int m4742b = c0982b.m4742b();
            if (c0982b.f3061b) {
                i = this.f3020i;
            }
            c0510d.m6432b(C0510d.C0513c.m6376a(m4742b, i, -1, -1, c0982b.f3061b, false));
            return;
        }
        int m4742b2 = c0982b.m4742b();
        int i2 = 1;
        if (c0982b.f3061b) {
            i2 = this.f3020i;
        }
        c0510d.m6432b(C0510d.C0513c.m6376a(-1, -1, m4742b2, i2, c0982b.f3061b, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        m4806b(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f3019h.m4769a();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        m4806b(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        m4806b(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        m4806b(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutChildren(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        m4818a(c0968p, c0974t, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutCompleted(RecyclerView.C0974t c0974t) {
        super.onLayoutCompleted(c0974t);
        this.f3017f = -1;
        this.f3018g = AbstractC0610a.INVALID_ID;
        this.f3028q = null;
        this.f3031t.m4747a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f3028q = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public Parcelable onSaveInstanceState() {
        int i;
        int i2;
        int i3;
        SavedState savedState = this.f3028q;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.f3050h = this.f3015d;
        savedState2.f3051i = this.f3026o;
        savedState2.f3052j = this.f3027p;
        LazySpanLookup lazySpanLookup = this.f3019h;
        if (lazySpanLookup == null || lazySpanLookup.f3037a == null) {
            savedState2.f3047e = 0;
        } else {
            savedState2.f3048f = this.f3019h.f3037a;
            savedState2.f3047e = savedState2.f3048f.length;
            savedState2.f3049g = this.f3019h.f3038b;
        }
        if (getChildCount() > 0) {
            savedState2.f3043a = this.f3026o ? m4782i() : m4780j();
            savedState2.f3044b = m4788f();
            int i4 = this.f3020i;
            savedState2.f3045c = i4;
            savedState2.f3046d = new int[i4];
            for (int i5 = 0; i5 < this.f3020i; i5++) {
                if (this.f3026o) {
                    i2 = this.f3012a[i5].m4733b(AbstractC0610a.INVALID_ID);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f3013b.mo4568d();
                        i = i2 - i3;
                        savedState2.f3046d[i5] = i;
                    } else {
                        savedState2.f3046d[i5] = i;
                    }
                } else {
                    i2 = this.f3012a[i5].m4740a(AbstractC0610a.INVALID_ID);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f3013b.mo4570c();
                        i = i2 - i3;
                        savedState2.f3046d[i5] = i;
                    } else {
                        savedState2.f3046d[i5] = i;
                    }
                }
            }
        } else {
            savedState2.f3043a = -1;
            savedState2.f3044b = -1;
            savedState2.f3045c = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            m4829a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollHorizontallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return m4825a(i, c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void scrollToPosition(int i) {
        SavedState savedState = this.f3028q;
        if (savedState != null && savedState.f3043a != i) {
            this.f3028q.m4750b();
        }
        this.f3017f = i;
        this.f3018g = AbstractC0610a.INVALID_ID;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollVerticallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return m4825a(i, c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f3021j == 1) {
            i3 = chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            i4 = chooseSize(i, (this.f3022k * this.f3020i) + paddingLeft, getMinimumWidth());
        } else {
            i4 = chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            i3 = chooseSize(i2, (this.f3022k * this.f3020i) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0974t c0974t, int i) {
        C1011g c1011g = new C1011g(recyclerView.getContext());
        c1011g.m4862c(i);
        startSmoothScroll(c1011g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean supportsPredictiveItemAnimations() {
        return this.f3028q == null;
    }
}
