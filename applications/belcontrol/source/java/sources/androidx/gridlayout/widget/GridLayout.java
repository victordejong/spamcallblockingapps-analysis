package androidx.gridlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.LogPrinter;
import android.util.Pair;
import android.util.Printer;
import android.view.View;
import android.view.ViewGroup;
import androidx.legacy.widget.Space;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout.class */
public class GridLayout extends ViewGroup {

    /* renamed from: A */
    public static final AbstractC0116i f920A;

    /* renamed from: B */
    public static final AbstractC0116i f921B;

    /* renamed from: u */
    public static final AbstractC0116i f935u;

    /* renamed from: v */
    public static final AbstractC0116i f936v;

    /* renamed from: w */
    public static final AbstractC0116i f937w;

    /* renamed from: x */
    public static final AbstractC0116i f938x;

    /* renamed from: y */
    public static final AbstractC0116i f939y;

    /* renamed from: z */
    public static final AbstractC0116i f940z;

    /* renamed from: a */
    public final C0119l f941a;

    /* renamed from: b */
    public final C0119l f942b;

    /* renamed from: c */
    public int f943c;

    /* renamed from: d */
    public boolean f944d;

    /* renamed from: f */
    public int f945f;

    /* renamed from: g */
    public int f946g;

    /* renamed from: h */
    public int f947h;

    /* renamed from: j */
    public Printer f948j;

    /* renamed from: k */
    public static final Printer f925k = new LogPrinter(3, GridLayout.class.getName());

    /* renamed from: l */
    public static final Printer f926l = new C0115a();

    /* renamed from: m */
    public static final int f927m = C0244be.GridLayout_orientation;

    /* renamed from: n */
    public static final int f928n = C0244be.GridLayout_rowCount;

    /* renamed from: o */
    public static final int f929o = C0244be.GridLayout_columnCount;

    /* renamed from: p */
    public static final int f930p = C0244be.GridLayout_useDefaultMargins;

    /* renamed from: q */
    public static final int f931q = C0244be.GridLayout_alignmentMode;

    /* renamed from: r */
    public static final int f932r = C0244be.GridLayout_rowOrderPreserved;

    /* renamed from: s */
    public static final int f933s = C0244be.GridLayout_columnOrderPreserved;

    /* renamed from: t */
    public static final AbstractC0116i f934t = new b();

    /* renamed from: C */
    public static final AbstractC0116i f922C = new f();

    /* renamed from: D */
    public static final AbstractC0116i f923D = new g();

    /* renamed from: E */
    public static final AbstractC0116i f924E = new h();

    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: c */
        public static final C0122n f949c;

        /* renamed from: d */
        public static final int f950d;

        /* renamed from: f */
        public static final int f951f = C0244be.GridLayout_Layout_android_layout_margin;

        /* renamed from: g */
        public static final int f952g = C0244be.GridLayout_Layout_android_layout_marginLeft;

        /* renamed from: h */
        public static final int f953h = C0244be.GridLayout_Layout_android_layout_marginTop;

        /* renamed from: j */
        public static final int f954j = C0244be.GridLayout_Layout_android_layout_marginRight;

        /* renamed from: k */
        public static final int f955k = C0244be.GridLayout_Layout_android_layout_marginBottom;

        /* renamed from: l */
        public static final int f956l = C0244be.GridLayout_Layout_layout_column;

        /* renamed from: m */
        public static final int f957m = C0244be.GridLayout_Layout_layout_columnSpan;

        /* renamed from: n */
        public static final int f958n = C0244be.GridLayout_Layout_layout_columnWeight;

        /* renamed from: o */
        public static final int f959o = C0244be.GridLayout_Layout_layout_row;

        /* renamed from: p */
        public static final int f960p = C0244be.GridLayout_Layout_layout_rowSpan;

        /* renamed from: q */
        public static final int f961q = C0244be.GridLayout_Layout_layout_rowWeight;

        /* renamed from: r */
        public static final int f962r = C0244be.GridLayout_Layout_layout_gravity;

        /* renamed from: a */
        public C0125q f963a;

        /* renamed from: b */
        public C0125q f964b;

