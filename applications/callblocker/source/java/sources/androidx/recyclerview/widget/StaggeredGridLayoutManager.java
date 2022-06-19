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
import androidx.core.p026h.p027a.C0553c;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0925i implements RecyclerView.AbstractC0942t.AbstractC0944b {

    /* renamed from: A */
    private C0955d f3201A;

    /* renamed from: B */
    private int f3202B;

    /* renamed from: G */
    private int[] f3207G;

    /* renamed from: a */
    C0957e[] f3209a;

    /* renamed from: b */
    AbstractC0990k f3210b;

    /* renamed from: c */
    AbstractC0990k f3211c;

    /* renamed from: j */
    private int f3218j;

    /* renamed from: k */
    private int f3219k;

    /* renamed from: m */
    private BitSet f3221m;

    /* renamed from: o */
    private boolean f3223o;

    /* renamed from: z */
    private boolean f3224z;

    /* renamed from: i */
    private int f3217i = -1;

    /* renamed from: d */
    boolean f3212d = false;

    /* renamed from: e */
    boolean f3213e = false;

    /* renamed from: f */
    int f3214f = -1;

    /* renamed from: g */
    int f3215g = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: h */
    C0952c f3216h = new C0952c();

    /* renamed from: n */
    private int f3222n = 2;

    /* renamed from: C */
    private final Rect f3203C = new Rect();

    /* renamed from: D */
    private final C0950a f3204D = new C0950a();

    /* renamed from: E */
    private boolean f3205E = false;

    /* renamed from: F */
    private boolean f3206F = true;

    /* renamed from: H */
    private final Runnable f3208H = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m18733b();
        }
    };

    /* renamed from: l */
    private final C0985g f3220l = new C0985g();

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    public class C0950a {

        /* renamed from: a */
        int f3226a;

        /* renamed from: b */
        int f3227b;

        /* renamed from: c */
        boolean f3228c;

        /* renamed from: d */
        boolean f3229d;

        /* renamed from: e */
        boolean f3230e;

        /* renamed from: f */
        int[] f3231f;

        C0950a() {
            StaggeredGridLayoutManager.this = r4;
            m18674a();
        }

        /* renamed from: a */
        void m18674a() {
            this.f3226a = -1;
            this.f3227b = RecyclerView.UNDEFINED_DURATION;
            this.f3228c = false;
            this.f3229d = false;
            this.f3230e = false;
            if (this.f3231f != null) {
                Arrays.fill(this.f3231f, -1);
            }
        }

        /* renamed from: a */
        void m18673a(int i) {
            if (this.f3228c) {
                this.f3227b = StaggeredGridLayoutManager.this.f3210b.mo18458d() - i;
            } else {
                this.f3227b = StaggeredGridLayoutManager.this.f3210b.mo18460c() + i;
            }
        }

        /* renamed from: a */
        void m18672a(C0957e[] c0957eArr) {
            int length = c0957eArr.length;
            if (this.f3231f == null || this.f3231f.length < length) {
                this.f3231f = new int[StaggeredGridLayoutManager.this.f3209a.length];
            }
            for (int i = 0; i < length; i++) {
                this.f3231f[i] = c0957eArr[i].m18645a(RecyclerView.UNDEFINED_DURATION);
            }
        }

        /* renamed from: b */
        void m18671b() {
            this.f3227b = this.f3228c ? StaggeredGridLayoutManager.this.f3210b.mo18458d() : StaggeredGridLayoutManager.this.f3210b.mo18460c();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public static class C0951b extends RecyclerView.C0930j {

        /* renamed from: a */
        C0957e f3233a;

        /* renamed from: b */
        boolean f3234b;

        public C0951b(int i, int i2) {
            super(i, i2);
        }

        public C0951b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0951b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0951b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        /* renamed from: a */
        public boolean m18670a() {
            return this.f3234b;
        }

        /* renamed from: b */
        public final int m18669b() {
            return this.f3233a == null ? -1 : this.f3233a.f3255e;
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
    public static class C0952c {

        /* renamed from: a */
        int[] f3235a;

        /* renamed from: b */
        List<C0953a> f3236b;

        @SuppressLint({"BanParcelableUsage"})
        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c$a.class */
        public static class C0953a implements Parcelable {
            public static final Parcelable.Creator<C0953a> CREATOR = new Parcelable.Creator<C0953a>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.c.a.1
                /* renamed from: a */
                public C0953a createFromParcel(Parcel parcel) {
                    return new C0953a(parcel);
                }

                /* renamed from: a */
                public C0953a[] newArray(int i) {
                    return new C0953a[i];
                }
            };

            /* renamed from: a */
            int f3237a;

            /* renamed from: b */
            int f3238b;

            /* renamed from: c */
            int[] f3239c;

            /* renamed from: d */
            boolean f3240d;

            C0953a() {
            }

            C0953a(Parcel parcel) {
                boolean z = true;
                this.f3237a = parcel.readInt();
                this.f3238b = parcel.readInt();
                this.f3240d = parcel.readInt() != 1 ? false : z;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.f3239c = new int[readInt];
                    parcel.readIntArray(this.f3239c);
                }
            }

            /* renamed from: a */
            int m18653a(int i) {
                return this.f3239c == null ? 0 : this.f3239c[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f3237a + ", mGapDir=" + this.f3238b + ", mHasUnwantedGapAfter=" + this.f3240d + ", mGapPerSpan=" + Arrays.toString(this.f3239c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f3237a);
                parcel.writeInt(this.f3238b);
                parcel.writeInt(this.f3240d ? 1 : 0);
                if (this.f3239c == null || this.f3239c.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(this.f3239c.length);
                parcel.writeIntArray(this.f3239c);
            }
        }

        C0952c() {
        }

        /* renamed from: c */
        private void m18659c(int i, int i2) {
            if (this.f3236b == null) {
                return;
            }
            for (int size = this.f3236b.size() - 1; size >= 0; size--) {
                C0953a c0953a = this.f3236b.get(size);
                if (c0953a.f3237a >= i) {
                    if (c0953a.f3237a < i + i2) {
                        this.f3236b.remove(size);
                    } else {
                        c0953a.f3237a -= i2;
                    }
                }
            }
        }

        /* renamed from: d */
        private void m18657d(int i, int i2) {
            if (this.f3236b == null) {
                return;
            }
            for (int size = this.f3236b.size() - 1; size >= 0; size--) {
                C0953a c0953a = this.f3236b.get(size);
                if (c0953a.f3237a >= i) {
                    c0953a.f3237a += i2;
                }
            }
        }

        /* renamed from: g */
        private int m18654g(int i) {
            int i2;
            if (this.f3236b == null) {
                i2 = -1;
            } else {
                C0953a m18655f = m18655f(i);
                if (m18655f != null) {
                    this.f3236b.remove(m18655f);
                }
                int size = this.f3236b.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        i3 = -1;
                        break;
                    } else if (this.f3236b.get(i3).f3237a >= i) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 != -1) {
                    C0953a c0953a = this.f3236b.get(i3);
                    this.f3236b.remove(i3);
                    i2 = c0953a.f3237a;
                } else {
                    i2 = -1;
                }
            }
            return i2;
        }

        /* renamed from: a */
        int m18667a(int i) {
            if (this.f3236b != null) {
                for (int size = this.f3236b.size() - 1; size >= 0; size--) {
                    if (this.f3236b.get(size).f3237a >= i) {
                        this.f3236b.remove(size);
                    }
                }
            }
            return m18662b(i);
        }

        /* renamed from: a */
        public C0953a m18665a(int i, int i2, int i3, boolean z) {
            C0953a c0953a;
            if (this.f3236b != null) {
                int size = this.f3236b.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        c0953a = null;
                        break;
                    }
                    C0953a c0953a2 = this.f3236b.get(i4);
                    if (c0953a2.f3237a >= i2) {
                        c0953a = null;
                        break;
                    }
                    if (c0953a2.f3237a >= i) {
                        c0953a = c0953a2;
                        if (i3 == 0) {
                            break;
                        }
                        c0953a = c0953a2;
                        if (c0953a2.f3238b == i3) {
                            break;
                        } else if (z) {
                            c0953a = c0953a2;
                            if (c0953a2.f3240d) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    i4++;
                }
            } else {
                c0953a = null;
            }
            return c0953a;
        }

        /* renamed from: a */
        void m18668a() {
            if (this.f3235a != null) {
                Arrays.fill(this.f3235a, -1);
            }
            this.f3236b = null;
        }

        /* renamed from: a */
        void m18666a(int i, int i2) {
            if (this.f3235a == null || i >= this.f3235a.length) {
                return;
            }
            m18656e(i + i2);
            System.arraycopy(this.f3235a, i + i2, this.f3235a, i, (this.f3235a.length - i) - i2);
            Arrays.fill(this.f3235a, this.f3235a.length - i2, this.f3235a.length, -1);
            m18659c(i, i2);
        }

        /* renamed from: a */
        void m18664a(int i, C0957e c0957e) {
            m18656e(i);
            this.f3235a[i] = c0957e.f3255e;
        }

        /* renamed from: a */
        public void m18663a(C0953a c0953a) {
            if (this.f3236b == null) {
                this.f3236b = new ArrayList();
            }
            int size = this.f3236b.size();
            for (int i = 0; i < size; i++) {
                C0953a c0953a2 = this.f3236b.get(i);
                if (c0953a2.f3237a == c0953a.f3237a) {
                    this.f3236b.remove(i);
                }
                if (c0953a2.f3237a >= c0953a.f3237a) {
                    this.f3236b.add(i, c0953a);
                    return;
                }
            }
            this.f3236b.add(c0953a);
        }

        /* renamed from: b */
        int m18662b(int i) {
            int i2 = -1;
            if (this.f3235a != null && i < this.f3235a.length) {
                int m18654g = m18654g(i);
                if (m18654g == -1) {
                    Arrays.fill(this.f3235a, i, this.f3235a.length, -1);
                    i2 = this.f3235a.length;
                } else {
                    Arrays.fill(this.f3235a, i, m18654g + 1, -1);
                    i2 = m18654g + 1;
                }
            }
            return i2;
        }

        /* renamed from: b */
        void m18661b(int i, int i2) {
            if (this.f3235a == null || i >= this.f3235a.length) {
                return;
            }
            m18656e(i + i2);
            System.arraycopy(this.f3235a, i, this.f3235a, i + i2, (this.f3235a.length - i) - i2);
            Arrays.fill(this.f3235a, i, i + i2, -1);
            m18657d(i, i2);
        }

        /* renamed from: c */
        int m18660c(int i) {
            return (this.f3235a == null || i >= this.f3235a.length) ? -1 : this.f3235a[i];
        }

        /* renamed from: d */
        int m18658d(int i) {
            int length = this.f3235a.length;
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
        void m18656e(int i) {
            if (this.f3235a == null) {
                this.f3235a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f3235a, -1);
            } else if (i < this.f3235a.length) {
            } else {
                int[] iArr = this.f3235a;
                this.f3235a = new int[m18658d(i)];
                System.arraycopy(iArr, 0, this.f3235a, 0, iArr.length);
                Arrays.fill(this.f3235a, iArr.length, this.f3235a.length, -1);
            }
        }

        /* renamed from: f */
        public C0953a m18655f(int i) {
            C0953a c0953a;
            if (this.f3236b != null) {
                int size = this.f3236b.size() - 1;
                while (true) {
                    if (size < 0) {
                        c0953a = null;
                        break;
                    }
                    C0953a c0953a2 = this.f3236b.get(size);
                    c0953a = c0953a2;
                    if (c0953a2.f3237a == i) {
                        break;
                    }
                    size--;
                }
            } else {
                c0953a = null;
            }
            return c0953a;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d.class */
    public static class C0955d implements Parcelable {
        public static final Parcelable.Creator<C0955d> CREATOR = new Parcelable.Creator<C0955d>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.d.1
            /* renamed from: a */
            public C0955d createFromParcel(Parcel parcel) {
                return new C0955d(parcel);
            }

            /* renamed from: a */
            public C0955d[] newArray(int i) {
                return new C0955d[i];
            }
        };

        /* renamed from: a */
        int f3241a;

        /* renamed from: b */
        int f3242b;

        /* renamed from: c */
        int f3243c;

        /* renamed from: d */
        int[] f3244d;

        /* renamed from: e */
        int f3245e;

        /* renamed from: f */
        int[] f3246f;

        /* renamed from: g */
        List<C0952c.C0953a> f3247g;

        /* renamed from: h */
        boolean f3248h;

        /* renamed from: i */
        boolean f3249i;

        /* renamed from: j */
        boolean f3250j;

        public C0955d() {
        }

        C0955d(Parcel parcel) {
            this.f3241a = parcel.readInt();
            this.f3242b = parcel.readInt();
            this.f3243c = parcel.readInt();
            if (this.f3243c > 0) {
                this.f3244d = new int[this.f3243c];
                parcel.readIntArray(this.f3244d);
            }
            this.f3245e = parcel.readInt();
            if (this.f3245e > 0) {
                this.f3246f = new int[this.f3245e];
                parcel.readIntArray(this.f3246f);
            }
            this.f3248h = parcel.readInt() == 1;
            this.f3249i = parcel.readInt() == 1;
            this.f3250j = parcel.readInt() == 1;
            this.f3247g = parcel.readArrayList(C0952c.C0953a.class.getClassLoader());
        }

        public C0955d(C0955d c0955d) {
            this.f3243c = c0955d.f3243c;
            this.f3241a = c0955d.f3241a;
            this.f3242b = c0955d.f3242b;
            this.f3244d = c0955d.f3244d;
            this.f3245e = c0955d.f3245e;
            this.f3246f = c0955d.f3246f;
            this.f3248h = c0955d.f3248h;
            this.f3249i = c0955d.f3249i;
            this.f3250j = c0955d.f3250j;
            this.f3247g = c0955d.f3247g;
        }

        /* renamed from: a */
        void m18650a() {
            this.f3244d = null;
            this.f3243c = 0;
            this.f3245e = 0;
            this.f3246f = null;
            this.f3247g = null;
        }

        /* renamed from: b */
        void m18649b() {
            this.f3244d = null;
            this.f3243c = 0;
            this.f3241a = -1;
            this.f3242b = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3241a);
            parcel.writeInt(this.f3242b);
            parcel.writeInt(this.f3243c);
            if (this.f3243c > 0) {
                parcel.writeIntArray(this.f3244d);
            }
            parcel.writeInt(this.f3245e);
            if (this.f3245e > 0) {
                parcel.writeIntArray(this.f3246f);
            }
            parcel.writeInt(this.f3248h ? 1 : 0);
            parcel.writeInt(this.f3249i ? 1 : 0);
            parcel.writeInt(this.f3250j ? 1 : 0);
            parcel.writeList(this.f3247g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$e.class */
    public class C0957e {

        /* renamed from: a */
        ArrayList<View> f3251a = new ArrayList<>();

        /* renamed from: b */
        int f3252b = RecyclerView.UNDEFINED_DURATION;

        /* renamed from: c */
        int f3253c = RecyclerView.UNDEFINED_DURATION;

        /* renamed from: d */
        int f3254d = 0;

        /* renamed from: e */
        final int f3255e;

        C0957e(int i) {
            StaggeredGridLayoutManager.this = r5;
            this.f3255e = i;
        }

        /* renamed from: a */
        int m18645a(int i) {
            if (this.f3252b != Integer.MIN_VALUE) {
                i = this.f3252b;
            } else if (this.f3251a.size() != 0) {
                m18646a();
                i = this.f3252b;
            }
            return i;
        }

        /* renamed from: a */
        int m18643a(int i, int i2, boolean z) {
            return m18642a(i, i2, false, false, z);
        }

        /* renamed from: a */
        int m18642a(int i, int i2, boolean z, boolean z2, boolean z3) {
            int i3;
            int i4;
            int i5;
            View view;
            int mo18460c = StaggeredGridLayoutManager.this.f3210b.mo18460c();
            int mo18458d = StaggeredGridLayoutManager.this.f3210b.mo18458d();
            if (i2 > i) {
                i3 = 1;
                i4 = i;
            } else {
                i3 = -1;
                i4 = i;
            }
            while (true) {
                int i6 = i4;
                if (i6 == i2) {
                    i5 = -1;
                    break;
                }
                view = this.f3251a.get(i6);
                int mo18462a = StaggeredGridLayoutManager.this.f3210b.mo18462a(view);
                int mo18461b = StaggeredGridLayoutManager.this.f3210b.mo18461b(view);
                boolean z4 = z3 ? mo18462a <= mo18458d : mo18462a < mo18458d;
                boolean z5 = z3 ? mo18461b >= mo18460c : mo18461b > mo18460c;
                if (z4 && z5) {
                    if (z && z2) {
                        if (mo18462a >= mo18460c && mo18461b <= mo18458d) {
                            i5 = StaggeredGridLayoutManager.this.m18943d(view);
                            break;
                        }
                    } else if (z2) {
                        i5 = StaggeredGridLayoutManager.this.m18943d(view);
                        break;
                    } else if (mo18462a < mo18460c || mo18461b > mo18458d) {
                        break;
                    }
                }
                i4 = i6 + i3;
            }
            i5 = StaggeredGridLayoutManager.this.m18943d(view);
            return i5;
        }

        /* renamed from: a */
        public View m18644a(int i, int i2) {
            View view = null;
            View view2 = null;
            if (i2 != -1) {
                int size = this.f3251a.size() - 1;
                while (true) {
                    view2 = view;
                    if (size < 0) {
                        break;
                    }
                    view = this.f3251a.get(size);
                    if ((StaggeredGridLayoutManager.this.f3212d && StaggeredGridLayoutManager.this.m18943d(view) >= i) || ((!StaggeredGridLayoutManager.this.f3212d && StaggeredGridLayoutManager.this.m18943d(view) <= i) || !view.hasFocusable())) {
                        break;
                    }
                    size--;
                }
            } else {
                int size2 = this.f3251a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.f3251a.get(i3);
                    if ((StaggeredGridLayoutManager.this.f3212d && StaggeredGridLayoutManager.this.m18943d(view3) <= i) || ((!StaggeredGridLayoutManager.this.f3212d && StaggeredGridLayoutManager.this.m18943d(view3) >= i) || !view3.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view2 = view3;
                }
            }
            return view2;
        }

        /* renamed from: a */
        void m18646a() {
            C0952c.C0953a m18655f;
            View view = this.f3251a.get(0);
            C0951b m18634c = m18634c(view);
            this.f3252b = StaggeredGridLayoutManager.this.f3210b.mo18462a(view);
            if (!m18634c.f3234b || (m18655f = StaggeredGridLayoutManager.this.f3216h.m18655f(m18634c.m18905f())) == null || m18655f.f3238b != -1) {
                return;
            }
            this.f3252b -= m18655f.m18653a(this.f3255e);
        }

        /* renamed from: a */
        void m18641a(View view) {
            C0951b m18634c = m18634c(view);
            m18634c.f3233a = this;
            this.f3251a.add(0, view);
            this.f3252b = RecyclerView.UNDEFINED_DURATION;
            if (this.f3251a.size() == 1) {
                this.f3253c = RecyclerView.UNDEFINED_DURATION;
            }
            if (m18634c.m18907d() || m18634c.m18906e()) {
                this.f3254d += StaggeredGridLayoutManager.this.f3210b.mo18455e(view);
            }
        }

        /* renamed from: a */
        void m18640a(boolean z, int i) {
            int m18638b = z ? m18638b(RecyclerView.UNDEFINED_DURATION) : m18645a(RecyclerView.UNDEFINED_DURATION);
            m18631e();
            if (m18638b == Integer.MIN_VALUE) {
                return;
            }
            if (z && m18638b < StaggeredGridLayoutManager.this.f3210b.mo18458d()) {
                return;
            }
            if (!z && m18638b > StaggeredGridLayoutManager.this.f3210b.mo18460c()) {
                return;
            }
            int i2 = m18638b;
            if (i != Integer.MIN_VALUE) {
                i2 = m18638b + i;
            }
            this.f3253c = i2;
            this.f3252b = i2;
        }

        /* renamed from: b */
        int m18639b() {
            int i;
            if (this.f3252b != Integer.MIN_VALUE) {
                i = this.f3252b;
            } else {
                m18646a();
                i = this.f3252b;
            }
            return i;
        }

        /* renamed from: b */
        int m18638b(int i) {
            if (this.f3253c != Integer.MIN_VALUE) {
                i = this.f3253c;
            } else if (this.f3251a.size() != 0) {
                m18636c();
                i = this.f3253c;
            }
            return i;
        }

        /* renamed from: b */
        void m18637b(View view) {
            C0951b m18634c = m18634c(view);
            m18634c.f3233a = this;
            this.f3251a.add(view);
            this.f3253c = RecyclerView.UNDEFINED_DURATION;
            if (this.f3251a.size() == 1) {
                this.f3252b = RecyclerView.UNDEFINED_DURATION;
            }
            if (m18634c.m18907d() || m18634c.m18906e()) {
                this.f3254d += StaggeredGridLayoutManager.this.f3210b.mo18455e(view);
            }
        }

        /* renamed from: c */
        C0951b m18634c(View view) {
            return (C0951b) view.getLayoutParams();
        }

        /* renamed from: c */
        void m18636c() {
            C0952c.C0953a m18655f;
            View view = this.f3251a.get(this.f3251a.size() - 1);
            C0951b m18634c = m18634c(view);
            this.f3253c = StaggeredGridLayoutManager.this.f3210b.mo18461b(view);
            if (!m18634c.f3234b || (m18655f = StaggeredGridLayoutManager.this.f3216h.m18655f(m18634c.m18905f())) == null || m18655f.f3238b != 1) {
                return;
            }
            this.f3253c = m18655f.m18653a(this.f3255e) + this.f3253c;
        }

        /* renamed from: c */
        void m18635c(int i) {
            this.f3252b = i;
            this.f3253c = i;
        }

        /* renamed from: d */
        int m18633d() {
            int i;
            if (this.f3253c != Integer.MIN_VALUE) {
                i = this.f3253c;
            } else {
                m18636c();
                i = this.f3253c;
            }
            return i;
        }

        /* renamed from: d */
        void m18632d(int i) {
            if (this.f3252b != Integer.MIN_VALUE) {
                this.f3252b += i;
            }
            if (this.f3253c != Integer.MIN_VALUE) {
                this.f3253c += i;
            }
        }

        /* renamed from: e */
        void m18631e() {
            this.f3251a.clear();
            m18630f();
            this.f3254d = 0;
        }

        /* renamed from: f */
        void m18630f() {
            this.f3252b = RecyclerView.UNDEFINED_DURATION;
            this.f3253c = RecyclerView.UNDEFINED_DURATION;
        }

        /* renamed from: g */
        void m18629g() {
            int size = this.f3251a.size();
            View remove = this.f3251a.remove(size - 1);
            C0951b m18634c = m18634c(remove);
            m18634c.f3233a = null;
            if (m18634c.m18907d() || m18634c.m18906e()) {
                this.f3254d -= StaggeredGridLayoutManager.this.f3210b.mo18455e(remove);
            }
            if (size == 1) {
                this.f3252b = RecyclerView.UNDEFINED_DURATION;
            }
            this.f3253c = RecyclerView.UNDEFINED_DURATION;
        }

        /* renamed from: h */
        void m18628h() {
            View remove = this.f3251a.remove(0);
            C0951b m18634c = m18634c(remove);
            m18634c.f3233a = null;
            if (this.f3251a.size() == 0) {
                this.f3253c = RecyclerView.UNDEFINED_DURATION;
            }
            if (m18634c.m18907d() || m18634c.m18906e()) {
                this.f3254d -= StaggeredGridLayoutManager.this.f3210b.mo18455e(remove);
            }
            this.f3252b = RecyclerView.UNDEFINED_DURATION;
        }

        /* renamed from: i */
        public int m18627i() {
            return this.f3254d;
        }

        /* renamed from: j */
        public int m18626j() {
            return StaggeredGridLayoutManager.this.f3212d ? m18643a(this.f3251a.size() - 1, -1, true) : m18643a(0, this.f3251a.size(), true);
        }

        /* renamed from: k */
        public int m18625k() {
            return StaggeredGridLayoutManager.this.f3212d ? m18643a(0, this.f3251a.size(), true) : m18643a(this.f3251a.size() - 1, -1, true);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0925i.C0929b a = m18991a(context, attributeSet, i, i2);
        m18732b(a.f3118a);
        m18767a(a.f3119b);
        m18734a(a.f3120c);
        m18771O();
    }

    /* renamed from: O */
    private void m18771O() {
        this.f3210b = AbstractC0990k.m18466a(this, this.f3218j);
        this.f3211c = AbstractC0990k.m18466a(this, 1 - this.f3218j);
    }

    /* renamed from: P */
    private void m18770P() {
        boolean z = true;
        if (this.f3218j == 1 || !m18698j()) {
            this.f3213e = this.f3212d;
            return;
        }
        if (this.f3212d) {
            z = false;
        }
        this.f3213e = z;
    }

    /* renamed from: Q */
    private void m18769Q() {
        if (this.f3211c.mo18451h() == 1073741824) {
            return;
        }
        float f = 0.0f;
        int y = m18910y();
        for (int i = 0; i < y; i++) {
            View i2 = m18927i(i);
            float mo18455e = this.f3211c.mo18455e(i2);
            if (mo18455e >= f) {
                if (((C0951b) i2.getLayoutParams()).m18670a()) {
                    mo18455e = (1.0f * mo18455e) / this.f3217i;
                }
                f = Math.max(f, mo18455e);
            }
        }
        int i3 = this.f3219k;
        int round = Math.round(this.f3217i * f);
        int i4 = round;
        if (this.f3211c.mo18451h() == Integer.MIN_VALUE) {
            i4 = Math.min(round, this.f3211c.mo18454f());
        }
        m18706f(i4);
        if (this.f3219k == i3) {
            return;
        }
        for (int i5 = 0; i5 < y; i5++) {
            View i6 = m18927i(i5);
            C0951b c0951b = (C0951b) i6.getLayoutParams();
            if (!c0951b.f3234b) {
                if (!m18698j() || this.f3218j != 1) {
                    int i7 = c0951b.f3233a.f3255e * this.f3219k;
                    int i8 = c0951b.f3233a.f3255e * i3;
                    if (this.f3218j == 1) {
                        i6.offsetLeftAndRight(i7 - i8);
                    } else {
                        i6.offsetTopAndBottom(i7 - i8);
                    }
                } else {
                    i6.offsetLeftAndRight(((-((this.f3217i - 1) - c0951b.f3233a.f3255e)) * this.f3219k) - ((-((this.f3217i - 1) - c0951b.f3233a.f3255e)) * i3));
                }
            }
        }
    }

    /* renamed from: a */
    private int m18747a(RecyclerView.C0937p c0937p, C0985g c0985g, RecyclerView.C0945u c0945u) {
        boolean z;
        C0957e c0957e;
        int mo18455e;
        int i;
        int mo18460c;
        int mo18455e2;
        this.f3221m.set(0, this.f3217i, true);
        int i2 = this.f3220l.f3388i ? c0985g.f3384e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c0985g.f3384e == 1 ? c0985g.f3386g + c0985g.f3381b : c0985g.f3385f - c0985g.f3381b;
        m18766a(c0985g.f3384e, i2);
        int mo18458d = this.f3213e ? this.f3210b.mo18458d() : this.f3210b.mo18460c();
        boolean z2 = false;
        while (true) {
            z = z2;
            if (!c0985g.m18495a(c0945u) || (!this.f3220l.f3388i && this.f3221m.isEmpty())) {
                break;
            }
            View m18496a = c0985g.m18496a(c0937p);
            C0951b c0951b = (C0951b) m18496a.getLayoutParams();
            int f = c0951b.m18905f();
            int m18660c = this.f3216h.m18660c(f);
            boolean z3 = m18660c == -1;
            if (z3) {
                c0957e = c0951b.f3234b ? this.f3209a[0] : m18736a(c0985g);
                this.f3216h.m18664a(f, c0957e);
            } else {
                c0957e = this.f3209a[m18660c];
            }
            c0951b.f3233a = c0957e;
            if (c0985g.f3384e == 1) {
                m18960b(m18496a);
            } else {
                m18959b(m18496a, 0);
            }
            m18756a(m18496a, c0951b, false);
            if (c0985g.f3384e == 1) {
                int m18681r = c0951b.f3234b ? m18681r(mo18458d) : c0957e.m18638b(mo18458d);
                i = m18681r + this.f3210b.mo18455e(m18496a);
                if (!z3 || !c0951b.f3234b) {
                    mo18455e = m18681r;
                } else {
                    C0952c.C0953a m18689n = m18689n(m18681r);
                    m18689n.f3238b = -1;
                    m18689n.f3237a = f;
                    this.f3216h.m18663a(m18689n);
                    mo18455e = m18681r;
                }
            } else {
                int m18683q = c0951b.f3234b ? m18683q(mo18458d) : c0957e.m18645a(mo18458d);
                mo18455e = m18683q - this.f3210b.mo18455e(m18496a);
                if (z3 && c0951b.f3234b) {
                    C0952c.C0953a m18687o = m18687o(m18683q);
                    m18687o.f3238b = 1;
                    m18687o.f3237a = f;
                    this.f3216h.m18663a(m18687o);
                }
                i = m18683q;
            }
            if (c0951b.f3234b && c0985g.f3383d == -1) {
                if (z3) {
                    this.f3205E = true;
                } else {
                    if (c0985g.f3384e == 1 ? !m18693l() : !m18691m()) {
                        C0952c.C0953a m18655f = this.f3216h.m18655f(f);
                        if (m18655f != null) {
                            m18655f.f3240d = true;
                        }
                        this.f3205E = true;
                    }
                }
            }
            m18757a(m18496a, c0951b, c0985g);
            if (!m18698j() || this.f3218j != 1) {
                mo18460c = c0951b.f3234b ? this.f3211c.mo18460c() : (c0957e.f3255e * this.f3219k) + this.f3211c.mo18460c();
                mo18455e2 = mo18460c + this.f3211c.mo18455e(m18496a);
            } else {
                int mo18458d2 = c0951b.f3234b ? this.f3211c.mo18458d() : this.f3211c.mo18458d() - (((this.f3217i - 1) - c0957e.f3255e) * this.f3219k);
                mo18455e2 = mo18458d2;
                mo18460c = mo18458d2 - this.f3211c.mo18455e(m18496a);
            }
            if (this.f3218j == 1) {
                m18987a(m18496a, mo18460c, mo18455e, mo18455e2, i);
            } else {
                m18987a(m18496a, mo18455e, mo18460c, i, mo18455e2);
            }
            if (c0951b.f3234b) {
                m18766a(this.f3220l.f3384e, i2);
            } else {
                m18737a(c0957e, this.f3220l.f3384e, i2);
            }
            m18748a(c0937p, this.f3220l);
            if (this.f3220l.f3387h && m18496a.hasFocusable()) {
                if (c0951b.f3234b) {
                    this.f3221m.clear();
                } else {
                    this.f3221m.set(c0957e.f3255e, false);
                }
            }
            z2 = true;
        }
        if (!z) {
            m18748a(c0937p, this.f3220l);
        }
        int mo18460c2 = this.f3220l.f3384e == -1 ? this.f3210b.mo18460c() - m18683q(this.f3210b.mo18460c()) : m18681r(this.f3210b.mo18458d()) - this.f3210b.mo18458d();
        return mo18460c2 > 0 ? Math.min(c0985g.f3381b, mo18460c2) : 0;
    }

    /* renamed from: a */
    private C0957e m18736a(C0985g c0985g) {
        int i;
        int i2;
        int i3;
        C0957e c0957e;
        if (m18679t(c0985g.f3384e)) {
            i = this.f3217i - 1;
            i3 = -1;
            i2 = -1;
        } else {
            i = 0;
            i2 = this.f3217i;
            i3 = 1;
        }
        if (c0985g.f3384e != 1) {
            int mo18458d = this.f3210b.mo18458d();
            int i4 = i;
            C0957e c0957e2 = null;
            int i5 = Integer.MIN_VALUE;
            while (true) {
                c0957e = c0957e2;
                if (i4 == i2) {
                    break;
                }
                C0957e c0957e3 = this.f3209a[i4];
                int m18645a = c0957e3.m18645a(mo18458d);
                if (m18645a > i5) {
                    c0957e2 = c0957e3;
                    i5 = m18645a;
                }
                i4 += i3;
            }
        } else {
            int mo18460c = this.f3210b.mo18460c();
            int i6 = i;
            C0957e c0957e4 = null;
            int i7 = Integer.MAX_VALUE;
            while (true) {
                c0957e = c0957e4;
                if (i6 == i2) {
                    break;
                }
                C0957e c0957e5 = this.f3209a[i6];
                int m18638b = c0957e5.m18638b(mo18460c);
                if (m18638b < i7) {
                    c0957e4 = c0957e5;
                    i7 = m18638b;
                }
                i6 += i3;
            }
        }
        return c0957e;
    }

    /* renamed from: a */
    private void m18766a(int i, int i2) {
        for (int i3 = 0; i3 < this.f3217i; i3++) {
            if (!this.f3209a[i3].f3251a.isEmpty()) {
                m18737a(this.f3209a[i3], i, i2);
            }
        }
    }

    /* renamed from: a */
    private void m18759a(View view, int i, int i2, boolean z) {
        m18957b(view, this.f3203C);
        C0951b c0951b = (C0951b) view.getLayoutParams();
        int m18731b = m18731b(i, c0951b.leftMargin + this.f3203C.left, c0951b.rightMargin + this.f3203C.right);
        int m18731b2 = m18731b(i2, c0951b.topMargin + this.f3203C.top, c0951b.bottomMargin + this.f3203C.bottom);
        if (z ? m18986a(view, m18731b, m18731b2, c0951b) : m18958b(view, m18731b, m18731b2, c0951b)) {
            view.measure(m18731b, m18731b2);
        }
    }

    /* renamed from: a */
    private void m18757a(View view, C0951b c0951b, C0985g c0985g) {
        if (c0985g.f3384e == 1) {
            if (c0951b.f3234b) {
                m18684p(view);
            } else {
                c0951b.f3233a.m18637b(view);
            }
        } else if (c0951b.f3234b) {
            m18682q(view);
        } else {
            c0951b.f3233a.m18641a(view);
        }
    }

    /* renamed from: a */
    private void m18756a(View view, C0951b c0951b, boolean z) {
        if (c0951b.f3234b) {
            if (this.f3218j == 1) {
                m18759a(view, this.f3202B, m18996a(m19009C(), m19011A(), m19007E() + m19005G(), c0951b.height, true), z);
            } else {
                m18759a(view, m18996a(m19010B(), m18909z(), m19008D() + m19006F(), c0951b.width, true), this.f3202B, z);
            }
        } else if (this.f3218j == 1) {
            m18759a(view, m18996a(this.f3219k, m18909z(), 0, c0951b.width, false), m18996a(m19009C(), m19011A(), m19007E() + m19005G(), c0951b.height, true), z);
        } else {
            m18759a(view, m18996a(m19010B(), m18909z(), m19008D() + m19006F(), c0951b.width, true), m18996a(this.f3219k, m19011A(), 0, c0951b.height, false), z);
        }
    }

    /* renamed from: a */
    private void m18752a(RecyclerView.C0937p c0937p, int i) {
        while (m18910y() > 0) {
            View i2 = m18927i(0);
            if (this.f3210b.mo18461b(i2) > i || this.f3210b.mo18459c(i2) > i) {
                return;
            }
            C0951b c0951b = (C0951b) i2.getLayoutParams();
            if (c0951b.f3234b) {
                for (int i3 = 0; i3 < this.f3217i; i3++) {
                    if (this.f3209a[i3].f3251a.size() == 1) {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.f3217i; i4++) {
                    this.f3209a[i4].m18628h();
                }
            } else if (c0951b.f3233a.f3251a.size() == 1) {
                return;
            } else {
                c0951b.f3233a.m18628h();
            }
            m18980a(i2, c0937p);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x022c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m18749a(androidx.recyclerview.widget.RecyclerView.C0937p r6, androidx.recyclerview.widget.RecyclerView.C0945u r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m18749a(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$u, boolean):void");
    }

    /* renamed from: a */
    private void m18748a(RecyclerView.C0937p c0937p, C0985g c0985g) {
        if (!c0985g.f3380a || c0985g.f3388i) {
            return;
        }
        if (c0985g.f3381b == 0) {
            if (c0985g.f3384e == -1) {
                m18728b(c0937p, c0985g.f3386g);
            } else {
                m18752a(c0937p, c0985g.f3385f);
            }
        } else if (c0985g.f3384e == -1) {
            int m18685p = c0985g.f3385f - m18685p(c0985g.f3385f);
            m18728b(c0937p, m18685p < 0 ? c0985g.f3386g : c0985g.f3386g - Math.min(m18685p, c0985g.f3381b));
        } else {
            int m18680s = m18680s(c0985g.f3386g) - c0985g.f3386g;
            m18752a(c0937p, m18680s < 0 ? c0985g.f3385f : Math.min(m18680s, c0985g.f3381b) + c0985g.f3385f);
        }
    }

    /* renamed from: a */
    private void m18739a(C0950a c0950a) {
        if (this.f3201A.f3243c > 0) {
            if (this.f3201A.f3243c == this.f3217i) {
                for (int i = 0; i < this.f3217i; i++) {
                    this.f3209a[i].m18631e();
                    int i2 = this.f3201A.f3244d[i];
                    int i3 = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f3201A.f3249i ? i2 + this.f3210b.mo18458d() : i2 + this.f3210b.mo18460c();
                    }
                    this.f3209a[i].m18635c(i3);
                }
            } else {
                this.f3201A.m18650a();
                this.f3201A.f3241a = this.f3201A.f3242b;
            }
        }
        this.f3224z = this.f3201A.f3250j;
        m18734a(this.f3201A.f3248h);
        m18770P();
        if (this.f3201A.f3241a != -1) {
            this.f3214f = this.f3201A.f3241a;
            c0950a.f3228c = this.f3201A.f3249i;
        } else {
            c0950a.f3228c = this.f3213e;
        }
        if (this.f3201A.f3245e > 1) {
            this.f3216h.f3235a = this.f3201A.f3246f;
            this.f3216h.f3236b = this.f3201A.f3247g;
        }
    }

    /* renamed from: a */
    private void m18737a(C0957e c0957e, int i, int i2) {
        int m18627i = c0957e.m18627i();
        if (i == -1) {
            if (m18627i + c0957e.m18639b() > i2) {
                return;
            }
            this.f3221m.set(c0957e.f3255e, false);
        } else if (c0957e.m18633d() - m18627i < i2) {
        } else {
            this.f3221m.set(c0957e.f3255e, false);
        }
    }

    /* renamed from: a */
    private boolean m18738a(C0957e c0957e) {
        boolean z = true;
        if (this.f3213e) {
            if (c0957e.m18633d() < this.f3210b.mo18458d()) {
                z = !c0957e.m18634c(c0957e.f3251a.get(c0957e.f3251a.size() - 1)).f3234b;
            }
            z = false;
        } else {
            if (c0957e.m18639b() > this.f3210b.mo18460c()) {
                if (c0957e.m18634c(c0957e.f3251a.get(0)).f3234b) {
                    z = false;
                }
            }
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
        if (r0 == 1073741824) goto L13;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m18731b(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r6
            if (r0 != 0) goto Le
            r0 = r7
            if (r0 != 0) goto Le
            r0 = r5
            r8 = r0
        Lb:
            r0 = r8
            return r0
        Le:
            r0 = r5
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L25
            r0 = r5
            r8 = r0
            r0 = r9
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 != r1) goto Lb
        L25:
            r0 = 0
            r1 = r5
            int r1 = android.view.View.MeasureSpec.getSize(r1)
            r2 = r6
            int r1 = r1 - r2
            r2 = r7
            int r1 = r1 - r2
            int r0 = java.lang.Math.max(r0, r1)
            r1 = r9
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r8 = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m18731b(int, int, int):int");
    }

    /* renamed from: b */
    private void m18729b(int i, RecyclerView.C0945u c0945u) {
        int i2;
        int i3;
        int m18820c;
        this.f3220l.f3381b = 0;
        this.f3220l.f3382c = i;
        if (!m18914u() || (m18820c = c0945u.m18820c()) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.f3213e == (m18820c < i)) {
                i2 = this.f3210b.mo18454f();
                i3 = 0;
            } else {
                i3 = this.f3210b.mo18454f();
                i2 = 0;
            }
        }
        if (m18915t()) {
            this.f3220l.f3385f = this.f3210b.mo18460c() - i3;
            this.f3220l.f3386g = i2 + this.f3210b.mo18458d();
        } else {
            this.f3220l.f3386g = i2 + this.f3210b.mo18456e();
            this.f3220l.f3385f = -i3;
        }
        this.f3220l.f3387h = false;
        this.f3220l.f3380a = true;
        C0985g c0985g = this.f3220l;
        boolean z = false;
        if (this.f3210b.mo18451h() == 0) {
            z = false;
            if (this.f3210b.mo18456e() == 0) {
                z = true;
            }
        }
        c0985g.f3388i = z;
    }

    /* renamed from: b */
    private void m18728b(RecyclerView.C0937p c0937p, int i) {
        for (int y = m18910y() - 1; y >= 0; y--) {
            View i2 = m18927i(y);
            if (this.f3210b.mo18462a(i2) < i || this.f3210b.mo18457d(i2) < i) {
                return;
            }
            C0951b c0951b = (C0951b) i2.getLayoutParams();
            if (c0951b.f3234b) {
                for (int i3 = 0; i3 < this.f3217i; i3++) {
                    if (this.f3209a[i3].f3251a.size() == 1) {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.f3217i; i4++) {
                    this.f3209a[i4].m18629g();
                }
            } else if (c0951b.f3233a.f3251a.size() == 1) {
                return;
            } else {
                c0951b.f3233a.m18629g();
            }
            m18980a(i2, c0937p);
        }
    }

    /* renamed from: b */
    private void m18726b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, boolean z) {
        int mo18458d;
        int m18681r = m18681r(RecyclerView.UNDEFINED_DURATION);
        if (m18681r != Integer.MIN_VALUE && (mo18458d = this.f3210b.mo18458d() - m18681r) > 0) {
            int i = mo18458d - (-m18719c(-mo18458d, c0937p, c0945u));
            if (!z || i <= 0) {
                return;
            }
            this.f3210b.mo18463a(i);
        }
    }

    /* renamed from: c */
    private void m18720c(int i, int i2, int i3) {
        int i4;
        int i5;
        int m18688o = this.f3213e ? m18688o() : m18686p();
        if (i3 != 8) {
            i4 = i + i2;
            i5 = i;
        } else if (i < i2) {
            i4 = i2 + 1;
            i5 = i;
        } else {
            i4 = i + 1;
            i5 = i2;
        }
        this.f3216h.m18662b(i5);
        switch (i3) {
            case 1:
                this.f3216h.m18661b(i, i2);
                break;
            case 2:
                this.f3216h.m18666a(i, i2);
                break;
            case 8:
                this.f3216h.m18666a(i, 1);
                this.f3216h.m18661b(i2, 1);
                break;
        }
        if (i4 <= m18688o) {
            return;
        }
        if (i5 > (this.f3213e ? m18686p() : m18688o())) {
            return;
        }
        m18918q();
    }

    /* renamed from: c */
    private void m18717c(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, boolean z) {
        int mo18460c;
        int m18683q = m18683q(Integer.MAX_VALUE);
        if (m18683q != Integer.MAX_VALUE && (mo18460c = m18683q - this.f3210b.mo18460c()) > 0) {
            int m18719c = mo18460c - m18719c(mo18460c, c0937p, c0945u);
            if (!z || m18719c <= 0) {
                return;
            }
            this.f3210b.mo18463a(-m18719c);
        }
    }

    /* renamed from: c */
    private boolean m18715c(RecyclerView.C0945u c0945u, C0950a c0950a) {
        c0950a.f3226a = this.f3223o ? m18676w(c0945u.m18818e()) : m18677v(c0945u.m18818e());
        c0950a.f3227b = RecyclerView.UNDEFINED_DURATION;
        return true;
    }

    /* renamed from: f */
    private int m18705f(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            i = C0997n.m18431a(c0945u, this.f3210b, m18722b(!this.f3206F), m18714c(!this.f3206F), this, this.f3206F, this.f3213e);
        }
        return i;
    }

    /* renamed from: i */
    private int m18699i(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            i = C0997n.m18432a(c0945u, this.f3210b, m18722b(!this.f3206F), m18714c(!this.f3206F), this, this.f3206F);
        }
        return i;
    }

    /* renamed from: j */
    private int m18696j(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            i = C0997n.m18430b(c0945u, this.f3210b, m18722b(!this.f3206F), m18714c(!this.f3206F), this, this.f3206F);
        }
        return i;
    }

    /* renamed from: m */
    private void m18690m(int i) {
        this.f3220l.f3384e = i;
        this.f3220l.f3383d = this.f3213e == (i == -1) ? 1 : -1;
    }

    /* renamed from: n */
    private C0952c.C0953a m18689n(int i) {
        C0952c.C0953a c0953a = new C0952c.C0953a();
        c0953a.f3239c = new int[this.f3217i];
        for (int i2 = 0; i2 < this.f3217i; i2++) {
            c0953a.f3239c[i2] = i - this.f3209a[i2].m18638b(i);
        }
        return c0953a;
    }

    /* renamed from: o */
    private C0952c.C0953a m18687o(int i) {
        C0952c.C0953a c0953a = new C0952c.C0953a();
        c0953a.f3239c = new int[this.f3217i];
        for (int i2 = 0; i2 < this.f3217i; i2++) {
            c0953a.f3239c[i2] = this.f3209a[i2].m18645a(i) - i;
        }
        return c0953a;
    }

    /* renamed from: p */
    private int m18685p(int i) {
        int m18645a = this.f3209a[0].m18645a(i);
        int i2 = 1;
        while (i2 < this.f3217i) {
            int m18645a2 = this.f3209a[i2].m18645a(i);
            int i3 = m18645a;
            if (m18645a2 > m18645a) {
                i3 = m18645a2;
            }
            i2++;
            m18645a = i3;
        }
        return m18645a;
    }

    /* renamed from: p */
    private void m18684p(View view) {
        for (int i = this.f3217i - 1; i >= 0; i--) {
            this.f3209a[i].m18637b(view);
        }
    }

    /* renamed from: q */
    private int m18683q(int i) {
        int m18645a = this.f3209a[0].m18645a(i);
        int i2 = 1;
        while (i2 < this.f3217i) {
            int m18645a2 = this.f3209a[i2].m18645a(i);
            int i3 = m18645a;
            if (m18645a2 < m18645a) {
                i3 = m18645a2;
            }
            i2++;
            m18645a = i3;
        }
        return m18645a;
    }

    /* renamed from: q */
    private void m18682q(View view) {
        for (int i = this.f3217i - 1; i >= 0; i--) {
            this.f3209a[i].m18641a(view);
        }
    }

    /* renamed from: r */
    private int m18681r(int i) {
        int m18638b = this.f3209a[0].m18638b(i);
        int i2 = 1;
        while (i2 < this.f3217i) {
            int m18638b2 = this.f3209a[i2].m18638b(i);
            int i3 = m18638b;
            if (m18638b2 > m18638b) {
                i3 = m18638b2;
            }
            i2++;
            m18638b = i3;
        }
        return m18638b;
    }

    /* renamed from: s */
    private int m18680s(int i) {
        int m18638b = this.f3209a[0].m18638b(i);
        int i2 = 1;
        while (i2 < this.f3217i) {
            int m18638b2 = this.f3209a[i2].m18638b(i);
            int i3 = m18638b;
            if (m18638b2 < m18638b) {
                i3 = m18638b2;
            }
            i2++;
            m18638b = i3;
        }
        return m18638b;
    }

    /* renamed from: t */
    private boolean m18679t(int i) {
        boolean z;
        if (this.f3218j == 0) {
            z = (i == -1) != this.f3213e;
        } else {
            z = true;
            if (((i == -1) == this.f3213e) != m18698j()) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: u */
    private int m18678u(int i) {
        int i2;
        if (m18910y() == 0) {
            i2 = this.f3213e ? 1 : -1;
        } else {
            i2 = (i < m18686p()) != this.f3213e ? -1 : 1;
        }
        return i2;
    }

    /* renamed from: v */
    private int m18677v(int i) {
        int i2;
        int y = m18910y();
        int i3 = 0;
        while (true) {
            if (i3 >= y) {
                i2 = 0;
                break;
            }
            int d = m18943d(m18927i(i3));
            if (d >= 0 && d < i) {
                i2 = d;
                break;
            }
            i3++;
        }
        return i2;
    }

    /* renamed from: w */
    private int m18676w(int i) {
        int i2;
        int y = m18910y() - 1;
        while (true) {
            if (y < 0) {
                i2 = 0;
                break;
            }
            int d = m18943d(m18927i(y));
            if (d >= 0 && d < i) {
                i2 = d;
                break;
            }
            y--;
        }
        return i2;
    }

    /* renamed from: x */
    private int m18675x(int i) {
        int i2;
        switch (i) {
            case 1:
                i2 = -1;
                if (this.f3218j != 1) {
                    i2 = -1;
                    if (m18698j()) {
                        i2 = 1;
                        break;
                    }
                }
                break;
            case 2:
                if (this.f3218j != 1) {
                    i2 = -1;
                    if (!m18698j()) {
                        i2 = 1;
                        break;
                    }
                } else {
                    i2 = 1;
                    break;
                }
                break;
            case 17:
                i2 = -1;
                if (this.f3218j != 0) {
                    i2 = Integer.MIN_VALUE;
                    break;
                }
                break;
            case 33:
                i2 = -1;
                if (this.f3218j != 1) {
                    i2 = Integer.MIN_VALUE;
                    break;
                }
                break;
            case 66:
                if (this.f3218j != 0) {
                    i2 = Integer.MIN_VALUE;
                    break;
                } else {
                    i2 = 1;
                    break;
                }
            case 130:
                i2 = Integer.MIN_VALUE;
                if (this.f3218j == 1) {
                    i2 = 1;
                    break;
                }
                break;
            default:
                i2 = Integer.MIN_VALUE;
                break;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public int mo18764a(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return m18719c(i, c0937p, c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public int mo18751a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3218j == 0 ? this.f3217i : super.mo18751a(c0937p, c0945u);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c0, code lost:
        if (r6 != r0) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x016c, code lost:
        if (r0 == r0) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e9 A[LOOP:3: B:80:0x01e9->B:79:0x01e6, LOOP_START, PHI: r15 
      PHI: (r15v3 int) = (r15v2 int), (r15v4 int) binds: [B:60:0x0179, B:79:0x01e6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo18758a(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.C0937p r8, androidx.recyclerview.widget.RecyclerView.C0945u r9) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo18758a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$u):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18768a() {
        return this.f3218j == 0 ? new C0951b(-2, -1) : new C0951b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18762a(Context context, AttributeSet attributeSet) {
        return new C0951b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18755a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0951b((ViewGroup.MarginLayoutParams) layoutParams) : new C0951b(layoutParams);
    }

    /* renamed from: a */
    public void m18767a(int i) {
        mo18735a((String) null);
        if (i != this.f3217i) {
            m18700i();
            this.f3217i = i;
            this.f3221m = new BitSet(this.f3217i);
            this.f3209a = new C0957e[this.f3217i];
            for (int i2 = 0; i2 < this.f3217i; i2++) {
                this.f3209a[i2] = new C0957e(i2);
            }
            m18918q();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18765a(int i, int i2, RecyclerView.C0945u c0945u, RecyclerView.AbstractC0925i.AbstractC0928a abstractC0928a) {
        int i3;
        if (this.f3218j != 0) {
            i = i2;
        }
        if (m18910y() == 0 || i == 0) {
            return;
        }
        m18763a(i, c0945u);
        if (this.f3207G == null || this.f3207G.length < this.f3217i) {
            this.f3207G = new int[this.f3217i];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i3 = i5;
            if (i4 >= this.f3217i) {
                break;
            }
            int m18645a = this.f3220l.f3383d == -1 ? this.f3220l.f3385f - this.f3209a[i4].m18645a(this.f3220l.f3385f) : this.f3209a[i4].m18638b(this.f3220l.f3386g) - this.f3220l.f3386g;
            int i6 = i3;
            if (m18645a >= 0) {
                this.f3207G[i3] = m18645a;
                i6 = i3 + 1;
            }
            i4++;
            i5 = i6;
        }
        Arrays.sort(this.f3207G, 0, i3);
        for (int i7 = 0; i7 < i3 && this.f3220l.m18495a(c0945u); i7++) {
            abstractC0928a.mo18498b(this.f3220l.f3382c, this.f3207G[i7]);
            this.f3220l.f3382c += this.f3220l.f3383d;
        }
    }

    /* renamed from: a */
    void m18763a(int i, RecyclerView.C0945u c0945u) {
        int i2;
        int m18686p;
        if (i > 0) {
            m18686p = m18688o();
            i2 = 1;
        } else {
            i2 = -1;
            m18686p = m18686p();
        }
        this.f3220l.f3380a = true;
        m18729b(m18686p, c0945u);
        m18690m(i2);
        this.f3220l.f3382c = this.f3220l.f3383d + m18686p;
        this.f3220l.f3381b = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18761a(Rect rect, int i, int i2) {
        int a;
        int a2;
        int F = m19006F() + m19008D();
        int E = m19007E() + m19005G();
        if (this.f3218j == 1) {
            a2 = m18997a(i2, E + rect.height(), m19001K());
            a = m18997a(i, F + (this.f3219k * this.f3217i), m19002J());
        } else {
            a = m18997a(i, F + rect.width(), m19002J());
            a2 = m18997a(i2, E + (this.f3219k * this.f3217i), m19001K());
        }
        m18934f(a, a2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18760a(Parcelable parcelable) {
        if (parcelable instanceof C0955d) {
            this.f3201A = (C0955d) parcelable;
            m18918q();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18754a(AccessibilityEvent accessibilityEvent) {
        super.mo18754a(accessibilityEvent);
        if (m18910y() > 0) {
            View m18722b = m18722b(false);
            View m18714c = m18714c(false);
            if (m18722b == null || m18714c == null) {
                return;
            }
            int d = m18943d(m18722b);
            int d2 = m18943d(m18714c);
            if (d < d2) {
                accessibilityEvent.setFromIndex(d);
                accessibilityEvent.setToIndex(d2);
                return;
            }
            accessibilityEvent.setFromIndex(d2);
            accessibilityEvent.setToIndex(d);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18750a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, View view, C0553c c0553c) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0951b)) {
            super.m18981a(view, c0553c);
            return;
        }
        C0951b c0951b = (C0951b) layoutParams;
        if (this.f3218j == 0) {
            c0553c.m20503b(C0553c.C0556c.m20450a(c0951b.m18669b(), c0951b.f3234b ? this.f3217i : 1, -1, -1, false, false));
        } else {
            c0553c.m20503b(C0553c.C0556c.m20450a(-1, -1, c0951b.m18669b(), c0951b.f3234b ? this.f3217i : 1, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18746a(RecyclerView.C0945u c0945u) {
        super.mo18746a(c0945u);
        this.f3214f = -1;
        this.f3215g = RecyclerView.UNDEFINED_DURATION;
        this.f3201A = null;
        this.f3204D.m18674a();
    }

    /* renamed from: a */
    void m18745a(RecyclerView.C0945u c0945u, C0950a c0950a) {
        if (!m18724b(c0945u, c0950a) && !m18715c(c0945u, c0950a)) {
            c0950a.m18671b();
            c0950a.f3226a = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18744a(RecyclerView recyclerView) {
        this.f3216h.m18668a();
        m18918q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18743a(RecyclerView recyclerView, int i, int i2) {
        m18720c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18742a(RecyclerView recyclerView, int i, int i2, int i3) {
        m18720c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18741a(RecyclerView recyclerView, int i, int i2, Object obj) {
        m18720c(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18740a(RecyclerView recyclerView, RecyclerView.C0937p c0937p) {
        super.mo18740a(recyclerView, c0937p);
        m18962a(this.f3208H);
        for (int i = 0; i < this.f3217i; i++) {
            this.f3209a[i].m18631e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo3114a(RecyclerView recyclerView, RecyclerView.C0945u c0945u, int i) {
        C0986h c0986h = new C0986h(recyclerView.getContext());
        c0986h.m18838c(i);
        m18968a(c0986h);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18735a(String str) {
        if (this.f3201A == null) {
            super.mo18735a(str);
        }
    }

    /* renamed from: a */
    public void m18734a(boolean z) {
        mo18735a((String) null);
        if (this.f3201A != null && this.f3201A.f3248h != z) {
            this.f3201A.f3248h = z;
        }
        this.f3212d = z;
        m18918q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public boolean mo18753a(RecyclerView.C0930j c0930j) {
        return c0930j instanceof C0951b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18730b(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return m18719c(i, c0937p, c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18727b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3218j == 1 ? this.f3217i : super.mo18727b(c0937p, c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18725b(RecyclerView.C0945u c0945u) {
        return m18696j(c0945u);
    }

    /* renamed from: b */
    View m18722b(boolean z) {
        View view;
        int mo18460c = this.f3210b.mo18460c();
        int mo18458d = this.f3210b.mo18458d();
        int y = m18910y();
        View view2 = null;
        int i = 0;
        while (true) {
            if (i >= y) {
                view = view2;
                break;
            }
            View i2 = m18927i(i);
            int mo18462a = this.f3210b.mo18462a(i2);
            View view3 = view2;
            if (this.f3210b.mo18461b(i2) > mo18460c) {
                if (mo18462a >= mo18458d) {
                    view3 = view2;
                } else {
                    view = i2;
                    if (mo18462a >= mo18460c) {
                        break;
                    } else if (!z) {
                        view = i2;
                        break;
                    } else {
                        view3 = view2;
                        if (view2 == null) {
                            view3 = i2;
                        }
                    }
                }
            }
            i++;
            view2 = view3;
        }
        return view;
    }

    /* renamed from: b */
    public void m18732b(int i) {
        if (i == 0 || i == 1) {
            mo18735a((String) null);
            if (i == this.f3218j) {
                return;
            }
            this.f3218j = i;
            AbstractC0990k abstractC0990k = this.f3210b;
            this.f3210b = this.f3211c;
            this.f3211c = abstractC0990k;
            m18918q();
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public void mo18723b(RecyclerView recyclerView, int i, int i2) {
        m18720c(i, i2, 2);
    }

    /* renamed from: b */
    boolean m18733b() {
        int m18686p;
        int m18688o;
        boolean z = true;
        if (m18910y() == 0 || this.f3222n == 0 || !m18916s()) {
            z = false;
        } else {
            if (this.f3213e) {
                m18686p = m18688o();
                m18688o = m18686p();
            } else {
                m18686p = m18686p();
                m18688o = m18688o();
            }
            if (m18686p == 0 && m18702h() != null) {
                this.f3216h.m18668a();
                m18999M();
                m18918q();
            } else if (!this.f3205E) {
                z = false;
            } else {
                int i = this.f3213e ? -1 : 1;
                C0952c.C0953a m18665a = this.f3216h.m18665a(m18686p, m18688o + 1, i, true);
                if (m18665a == null) {
                    this.f3205E = false;
                    this.f3216h.m18667a(m18688o + 1);
                    z = false;
                } else {
                    C0952c.C0953a m18665a2 = this.f3216h.m18665a(m18686p, m18665a.f3237a, i * (-1), true);
                    if (m18665a2 == null) {
                        this.f3216h.m18667a(m18665a.f3237a);
                    } else {
                        this.f3216h.m18667a(m18665a2.f3237a + 1);
                    }
                    m18999M();
                    m18918q();
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    boolean m18724b(RecyclerView.C0945u c0945u, C0950a c0950a) {
        boolean z;
        boolean z2 = false;
        if (c0945u.m18824a() || this.f3214f == -1) {
            z = false;
        } else if (this.f3214f < 0 || this.f3214f >= c0945u.m18818e()) {
            this.f3214f = -1;
            this.f3215g = RecyclerView.UNDEFINED_DURATION;
            z = false;
        } else if (this.f3201A == null || this.f3201A.f3241a == -1 || this.f3201A.f3243c < 1) {
            View c = mo18952c(this.f3214f);
            if (c != null) {
                c0950a.f3226a = this.f3213e ? m18688o() : m18686p();
                if (this.f3215g != Integer.MIN_VALUE) {
                    if (c0950a.f3228c) {
                        c0950a.f3227b = (this.f3210b.mo18458d() - this.f3215g) - this.f3210b.mo18461b(c);
                        z = true;
                    } else {
                        c0950a.f3227b = (this.f3210b.mo18460c() + this.f3215g) - this.f3210b.mo18462a(c);
                        z = true;
                    }
                } else if (this.f3210b.mo18455e(c) > this.f3210b.mo18454f()) {
                    c0950a.f3227b = c0950a.f3228c ? this.f3210b.mo18458d() : this.f3210b.mo18460c();
                    z = true;
                } else {
                    int mo18462a = this.f3210b.mo18462a(c) - this.f3210b.mo18460c();
                    if (mo18462a < 0) {
                        c0950a.f3227b = -mo18462a;
                        z = true;
                    } else {
                        int mo18458d = this.f3210b.mo18458d() - this.f3210b.mo18461b(c);
                        if (mo18458d < 0) {
                            c0950a.f3227b = mo18458d;
                            z = true;
                        } else {
                            c0950a.f3227b = RecyclerView.UNDEFINED_DURATION;
                            z = true;
                        }
                    }
                }
            } else {
                c0950a.f3226a = this.f3214f;
                if (this.f3215g == Integer.MIN_VALUE) {
                    if (m18678u(c0950a.f3226a) == 1) {
                        z2 = true;
                    }
                    c0950a.f3228c = z2;
                    c0950a.m18671b();
                } else {
                    c0950a.m18673a(this.f3215g);
                }
                c0950a.f3229d = true;
                z = true;
            }
        } else {
            c0950a.f3227b = RecyclerView.UNDEFINED_DURATION;
            c0950a.f3226a = this.f3214f;
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    int m18719c(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        if (m18910y() == 0 || i == 0) {
            i = 0;
        } else {
            m18763a(i, c0945u);
            int m18747a = m18747a(c0937p, this.f3220l, c0945u);
            if (this.f3220l.f3381b >= m18747a) {
                i = i < 0 ? -m18747a : m18747a;
            }
            this.f3210b.mo18463a(-i);
            this.f3223o = this.f3213e;
            this.f3220l.f3381b = 0;
            m18748a(c0937p, this.f3220l);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public int mo18716c(RecyclerView.C0945u c0945u) {
        return m18696j(c0945u);
    }

    /* renamed from: c */
    View m18714c(boolean z) {
        View view;
        int mo18460c = this.f3210b.mo18460c();
        int mo18458d = this.f3210b.mo18458d();
        View view2 = null;
        int y = m18910y() - 1;
        while (true) {
            if (y < 0) {
                view = view2;
                break;
            }
            View i = m18927i(y);
            int mo18462a = this.f3210b.mo18462a(i);
            int mo18461b = this.f3210b.mo18461b(i);
            View view3 = view2;
            if (mo18461b > mo18460c) {
                if (mo18462a >= mo18458d) {
                    view3 = view2;
                } else {
                    view = i;
                    if (mo18461b <= mo18458d) {
                        break;
                    } else if (!z) {
                        view = i;
                        break;
                    } else {
                        view3 = view2;
                        if (view2 == null) {
                            view3 = i;
                        }
                    }
                }
            }
            y--;
            view2 = view3;
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public void mo18718c(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        m18749a(c0937p, c0945u, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public boolean mo18721c() {
        return this.f3201A == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: d */
    public int mo18711d(RecyclerView.C0945u c0945u) {
        return m18705f(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0942t.AbstractC0944b
    /* renamed from: d */
    public PointF mo18712d(int i) {
        int m18678u = m18678u(i);
        PointF pointF = new PointF();
        if (m18678u == 0) {
            pointF = null;
        } else if (this.f3218j == 0) {
            pointF.x = m18678u;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = m18678u;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: d */
    public boolean mo18713d() {
        return this.f3222n != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public int mo18708e(RecyclerView.C0945u c0945u) {
        return m18705f(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public Parcelable mo18710e() {
        C0955d c0955d;
        int i;
        if (this.f3201A != null) {
            c0955d = new C0955d(this.f3201A);
        } else {
            c0955d = new C0955d();
            c0955d.f3248h = this.f3212d;
            c0955d.f3249i = this.f3223o;
            c0955d.f3250j = this.f3224z;
            if (this.f3216h == null || this.f3216h.f3235a == null) {
                c0955d.f3245e = 0;
            } else {
                c0955d.f3246f = this.f3216h.f3235a;
                c0955d.f3245e = c0955d.f3246f.length;
                c0955d.f3247g = this.f3216h.f3236b;
            }
            if (m18910y() > 0) {
                c0955d.f3241a = this.f3223o ? m18688o() : m18686p();
                c0955d.f3242b = m18695k();
                c0955d.f3243c = this.f3217i;
                c0955d.f3244d = new int[this.f3217i];
                for (int i2 = 0; i2 < this.f3217i; i2++) {
                    if (this.f3223o) {
                        int m18638b = this.f3209a[i2].m18638b(RecyclerView.UNDEFINED_DURATION);
                        i = m18638b;
                        if (m18638b != Integer.MIN_VALUE) {
                            i = m18638b - this.f3210b.mo18458d();
                        }
                    } else {
                        int m18645a = this.f3209a[i2].m18645a(RecyclerView.UNDEFINED_DURATION);
                        i = m18645a;
                        if (m18645a != Integer.MIN_VALUE) {
                            i = m18645a - this.f3210b.mo18460c();
                        }
                    }
                    c0955d.f3244d[i2] = i;
                }
            } else {
                c0955d.f3241a = -1;
                c0955d.f3242b = -1;
                c0955d.f3243c = 0;
            }
        }
        return c0955d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public void mo18709e(int i) {
        if (this.f3201A != null && this.f3201A.f3241a != i) {
            this.f3201A.m18649b();
        }
        this.f3214f = i;
        this.f3215g = RecyclerView.UNDEFINED_DURATION;
        m18918q();
    }

    /* renamed from: f */
    void m18706f(int i) {
        this.f3219k = i / this.f3217i;
        this.f3202B = View.MeasureSpec.makeMeasureSpec(i, this.f3211c.mo18451h());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: f */
    public boolean mo18707f() {
        return this.f3218j == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: g */
    public int mo18703g(RecyclerView.C0945u c0945u) {
        return m18699i(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: g */
    public boolean mo18704g() {
        boolean z = true;
        if (this.f3218j != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: h */
    public int mo18701h(RecyclerView.C0945u c0945u) {
        return m18699i(c0945u);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00a4 A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View m18702h() {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m18702h():android.view.View");
    }

    /* renamed from: i */
    public void m18700i() {
        this.f3216h.m18668a();
        m18918q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: j */
    public void mo18697j(int i) {
        super.mo18697j(i);
        for (int i2 = 0; i2 < this.f3217i; i2++) {
            this.f3209a[i2].m18632d(i);
        }
    }

    /* renamed from: j */
    boolean m18698j() {
        boolean z = true;
        if (m18913v() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    int m18695k() {
        View m18714c = this.f3213e ? m18714c(true) : m18722b(true);
        return m18714c == null ? -1 : m18943d(m18714c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: k */
    public void mo18694k(int i) {
        super.mo18694k(i);
        for (int i2 = 0; i2 < this.f3217i; i2++) {
            this.f3209a[i2].m18632d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: l */
    public void mo18692l(int i) {
        if (i == 0) {
            m18733b();
        }
    }

    /* renamed from: l */
    boolean m18693l() {
        boolean z;
        int m18638b = this.f3209a[0].m18638b(RecyclerView.UNDEFINED_DURATION);
        int i = 1;
        while (true) {
            z = true;
            if (i >= this.f3217i) {
                break;
            } else if (this.f3209a[i].m18638b(RecyclerView.UNDEFINED_DURATION) != m18638b) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: m */
    boolean m18691m() {
        boolean z;
        int m18645a = this.f3209a[0].m18645a(RecyclerView.UNDEFINED_DURATION);
        int i = 1;
        while (true) {
            z = true;
            if (i >= this.f3217i) {
                break;
            } else if (this.f3209a[i].m18645a(RecyclerView.UNDEFINED_DURATION) != m18645a) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: o */
    int m18688o() {
        int y = m18910y();
        return y == 0 ? 0 : m18943d(m18927i(y - 1));
    }

    /* renamed from: p */
    int m18686p() {
        int i = 0;
        if (m18910y() != 0) {
            i = m18943d(m18927i(0));
        }
        return i;
    }
}
