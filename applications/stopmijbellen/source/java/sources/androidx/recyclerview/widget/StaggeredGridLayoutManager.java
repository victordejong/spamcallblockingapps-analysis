package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RunnableC0636n;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.Objects;
import p174n0.C3694b;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0573m implements RecyclerView.AbstractC0589w.AbstractC0591b {

    /* renamed from: D */
    public boolean f2335D;

    /* renamed from: E */
    public boolean f2336E;

    /* renamed from: F */
    public C0601e f2337F;

    /* renamed from: J */
    public int[] f2341J;

    /* renamed from: p */
    public int f2343p;

    /* renamed from: q */
    public C0603f[] f2344q;

    /* renamed from: r */
    public AbstractC0646t f2345r;

    /* renamed from: s */
    public AbstractC0646t f2346s;

    /* renamed from: t */
    public int f2347t;

    /* renamed from: u */
    public int f2348u;

    /* renamed from: v */
    public final C0640o f2349v;

    /* renamed from: w */
    public boolean f2350w;

    /* renamed from: y */
    public BitSet f2352y;

    /* renamed from: x */
    public boolean f2351x = false;

    /* renamed from: z */
    public int f2353z = -1;

    /* renamed from: A */
    public int f2332A = Integer.MIN_VALUE;

    /* renamed from: B */
    public C0598d f2333B = new C0598d();

    /* renamed from: C */
    public int f2334C = 2;

    /* renamed from: G */
    public final Rect f2338G = new Rect();

    /* renamed from: H */
    public final C0596b f2339H = new C0596b();

    /* renamed from: I */
    public boolean f2340I = true;

    /* renamed from: K */
    public final Runnable f2342K = new RunnableC0595a();

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    public class RunnableC0595a implements Runnable {
        public RunnableC0595a() {
            StaggeredGridLayoutManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m7737K0();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public class C0596b {

        /* renamed from: a */
        public int f2355a;

        /* renamed from: b */
        public int f2356b;

        /* renamed from: c */
        public boolean f2357c;

        /* renamed from: d */
        public boolean f2358d;

        /* renamed from: e */
        public boolean f2359e;

        /* renamed from: f */
        public int[] f2360f;

        public C0596b() {
            StaggeredGridLayoutManager.this = r4;
            m7669b();
        }

        /* renamed from: a */
        public void m7670a() {
            this.f2356b = this.f2357c ? StaggeredGridLayoutManager.this.f2345r.mo7547g() : StaggeredGridLayoutManager.this.f2345r.mo7543k();
        }

        /* renamed from: b */
        public void m7669b() {
            this.f2355a = -1;
            this.f2356b = Integer.MIN_VALUE;
            this.f2357c = false;
            this.f2358d = false;
            this.f2359e = false;
            int[] iArr = this.f2360f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
    public static class C0597c extends RecyclerView.C0578n {

        /* renamed from: e */
        public C0603f f2362e;

        public C0597c(int i, int i2) {
            super(i, i2);
        }

        public C0597c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0597c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0597c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d.class */
    public static class C0598d {

        /* renamed from: a */
        public int[] f2363a;

        /* renamed from: b */
        public List<C0599a> f2364b;

        @SuppressLint({"BanParcelableUsage"})
        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d$a.class */
        public static class C0599a implements Parcelable {
            public static final Parcelable.Creator<C0599a> CREATOR = new C0600a();

            /* renamed from: a */
            public int f2365a;

            /* renamed from: b */
            public int f2366b;

            /* renamed from: c */
            public int[] f2367c;

            /* renamed from: d */
            public boolean f2368d;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a */
            /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d$a$a.class */
            public static final class C0600a implements Parcelable.Creator<C0599a> {
                @Override // android.os.Parcelable.Creator
                public C0599a createFromParcel(Parcel parcel) {
                    return new C0599a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public C0599a[] newArray(int i) {
                    return new C0599a[i];
                }
            }

            public C0599a() {
            }

            public C0599a(Parcel parcel) {
                this.f2365a = parcel.readInt();
                this.f2366b = parcel.readInt();
                this.f2368d = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f2367c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                StringBuilder m8752j = C0082b.m8752j("FullSpanItem{mPosition=");
                m8752j.append(this.f2365a);
                m8752j.append(", mGapDir=");
                m8752j.append(this.f2366b);
                m8752j.append(", mHasUnwantedGapAfter=");
                m8752j.append(this.f2368d);
                m8752j.append(", mGapPerSpan=");
                m8752j.append(Arrays.toString(this.f2367c));
                m8752j.append('}');
                return m8752j.toString();
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f2365a);
                parcel.writeInt(this.f2366b);
                parcel.writeInt(this.f2368d ? 1 : 0);
                int[] iArr = this.f2367c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f2367c);
            }
        }

        /* renamed from: a */
        public void m7668a() {
            int[] iArr = this.f2363a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2364b = null;
        }

        /* renamed from: b */
        public void m7667b(int i) {
            int[] iArr = this.f2363a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f2363a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i < iArr.length) {
            } else {
                int length = iArr.length;
                while (true) {
                    int i2 = length;
                    if (i2 > i) {
                        int[] iArr3 = new int[i2];
                        this.f2363a = iArr3;
                        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                        int[] iArr4 = this.f2363a;
                        Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
                        return;
                    }
                    length = i2 * 2;
                }
            }
        }

        /* renamed from: c */
        public C0599a m7666c(int i) {
            List<C0599a> list = this.f2364b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                C0599a c0599a = this.f2364b.get(size);
                if (c0599a.f2365a == i) {
                    return c0599a;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m7665d(int r6) {
            /*
                r5 = this;
                r0 = r5
                int[] r0 = r0.f2363a
                r7 = r0
                r0 = r7
                if (r0 != 0) goto Lb
                r0 = -1
                return r0
            Lb:
                r0 = r6
                r1 = r7
                int r1 = r1.length
                if (r0 < r1) goto L13
                r0 = -1
                return r0
            L13:
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r0.f2364b
                if (r0 != 0) goto L1f
            L1a:
                r0 = -1
                r8 = r0
                goto L89
            L1f:
                r0 = r5
                r1 = r6
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = r0.m7666c(r1)
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L34
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r0.f2364b
                r1 = r7
                boolean r0 = r0.remove(r1)
            L34:
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r0.f2364b
                int r0 = r0.size()
                r9 = r0
                r0 = 0
                r8 = r0
            L41:
                r0 = r8
                r1 = r9
                if (r0 >= r1) goto L64
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r0.f2364b
                r1 = r8
                java.lang.Object r0 = r0.get(r1)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.C0598d.C0599a) r0
                int r0 = r0.f2365a
                r1 = r6
                if (r0 < r1) goto L5e
                goto L66
            L5e:
                int r8 = r8 + 1
                goto L41
            L64:
                r0 = -1
                r8 = r0
            L66:
                r0 = r8
                r1 = -1
                if (r0 == r1) goto L1a
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r0.f2364b
                r1 = r8
                java.lang.Object r0 = r0.get(r1)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.C0598d.C0599a) r0
                r7 = r0
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a> r0 = r0.f2364b
                r1 = r8
                java.lang.Object r0 = r0.remove(r1)
                r0 = r7
                int r0 = r0.f2365a
                r8 = r0
            L89:
                r0 = r8
                r1 = -1
                if (r0 != r1) goto La1
                r0 = r5
                int[] r0 = r0.f2363a
                r7 = r0
                r0 = r7
                r1 = r6
                r2 = r7
                int r2 = r2.length
                r3 = -1
                java.util.Arrays.fill(r0, r1, r2, r3)
                r0 = r5
                int[] r0 = r0.f2363a
                int r0 = r0.length
                return r0
            La1:
                r0 = r5
                int[] r0 = r0.f2363a
                r7 = r0
                int r8 = r8 + 1
                r0 = r7
                r1 = r6
                r2 = r8
                r3 = -1
                java.util.Arrays.fill(r0, r1, r2, r3)
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.C0598d.m7665d(int):int");
        }

        /* renamed from: e */
        public void m7664e(int i, int i2) {
            int[] iArr = this.f2363a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m7667b(i3);
            int[] iArr2 = this.f2363a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f2363a, i, i3, -1);
            List<C0599a> list = this.f2364b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                C0599a c0599a = this.f2364b.get(size);
                int i4 = c0599a.f2365a;
                if (i4 >= i) {
                    c0599a.f2365a = i4 + i2;
                }
            }
        }

        /* renamed from: f */
        public void m7663f(int i, int i2) {
            int[] iArr = this.f2363a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m7667b(i3);
            int[] iArr2 = this.f2363a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f2363a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            List<C0599a> list = this.f2364b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                C0599a c0599a = this.f2364b.get(size);
                int i4 = c0599a.f2365a;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f2364b.remove(size);
                    } else {
                        c0599a.f2365a = i4 - i2;
                    }
                }
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$e.class */
    public static class C0601e implements Parcelable {
        public static final Parcelable.Creator<C0601e> CREATOR = new C0602a();

        /* renamed from: a */
        public int f2369a;

        /* renamed from: b */
        public int f2370b;

        /* renamed from: c */
        public int f2371c;

        /* renamed from: d */
        public int[] f2372d;

        /* renamed from: e */
        public int f2373e;

        /* renamed from: f */
        public int[] f2374f;

        /* renamed from: g */
        public List<C0598d.C0599a> f2375g;

        /* renamed from: h */
        public boolean f2376h;

        /* renamed from: i */
        public boolean f2377i;

        /* renamed from: j */
        public boolean f2378j;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$e$a.class */
        public static final class C0602a implements Parcelable.Creator<C0601e> {
            @Override // android.os.Parcelable.Creator
            public C0601e createFromParcel(Parcel parcel) {
                return new C0601e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public C0601e[] newArray(int i) {
                return new C0601e[i];
            }
        }

        public C0601e() {
        }

        public C0601e(Parcel parcel) {
            this.f2369a = parcel.readInt();
            this.f2370b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f2371c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f2372d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f2373e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f2374f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f2376h = parcel.readInt() == 1;
            this.f2377i = parcel.readInt() == 1;
            this.f2378j = parcel.readInt() == 1;
            this.f2375g = parcel.readArrayList(C0598d.C0599a.class.getClassLoader());
        }

        public C0601e(C0601e c0601e) {
            this.f2371c = c0601e.f2371c;
            this.f2369a = c0601e.f2369a;
            this.f2370b = c0601e.f2370b;
            this.f2372d = c0601e.f2372d;
            this.f2373e = c0601e.f2373e;
            this.f2374f = c0601e.f2374f;
            this.f2376h = c0601e.f2376h;
            this.f2377i = c0601e.f2377i;
            this.f2378j = c0601e.f2378j;
            this.f2375g = c0601e.f2375g;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2369a);
            parcel.writeInt(this.f2370b);
            parcel.writeInt(this.f2371c);
            if (this.f2371c > 0) {
                parcel.writeIntArray(this.f2372d);
            }
            parcel.writeInt(this.f2373e);
            if (this.f2373e > 0) {
                parcel.writeIntArray(this.f2374f);
            }
            parcel.writeInt(this.f2376h ? 1 : 0);
            parcel.writeInt(this.f2377i ? 1 : 0);
            parcel.writeInt(this.f2378j ? 1 : 0);
            parcel.writeList(this.f2375g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$f.class */
    public class C0603f {

        /* renamed from: a */
        public ArrayList<View> f2379a = new ArrayList<>();

        /* renamed from: b */
        public int f2380b = Integer.MIN_VALUE;

        /* renamed from: c */
        public int f2381c = Integer.MIN_VALUE;

        /* renamed from: d */
        public int f2382d = 0;

        /* renamed from: e */
        public final int f2383e;

        public C0603f(int i) {
            StaggeredGridLayoutManager.this = r5;
            this.f2383e = i;
        }

        /* renamed from: a */
        public void m7662a(View view) {
            C0597c m7653j = m7653j(view);
            m7653j.f2362e = this;
            this.f2379a.add(view);
            this.f2381c = Integer.MIN_VALUE;
            if (this.f2379a.size() == 1) {
                this.f2380b = Integer.MIN_VALUE;
            }
            if (m7653j.m7770c() || m7653j.m7771b()) {
                this.f2382d = StaggeredGridLayoutManager.this.f2345r.mo7551c(view) + this.f2382d;
            }
        }

        /* renamed from: b */
        public void m7661b() {
            ArrayList<View> arrayList = this.f2379a;
            View view = arrayList.get(arrayList.size() - 1);
            C0597c m7653j = m7653j(view);
            this.f2381c = StaggeredGridLayoutManager.this.f2345r.mo7552b(view);
            Objects.requireNonNull(m7653j);
        }

        /* renamed from: c */
        public void m7660c() {
            View view = this.f2379a.get(0);
            C0597c m7653j = m7653j(view);
            this.f2380b = StaggeredGridLayoutManager.this.f2345r.mo7549e(view);
            Objects.requireNonNull(m7653j);
        }

        /* renamed from: d */
        public void m7659d() {
            this.f2379a.clear();
            this.f2380b = Integer.MIN_VALUE;
            this.f2381c = Integer.MIN_VALUE;
            this.f2382d = 0;
        }

        /* renamed from: e */
        public int m7658e() {
            return StaggeredGridLayoutManager.this.f2350w ? m7656g(this.f2379a.size() - 1, -1, true) : m7656g(0, this.f2379a.size(), true);
        }

        /* renamed from: f */
        public int m7657f() {
            return StaggeredGridLayoutManager.this.f2350w ? m7656g(0, this.f2379a.size(), true) : m7656g(this.f2379a.size() - 1, -1, true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
            r11 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.m7797Q(r0);
         */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m7656g(int r4, int r5, boolean r6) {
            /*
                r3 = this;
                r0 = r3
                androidx.recyclerview.widget.StaggeredGridLayoutManager r0 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this
                androidx.recyclerview.widget.t r0 = r0.f2345r
                int r0 = r0.mo7543k()
                r7 = r0
                r0 = r3
                androidx.recyclerview.widget.StaggeredGridLayoutManager r0 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this
                androidx.recyclerview.widget.t r0 = r0.f2345r
                int r0 = r0.mo7547g()
                r8 = r0
                r0 = -1
                r9 = r0
                r0 = r5
                r1 = r4
                if (r0 <= r1) goto L26
                r0 = 1
                r10 = r0
                goto L29
            L26:
                r0 = -1
                r10 = r0
            L29:
                r0 = r9
                r11 = r0
                r0 = r4
                r1 = r5
                if (r0 == r1) goto Lc2
                r0 = r3
                java.util.ArrayList<android.view.View> r0 = r0.f2379a
                r1 = r4
                java.lang.Object r0 = r0.get(r1)
                android.view.View r0 = (android.view.View) r0
                r12 = r0
                r0 = r3
                androidx.recyclerview.widget.StaggeredGridLayoutManager r0 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this
                androidx.recyclerview.widget.t r0 = r0.f2345r
                r1 = r12
                int r0 = r0.mo7549e(r1)
                r13 = r0
                r0 = r3
                androidx.recyclerview.widget.StaggeredGridLayoutManager r0 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this
                androidx.recyclerview.widget.t r0 = r0.f2345r
                r1 = r12
                int r0 = r0.mo7552b(r1)
                r14 = r0
                r0 = 0
                r15 = r0
                r0 = r6
                if (r0 == 0) goto L6c
                r0 = r13
                r1 = r8
                if (r0 > r1) goto L79
                goto L73
            L6c:
                r0 = r13
                r1 = r8
                if (r0 >= r1) goto L79
            L73:
                r0 = 1
                r11 = r0
                goto L7c
            L79:
                r0 = 0
                r11 = r0
            L7c:
                r0 = r6
                if (r0 == 0) goto L8a
                r0 = r14
                r1 = r7
                if (r0 < r1) goto L94
                goto L91
            L8a:
                r0 = r14
                r1 = r7
                if (r0 <= r1) goto L94
            L91:
                r0 = 1
                r15 = r0
            L94:
                r0 = r11
                if (r0 == 0) goto Lba
                r0 = r15
                if (r0 == 0) goto Lba
                r0 = r13
                r1 = r7
                if (r0 < r1) goto Lac
                r0 = r14
                r1 = r8
                if (r0 <= r1) goto Lba
            Lac:
                r0 = r3
                androidx.recyclerview.widget.StaggeredGridLayoutManager r0 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this
                r1 = r12
                int r0 = r0.m7797Q(r1)
                r11 = r0
                goto Lc2
            Lba:
                r0 = r4
                r1 = r10
                int r0 = r0 + r1
                r4 = r0
                goto L29
            Lc2:
                r0 = r11
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.C0603f.m7656g(int, int, boolean):int");
        }

        /* renamed from: h */
        public int m7655h(int i) {
            int i2 = this.f2381c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2379a.size() == 0) {
                return i;
            }
            m7661b();
            return this.f2381c;
        }

        /* renamed from: i */
        public View m7654i(int i, int i2) {
            View view;
            View view2 = null;
            if (i2 != -1) {
                int size = this.f2379a.size() - 1;
                View view3 = null;
                while (true) {
                    View view4 = view3;
                    view = view4;
                    if (size < 0) {
                        break;
                    }
                    View view5 = this.f2379a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f2350w) {
                        view = view4;
                        if (staggeredGridLayoutManager.m7797Q(view5) >= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager2.f2350w && staggeredGridLayoutManager2.m7797Q(view5) <= i) {
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
                int size2 = this.f2379a.size();
                int i3 = 0;
                while (true) {
                    view = view2;
                    if (i3 >= size2) {
                        break;
                    }
                    View view6 = this.f2379a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f2350w) {
                        view = view2;
                        if (staggeredGridLayoutManager3.m7797Q(view6) <= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager4.f2350w && staggeredGridLayoutManager4.m7797Q(view6) >= i) {
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

        /* renamed from: j */
        public C0597c m7653j(View view) {
            return (C0597c) view.getLayoutParams();
        }

        /* renamed from: k */
        public int m7652k(int i) {
            int i2 = this.f2380b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2379a.size() == 0) {
                return i;
            }
            m7660c();
            return this.f2380b;
        }

        /* renamed from: l */
        public void m7651l() {
            int size = this.f2379a.size();
            View remove = this.f2379a.remove(size - 1);
            C0597c m7653j = m7653j(remove);
            m7653j.f2362e = null;
            if (m7653j.m7770c() || m7653j.m7771b()) {
                this.f2382d -= StaggeredGridLayoutManager.this.f2345r.mo7551c(remove);
            }
            if (size == 1) {
                this.f2380b = Integer.MIN_VALUE;
            }
            this.f2381c = Integer.MIN_VALUE;
        }

        /* renamed from: m */
        public void m7650m() {
            View remove = this.f2379a.remove(0);
            C0597c m7653j = m7653j(remove);
            m7653j.f2362e = null;
            if (this.f2379a.size() == 0) {
                this.f2381c = Integer.MIN_VALUE;
            }
            if (m7653j.m7770c() || m7653j.m7771b()) {
                this.f2382d -= StaggeredGridLayoutManager.this.f2345r.mo7551c(remove);
            }
            this.f2380b = Integer.MIN_VALUE;
        }

        /* renamed from: n */
        public void m7649n(View view) {
            C0597c m7653j = m7653j(view);
            m7653j.f2362e = this;
            this.f2379a.add(0, view);
            this.f2380b = Integer.MIN_VALUE;
            if (this.f2379a.size() == 1) {
                this.f2381c = Integer.MIN_VALUE;
            }
            if (m7653j.m7770c() || m7653j.m7771b()) {
                this.f2382d = StaggeredGridLayoutManager.this.f2345r.mo7551c(view) + this.f2382d;
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f2343p = -1;
        this.f2350w = false;
        RecyclerView.AbstractC0573m.C0577d m7796R = RecyclerView.AbstractC0573m.m7796R(context, attributeSet, i, i2);
        int i3 = m7796R.f2272a;
        if (i3 == 0 || i3 == 1) {
            mo7710d(null);
            if (i3 != this.f2347t) {
                this.f2347t = i3;
                AbstractC0646t abstractC0646t = this.f2345r;
                this.f2345r = this.f2346s;
                this.f2346s = abstractC0646t;
                m7778u0();
            }
            int i4 = m7796R.f2273b;
            mo7710d(null);
            if (i4 != this.f2343p) {
                this.f2333B.m7668a();
                m7778u0();
                this.f2343p = i4;
                this.f2352y = new BitSet(this.f2343p);
                this.f2344q = new C0603f[this.f2343p];
                for (int i5 = 0; i5 < this.f2343p; i5++) {
                    this.f2344q[i5] = new C0603f(i5);
                }
                m7778u0();
            }
            boolean z = m7796R.f2274c;
            mo7710d(null);
            C0601e c0601e = this.f2337F;
            if (c0601e != null && c0601e.f2376h != z) {
                c0601e.f2376h = z;
            }
            this.f2350w = z;
            m7778u0();
            this.f2349v = new C0640o();
            this.f2345r = AbstractC0646t.m7553a(this, this.f2347t);
            this.f2346s = AbstractC0646t.m7553a(this, 1 - this.f2347t);
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: A0 */
    public void mo7740A0(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int m7799O = m7799O() + m7800N();
        int m7801M = m7801M() + m7798P();
        if (this.f2347t == 1) {
            i3 = RecyclerView.AbstractC0573m.m7789h(i2, rect.height() + m7801M, m7803K());
            i4 = RecyclerView.AbstractC0573m.m7789h(i, (this.f2348u * this.f2343p) + m7799O, m7802L());
        } else {
            i4 = RecyclerView.AbstractC0573m.m7789h(i, rect.width() + m7799O, m7802L());
            i3 = RecyclerView.AbstractC0573m.m7789h(i2, (this.f2348u * this.f2343p) + m7801M, m7803K());
        }
        this.f2256b.setMeasuredDimension(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: G0 */
    public void mo4591G0(RecyclerView recyclerView, RecyclerView.C0592x c0592x, int i) {
        C0641p c0641p = new C0641p(recyclerView.getContext());
        c0641p.f2296a = i;
        m7806H0(c0641p);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: I0 */
    public boolean mo7739I0() {
        return this.f2337F == null;
    }

    /* renamed from: J0 */
    public final int m7738J0(int i) {
        int i2 = -1;
        if (m7776x() == 0) {
            if (this.f2351x) {
                i2 = 1;
            }
            return i2;
        }
        if ((i < m7727T0()) == this.f2351x) {
            i2 = 1;
        }
        return i2;
    }

    /* renamed from: K0 */
    public boolean m7737K0() {
        int i;
        if (m7776x() == 0 || this.f2334C == 0 || !this.f2261g) {
            return false;
        }
        if (this.f2351x) {
            i = m7725U0();
            m7727T0();
        } else {
            i = m7727T0();
            m7725U0();
        }
        if (i != 0 || m7719Y0() == null) {
            return false;
        }
        this.f2333B.m7668a();
        this.f2260f = true;
        m7778u0();
        return true;
    }

    /* renamed from: L0 */
    public final int m7736L0(RecyclerView.C0592x c0592x) {
        if (m7776x() == 0) {
            return 0;
        }
        return C0653z.m7521a(c0592x, this.f2345r, m7731Q0(!this.f2340I), m7732P0(!this.f2340I), this, this.f2340I);
    }

    /* renamed from: M0 */
    public final int m7735M0(RecyclerView.C0592x c0592x) {
        if (m7776x() == 0) {
            return 0;
        }
        return C0653z.m7520b(c0592x, this.f2345r, m7731Q0(!this.f2340I), m7732P0(!this.f2340I), this, this.f2340I, this.f2351x);
    }

    /* renamed from: N0 */
    public final int m7734N0(RecyclerView.C0592x c0592x) {
        if (m7776x() == 0) {
            return 0;
        }
        return C0653z.m7519c(c0592x, this.f2345r, m7731Q0(!this.f2340I), m7732P0(!this.f2340I), this, this.f2340I);
    }

    /* renamed from: O0 */
    public final int m7733O0(RecyclerView.C0584s c0584s, C0640o c0640o, RecyclerView.C0592x c0592x) {
        int i;
        boolean z;
        C0603f c0603f;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        this.f2352y.set(0, this.f2343p, true);
        if (this.f2349v.f2528i) {
            i = c0640o.f2524e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i = c0640o.f2524e == 1 ? c0640o.f2526g + c0640o.f2521b : c0640o.f2525f - c0640o.f2521b;
        }
        m7689k1(c0640o.f2524e, i);
        int mo7547g = this.f2351x ? this.f2345r.mo7547g() : this.f2345r.mo7543k();
        boolean z2 = false;
        while (true) {
            z = z2;
            int i9 = c0640o.f2522c;
            if (!(i9 >= 0 && i9 < c0592x.m7744b()) || (!this.f2349v.f2528i && this.f2352y.isEmpty())) {
                break;
            }
            View view = c0584s.m7758j(c0640o.f2522c, false, Long.MAX_VALUE).f2224a;
            c0640o.f2522c += c0640o.f2523d;
            C0597c c0597c = (C0597c) view.getLayoutParams();
            int m7772a = c0597c.m7772a();
            int[] iArr = this.f2333B.f2363a;
            int i10 = (iArr == null || m7772a >= iArr.length) ? -1 : iArr[m7772a];
            if (i10 == -1) {
                if (m7711c1(c0640o.f2524e)) {
                    i8 = this.f2343p - 1;
                    i7 = -1;
                    i6 = -1;
                } else {
                    i7 = this.f2343p;
                    i8 = 0;
                    i6 = 1;
                }
                C0603f c0603f2 = null;
                if (c0640o.f2524e != 1) {
                    int mo7547g2 = this.f2345r.mo7547g();
                    int i11 = Integer.MIN_VALUE;
                    C0603f c0603f3 = null;
                    while (true) {
                        c0603f = c0603f3;
                        if (i8 == i7) {
                            break;
                        }
                        C0603f c0603f4 = this.f2344q[i8];
                        int m7652k = c0603f4.m7652k(mo7547g2);
                        int i12 = i11;
                        if (m7652k > i11) {
                            c0603f3 = c0603f4;
                            i12 = m7652k;
                        }
                        i8 += i6;
                        i11 = i12;
                    }
                } else {
                    int mo7543k = this.f2345r.mo7543k();
                    int i13 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    while (true) {
                        int i14 = i13;
                        c0603f = c0603f2;
                        if (i8 == i7) {
                            break;
                        }
                        C0603f c0603f5 = this.f2344q[i8];
                        int m7655h = c0603f5.m7655h(mo7543k);
                        int i15 = i14;
                        if (m7655h < i14) {
                            c0603f2 = c0603f5;
                            i15 = m7655h;
                        }
                        i8 += i6;
                        i13 = i15;
                    }
                }
                C0598d c0598d = this.f2333B;
                c0598d.m7667b(m7772a);
                c0598d.f2363a[m7772a] = c0603f.f2383e;
            } else {
                c0603f = this.f2344q[i10];
            }
            c0597c.f2362e = c0603f;
            if (c0640o.f2524e == 1) {
                m7791c(view, -1, false);
            } else {
                m7791c(view, 0, false);
            }
            if (this.f2347t == 1) {
                m7714a1(view, RecyclerView.AbstractC0573m.m7775y(this.f2348u, this.f2266l, 0, ((ViewGroup.MarginLayoutParams) c0597c).width, false), RecyclerView.AbstractC0573m.m7775y(this.f2269o, this.f2267m, m7801M() + m7798P(), ((ViewGroup.MarginLayoutParams) c0597c).height, true), false);
            } else {
                m7714a1(view, RecyclerView.AbstractC0573m.m7775y(this.f2268n, this.f2266l, m7799O() + m7800N(), ((ViewGroup.MarginLayoutParams) c0597c).width, true), RecyclerView.AbstractC0573m.m7775y(this.f2348u, this.f2267m, 0, ((ViewGroup.MarginLayoutParams) c0597c).height, false), false);
            }
            if (c0640o.f2524e == 1) {
                int m7655h2 = c0603f.m7655h(mo7547g);
                i3 = m7655h2;
                i2 = this.f2345r.mo7551c(view) + m7655h2;
            } else {
                int m7652k2 = c0603f.m7652k(mo7547g);
                i2 = m7652k2;
                i3 = m7652k2 - this.f2345r.mo7551c(view);
            }
            if (c0640o.f2524e == 1) {
                c0597c.f2362e.m7662a(view);
            } else {
                c0597c.f2362e.m7649n(view);
            }
            if (!m7717Z0() || this.f2347t != 1) {
                i4 = this.f2346s.mo7543k() + (c0603f.f2383e * this.f2348u);
                i5 = this.f2346s.mo7551c(view) + i4;
            } else {
                i5 = this.f2346s.mo7547g() - (((this.f2343p - 1) - c0603f.f2383e) * this.f2348u);
                i4 = i5 - this.f2346s.mo7551c(view);
            }
            if (this.f2347t == 1) {
                m7793W(view, i4, i3, i5, i2);
            } else {
                m7793W(view, i3, i4, i2, i5);
            }
            m7683m1(c0603f, this.f2349v.f2524e, i);
            m7705e1(c0584s, this.f2349v);
            if (this.f2349v.f2527h && view.hasFocusable()) {
                this.f2352y.set(c0603f.f2383e, false);
            }
            z2 = true;
        }
        if (!z) {
            m7705e1(c0584s, this.f2349v);
        }
        int mo7543k2 = this.f2349v.f2524e == -1 ? this.f2345r.mo7543k() - m7723W0(this.f2345r.mo7543k()) : m7724V0(this.f2345r.mo7547g()) - this.f2345r.mo7547g();
        return mo7543k2 > 0 ? Math.min(c0640o.f2521b, mo7543k2) : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
        return r0;
     */
    /* renamed from: P0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m7732P0(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.t r0 = r0.f2345r
            int r0 = r0.mo7543k()
            r5 = r0
            r0 = r3
            androidx.recyclerview.widget.t r0 = r0.f2345r
            int r0 = r0.mo7547g()
            r6 = r0
            r0 = r3
            int r0 = r0.m7776x()
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
            android.view.View r0 = r0.m7777w(r1)
            r9 = r0
            r0 = r3
            androidx.recyclerview.widget.t r0 = r0.f2345r
            r1 = r9
            int r0 = r0.mo7549e(r1)
            r10 = r0
            r0 = r3
            androidx.recyclerview.widget.t r0 = r0.f2345r
            r1 = r9
            int r0 = r0.mo7552b(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m7732P0(boolean):android.view.View");
    }

    /* renamed from: Q0 */
    public View m7731Q0(boolean z) {
        int mo7543k = this.f2345r.mo7543k();
        int mo7547g = this.f2345r.mo7547g();
        int m7776x = m7776x();
        View view = null;
        int i = 0;
        while (i < m7776x) {
            View m7777w = m7777w(i);
            int mo7549e = this.f2345r.mo7549e(m7777w);
            View view2 = view;
            if (this.f2345r.mo7552b(m7777w) > mo7543k) {
                if (mo7549e >= mo7547g) {
                    view2 = view;
                } else if (mo7549e >= mo7543k || !z) {
                    return m7777w;
                } else {
                    view2 = view;
                    if (view == null) {
                        view2 = m7777w;
                    }
                }
            }
            i++;
            view = view2;
        }
        return view;
    }

    /* renamed from: R0 */
    public final void m7730R0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, boolean z) {
        int mo7547g;
        int m7724V0 = m7724V0(Integer.MIN_VALUE);
        if (m7724V0 != Integer.MIN_VALUE && (mo7547g = this.f2345r.mo7547g() - m7724V0) > 0) {
            int i = mo7547g - (-m7694i1(-mo7547g, c0584s, c0592x));
            if (!z || i <= 0) {
                return;
            }
            this.f2345r.mo7538p(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: S */
    public int mo7729S(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        return this.f2347t == 0 ? this.f2343p : super.mo7729S(c0584s, c0592x);
    }

    /* renamed from: S0 */
    public final void m7728S0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, boolean z) {
        int mo7543k;
        int m7723W0 = m7723W0(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (m7723W0 != Integer.MAX_VALUE && (mo7543k = m7723W0 - this.f2345r.mo7543k()) > 0) {
            int m7694i1 = mo7543k - m7694i1(mo7543k, c0584s, c0592x);
            if (!z || m7694i1 <= 0) {
                return;
            }
            this.f2345r.mo7538p(-m7694i1);
        }
    }

    /* renamed from: T0 */
    public int m7727T0() {
        int i = 0;
        if (m7776x() != 0) {
            i = m7797Q(m7777w(0));
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: U */
    public boolean mo7726U() {
        return this.f2334C != 0;
    }

    /* renamed from: U0 */
    public int m7725U0() {
        int m7776x = m7776x();
        return m7776x == 0 ? 0 : m7797Q(m7777w(m7776x - 1));
    }

    /* renamed from: V0 */
    public final int m7724V0(int i) {
        int m7655h = this.f2344q[0].m7655h(i);
        int i2 = 1;
        while (i2 < this.f2343p) {
            int m7655h2 = this.f2344q[i2].m7655h(i);
            int i3 = m7655h;
            if (m7655h2 > m7655h) {
                i3 = m7655h2;
            }
            i2++;
            m7655h = i3;
        }
        return m7655h;
    }

    /* renamed from: W0 */
    public final int m7723W0(int i) {
        int m7652k = this.f2344q[0].m7652k(i);
        int i2 = 1;
        while (i2 < this.f2343p) {
            int m7652k2 = this.f2344q[i2].m7652k(i);
            int i3 = m7652k;
            if (m7652k2 < m7652k) {
                i3 = m7652k2;
            }
            i2++;
            m7652k = i3;
        }
        return m7652k;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: X */
    public void mo7722X(int i) {
        super.mo7722X(i);
        for (int i2 = 0; i2 < this.f2343p; i2++) {
            C0603f c0603f = this.f2344q[i2];
            int i3 = c0603f.f2380b;
            if (i3 != Integer.MIN_VALUE) {
                c0603f.f2380b = i3 + i;
            }
            int i4 = c0603f.f2381c;
            if (i4 != Integer.MIN_VALUE) {
                c0603f.f2381c = i4 + i;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* renamed from: X0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7721X0(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f2351x
            if (r0 == 0) goto L10
            r0 = r4
            int r0 = r0.m7725U0()
            r8 = r0
            goto L16
        L10:
            r0 = r4
            int r0 = r0.m7727T0()
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f2333B
            r1 = r10
            int r0 = r0.m7665d(r1)
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f2333B
            r1 = r5
            r2 = 1
            r0.m7663f(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f2333B
            r1 = r6
            r2 = 1
            r0.m7664e(r1, r2)
            goto L83
        L6e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f2333B
            r1 = r5
            r2 = r6
            r0.m7663f(r1, r2)
            goto L83
        L7a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f2333B
            r1 = r5
            r2 = r6
            r0.m7664e(r1, r2)
        L83:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L8b
            return
        L8b:
            r0 = r4
            boolean r0 = r0.f2351x
            if (r0 == 0) goto L9a
            r0 = r4
            int r0 = r0.m7727T0()
            r5 = r0
            goto L9f
        L9a:
            r0 = r4
            int r0 = r0.m7725U0()
            r5 = r0
        L9f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto La9
            r0 = r4
            r0.m7778u0()
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m7721X0(int, int, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: Y */
    public void mo7720Y(int i) {
        super.mo7720Y(i);
        for (int i2 = 0; i2 < this.f2343p; i2++) {
            C0603f c0603f = this.f2344q[i2];
            int i3 = c0603f.f2380b;
            if (i3 != Integer.MIN_VALUE) {
                c0603f.f2380b = i3 + i;
            }
            int i4 = c0603f.f2381c;
            if (i4 != Integer.MIN_VALUE) {
                c0603f.f2381c = i4 + i;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0167, code lost:
        if (r0 == r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x018e, code lost:
        if (r0 == r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0191, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0196, code lost:
        r6 = false;
     */
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m7719Y0() {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m7719Y0():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: Z */
    public void mo7718Z(RecyclerView recyclerView, RecyclerView.C0584s c0584s) {
        Runnable runnable = this.f2342K;
        RecyclerView recyclerView2 = this.f2256b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(runnable);
        }
        for (int i = 0; i < this.f2343p; i++) {
            this.f2344q[i].m7659d();
        }
        recyclerView.requestLayout();
    }

    /* renamed from: Z0 */
    public boolean m7717Z0() {
        boolean z = true;
        if (m7804J() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0589w.AbstractC0591b
    /* renamed from: a */
    public PointF mo7716a(int i) {
        int m7738J0 = m7738J0(i);
        PointF pointF = new PointF();
        if (m7738J0 == 0) {
            return null;
        }
        if (this.f2347t == 0) {
            pointF.x = m7738J0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = m7738J0;
        }
        return pointF;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0059, code lost:
        if (r5.f2347t == 1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0063, code lost:
        if (r5.f2347t == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        if (m7717Z0() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0093, code lost:
        if (m7717Z0() == false) goto L38;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo7715a0(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.C0584s r8, androidx.recyclerview.widget.RecyclerView.C0592x r9) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo7715a0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$x):android.view.View");
    }

    /* renamed from: a1 */
    public final void m7714a1(View view, int i, int i2, boolean z) {
        Rect rect = this.f2338G;
        RecyclerView recyclerView = this.f2256b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.m7906L(view));
        }
        C0597c c0597c = (C0597c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0597c).leftMargin;
        Rect rect2 = this.f2338G;
        int m7680n1 = m7680n1(i, i3 + rect2.left, ((ViewGroup.MarginLayoutParams) c0597c).rightMargin + rect2.right);
        int i4 = ((ViewGroup.MarginLayoutParams) c0597c).topMargin;
        Rect rect3 = this.f2338G;
        int m7680n12 = m7680n1(i2, i4 + rect3.top, ((ViewGroup.MarginLayoutParams) c0597c).bottomMargin + rect3.bottom);
        if (z ? m7809F0(view, m7680n1, m7680n12, c0597c) : m7813D0(view, m7680n1, m7680n12, c0597c)) {
            view.measure(m7680n1, m7680n12);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: b0 */
    public void mo7713b0(AccessibilityEvent accessibilityEvent) {
        super.mo7713b0(accessibilityEvent);
        if (m7776x() > 0) {
            View m7731Q0 = m7731Q0(false);
            View m7732P0 = m7732P0(false);
            if (m7731Q0 == null || m7732P0 == null) {
                return;
            }
            int m7797Q = m7797Q(m7731Q0);
            int m7797Q2 = m7797Q(m7732P0);
            if (m7797Q < m7797Q2) {
                accessibilityEvent.setFromIndex(m7797Q);
                accessibilityEvent.setToIndex(m7797Q2);
                return;
            }
            accessibilityEvent.setFromIndex(m7797Q2);
            accessibilityEvent.setToIndex(m7797Q);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x08a6  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x08c3  */
    /* JADX WARN: Removed duplicated region for block: B:289:? A[RETURN, SYNTHETIC] */
    /* renamed from: b1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7712b1(androidx.recyclerview.widget.RecyclerView.C0584s r6, androidx.recyclerview.widget.RecyclerView.C0592x r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 2258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m7712b1(androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$x, boolean):void");
    }

    /* renamed from: c1 */
    public final boolean m7711c1(int i) {
        if (this.f2347t == 0) {
            return (i == -1) != this.f2351x;
        }
        return ((i == -1) == this.f2351x) == m7717Z0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: d */
    public void mo7710d(String str) {
        RecyclerView recyclerView;
        if (this.f2337F != null || (recyclerView = this.f2256b) == null) {
            return;
        }
        recyclerView.m7876i(str);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: d0 */
    public void mo7709d0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, View view, C3694b c3694b) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0597c)) {
            m7790c0(view, c3694b);
            return;
        }
        C0597c c0597c = (C0597c) layoutParams;
        if (this.f2347t == 0) {
            C0603f c0603f = c0597c.f2362e;
            c3694b.f12070a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C3694b.C3697c.m1865a(c0603f == null ? -1 : c0603f.f2383e, 1, -1, -1, false, false).f12088a);
            return;
        }
        C0603f c0603f2 = c0597c.f2362e;
        c3694b.f12070a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C3694b.C3697c.m1865a(-1, -1, c0603f2 == null ? -1 : c0603f2.f2383e, 1, false, false).f12088a);
    }

    /* renamed from: d1 */
    public void m7708d1(int i, RecyclerView.C0592x c0592x) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m7725U0();
            i2 = 1;
        } else {
            i3 = m7727T0();
            i2 = -1;
        }
        this.f2349v.f2520a = true;
        m7686l1(i3, c0592x);
        m7692j1(i2);
        C0640o c0640o = this.f2349v;
        c0640o.f2522c = i3 + c0640o.f2523d;
        c0640o.f2521b = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: e */
    public boolean mo7707e() {
        return this.f2347t == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: e0 */
    public void mo7706e0(RecyclerView recyclerView, int i, int i2) {
        m7721X0(i, i2, 1);
    }

    /* renamed from: e1 */
    public final void m7705e1(RecyclerView.C0584s c0584s, C0640o c0640o) {
        int i;
        int i2;
        if (!c0640o.f2520a || c0640o.f2528i) {
            return;
        }
        if (c0640o.f2521b == 0) {
            if (c0640o.f2524e == -1) {
                m7702f1(c0584s, c0640o.f2526g);
                return;
            } else {
                m7699g1(c0584s, c0640o.f2525f);
                return;
            }
        }
        int i3 = 1;
        if (c0640o.f2524e == -1) {
            int i4 = c0640o.f2525f;
            int m7652k = this.f2344q[0].m7652k(i4);
            while (true) {
                i2 = m7652k;
                if (i3 >= this.f2343p) {
                    break;
                }
                int m7652k2 = this.f2344q[i3].m7652k(i4);
                int i5 = i2;
                if (m7652k2 > i2) {
                    i5 = m7652k2;
                }
                i3++;
                m7652k = i5;
            }
            int i6 = i4 - i2;
            m7702f1(c0584s, i6 < 0 ? c0640o.f2526g : c0640o.f2526g - Math.min(i6, c0640o.f2521b));
            return;
        }
        int i7 = c0640o.f2526g;
        int m7655h = this.f2344q[0].m7655h(i7);
        int i8 = 1;
        while (true) {
            i = m7655h;
            if (i8 >= this.f2343p) {
                break;
            }
            int m7655h2 = this.f2344q[i8].m7655h(i7);
            m7655h = i;
            if (m7655h2 < i) {
                m7655h = m7655h2;
            }
            i8++;
        }
        int i9 = i - c0640o.f2526g;
        m7699g1(c0584s, i9 < 0 ? c0640o.f2525f : Math.min(i9, c0640o.f2521b) + c0640o.f2525f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: f */
    public boolean mo7704f() {
        boolean z = true;
        if (this.f2347t != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: f0 */
    public void mo7703f0(RecyclerView recyclerView) {
        this.f2333B.m7668a();
        m7778u0();
    }

    /* renamed from: f1 */
    public final void m7702f1(RecyclerView.C0584s c0584s, int i) {
        for (int m7776x = m7776x() - 1; m7776x >= 0; m7776x--) {
            View m7777w = m7777w(m7776x);
            if (this.f2345r.mo7549e(m7777w) < i || this.f2345r.mo7539o(m7777w) < i) {
                return;
            }
            C0597c c0597c = (C0597c) m7777w.getLayoutParams();
            Objects.requireNonNull(c0597c);
            if (c0597c.f2362e.f2379a.size() == 1) {
                return;
            }
            c0597c.f2362e.m7651l();
            m7784q0(m7777w, c0584s);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: g */
    public boolean mo7701g(RecyclerView.C0578n c0578n) {
        return c0578n instanceof C0597c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: g0 */
    public void mo7700g0(RecyclerView recyclerView, int i, int i2, int i3) {
        m7721X0(i, i2, 8);
    }

    /* renamed from: g1 */
    public final void m7699g1(RecyclerView.C0584s c0584s, int i) {
        while (m7776x() > 0) {
            View m7777w = m7777w(0);
            if (this.f2345r.mo7552b(m7777w) > i || this.f2345r.mo7540n(m7777w) > i) {
                return;
            }
            C0597c c0597c = (C0597c) m7777w.getLayoutParams();
            Objects.requireNonNull(c0597c);
            if (c0597c.f2362e.f2379a.size() == 1) {
                return;
            }
            c0597c.f2362e.m7650m();
            m7784q0(m7777w, c0584s);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: h0 */
    public void mo7698h0(RecyclerView recyclerView, int i, int i2) {
        m7721X0(i, i2, 2);
    }

    /* renamed from: h1 */
    public final void m7697h1() {
        if (this.f2347t == 1 || !m7717Z0()) {
            this.f2351x = this.f2350w;
        } else {
            this.f2351x = !this.f2350w;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: i */
    public void mo7696i(int i, int i2, RecyclerView.C0592x c0592x, RecyclerView.AbstractC0573m.AbstractC0576c abstractC0576c) {
        int i3;
        int i4;
        int i5;
        if (this.f2347t != 0) {
            i = i2;
        }
        if (m7776x() == 0 || i == 0) {
            return;
        }
        m7708d1(i, c0592x);
        int[] iArr = this.f2341J;
        if (iArr == null || iArr.length < this.f2343p) {
            this.f2341J = new int[this.f2343p];
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f2343p) {
                break;
            }
            C0640o c0640o = this.f2349v;
            if (c0640o.f2523d == -1) {
                i5 = c0640o.f2525f;
                i4 = this.f2344q[i6].m7652k(i5);
            } else {
                i5 = this.f2344q[i6].m7655h(c0640o.f2526g);
                i4 = this.f2349v.f2526g;
            }
            int i8 = i5 - i4;
            int i9 = i3;
            if (i8 >= 0) {
                this.f2341J[i3] = i8;
                i9 = i3 + 1;
            }
            i6++;
            i7 = i9;
        }
        Arrays.sort(this.f2341J, 0, i3);
        for (int i10 = 0; i10 < i3; i10++) {
            int i11 = this.f2349v.f2522c;
            if (!(i11 >= 0 && i11 < c0592x.m7744b())) {
                return;
            }
            ((RunnableC0636n.C0638b) abstractC0576c).m7557a(this.f2349v.f2522c, this.f2341J[i10]);
            C0640o c0640o2 = this.f2349v;
            c0640o2.f2522c += c0640o2.f2523d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: i0 */
    public void mo7695i0(RecyclerView recyclerView, int i, int i2, Object obj) {
        m7721X0(i, i2, 4);
    }

    /* renamed from: i1 */
    public int m7694i1(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (m7776x() == 0 || i == 0) {
            return 0;
        }
        m7708d1(i, c0592x);
        int m7733O0 = m7733O0(c0584s, this.f2349v, c0592x);
        if (this.f2349v.f2521b >= m7733O0) {
            i = i < 0 ? -m7733O0 : m7733O0;
        }
        this.f2345r.mo7538p(-i);
        this.f2335D = this.f2351x;
        C0640o c0640o = this.f2349v;
        c0640o.f2521b = 0;
        m7705e1(c0584s, c0640o);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: j0 */
    public void mo7693j0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        m7712b1(c0584s, c0592x, true);
    }

    /* renamed from: j1 */
    public final void m7692j1(int i) {
        C0640o c0640o = this.f2349v;
        c0640o.f2524e = i;
        c0640o.f2523d = this.f2351x == (i == -1) ? 1 : -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: k */
    public int mo7691k(RecyclerView.C0592x c0592x) {
        return m7736L0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: k0 */
    public void mo7690k0(RecyclerView.C0592x c0592x) {
        this.f2353z = -1;
        this.f2332A = Integer.MIN_VALUE;
        this.f2337F = null;
        this.f2339H.m7669b();
    }

    /* renamed from: k1 */
    public final void m7689k1(int i, int i2) {
        for (int i3 = 0; i3 < this.f2343p; i3++) {
            if (!this.f2344q[i3].f2379a.isEmpty()) {
                m7683m1(this.f2344q[i3], i, i2);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: l */
    public int mo7688l(RecyclerView.C0592x c0592x) {
        return m7735M0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: l0 */
    public void mo7687l0(Parcelable parcelable) {
        if (parcelable instanceof C0601e) {
            this.f2337F = (C0601e) parcelable;
            m7778u0();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ef  */
    /* renamed from: l1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7686l1(int r5, androidx.recyclerview.widget.RecyclerView.C0592x r6) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m7686l1(int, androidx.recyclerview.widget.RecyclerView$x):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: m */
    public int mo7685m(RecyclerView.C0592x c0592x) {
        return m7734N0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: m0 */
    public Parcelable mo7684m0() {
        int i;
        int i2;
        int i3;
        int[] iArr;
        C0601e c0601e = this.f2337F;
        if (c0601e != null) {
            return new C0601e(c0601e);
        }
        C0601e c0601e2 = new C0601e();
        c0601e2.f2376h = this.f2350w;
        c0601e2.f2377i = this.f2335D;
        c0601e2.f2378j = this.f2336E;
        C0598d c0598d = this.f2333B;
        if (c0598d == null || (iArr = c0598d.f2363a) == null) {
            c0601e2.f2373e = 0;
        } else {
            c0601e2.f2374f = iArr;
            c0601e2.f2373e = iArr.length;
            c0601e2.f2375g = c0598d.f2364b;
        }
        if (m7776x() > 0) {
            c0601e2.f2369a = this.f2335D ? m7725U0() : m7727T0();
            View m7732P0 = this.f2351x ? m7732P0(true) : m7731Q0(true);
            c0601e2.f2370b = m7732P0 == null ? -1 : m7797Q(m7732P0);
            int i4 = this.f2343p;
            c0601e2.f2371c = i4;
            c0601e2.f2372d = new int[i4];
            for (int i5 = 0; i5 < this.f2343p; i5++) {
                if (this.f2335D) {
                    i2 = this.f2344q[i5].m7655h(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f2345r.mo7547g();
                        i = i2 - i3;
                        c0601e2.f2372d[i5] = i;
                    } else {
                        c0601e2.f2372d[i5] = i;
                    }
                } else {
                    i2 = this.f2344q[i5].m7652k(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f2345r.mo7543k();
                        i = i2 - i3;
                        c0601e2.f2372d[i5] = i;
                    } else {
                        c0601e2.f2372d[i5] = i;
                    }
                }
            }
        } else {
            c0601e2.f2369a = -1;
            c0601e2.f2370b = -1;
            c0601e2.f2371c = 0;
        }
        return c0601e2;
    }

    /* renamed from: m1 */
    public final void m7683m1(C0603f c0603f, int i, int i2) {
        int i3 = c0603f.f2382d;
        if (i == -1) {
            int i4 = c0603f.f2380b;
            if (i4 == Integer.MIN_VALUE) {
                c0603f.m7660c();
                i4 = c0603f.f2380b;
            }
            if (i4 + i3 > i2) {
                return;
            }
            this.f2352y.set(c0603f.f2383e, false);
            return;
        }
        int i5 = c0603f.f2381c;
        if (i5 == Integer.MIN_VALUE) {
            c0603f.m7661b();
            i5 = c0603f.f2381c;
        }
        if (i5 - i3 < i2) {
            return;
        }
        this.f2352y.set(c0603f.f2383e, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: n */
    public int mo7682n(RecyclerView.C0592x c0592x) {
        return m7736L0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: n0 */
    public void mo7681n0(int i) {
        if (i == 0) {
            m7737K0();
        }
    }

    /* renamed from: n1 */
    public final int m7680n1(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: o */
    public int mo7679o(RecyclerView.C0592x c0592x) {
        return m7735M0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: p */
    public int mo7678p(RecyclerView.C0592x c0592x) {
        return m7734N0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: t */
    public RecyclerView.C0578n mo7677t() {
        return this.f2347t == 0 ? new C0597c(-2, -1) : new C0597c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: u */
    public RecyclerView.C0578n mo7676u(Context context, AttributeSet attributeSet) {
        return new C0597c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: v */
    public RecyclerView.C0578n mo7675v(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0597c((ViewGroup.MarginLayoutParams) layoutParams) : new C0597c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: v0 */
    public int mo7674v0(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        return m7694i1(i, c0584s, c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: w0 */
    public void mo7673w0(int i) {
        C0601e c0601e = this.f2337F;
        if (c0601e != null && c0601e.f2369a != i) {
            c0601e.f2372d = null;
            c0601e.f2371c = 0;
            c0601e.f2369a = -1;
            c0601e.f2370b = -1;
        }
        this.f2353z = i;
        this.f2332A = Integer.MIN_VALUE;
        m7778u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: x0 */
    public int mo7672x0(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        return m7694i1(i, c0584s, c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: z */
    public int mo7671z(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        return this.f2347t == 1 ? this.f2343p : super.mo7671z(c0584s, c0592x);
    }
}