        static {
            C0122n c0122n = new C0122n(Integer.MIN_VALUE, -2147483647);
            f949c = c0122n;
            f950d = c0122n.m6603b();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public LayoutParams() {
            /*
                r4 = this;
                androidx.gridlayout.widget.GridLayout$q r0 = androidx.gridlayout.widget.GridLayout.C0125q.f1009e
                r5 = r0
                r0 = r4
                r1 = r5
                r2 = r5
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.gridlayout.widget.GridLayout.LayoutParams.<init>():void");
        }

        public LayoutParams(int i, int i2, int i3, int i4, int i5, int i6, C0125q c0125q, C0125q c0125q2) {
            super(i, i2);
            C0125q c0125q3 = C0125q.f1009e;
            this.f963a = c0125q3;
            this.f964b = c0125q3;
            setMargins(i3, i4, i5, i6);
            this.f963a = c0125q;
            this.f964b = c0125q2;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0125q c0125q = C0125q.f1009e;
            this.f963a = c0125q;
            this.f964b = c0125q;
            m6668c(context, attributeSet);
            m6669b(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            C0125q c0125q = C0125q.f1009e;
            this.f963a = c0125q;
            this.f964b = c0125q;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            C0125q c0125q = C0125q.f1009e;
            this.f963a = c0125q;
            this.f964b = c0125q;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            C0125q c0125q = C0125q.f1009e;
            this.f963a = c0125q;
            this.f964b = c0125q;
            this.f963a = layoutParams.f963a;
            this.f964b = layoutParams.f964b;
        }

        public LayoutParams(C0125q c0125q, C0125q c0125q2) {
            this(-2, -2, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, c0125q, c0125q2);
        }

        /* renamed from: b */
        public final void m6669b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0244be.GridLayout_Layout);
            try {
                int i = obtainStyledAttributes.getInt(f962r, 0);
                int i2 = obtainStyledAttributes.getInt(f956l, Integer.MIN_VALUE);
                int i3 = f957m;
                int i4 = f950d;
                this.f964b = GridLayout.m6696J(i2, obtainStyledAttributes.getInt(i3, i4), GridLayout.m6682n(i, true), obtainStyledAttributes.getFloat(f958n, 0.0f));
                this.f963a = GridLayout.m6696J(obtainStyledAttributes.getInt(f959o, Integer.MIN_VALUE), obtainStyledAttributes.getInt(f960p, i4), GridLayout.m6682n(i, false), obtainStyledAttributes.getFloat(f961q, 0.0f));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        /* renamed from: c */
        public final void m6668c(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0244be.GridLayout_Layout);
            try {
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(f951f, Integer.MIN_VALUE);
                ((ViewGroup.MarginLayoutParams) this).leftMargin = obtainStyledAttributes.getDimensionPixelSize(f952g, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).topMargin = obtainStyledAttributes.getDimensionPixelSize(f953h, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).rightMargin = obtainStyledAttributes.getDimensionPixelSize(f954j, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).bottomMargin = obtainStyledAttributes.getDimensionPixelSize(f955k, dimensionPixelSize);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        /* renamed from: d */
        public final void m6667d(C0122n c0122n) {
            this.f964b = this.f964b.m6598a(c0122n);
        }

        /* renamed from: e */
        public final void m6666e(C0122n c0122n) {
            this.f963a = this.f963a.m6598a(c0122n);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            LayoutParams layoutParams = (LayoutParams) obj;
            return this.f964b.equals(layoutParams.f964b) && this.f963a.equals(layoutParams.f963a);
        }

        public int hashCode() {
            return (this.f963a.hashCode() * 31) + this.f964b.hashCode();
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i, int i2) {
            ((ViewGroup.MarginLayoutParams) this).width = typedArray.getLayoutDimension(i, -2);
            ((ViewGroup.MarginLayoutParams) this).height = typedArray.getLayoutDimension(i2, -2);
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$a.class */
    public static final class C0115a implements Printer {
        @Override // android.util.Printer
        public void println(String str) {
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$i */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$i.class */
    public static abstract class AbstractC0116i {
        /* renamed from: a */
        public abstract int m6665a(View view, int i, int i2);

        /* renamed from: b */
        public C0121m m6664b() {
            return new C0121m();
        }

        /* renamed from: c */
        public abstract String m6663c();

        /* renamed from: d */
        public abstract int m6662d(View view, int i);

        /* renamed from: e */
        public int m6661e(View view, int i, int i2) {
            return i;
        }

        public String toString() {
            return "Alignment:" + m6663c();
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$j */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$j.class */
    public static final class C0117j {

        /* renamed from: a */
        public final C0122n f965a;

        /* renamed from: b */
        public final C0123o f966b;

        /* renamed from: c */
        public boolean f967c = true;

        public C0117j(C0122n c0122n, C0123o c0123o) {
            this.f965a = c0122n;
            this.f966b = c0123o;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f965a);
            sb.append(" ");
            sb.append(!this.f967c ? "+>" : "->");
            sb.append(" ");
            sb.append(this.f966b);
            return sb.toString();
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$k */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$k.class */
    public static final class C0118k<K, V> extends ArrayList<Pair<K, V>> {

        /* renamed from: a */
        public final Class<K> f968a;

        /* renamed from: b */
        public final Class<V> f969b;

        public C0118k(Class<K> cls, Class<V> cls2) {
            this.f968a = cls;
            this.f969b = cls2;
        }

        /* renamed from: b */
        public static <K, V> C0118k<K, V> m6660b(Class<K> cls, Class<V> cls2) {
            return new C0118k<>(cls, cls2);
        }

        /* renamed from: c */
        public C0124p<K, V> m6659c() {
            int size = size();
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.f968a, size);
            Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) this.f969b, size);
            for (int i = 0; i < size; i++) {
                objArr[i] = get(i).first;
                objArr2[i] = get(i).second;
            }
            return new C0124p<>(objArr, objArr2);
        }

        /* renamed from: d */
        public void m6658d(K k, V v) {
            add(Pair.create(k, v));
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$l */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$l.class */
    public final class C0119l {

        /* renamed from: a */
        public final boolean f970a;

        /* renamed from: d */
        public C0124p<C0125q, C0121m> f973d;

        /* renamed from: f */
        public C0124p<C0122n, C0123o> f975f;

        /* renamed from: h */
        public C0124p<C0122n, C0123o> f977h;

        /* renamed from: j */
        public int[] f979j;

        /* renamed from: l */
        public int[] f981l;

        /* renamed from: n */
        public C0117j[] f983n;

        /* renamed from: p */
        public int[] f985p;

        /* renamed from: r */
        public boolean f987r;

        /* renamed from: t */
        public int[] f989t;

        /* renamed from: b */
        public int f971b = Integer.MIN_VALUE;

        /* renamed from: c */
        public int f972c = Integer.MIN_VALUE;

        /* renamed from: e */
        public boolean f974e = false;

        /* renamed from: g */
        public boolean f976g = false;

        /* renamed from: i */
        public boolean f978i = false;

        /* renamed from: k */
        public boolean f980k = false;

        /* renamed from: m */
        public boolean f982m = false;

        /* renamed from: o */
        public boolean f984o = false;

        /* renamed from: q */
        public boolean f986q = false;

        /* renamed from: s */
        public boolean f988s = false;

        /* renamed from: u */
        public boolean f990u = true;

        /* renamed from: v */
        public C0123o f991v = new C0123o(0);

        /* renamed from: w */
        public C0123o f992w = new C0123o(-100000);

        /* renamed from: androidx.gridlayout.widget.GridLayout$l$a */
        /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$l$a.class */
        public class C0120a {

            /* renamed from: a */
            public C0117j[] f994a;

            /* renamed from: b */
            public int f995b;

            /* renamed from: c */
            public C0117j[][] f996c;

            /* renamed from: d */
            public int[] f997d;

            /* renamed from: e */
            public final /* synthetic */ C0117j[] f998e;

            public C0120a(C0117j[] c0117jArr) {
                C0119l.this = r5;
                this.f998e = c0117jArr;
                C0117j[] c0117jArr2 = new C0117j[c0117jArr.length];
                this.f994a = c0117jArr2;
                this.f995b = c0117jArr2.length - 1;
                this.f996c = r5.m6612z(c0117jArr);
                this.f997d = new int[r5.m6622p() + 1];
            }

            /* renamed from: a */
            public C0117j[] m6611a() {
                int length = this.f996c.length;
                for (int i = 0; i < length; i++) {
                    m6610b(i);
                }
                return this.f994a;
            }

            /* renamed from: b */
            public void m6610b(int i) {
                C0117j[] c0117jArr;
                int[] iArr = this.f997d;
                if (iArr[i] != 0) {
                    return;
                }
                iArr[i] = 1;
                for (C0117j c0117j : this.f996c[i]) {
                    m6610b(c0117j.f965a.f1004b);
                    C0117j[] c0117jArr2 = this.f994a;
                    int i2 = this.f995b;
                    this.f995b = i2 - 1;
                    c0117jArr2[i2] = c0117j;
                }
                this.f997d[i] = 2;
            }
        }

        public C0119l(boolean z) {
            GridLayout.this = r6;
            this.f970a = z;
        }

        /* renamed from: A */
        public final boolean m6657A() {
            if (!this.f988s) {
                this.f987r = m6631g();
                this.f988s = true;
            }
            return this.f987r;
        }

        /* renamed from: B */
        public final void m6656B(List<C0117j> list, C0122n c0122n, C0123o c0123o) {
            m6655C(list, c0122n, c0123o, true);
        }

        /* renamed from: C */
        public final void m6655C(List<C0117j> list, C0122n c0122n, C0123o c0123o, boolean z) {
            if (c0122n.m6603b() == 0) {
                return;
            }
            if (z) {
                for (C0117j c0117j : list) {
                    if (c0117j.f965a.equals(c0122n)) {
                        return;
                    }
                }
            }
            list.add(new C0117j(c0122n, c0123o));
        }

        /* renamed from: D */
        public final void m6654D(int[] iArr) {
            Arrays.fill(iArr, 0);
        }

        /* renamed from: E */
        public void m6653E() {
            this.f972c = Integer.MIN_VALUE;
            this.f973d = null;
            this.f975f = null;
            this.f977h = null;
            this.f979j = null;
            this.f981l = null;
            this.f983n = null;
            this.f985p = null;
            this.f989t = null;
            this.f988s = false;
            m6652F();
        }

        /* renamed from: F */
        public void m6652F() {
            this.f974e = false;
            this.f976g = false;
            this.f978i = false;
            this.f980k = false;
            this.f982m = false;
            this.f984o = false;
            this.f986q = false;
        }

        /* renamed from: G */
        public void m6651G(int i) {
            m6646L(i, i);
            m6617u();
        }

        /* renamed from: H */
        public final void m6650H(String str, C0117j[] c0117jArr, boolean[] zArr) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < c0117jArr.length; i++) {
                C0117j c0117j = c0117jArr[i];
                if (zArr[i]) {
                    arrayList.add(c0117j);
                }
                if (!c0117j.f967c) {
                    arrayList2.add(c0117j);
                }
            }
            GridLayout.this.f948j.println(str + " constraints: " + m6636b(arrayList) + " are inconsistent; permanently removing: " + m6636b(arrayList2) + ". ");
        }

        /* renamed from: I */
        public final boolean m6649I(int[] iArr, C0117j c0117j) {
            if (!c0117j.f967c) {
                return false;
            }
            C0122n c0122n = c0117j.f965a;
            int i = c0122n.f1003a;
            int i2 = c0122n.f1004b;
            int i3 = iArr[i] + c0117j.f966b.f1005a;
            if (i3 <= iArr[i2]) {
                return false;
            }
            iArr[i2] = i3;
            return true;
        }

        /* renamed from: J */
        public void m6648J(int i) {
            if (i == Integer.MIN_VALUE || i >= m6616v()) {
                this.f971b = i;
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.f970a ? "column" : "row");
            sb.append("Count must be greater than or equal to the maximum of all grid indices ");
            sb.append("(and spans) defined in the LayoutParams of each child");
            GridLayout.m6672x(sb.toString());
            throw null;
        }

        /* renamed from: K */
        public void m6647K(boolean z) {
            this.f990u = z;
            m6653E();
        }

        /* renamed from: L */
        public final void m6646L(int i, int i2) {
            this.f991v.f1005a = i;
            this.f992w.f1005a = -i2;
            this.f986q = false;
        }

        /* renamed from: M */
        public final void m6645M(int i, float f) {
            float f2;
            int i2;
            Arrays.fill(this.f989t, 0);
            int childCount = GridLayout.this.getChildCount();
            int i3 = i;
            int i4 = 0;
            while (i4 < childCount) {
                View childAt = GridLayout.this.getChildAt(i4);
                if (childAt.getVisibility() == 8) {
                    i2 = i3;
                    f2 = f;
                } else {
                    LayoutParams m6678r = GridLayout.this.m6678r(childAt);
                    float f3 = (this.f970a ? m6678r.f964b : m6678r.f963a).f1013d;
                    i2 = i3;
                    f2 = f;
                    if (f3 != 0.0f) {
                        int round = Math.round((i3 * f3) / f);
                        this.f989t[i4] = round;
                        i2 = i3 - round;
                        f2 = f - f3;
                    }
                }
                i4++;
                i3 = i2;
                f = f2;
            }
        }

        /* renamed from: N */
        public final int m6644N(int[] iArr) {
            return iArr[m6622p()];
        }

        /* renamed from: O */
        public final boolean m6643O(int[] iArr) {
            return m6642P(m6624n(), iArr);
        }

        /* renamed from: P */
        public final boolean m6642P(C0117j[] c0117jArr, int[] iArr) {
            return m6641Q(c0117jArr, iArr, true);
        }

        /* renamed from: Q */
        public final boolean m6641Q(C0117j[] c0117jArr, int[] iArr, boolean z) {
            String str = this.f970a ? "horizontal" : "vertical";
            int m6622p = m6622p() + 1;
            boolean[] zArr = null;
            for (int i = 0; i < c0117jArr.length; i++) {
                m6654D(iArr);
                for (int i2 = 0; i2 < m6622p; i2++) {
                    boolean z2 = false;
                    for (C0117j c0117j : c0117jArr) {
                        z2 |= m6649I(iArr, c0117j);
                    }
                    if (!z2) {
                        if (zArr == null) {
                            return true;
                        }
                        m6650H(str, c0117jArr, zArr);
                        return true;
                    }
                }
                if (!z) {
                    return false;
                }
                boolean[] zArr2 = new boolean[c0117jArr.length];
                for (int i3 = 0; i3 < m6622p; i3++) {
                    int length = c0117jArr.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        zArr2[i4] = zArr2[i4] | m6649I(iArr, c0117jArr[i4]);
                    }
                }
                if (i == 0) {
                    zArr = zArr2;
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= c0117jArr.length) {
                        break;
                    }
                    if (zArr2[i5]) {
                        C0117j c0117j2 = c0117jArr[i5];
                        C0122n c0122n = c0117j2.f965a;
                        if (c0122n.f1003a >= c0122n.f1004b) {
                            c0117j2.f967c = false;
                            break;
                        }
                    }
                    i5++;
                }
            }
            return true;
        }

        /* renamed from: R */
        public final void m6640R(int[] iArr) {
            Arrays.fill(m6621q(), 0);
            m6643O(iArr);
            boolean z = true;
            int childCount = (this.f991v.f1005a * GridLayout.this.getChildCount()) + 1;
            if (childCount < 2) {
                return;
            }
            float m6634d = m6634d();
            int i = -1;
            int i2 = 0;
            while (i2 < childCount) {
                int i3 = (int) ((i2 + childCount) / 2);
                m6652F();
                m6645M(i3, m6634d);
                z = m6641Q(m6624n(), iArr, false);
                if (z) {
                    i2 = i3 + 1;
                    i = i3;
                } else {
                    childCount = i3;
                }
            }
            if (i <= 0 || z) {
                return;
            }
            m6652F();
            m6645M(i, m6634d);
            m6643O(iArr);
        }

        /* renamed from: S */
        public final C0117j[] m6639S(List<C0117j> list) {
            return m6638T((C0117j[]) list.toArray(new C0117j[list.size()]));
        }

        /* renamed from: T */
        public final C0117j[] m6638T(C0117j[] c0117jArr) {
            return new C0120a(c0117jArr).m6611a();
        }

        /* renamed from: a */
        public final void m6637a(List<C0117j> list, C0124p<C0122n, C0123o> c0124p) {
            int i = 0;
            while (true) {
                C0122n[] c0122nArr = c0124p.f1007b;
                if (i < c0122nArr.length) {
                    m6655C(list, c0122nArr[i], c0124p.f1008c[i], false);
                    i++;
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v12, types: [androidx.gridlayout.widget.GridLayout$n, int] */
        /* JADX WARN: Type inference failed for: r0v13, types: [androidx.gridlayout.widget.GridLayout$j, int] */
        /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.StringBuilder, int] */
        /* JADX WARN: Type inference failed for: r0v19, types: [int] */
        /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.StringBuilder, int] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.util.Iterator, java.lang.StringBuilder, boolean] */
        /* renamed from: b */
        public final String m6636b(List<C0117j> list) {
            C0117j c0117j;
            ?? r0;
            StringBuilder sb;
            String str = this.f970a ? "x" : "y";
            new StringBuilder();
            StringBuilder sb2 = 1;
            Iterator<C0117j> it = list.iterator();
            while (true) {
                ?? hasNext = it.hasNext();
                if (hasNext != 0) {
                    C0117j c0117j2 = (C0117j) hasNext.next();
                    StringBuilder sb3 = sb2;
                    if (sb3 != null) {
                        c0117j = 0;
                        sb2 = null;
                    } else {
                        sb3.append(", ");
                        c0117j = sb3;
                    }
                    int i = c0117j.f965a.f1003a.f1004b.f966b.f1005a;
                    if (r0 < r0) {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append(sb);
                        sb.append("-");
                        sb.append(str);
                        sb.append(sb);
                        sb.append(">=");
                    } else {
                        ?? sb4 = new StringBuilder();
                        sb4.append(str);
                        sb4.append(sb4);
                        sb4.append("-");
                        sb4.append(str);
                        sb4.append(sb4);
                        sb4.append("<=");
                        sb = -i;
                        i = sb;
                    }
                    sb.append(i);
                    sb.append(sb.toString());
                    it = sb;
                } else {
                    return hasNext.toString();
                }
            }
        }

        /* renamed from: c */
        public final int m6635c() {
            int childCount = GridLayout.this.getChildCount();
            int i = -1;
            for (int i2 = 0; i2 < childCount; i2++) {
                LayoutParams m6678r = GridLayout.this.m6678r(GridLayout.this.getChildAt(i2));
                C0122n c0122n = (this.f970a ? m6678r.f964b : m6678r.f963a).f1011b;
                i = Math.max(Math.max(Math.max(i, c0122n.f1003a), c0122n.f1004b), c0122n.m6603b());
            }
            int i3 = i;
            if (i == -1) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        }

        /* renamed from: d */
        public final float m6634d() {
            int childCount = GridLayout.this.getChildCount();
            float f = 0.0f;
            for (int i = 0; i < childCount; i++) {
                View childAt = GridLayout.this.getChildAt(i);
                if (childAt.getVisibility() != 8) {
                    LayoutParams m6678r = GridLayout.this.m6678r(childAt);
                    f += (this.f970a ? m6678r.f964b : m6678r.f963a).f1013d;
                }
            }
            return f;
        }

        /* renamed from: e */
        public final void m6633e() {
            m6620r();
            m6623o();
        }

        /* renamed from: f */
        public final void m6632f() {
            for (C0121m c0121m : this.f973d.f1008c) {
                c0121m.m6606d();
            }
            int childCount = GridLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = GridLayout.this.getChildAt(i);
                LayoutParams m6678r = GridLayout.this.m6678r(childAt);
                boolean z = this.f970a;
                C0125q c0125q = z ? m6678r.f964b : m6678r.f963a;
                this.f973d.m6599c(i).m6607c(GridLayout.this, childAt, c0125q, this, GridLayout.this.m6674v(childAt, z) + (c0125q.f1013d == 0.0f ? 0 : m6621q()[i]));
            }
        }

        /* renamed from: g */
        public final boolean m6631g() {
            int childCount = GridLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = GridLayout.this.getChildAt(i);
                if (childAt.getVisibility() != 8) {
                    LayoutParams m6678r = GridLayout.this.m6678r(childAt);
                    if ((this.f970a ? m6678r.f964b : m6678r.f963a).f1013d != 0.0f) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* renamed from: h */
        public final void m6630h(C0124p<C0122n, C0123o> c0124p, boolean z) {
            for (C0123o c0123o : c0124p.f1008c) {
                c0123o.m6602a();
            }
            C0121m[] c0121mArr = m6619s().f1008c;
            for (int i = 0; i < c0121mArr.length; i++) {
                int m6605e = c0121mArr[i].m6605e(z);
                C0123o m6599c = c0124p.m6599c(i);
                int i2 = m6599c.f1005a;
                if (!z) {
                    m6605e = -m6605e;
                }
                m6599c.f1005a = Math.max(i2, m6605e);
            }
        }

        /* renamed from: i */
        public final void m6629i(int[] iArr) {
            if (!m6657A()) {
                m6643O(iArr);
            } else {
                m6640R(iArr);
            }
            if (!this.f990u) {
                int i = iArr[0];
                int length = iArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[i2] = iArr[i2] - i;
                }
            }
        }

        /* renamed from: j */
        public final void m6628j(boolean z) {
            int[] iArr = z ? this.f979j : this.f981l;
            int childCount = GridLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = GridLayout.this.getChildAt(i);
                if (childAt.getVisibility() != 8) {
                    LayoutParams m6678r = GridLayout.this.m6678r(childAt);
                    boolean z2 = this.f970a;
                    C0122n c0122n = (z2 ? m6678r.f964b : m6678r.f963a).f1011b;
                    int i2 = z ? c0122n.f1003a : c0122n.f1004b;
                    iArr[i2] = Math.max(iArr[i2], GridLayout.this.m6676t(childAt, z2, z));
                }
            }
        }

        /* renamed from: k */
        public final C0117j[] m6627k() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            m6637a(arrayList, m6620r());
            m6637a(arrayList2, m6623o());
            if (this.f990u) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= m6622p()) {
                        break;
                    }
                    int i3 = i2 + 1;
                    m6656B(arrayList, new C0122n(i2, i3), new C0123o(0));
                    i = i3;
                }
            }
            int m6622p = m6622p();
            m6655C(arrayList, new C0122n(0, m6622p), this.f991v, false);
            m6655C(arrayList2, new C0122n(m6622p, 0), this.f992w, false);
            return (C0117j[]) GridLayout.m6693b(m6639S(arrayList), m6639S(arrayList2));
        }

        /* renamed from: l */
        public final C0124p<C0125q, C0121m> m6626l() {
            C0118k m6660b = C0118k.m6660b(C0125q.class, C0121m.class);
            int childCount = GridLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                LayoutParams m6678r = GridLayout.this.m6678r(GridLayout.this.getChildAt(i));
                boolean z = this.f970a;
                C0125q c0125q = z ? m6678r.f964b : m6678r.f963a;
                m6660b.m6658d(c0125q, c0125q.m6597b(z).m6664b());
            }
            return m6660b.m6659c();
        }

        /* renamed from: m */
        public final C0124p<C0122n, C0123o> m6625m(boolean z) {
            C0118k m6660b = C0118k.m6660b(C0122n.class, C0123o.class);
            C0125q[] c0125qArr = m6619s().f1007b;
            int length = c0125qArr.length;
            for (int i = 0; i < length; i++) {
                m6660b.m6658d(z ? c0125qArr[i].f1011b : c0125qArr[i].f1011b.m6604a(), new C0123o());
            }
            return m6660b.m6659c();
        }

        /* renamed from: n */
        public C0117j[] m6624n() {
            if (this.f983n == null) {
                this.f983n = m6627k();
            }
            if (!this.f984o) {
                m6633e();
                this.f984o = true;
            }
            return this.f983n;
        }

        /* renamed from: o */
        public final C0124p<C0122n, C0123o> m6623o() {
            if (this.f977h == null) {
                this.f977h = m6625m(false);
            }
            if (!this.f978i) {
                m6630h(this.f977h, false);
                this.f978i = true;
            }
            return this.f977h;
        }

        /* renamed from: p */
        public int m6622p() {
            return Math.max(this.f971b, m6616v());
        }

        /* renamed from: q */
        public int[] m6621q() {
            if (this.f989t == null) {
                this.f989t = new int[GridLayout.this.getChildCount()];
            }
            return this.f989t;
        }

        /* renamed from: r */
        public final C0124p<C0122n, C0123o> m6620r() {
            if (this.f975f == null) {
                this.f975f = m6625m(true);
            }
            if (!this.f976g) {
                m6630h(this.f975f, true);
                this.f976g = true;
            }
            return this.f975f;
        }

        /* renamed from: s */
        public C0124p<C0125q, C0121m> m6619s() {
            if (this.f973d == null) {
                this.f973d = m6626l();
            }
            if (!this.f974e) {
                m6632f();
                this.f974e = true;
            }
            return this.f973d;
        }

        /* renamed from: t */
        public int[] m6618t() {
            if (this.f979j == null) {
                this.f979j = new int[m6622p() + 1];
            }
            if (!this.f980k) {
                m6628j(true);
                this.f980k = true;
            }
            return this.f979j;
        }

        /* renamed from: u */
        public int[] m6617u() {
            if (this.f985p == null) {
                this.f985p = new int[m6622p() + 1];
            }
            if (!this.f986q) {
                m6629i(this.f985p);
                this.f986q = true;
            }
            return this.f985p;
        }

        /* renamed from: v */
        public final int m6616v() {
            if (this.f972c == Integer.MIN_VALUE) {
                this.f972c = Math.max(0, m6635c());
            }
            return this.f972c;
        }

        /* renamed from: w */
        public int m6615w(int i) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    return m6614x(0, 100000);
                }
                if (mode == 1073741824) {
                    return m6614x(size, size);
                }
                return 0;
            }
            return m6614x(0, size);
        }

        /* renamed from: x */
        public final int m6614x(int i, int i2) {
            m6646L(i, i2);
            return m6644N(m6617u());
        }

        /* renamed from: y */
        public int[] m6613y() {
            if (this.f981l == null) {
                this.f981l = new int[m6622p() + 1];
            }
            if (!this.f982m) {
                m6628j(false);
                this.f982m = true;
            }
            return this.f981l;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.gridlayout.widget.GridLayout$j[], androidx.gridlayout.widget.GridLayout$j[][]] */
        /* renamed from: z */
        public C0117j[][] m6612z(C0117j[] c0117jArr) {
            int m6622p = m6622p() + 1;
            ?? r0 = new C0117j[m6622p];
            int[] iArr = new int[m6622p];
            for (C0117j c0117j : c0117jArr) {
                int i = c0117j.f965a.f1003a;
                iArr[i] = iArr[i] + 1;
            }
            for (int i2 = 0; i2 < m6622p; i2++) {
                r0[i2] = new C0117j[iArr[i2]];
            }
            Arrays.fill(iArr, 0);
            for (C0117j c0117j2 : c0117jArr) {
                int i3 = c0117j2.f965a.f1003a;
                C0117j[] c0117jArr2 = r0[i3];
                int i4 = iArr[i3];
                iArr[i3] = i4 + 1;
                c0117jArr2[i4] = c0117j2;
            }
            return r0;
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$m */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$m.class */
    public static class C0121m {

        /* renamed from: a */
        public int f1000a;

        /* renamed from: b */
        public int f1001b;

        /* renamed from: c */
        public int f1002c;

        public C0121m() {
            m6606d();
        }

        /* renamed from: a */
        public int m6609a(GridLayout gridLayout, View view, AbstractC0116i abstractC0116i, int i, boolean z) {
            return this.f1000a - abstractC0116i.m6665a(view, i, lb.a(gridLayout));
        }

        /* renamed from: b */
        public void m6608b(int i, int i2) {
            this.f1000a = Math.max(this.f1000a, i);
            this.f1001b = Math.max(this.f1001b, i2);
        }

        /* renamed from: c */
        public final void m6607c(GridLayout gridLayout, View view, C0125q c0125q, C0119l c0119l, int i) {
            this.f1002c &= c0125q.m6596c();
            int m6665a = c0125q.m6597b(c0119l.f970a).m6665a(view, i, lb.a(gridLayout));
            m6608b(m6665a, i - m6665a);
        }

        /* renamed from: d */
        public void m6606d() {
            this.f1000a = Integer.MIN_VALUE;
            this.f1001b = Integer.MIN_VALUE;
            this.f1002c = 2;
        }

        /* renamed from: e */
        public int m6605e(boolean z) {
            if (z || !GridLayout.m6692d(this.f1002c)) {
                return this.f1000a + this.f1001b;
            }
            return 100000;
        }

        public String toString() {
            return "Bounds{before=" + this.f1000a + ", after=" + this.f1001b + '}';
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$n */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$n.class */
    public static final class C0122n {

        /* renamed from: a */
        public final int f1003a;

        /* renamed from: b */
        public final int f1004b;

        public C0122n(int i, int i2) {
            this.f1003a = i;
            this.f1004b = i2;
        }

        /* renamed from: a */
        public C0122n m6604a() {
            return new C0122n(this.f1004b, this.f1003a);
        }

        /* renamed from: b */
        public int m6603b() {
            return this.f1004b - this.f1003a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0122n.class != obj.getClass()) {
                return false;
            }
            C0122n c0122n = (C0122n) obj;
            return this.f1004b == c0122n.f1004b && this.f1003a == c0122n.f1003a;
        }

        public int hashCode() {
            return (this.f1003a * 31) + this.f1004b;
        }

        public String toString() {
            return "[" + this.f1003a + ", " + this.f1004b + "]";
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$o */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$o.class */
    public static final class C0123o {

        /* renamed from: a */
        public int f1005a;

        public C0123o() {
            m6602a();
        }

        public C0123o(int i) {
            this.f1005a = i;
        }

        /* renamed from: a */
        public void m6602a() {
            this.f1005a = Integer.MIN_VALUE;
        }

        public String toString() {
            return Integer.toString(this.f1005a);
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$p */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$p.class */
    public static final class C0124p<K, V> {

        /* renamed from: a */
        public final int[] f1006a;

        /* renamed from: b */
        public final K[] f1007b;

        /* renamed from: c */
        public final V[] f1008c;

        public C0124p(K[] kArr, V[] vArr) {
            int[] m6600b = m6600b(kArr);
            this.f1006a = m6600b;
            this.f1007b = (K[]) m6601a(kArr, m6600b);
            this.f1008c = (V[]) m6601a(vArr, m6600b);
        }

        /* renamed from: a */
        public static <K> K[] m6601a(K[] kArr, int[] iArr) {
            int length = kArr.length;
            K[] kArr2 = (K[]) ((Object[]) Array.newInstance(kArr.getClass().getComponentType(), GridLayout.m6704B(iArr, -1) + 1));
            for (int i = 0; i < length; i++) {
                kArr2[iArr[i]] = kArr[i];
            }
            return kArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Integer] */
        /* renamed from: b */
        public static <K> int[] m6600b(K[] kArr) {
            int length = kArr.length;
            int[] iArr = new int[length];
            HashMap hashMap = new HashMap();
            for (int i = 0; i < length; i++) {
                K k = kArr[i];
                ?? r0 = (Integer) hashMap.get(k);
                V v = r0;
                if (r0 == 0) {
                    v = Integer.valueOf(hashMap.size());
                    hashMap.put(k, v);
                }
                iArr[i] = v.intValue();
            }
            return iArr;
        }

        /* renamed from: c */
        public V m6599c(int i) {
            return this.f1008c[this.f1006a[i]];
        }
    }

    /* renamed from: androidx.gridlayout.widget.GridLayout$q */
    /* loaded from: classes-dex2jar.jar:androidx/gridlayout/widget/GridLayout$q.class */
    public static class C0125q {

        /* renamed from: e */
        public static final C0125q f1009e = GridLayout.m6699G(Integer.MIN_VALUE);

        /* renamed from: a */
        public final boolean f1010a;

        /* renamed from: b */
        public final C0122n f1011b;

        /* renamed from: c */
        public final AbstractC0116i f1012c;

        /* renamed from: d */
        public final float f1013d;

        public C0125q(boolean z, int i, int i2, AbstractC0116i abstractC0116i, float f) {
            this(z, new C0122n(i, i2 + i), abstractC0116i, f);
        }

        public C0125q(boolean z, C0122n c0122n, AbstractC0116i abstractC0116i, float f) {
            this.f1010a = z;
            this.f1011b = c0122n;
            this.f1012c = abstractC0116i;
            this.f1013d = f;
        }

        /* renamed from: a */
        public final C0125q m6598a(C0122n c0122n) {
            return new C0125q(this.f1010a, c0122n, this.f1012c, this.f1013d);
        }

        /* renamed from: b */
        public AbstractC0116i m6597b(boolean z) {
            AbstractC0116i abstractC0116i = this.f1012c;
            if (abstractC0116i != GridLayout.f934t) {
                return abstractC0116i;
            }
            if (this.f1013d != 0.0f) {
                return GridLayout.f924E;
            }
            return z ? GridLayout.f939y : GridLayout.f923D;
        }

        /* renamed from: c */
        public final int m6596c() {
            return (this.f1012c == GridLayout.f934t && this.f1013d == 0.0f) ? 0 : 2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0125q.class != obj.getClass()) {
                return false;
            }
            C0125q c0125q = (C0125q) obj;
            return this.f1012c.equals(c0125q.f1012c) && this.f1011b.equals(c0125q.f1011b);
        }

        public int hashCode() {
            return (this.f1011b.hashCode() * 31) + this.f1012c.hashCode();
        }
    }

    static {
        c cVar = new c();
        f935u = cVar;
        d dVar = new d();
        f936v = dVar;
        f937w = cVar;
        f938x = dVar;
        f939y = cVar;
        f940z = dVar;
        f920A = m6687i(cVar, dVar);
        f921B = m6687i(dVar, cVar);
    }

    public GridLayout(Context context) {
        this(context, null);
    }

    public GridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GridLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f941a = new C0119l(true);
        this.f942b = new C0119l(false);
        this.f943c = 0;
        this.f944d = false;
        this.f945f = 1;
        this.f947h = 0;
        this.f948j = f925k;
        this.f946g = context.getResources().getDimensionPixelOffset(C0034ae.default_gap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0244be.GridLayout);
        try {
            setRowCount(obtainStyledAttributes.getInt(f928n, Integer.MIN_VALUE));
            setColumnCount(obtainStyledAttributes.getInt(f929o, Integer.MIN_VALUE));
            setOrientation(obtainStyledAttributes.getInt(f927m, 0));
            setUseDefaultMargins(obtainStyledAttributes.getBoolean(f930p, false));
            setAlignmentMode(obtainStyledAttributes.getInt(f931q, 1));
            setRowOrderPreserved(obtainStyledAttributes.getBoolean(f932r, true));
            setColumnOrderPreserved(obtainStyledAttributes.getBoolean(f933s, true));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: B */
    public static int m6704B(int[] iArr, int i) {
        int i2 = i;
        for (int i3 : iArr) {
            i2 = Math.max(i2, i3);
        }
        return i2;
    }

    /* renamed from: E */
    public static void m6701E(int[] iArr, int i, int i2, int i3) {
        int length = iArr.length;
        Arrays.fill(iArr, Math.min(i, length), Math.min(i2, length), i3);
    }

    /* renamed from: F */
    public static void m6700F(LayoutParams layoutParams, int i, int i2, int i3, int i4) {
        layoutParams.m6666e(new C0122n(i, i2 + i));
        layoutParams.m6667d(new C0122n(i3, i4 + i3));
    }

    /* renamed from: G */
    public static C0125q m6699G(int i) {
        return m6698H(i, 1);
    }

    /* renamed from: H */
    public static C0125q m6698H(int i, int i2) {
        return m6697I(i, i2, f934t);
    }

    /* renamed from: I */
    public static C0125q m6697I(int i, int i2, AbstractC0116i abstractC0116i) {
        return m6696J(i, i2, abstractC0116i, 0.0f);
    }

    /* renamed from: J */
    public static C0125q m6696J(int i, int i2, AbstractC0116i abstractC0116i, float f) {
        return new C0125q(i != Integer.MIN_VALUE, i, i2, abstractC0116i, f);
    }

    /* renamed from: a */
    public static int m6694a(int i, int i2) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2 + i), View.MeasureSpec.getMode(i));
    }

    /* renamed from: b */
    public static <T> T[] m6693b(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: d */
    public static boolean m6692d(int i) {
        return (i & 2) != 0;
    }

    /* renamed from: f */
    public static int m6690f(C0122n c0122n, boolean z, int i) {
        int m6603b = c0122n.m6603b();
        if (i == 0) {
            return m6603b;
        }
        return Math.min(m6603b, i - (z ? Math.min(c0122n.f1003a, i) : 0));
    }

    /* renamed from: i */
    public static AbstractC0116i m6687i(AbstractC0116i abstractC0116i, AbstractC0116i abstractC0116i2) {
        return new e(abstractC0116i, abstractC0116i2);
    }

    /* renamed from: j */
    public static boolean m6686j(int[] iArr, int i, int i2, int i3) {
        if (i3 > iArr.length) {
            return false;
        }
        while (i2 < i3) {
            if (iArr[i2] > i) {
                return false;
            }
            i2++;
        }
        return true;
    }

    /* renamed from: n */
    public static AbstractC0116i m6682n(int i, boolean z) {
        int i2 = (i & (z ? 7 : 112)) >> (z ? 0 : 4);
        if (i2 != 1) {
            if (i2 == 3) {
                return z ? f920A : f937w;
            } else if (i2 != 5) {
                return i2 != 7 ? i2 != 8388611 ? i2 != 8388613 ? f934t : f940z : f939y : f924E;
            } else {
                return z ? f921B : f938x;
            }
        }
        return f922C;
    }

    /* renamed from: x */
    public static void m6672x(String str) {
        throw new IllegalArgumentException(str + ". ");
    }

    /* renamed from: A */
    public final boolean m6705A() {
        boolean z = true;
        if (jb.B(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: C */
    public final void m6703C(View view, int i, int i2, int i3, int i4) {
        view.measure(ViewGroup.getChildMeasureSpec(i, m6673w(view, true), i3), ViewGroup.getChildMeasureSpec(i2, m6673w(view, false), i4));
    }

    /* renamed from: D */
    public final void m6702D(int i, int i2, boolean z) {
        int m6673w;
        int i3;
        int i4;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams m6678r = m6678r(childAt);
                if (z) {
                    i3 = ((ViewGroup.MarginLayoutParams) m6678r).width;
                    m6673w = ((ViewGroup.MarginLayoutParams) m6678r).height;
                } else {
                    boolean z2 = this.f943c == 0;
                    C0125q c0125q = z2 ? m6678r.f964b : m6678r.f963a;
                    if (c0125q.m6597b(z2) == f924E) {
                        C0122n c0122n = c0125q.f1011b;
                        int[] m6617u = (z2 ? this.f941a : this.f942b).m6617u();
                        m6673w = (m6617u[c0122n.f1004b] - m6617u[c0122n.f1003a]) - m6673w(childAt, z2);
                        if (z2) {
                            i4 = ((ViewGroup.MarginLayoutParams) m6678r).height;
                            m6703C(childAt, i, i2, m6673w, i4);
                        } else {
                            i3 = ((ViewGroup.MarginLayoutParams) m6678r).width;
                        }
                    }
                }
                i4 = m6673w;
                m6673w = i3;
                m6703C(childAt, i, i2, m6673w, i4);
            }
        }
    }

    /* renamed from: K */
    public final void m6695K() {
        boolean z = this.f943c == 0;
        int i = (z ? this.f941a : this.f942b).f971b;
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        int[] iArr = new int[i];
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < childCount) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
            C0125q c0125q = z ? layoutParams.f963a : layoutParams.f964b;
            C0122n c0122n = c0125q.f1011b;
            boolean z2 = c0125q.f1010a;
            int m6603b = c0122n.m6603b();
            if (z2) {
                i3 = c0122n.f1003a;
            }
            C0125q c0125q2 = z ? layoutParams.f964b : layoutParams.f963a;
            C0122n c0122n2 = c0125q2.f1011b;
            boolean z3 = c0125q2.f1010a;
            int m6690f = m6690f(c0122n2, z3, i);
            if (z3) {
                i4 = c0122n2.f1003a;
            }
            int i5 = i3;
            int i6 = i4;
            if (i != 0) {
                int i7 = i3;
                int i8 = i4;
                if (z2) {
                    i5 = i3;
                    i6 = i4;
                    if (!z3) {
                        i8 = i4;
                        i7 = i3;
                    }
                    m6701E(iArr, i6, i6 + m6690f, i5 + m6603b);
                }
                while (true) {
                    int i9 = i8 + m6690f;
                    i5 = i7;
                    i6 = i8;
                    if (m6686j(iArr, i7, i8, i9)) {
                        break;
                    } else if (z3) {
                        i7++;
                    } else if (i9 <= i) {
                        i8++;
                    } else {
                        i7++;
                        i8 = 0;
                    }
                }
                m6701E(iArr, i6, i6 + m6690f, i5 + m6603b);
            }
            if (z) {
                m6700F(layoutParams, i5, m6603b, i6, m6690f);
            } else {
                m6700F(layoutParams, i6, m6690f, i5, m6603b);
            }
            i4 = i6 + m6690f;
            i2++;
            i3 = i5;
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof LayoutParams)) {
            return false;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        m6691e(layoutParams2, true);
        m6691e(layoutParams2, false);
        return true;
    }

    /* renamed from: e */
    public final void m6691e(LayoutParams layoutParams, boolean z) {
        String str = z ? "column" : "row";
        C0122n c0122n = (z ? layoutParams.f964b : layoutParams.f963a).f1011b;
        int i = c0122n.f1003a;
        if (i != Integer.MIN_VALUE && i < 0) {
            m6672x(str + " indices must be positive");
            throw null;
        }
        int i2 = (z ? this.f941a : this.f942b).f971b;
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        if (c0122n.f1004b > i2) {
            m6672x(str + " indices (start + span) mustn't exceed the " + str + " count");
            throw null;
        } else if (c0122n.m6603b() <= i2) {
        } else {
            m6672x(str + " span mustn't exceed the " + str + " count");
            throw null;
        }
    }

    /* renamed from: g */
    public final int m6689g() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                i = (i * 31) + ((LayoutParams) childAt.getLayoutParams()).hashCode();
            }
        }
        return i;
    }

    public int getAlignmentMode() {
        return this.f945f;
    }

    public int getColumnCount() {
        return this.f941a.m6622p();
    }

    public int getOrientation() {
        return this.f943c;
    }

    public Printer getPrinter() {
        return this.f948j;
    }

    public int getRowCount() {
        return this.f942b.m6622p();
    }

    public boolean getUseDefaultMargins() {
        return this.f944d;
    }

    /* renamed from: h */
    public final void m6688h() {
        int i = this.f947h;
        if (i == 0) {
            m6695K();
            this.f947h = m6689g();
        } else if (i == m6689g()) {
        } else {
            this.f948j.println("The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec.");
            m6671y();
            m6688h();
        }
    }

    /* renamed from: k */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    /* renamed from: l */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: m */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
        if (r0.f1003a == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
        if (r0.f1004b == r13.m6622p()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007c, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0089, code lost:
        return m6679q(r7, r11, r9, r10);
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m6681o(android.view.View r7, androidx.gridlayout.widget.GridLayout.LayoutParams r8, boolean r9, boolean r10) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f944d
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            if (r0 != 0) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r9
            if (r0 == 0) goto L1c
            r0 = r8
            androidx.gridlayout.widget.GridLayout$q r0 = r0.f964b
            r8 = r0
            goto L21
        L1c:
            r0 = r8
            androidx.gridlayout.widget.GridLayout$q r0 = r0.f963a
            r8 = r0
        L21:
            r0 = r9
            if (r0 == 0) goto L2e
            r0 = r6
            androidx.gridlayout.widget.GridLayout$l r0 = r0.f941a
            r13 = r0
            goto L34
        L2e:
            r0 = r6
            androidx.gridlayout.widget.GridLayout$l r0 = r0.f942b
            r13 = r0
        L34:
            r0 = r8
            androidx.gridlayout.widget.GridLayout$n r0 = r0.f1011b
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L55
            r0 = r6
            boolean r0 = r0.m6705A()
            if (r0 == 0) goto L55
            r0 = r10
            if (r0 != 0) goto L4f
            r0 = 1
            r11 = r0
            goto L59
        L4f:
            r0 = 0
            r11 = r0
            goto L59
        L55:
            r0 = r10
            r11 = r0
        L59:
            r0 = r11
            if (r0 == 0) goto L6c
            r0 = r12
            r11 = r0
            r0 = r8
            int r0 = r0.f1003a
            if (r0 != 0) goto L7f
            goto L7c
        L6c:
            r0 = r12
            r11 = r0
            r0 = r8
            int r0 = r0.f1004b
            r1 = r13
            int r1 = r1.m6622p()
            if (r0 != r1) goto L7f
        L7c:
            r0 = 1
            r11 = r0
        L7f:
            r0 = r6
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r10
            int r0 = r0.m6679q(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.gridlayout.widget.GridLayout.m6681o(android.view.View, androidx.gridlayout.widget.GridLayout$LayoutParams, boolean, boolean):int");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m6688h();
        int i5 = i3 - i;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        this.f941a.m6651G((i5 - paddingLeft) - paddingRight);
        this.f942b.m6651G(((i4 - i2) - paddingTop) - paddingBottom);
        int[] m6617u = this.f941a.m6617u();
        int[] m6617u2 = this.f942b.m6617u();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams m6678r = m6678r(childAt);
                C0125q c0125q = m6678r.f964b;
                C0125q c0125q2 = m6678r.f963a;
                C0122n c0122n = c0125q.f1011b;
                C0122n c0122n2 = c0125q2.f1011b;
                int i7 = m6617u[c0122n.f1003a];
                int i8 = m6617u2[c0122n2.f1003a];
                int i9 = m6617u[c0122n.f1004b];
                int i10 = m6617u2[c0122n2.f1004b];
                int i11 = i9 - i7;
                int i12 = i10 - i8;
                int m6675u = m6675u(childAt, true);
                int m6675u2 = m6675u(childAt, false);
                AbstractC0116i m6597b = c0125q.m6597b(true);
                AbstractC0116i m6597b2 = c0125q2.m6597b(false);
                C0121m m6599c = this.f941a.m6619s().m6599c(i6);
                C0121m m6599c2 = this.f942b.m6619s().m6599c(i6);
                int m6662d = m6597b.m6662d(childAt, i11 - m6599c.m6605e(true));
                int m6662d2 = m6597b2.m6662d(childAt, i12 - m6599c2.m6605e(true));
                int m6677s = m6677s(childAt, true, true);
                int m6677s2 = m6677s(childAt, false, true);
                int m6677s3 = m6677s(childAt, true, false);
                int m6677s4 = m6677s(childAt, false, false);
                int i13 = m6677s + m6677s3;
                int i14 = m6677s2 + m6677s4;
                int m6609a = m6599c.m6609a(this, childAt, m6597b, m6675u + i13, true);
                int m6609a2 = m6599c2.m6609a(this, childAt, m6597b2, m6675u2 + i14, false);
                int m6661e = m6597b.m6661e(childAt, m6675u, i11 - i13);
                int m6661e2 = m6597b2.m6661e(childAt, m6675u2, i12 - i14);
                int i15 = i7 + m6662d + m6609a;
                int i16 = !m6705A() ? paddingLeft + m6677s + i15 : (((i5 - m6661e) - paddingRight) - m6677s3) - i15;
                int i17 = paddingTop + i8 + m6662d2 + m6609a2 + m6677s2;
                if (m6661e != childAt.getMeasuredWidth() || m6661e2 != childAt.getMeasuredHeight()) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(m6661e, 1073741824), View.MeasureSpec.makeMeasureSpec(m6661e2, 1073741824));
                }
                childAt.layout(i16, i17, m6661e + i16, m6661e2 + i17);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        m6688h();
        m6670z();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int m6694a = m6694a(i, -paddingLeft);
        int m6694a2 = m6694a(i2, -paddingTop);
        m6702D(m6694a, m6694a2, true);
        if (this.f943c == 0) {
            i4 = this.f941a.m6615w(m6694a);
            m6702D(m6694a, m6694a2, false);
            i3 = this.f942b.m6615w(m6694a2);
        } else {
            i3 = this.f942b.m6615w(m6694a2);
            m6702D(m6694a, m6694a2, false);
            i4 = this.f941a.m6615w(m6694a);
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i4 + paddingLeft, getSuggestedMinimumWidth()), i, 0), View.resolveSizeAndState(Math.max(i3 + paddingTop, getSuggestedMinimumHeight()), i2, 0));
    }

    /* renamed from: p */
    public final int m6680p(View view, boolean z, boolean z2) {
        if (view.getClass() == Space.class || view.getClass() == android.widget.Space.class) {
            return 0;
        }
        return this.f946g / 2;
    }

    /* renamed from: q */
    public final int m6679q(View view, boolean z, boolean z2, boolean z3) {
        return m6680p(view, z2, z3);
    }

    /* renamed from: r */
    public final LayoutParams m6678r(View view) {
        return (LayoutParams) view.getLayoutParams();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        m6671y();
    }

    /* renamed from: s */
    public final int m6677s(View view, boolean z, boolean z2) {
        if (this.f945f == 1) {
            return m6676t(view, z, z2);
        }
        C0119l c0119l = z ? this.f941a : this.f942b;
        int[] m6618t = z2 ? c0119l.m6618t() : c0119l.m6613y();
        LayoutParams m6678r = m6678r(view);
        C0122n c0122n = (z ? m6678r.f964b : m6678r.f963a).f1011b;
        return m6618t[z2 ? c0122n.f1003a : c0122n.f1004b];
    }

    public void setAlignmentMode(int i) {
        this.f945f = i;
        requestLayout();
    }

    public void setColumnCount(int i) {
        this.f941a.m6648J(i);
        m6671y();
        requestLayout();
    }

    public void setColumnOrderPreserved(boolean z) {
        this.f941a.m6647K(z);
        m6671y();
        requestLayout();
    }

    public void setOrientation(int i) {
        if (this.f943c != i) {
            this.f943c = i;
            m6671y();
            requestLayout();
        }
    }

    public void setPrinter(Printer printer) {
        Printer printer2 = printer;
        if (printer == null) {
            printer2 = f926l;
        }
        this.f948j = printer2;
    }

    public void setRowCount(int i) {
        this.f942b.m6648J(i);
        m6671y();
        requestLayout();
    }

    public void setRowOrderPreserved(boolean z) {
        this.f942b.m6647K(z);
        m6671y();
        requestLayout();
    }

    public void setUseDefaultMargins(boolean z) {
        this.f944d = z;
        requestLayout();
    }

    /* renamed from: t */
    public int m6676t(View view, boolean z, boolean z2) {
        LayoutParams m6678r = m6678r(view);
        int i = z ? z2 ? ((ViewGroup.MarginLayoutParams) m6678r).leftMargin : ((ViewGroup.MarginLayoutParams) m6678r).rightMargin : z2 ? ((ViewGroup.MarginLayoutParams) m6678r).topMargin : ((ViewGroup.MarginLayoutParams) m6678r).bottomMargin;
        int i2 = i;
        if (i == Integer.MIN_VALUE) {
            i2 = m6681o(view, m6678r, z, z2);
        }
        return i2;
    }

    /* renamed from: u */
    public final int m6675u(View view, boolean z) {
        return z ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    /* renamed from: v */
    public final int m6674v(View view, boolean z) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return m6675u(view, z) + m6673w(view, z);
    }

    /* renamed from: w */
    public final int m6673w(View view, boolean z) {
        return m6677s(view, z, true) + m6677s(view, z, false);
    }

    /* renamed from: y */
    public final void m6671y() {
        this.f947h = 0;
        C0119l c0119l = this.f941a;
        if (c0119l != null) {
            c0119l.m6653E();
        }
        C0119l c0119l2 = this.f942b;
        if (c0119l2 != null) {
            c0119l2.m6653E();
        }
        m6670z();
    }

    /* renamed from: z */
    public final void m6670z() {
        C0119l c0119l = this.f941a;
        if (c0119l == null || this.f942b == null) {
            return;
        }
        c0119l.m6652F();
        this.f942b.m6652F();
    }
}
