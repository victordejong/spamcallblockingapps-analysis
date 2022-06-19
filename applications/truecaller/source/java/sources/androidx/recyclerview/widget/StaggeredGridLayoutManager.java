package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import p1727n3.p1744b0.p1745a.AbstractC25622u;
import p1727n3.p1744b0.p1745a.C25613m;
import p1727n3.p1744b0.p1745a.C25614n;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0329o implements RecyclerView.AbstractC0344y.AbstractC0346b {

    /* renamed from: a */
    public int f1362a;

    /* renamed from: b */
    public C0353d[] f1363b;

    /* renamed from: c */
    public AbstractC25622u f1364c;

    /* renamed from: d */
    public AbstractC25622u f1365d;

    /* renamed from: e */
    public int f1366e;

    /* renamed from: f */
    public int f1367f;

    /* renamed from: g */
    public final C25613m f1368g;

    /* renamed from: h */
    public boolean f1369h;

    /* renamed from: i */
    public boolean f1370i;

    /* renamed from: j */
    public BitSet f1371j;

    /* renamed from: k */
    public int f1372k;

    /* renamed from: l */
    public int f1373l;

    /* renamed from: m */
    public LazySpanLookup f1374m;

    /* renamed from: n */
    public int f1375n;

    /* renamed from: o */
    public boolean f1376o;

    /* renamed from: p */
    public boolean f1377p;

    /* renamed from: q */
    public SavedState f1378q;

    /* renamed from: r */
    public int f1379r;

    /* renamed from: s */
    public final Rect f1380s;

    /* renamed from: t */
    public final C0351b f1381t;

    /* renamed from: u */
    public boolean f1382u;

    /* renamed from: v */
    public boolean f1383v;

    /* renamed from: w */
    public int[] f1384w;

    /* renamed from: x */
    public final Runnable f1385x;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static class LazySpanLookup {

        /* renamed from: a */
        public int[] f1386a;

        /* renamed from: b */
        public List<FullSpanItem> f1387b;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new C0348a();

            /* renamed from: a */
            public int f1388a;

            /* renamed from: b */
            public int f1389b;

            /* renamed from: c */
            public int[] f1390c;

            /* renamed from: d */
            public boolean f1391d;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a */
            /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a.class */
            public class C0348a implements Parcelable.Creator<FullSpanItem> {
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            public FullSpanItem() {
            }

            public FullSpanItem(Parcel parcel) {
                this.f1388a = parcel.readInt();
                this.f1389b = parcel.readInt();
                this.f1391d = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f1390c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("FullSpanItem{mPosition=");
                m8728C.append(this.f1388a);
                m8728C.append(", mGapDir=");
                m8728C.append(this.f1389b);
                m8728C.append(", mHasUnwantedGapAfter=");
                m8728C.append(this.f1391d);
                m8728C.append(", mGapPerSpan=");
                m8728C.append(Arrays.toString(this.f1390c));
                m8728C.append('}');
                return m8728C.toString();
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f1388a);
                parcel.writeInt(this.f1389b);
                parcel.writeInt(this.f1391d ? 1 : 0);
                int[] iArr = this.f1390c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f1390c);
            }
        }

        /* renamed from: a */
        public void m42685a(FullSpanItem fullSpanItem) {
            if (this.f1387b == null) {
                this.f1387b = new ArrayList();
            }
            int size = this.f1387b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f1387b.get(i);
                if (fullSpanItem2.f1388a == fullSpanItem.f1388a) {
                    this.f1387b.remove(i);
                }
                if (fullSpanItem2.f1388a >= fullSpanItem.f1388a) {
                    this.f1387b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f1387b.add(fullSpanItem);
        }

        /* renamed from: b */
        public void m42684b() {
            int[] iArr = this.f1386a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f1387b = null;
        }

        /* renamed from: c */
        public void m42683c(int i) {
            int[] iArr = this.f1386a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f1386a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i < iArr.length) {
            } else {
                int length = iArr.length;
                while (true) {
                    int i2 = length;
                    if (i2 > i) {
                        int[] iArr3 = new int[i2];
                        this.f1386a = iArr3;
                        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                        int[] iArr4 = this.f1386a;
                        Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
                        return;
                    }
                    length = i2 * 2;
                }
            }
        }

        /* renamed from: d */
        public int m42682d(int i) {
            List<FullSpanItem> list = this.f1387b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f1387b.get(size).f1388a >= i) {
                        this.f1387b.remove(size);
                    }
                }
            }
            return m42679g(i);
        }

        /* renamed from: e */
        public FullSpanItem m42681e(int i, int i2, int i3, boolean z) {
            FullSpanItem fullSpanItem;
            int i4;
            List<FullSpanItem> list = this.f1387b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size && (i4 = (fullSpanItem = this.f1387b.get(i5)).f1388a) < i2; i5++) {
                if (i4 >= i && (i3 == 0 || fullSpanItem.f1389b == i3 || (z && fullSpanItem.f1391d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: f */
        public FullSpanItem m42680f(int i) {
            List<FullSpanItem> list = this.f1387b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f1387b.get(size);
                if (fullSpanItem.f1388a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m42679g(int r6) {
            /*
                r5 = this;
                r0 = r5
                int[] r0 = r0.f1386a
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
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r0.f1387b
                if (r0 != 0) goto L1f
            L1a:
                r0 = -1
                r8 = r0
                goto L89
            L1f:
                r0 = r5
                r1 = r6
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = r0.m42680f(r1)
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L34
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r0.f1387b
                r1 = r7
                boolean r0 = r0.remove(r1)
            L34:
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r0.f1387b
                int r0 = r0.size()
                r9 = r0
                r0 = 0
                r8 = r0
            L41:
                r0 = r8
                r1 = r9
                if (r0 >= r1) goto L64
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r0.f1387b
                r1 = r8
                java.lang.Object r0 = r0.get(r1)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                int r0 = r0.f1388a
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
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r0.f1387b
                r1 = r8
                java.lang.Object r0 = r0.get(r1)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                r7 = r0
                r0 = r5
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r0.f1387b
                r1 = r8
                java.lang.Object r0 = r0.remove(r1)
                r0 = r7
                int r0 = r0.f1388a
                r8 = r0
            L89:
                r0 = r8
                r1 = -1
                if (r0 != r1) goto La1
                r0 = r5
                int[] r0 = r0.f1386a
                r7 = r0
                r0 = r7
                r1 = r6
                r2 = r7
                int r2 = r2.length
                r3 = -1
                java.util.Arrays.fill(r0, r1, r2, r3)
                r0 = r5
                int[] r0 = r0.f1386a
                int r0 = r0.length
                return r0
            La1:
                r0 = r8
                r1 = 1
                int r0 = r0 + r1
                r1 = r5
                int[] r1 = r1.f1386a
                int r1 = r1.length
                int r0 = java.lang.Math.min(r0, r1)
                r8 = r0
                r0 = r5
                int[] r0 = r0.f1386a
                r1 = r6
                r2 = r8
                r3 = -1
                java.util.Arrays.fill(r0, r1, r2, r3)
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.m42679g(int):int");
        }

        /* renamed from: h */
        public void m42678h(int i, int i2) {
            int[] iArr = this.f1386a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m42683c(i3);
            int[] iArr2 = this.f1386a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f1386a, i, i3, -1);
            List<FullSpanItem> list = this.f1387b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f1387b.get(size);
                int i4 = fullSpanItem.f1388a;
                if (i4 >= i) {
                    fullSpanItem.f1388a = i4 + i2;
                }
            }
        }

        /* renamed from: i */
        public void m42677i(int i, int i2) {
            int[] iArr = this.f1386a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m42683c(i3);
            int[] iArr2 = this.f1386a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f1386a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            List<FullSpanItem> list = this.f1387b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f1387b.get(size);
                int i4 = fullSpanItem.f1388a;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f1387b.remove(size);
                    } else {
                        fullSpanItem.f1388a = i4 - i2;
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0349a();

        /* renamed from: a */
        public int f1392a;

        /* renamed from: b */
        public int f1393b;

        /* renamed from: c */
        public int f1394c;

        /* renamed from: d */
        public int[] f1395d;

        /* renamed from: e */
        public int f1396e;

        /* renamed from: f */
        public int[] f1397f;

        /* renamed from: g */
        public List<LazySpanLookup.FullSpanItem> f1398g;

        /* renamed from: h */
        public boolean f1399h;

        /* renamed from: i */
        public boolean f1400i;

        /* renamed from: j */
        public boolean f1401j;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$a.class */
        public class C0349a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f1392a = parcel.readInt();
            this.f1393b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f1394c = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f1395d = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f1396e = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f1397f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f1399h = parcel.readInt() == 1;
            this.f1400i = parcel.readInt() == 1;
            this.f1401j = parcel.readInt() == 1;
            this.f1398g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f1394c = savedState.f1394c;
            this.f1392a = savedState.f1392a;
            this.f1393b = savedState.f1393b;
            this.f1395d = savedState.f1395d;
            this.f1396e = savedState.f1396e;
            this.f1397f = savedState.f1397f;
            this.f1399h = savedState.f1399h;
            this.f1400i = savedState.f1400i;
            this.f1401j = savedState.f1401j;
            this.f1398g = savedState.f1398g;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1392a);
            parcel.writeInt(this.f1393b);
            parcel.writeInt(this.f1394c);
            if (this.f1394c > 0) {
                parcel.writeIntArray(this.f1395d);
            }
            parcel.writeInt(this.f1396e);
            if (this.f1396e > 0) {
                parcel.writeIntArray(this.f1397f);
            }
            parcel.writeInt(this.f1399h ? 1 : 0);
            parcel.writeInt(this.f1400i ? 1 : 0);
            parcel.writeInt(this.f1401j ? 1 : 0);
            parcel.writeList(this.f1398g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    public class RunnableC0350a implements Runnable {
        public RunnableC0350a() {
            StaggeredGridLayoutManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m42700l();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public class C0351b {

        /* renamed from: a */
        public int f1403a;

        /* renamed from: b */
        public int f1404b;

        /* renamed from: c */
        public boolean f1405c;

        /* renamed from: d */
        public boolean f1406d;

        /* renamed from: e */
        public boolean f1407e;

        /* renamed from: f */
        public int[] f1408f;

        public C0351b() {
            StaggeredGridLayoutManager.this = r4;
            m42675b();
        }

        /* renamed from: a */
        public void m42676a() {
            this.f1404b = this.f1405c ? StaggeredGridLayoutManager.this.f1364c.mo3129g() : StaggeredGridLayoutManager.this.f1364c.mo3125k();
        }

        /* renamed from: b */
        public void m42675b() {
            this.f1403a = -1;
            this.f1404b = Integer.MIN_VALUE;
            this.f1405c = false;
            this.f1406d = false;
            this.f1407e = false;
            int[] iArr = this.f1408f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$c.class */
    public static class C0352c extends RecyclerView.C0334p {

        /* renamed from: e */
        public C0353d f1410e;

        /* renamed from: f */
        public boolean f1411f;

        public C0352c(int i, int i2) {
            super(i, i2);
        }

        public C0352c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0352c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0352c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d.class */
    public class C0353d {

        /* renamed from: a */
        public ArrayList<View> f1412a = new ArrayList<>();

        /* renamed from: b */
        public int f1413b = Integer.MIN_VALUE;

        /* renamed from: c */
        public int f1414c = Integer.MIN_VALUE;

        /* renamed from: d */
        public int f1415d = 0;

        /* renamed from: e */
        public final int f1416e;

        public C0353d(int i) {
            StaggeredGridLayoutManager.this = r5;
            this.f1416e = i;
        }

        /* renamed from: a */
        public void m42674a(View view) {
            C0352c m42663l = m42663l(view);
            m42663l.f1410e = this;
            this.f1412a.add(view);
            this.f1414c = Integer.MIN_VALUE;
            if (this.f1412a.size() == 1) {
                this.f1413b = Integer.MIN_VALUE;
            }
            if (m42663l.m42734c() || m42663l.m42735b()) {
                this.f1415d = StaggeredGridLayoutManager.this.f1364c.mo3133c(view) + this.f1415d;
            }
        }

        /* renamed from: b */
        public void m42673b() {
            LazySpanLookup.FullSpanItem m42680f;
            ArrayList<View> arrayList = this.f1412a;
            View view = arrayList.get(arrayList.size() - 1);
            C0352c m42663l = m42663l(view);
            this.f1414c = StaggeredGridLayoutManager.this.f1364c.mo3134b(view);
            if (!m42663l.f1411f || (m42680f = StaggeredGridLayoutManager.this.f1374m.m42680f(m42663l.m42736a())) == null || m42680f.f1389b != 1) {
                return;
            }
            int i = this.f1414c;
            int i2 = this.f1416e;
            int[] iArr = m42680f.f1390c;
            this.f1414c = i + (iArr == null ? 0 : iArr[i2]);
        }

        /* renamed from: c */
        public void m42672c() {
            LazySpanLookup.FullSpanItem m42680f;
            int i = 0;
            View view = this.f1412a.get(0);
            C0352c m42663l = m42663l(view);
            this.f1413b = StaggeredGridLayoutManager.this.f1364c.mo3131e(view);
            if (!m42663l.f1411f || (m42680f = StaggeredGridLayoutManager.this.f1374m.m42680f(m42663l.m42736a())) == null || m42680f.f1389b != -1) {
                return;
            }
            int i2 = this.f1413b;
            int i3 = this.f1416e;
            int[] iArr = m42680f.f1390c;
            if (iArr != null) {
                i = iArr[i3];
            }
            this.f1413b = i2 - i;
        }

        /* renamed from: d */
        public void m42671d() {
            this.f1412a.clear();
            this.f1413b = Integer.MIN_VALUE;
            this.f1414c = Integer.MIN_VALUE;
            this.f1415d = 0;
        }

        /* renamed from: e */
        public int m42670e() {
            return StaggeredGridLayoutManager.this.f1369h ? m42667h(this.f1412a.size() - 1, -1, true) : m42667h(0, this.f1412a.size(), true);
        }

        /* renamed from: f */
        public int m42669f() {
            return StaggeredGridLayoutManager.this.f1369h ? m42667h(0, this.f1412a.size(), true) : m42667h(this.f1412a.size() - 1, -1, true);
        }

        /* renamed from: g */
        public int m42668g(int i, int i2, boolean z, boolean z2, boolean z3) {
            int mo3125k = StaggeredGridLayoutManager.this.f1364c.mo3125k();
            int mo3129g = StaggeredGridLayoutManager.this.f1364c.mo3129g();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f1412a.get(i);
                int mo3131e = StaggeredGridLayoutManager.this.f1364c.mo3131e(view);
                int mo3134b = StaggeredGridLayoutManager.this.f1364c.mo3134b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? mo3131e < mo3129g : mo3131e <= mo3129g;
                if (!z3 ? mo3134b > mo3125k : mo3134b >= mo3125k) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (mo3131e < mo3125k || mo3134b > mo3129g) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else if (mo3131e >= mo3125k && mo3134b <= mo3129g) {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: h */
        public int m42667h(int i, int i2, boolean z) {
            return m42668g(i, i2, false, false, z);
        }

        /* renamed from: i */
        public int m42666i(int i, int i2, boolean z) {
            return m42668g(i, i2, z, true, false);
        }

        /* renamed from: j */
        public int m42665j(int i) {
            int i2 = this.f1414c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f1412a.size() == 0) {
                return i;
            }
            m42673b();
            return this.f1414c;
        }

        /* renamed from: k */
        public View m42664k(int i, int i2) {
            View view;
            View view2 = null;
            if (i2 != -1) {
                int size = this.f1412a.size() - 1;
                View view3 = null;
                while (true) {
                    View view4 = view3;
                    view = view4;
                    if (size < 0) {
                        break;
                    }
                    View view5 = this.f1412a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f1369h) {
                        view = view4;
                        if (staggeredGridLayoutManager.getPosition(view5) >= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager2.f1369h && staggeredGridLayoutManager2.getPosition(view5) <= i) {
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
                int size2 = this.f1412a.size();
                int i3 = 0;
                while (true) {
                    view = view2;
                    if (i3 >= size2) {
                        break;
                    }
                    View view6 = this.f1412a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f1369h) {
                        view = view2;
                        if (staggeredGridLayoutManager3.getPosition(view6) <= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager4.f1369h && staggeredGridLayoutManager4.getPosition(view6) >= i) {
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

        /* renamed from: l */
        public C0352c m42663l(View view) {
            return (C0352c) view.getLayoutParams();
        }

        /* renamed from: m */
        public int m42662m(int i) {
            int i2 = this.f1413b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f1412a.size() == 0) {
                return i;
            }
            m42672c();
            return this.f1413b;
        }

        /* renamed from: n */
        public void m42661n() {
            int size = this.f1412a.size();
            View remove = this.f1412a.remove(size - 1);
            C0352c m42663l = m42663l(remove);
            m42663l.f1410e = null;
            if (m42663l.m42734c() || m42663l.m42735b()) {
                this.f1415d -= StaggeredGridLayoutManager.this.f1364c.mo3133c(remove);
            }
            if (size == 1) {
                this.f1413b = Integer.MIN_VALUE;
            }
            this.f1414c = Integer.MIN_VALUE;
        }

        /* renamed from: o */
        public void m42660o() {
            View remove = this.f1412a.remove(0);
            C0352c m42663l = m42663l(remove);
            m42663l.f1410e = null;
            if (this.f1412a.size() == 0) {
                this.f1414c = Integer.MIN_VALUE;
            }
            if (m42663l.m42734c() || m42663l.m42735b()) {
                this.f1415d -= StaggeredGridLayoutManager.this.f1364c.mo3133c(remove);
            }
            this.f1413b = Integer.MIN_VALUE;
        }

        /* renamed from: p */
        public void m42659p(View view) {
            C0352c m42663l = m42663l(view);
            m42663l.f1410e = this;
            this.f1412a.add(0, view);
            this.f1413b = Integer.MIN_VALUE;
            if (this.f1412a.size() == 1) {
                this.f1414c = Integer.MIN_VALUE;
            }
            if (m42663l.m42734c() || m42663l.m42735b()) {
                this.f1415d = StaggeredGridLayoutManager.this.f1364c.mo3133c(view) + this.f1415d;
            }
        }
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.f1362a = -1;
        this.f1369h = false;
        this.f1370i = false;
        this.f1372k = -1;
        this.f1373l = Integer.MIN_VALUE;
        this.f1374m = new LazySpanLookup();
        this.f1375n = 2;
        this.f1380s = new Rect();
        this.f1381t = new C0351b();
        this.f1382u = false;
        this.f1383v = true;
        this.f1385x = new RunnableC0350a();
        this.f1366e = i2;
        setSpanCount(i);
        this.f1368g = new C25613m();
        this.f1364c = AbstractC25622u.m3135a(this, this.f1366e);
        this.f1365d = AbstractC25622u.m3135a(this, 1 - this.f1366e);
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1362a = -1;
        this.f1369h = false;
        this.f1370i = false;
        this.f1372k = -1;
        this.f1373l = Integer.MIN_VALUE;
        this.f1374m = new LazySpanLookup();
        this.f1375n = 2;
        this.f1380s = new Rect();
        this.f1381t = new C0351b();
        this.f1382u = false;
        this.f1383v = true;
        this.f1385x = new RunnableC0350a();
        RecyclerView.AbstractC0329o.C0333d properties = RecyclerView.AbstractC0329o.getProperties(context, attributeSet, i, i2);
        int i3 = properties.f1310a;
        if (i3 == 0 || i3 == 1) {
            assertNotInLayoutOrScroll(null);
            if (i3 != this.f1366e) {
                this.f1366e = i3;
                AbstractC25622u abstractC25622u = this.f1364c;
                this.f1364c = this.f1365d;
                this.f1365d = abstractC25622u;
                requestLayout();
            }
            setSpanCount(properties.f1311b);
            setReverseLayout(properties.f1312c);
            this.f1368g = new C25613m();
            this.f1364c = AbstractC25622u.m3135a(this, this.f1366e);
            this.f1365d = AbstractC25622u.m3135a(this, 1 - this.f1366e);
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    /* renamed from: A */
    public final void m42709A(RecyclerView.C0341v c0341v, C25613m c25613m) {
        int i;
        if (!c25613m.f71769a || c25613m.f71777i) {
            return;
        }
        if (c25613m.f71770b == 0) {
            if (c25613m.f71773e == -1) {
                m42708B(c0341v, c25613m.f71775g);
                return;
            } else {
                m42707C(c0341v, c25613m.f71774f);
                return;
            }
        }
        int i2 = 1;
        if (c25613m.f71773e != -1) {
            int i3 = c25613m.f71775g;
            int m42665j = this.f1363b[0].m42665j(i3);
            int i4 = 1;
            while (i4 < this.f1362a) {
                int m42665j2 = this.f1363b[i4].m42665j(i3);
                int i5 = m42665j;
                if (m42665j2 < m42665j) {
                    i5 = m42665j2;
                }
                i4++;
                m42665j = i5;
            }
            int i6 = m42665j - c25613m.f71775g;
            m42707C(c0341v, i6 < 0 ? c25613m.f71774f : Math.min(i6, c25613m.f71770b) + c25613m.f71774f);
            return;
        }
        int i7 = c25613m.f71774f;
        int m42662m = this.f1363b[0].m42662m(i7);
        while (true) {
            i = m42662m;
            if (i2 >= this.f1362a) {
                break;
            }
            int m42662m2 = this.f1363b[i2].m42662m(i7);
            int i8 = i;
            if (m42662m2 > i) {
                i8 = m42662m2;
            }
            i2++;
            m42662m = i8;
        }
        int i9 = i7 - i;
        m42708B(c0341v, i9 < 0 ? c25613m.f71775g : c25613m.f71775g - Math.min(i9, c25613m.f71770b));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        if (r12 >= r4.f1362a) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        r4.f1363b[r12].m42661n();
        r12 = r12 + 1;
     */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42708B(androidx.recyclerview.widget.RecyclerView.C0341v r5, int r6) {
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
            n3.b0.a.u r0 = r0.f1364c
            r1 = r8
            int r0 = r0.mo3131e(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r4
            n3.b0.a.u r0 = r0.f1364c
            r1 = r8
            int r0 = r0.mo3121o(r1)
            r1 = r6
            if (r0 < r1) goto La7
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.C0352c) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f1411f
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
            int r1 = r1.f1362a
            if (r0 >= r1) goto L69
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d[] r0 = r0.f1363b
            r1 = r11
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f1412a
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
            int r1 = r1.f1362a
            if (r0 >= r1) goto L9a
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d[] r0 = r0.f1363b
            r1 = r12
            r0 = r0[r1]
            r0.m42661n()
            int r12 = r12 + 1
            goto L69
        L82:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f1410e
            java.util.ArrayList<android.view.View> r0 = r0.f1412a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L92
            return
        L92:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f1410e
            r0.m42661n()
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m42708B(androidx.recyclerview.widget.RecyclerView$v, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r11 >= r4.f1362a) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r4.f1363b[r11].m42660o();
        r11 = r11 + 1;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42707C(androidx.recyclerview.widget.RecyclerView.C0341v r5, int r6) {
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
            n3.b0.a.u r0 = r0.f1364c
            r1 = r8
            int r0 = r0.mo3134b(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r4
            n3.b0.a.u r0 = r0.f1364c
            r1 = r8
            int r0 = r0.mo3122n(r1)
            r1 = r6
            if (r0 > r1) goto L9e
            r0 = r8
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.C0352c) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.f1411f
            if (r0 == 0) goto L7c
            r0 = 0
            r10 = r0
        L3f:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r4
            int r1 = r1.f1362a
            if (r0 >= r1) goto L63
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d[] r0 = r0.f1363b
            r1 = r10
            r0 = r0[r1]
            java.util.ArrayList<android.view.View> r0 = r0.f1412a
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
            int r1 = r1.f1362a
            if (r0 >= r1) goto L94
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d[] r0 = r0.f1363b
            r1 = r11
            r0 = r0[r1]
            r0.m42660o()
            int r11 = r11 + 1
            goto L63
        L7c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f1410e
            java.util.ArrayList<android.view.View> r0 = r0.f1412a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L8c
            return
        L8c:
            r0 = r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r0 = r0.f1410e
            r0.m42660o()
        L94:
            r0 = r4
            r1 = r8
            r2 = r5
            r0.removeAndRecycleView(r1, r2)
            goto L0
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m42707C(androidx.recyclerview.widget.RecyclerView$v, int):void");
    }

    /* renamed from: D */
    public final void m42706D(int i) {
        C25613m c25613m = this.f1368g;
        c25613m.f71773e = i;
        c25613m.f71772d = this.f1370i == (i == -1) ? 1 : -1;
    }

    /* renamed from: E */
    public final void m42705E(int i, int i2) {
        for (int i3 = 0; i3 < this.f1362a; i3++) {
            if (!this.f1363b[i3].f1412a.isEmpty()) {
                m42703G(this.f1363b[i3], i, i2);
            }
        }
    }

    /* renamed from: F */
    public final void m42704F(int i, RecyclerView.C0347z c0347z) {
        int i2;
        int i3;
        int i4;
        C25613m c25613m = this.f1368g;
        c25613m.f71770b = 0;
        c25613m.f71771c = i;
        if (!isSmoothScrolling() || (i4 = c0347z.f1348a) == -1) {
            i3 = 0;
            i2 = 0;
        } else {
            if (this.f1370i == (i4 < i)) {
                i3 = this.f1364c.mo3124l();
                i2 = 0;
            } else {
                i2 = this.f1364c.mo3124l();
                i3 = 0;
            }
        }
        if (getClipToPadding()) {
            this.f1368g.f71774f = this.f1364c.mo3125k() - i2;
            this.f1368g.f71775g = this.f1364c.mo3129g() + i3;
        } else {
            this.f1368g.f71775g = this.f1364c.mo3130f() + i3;
            this.f1368g.f71774f = -i2;
        }
        C25613m c25613m2 = this.f1368g;
        c25613m2.f71776h = false;
        c25613m2.f71769a = true;
        boolean z = false;
        if (this.f1364c.mo3127i() == 0) {
            z = false;
            if (this.f1364c.mo3130f() == 0) {
                z = true;
            }
        }
        c25613m2.f71777i = z;
    }

    /* renamed from: G */
    public final void m42703G(C0353d c0353d, int i, int i2) {
        int i3 = c0353d.f1415d;
        if (i == -1) {
            int i4 = c0353d.f1413b;
            if (i4 == Integer.MIN_VALUE) {
                c0353d.m42672c();
                i4 = c0353d.f1413b;
            }
            if (i4 + i3 > i2) {
                return;
            }
            this.f1371j.set(c0353d.f1416e, false);
            return;
        }
        int i5 = c0353d.f1414c;
        if (i5 == Integer.MIN_VALUE) {
            c0353d.m42673b();
            i5 = c0353d.f1414c;
        }
        if (i5 - i3 < i2) {
            return;
        }
        this.f1371j.set(c0353d.f1416e, false);
    }

    /* renamed from: H */
    public final int m42702H(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f1378q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean canScrollHorizontally() {
        return this.f1366e == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean canScrollVertically() {
        boolean z = true;
        if (this.f1366e != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean checkLayoutParams(RecyclerView.C0334p c0334p) {
        return c0334p instanceof C0352c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.C0347z c0347z, RecyclerView.AbstractC0329o.AbstractC0332c abstractC0332c) {
        int i3;
        int i4;
        int i5;
        if (this.f1366e != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m42686z(i, c0347z);
        int[] iArr = this.f1384w;
        if (iArr == null || iArr.length < this.f1362a) {
            this.f1384w = new int[this.f1362a];
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f1362a) {
                break;
            }
            C25613m c25613m = this.f1368g;
            if (c25613m.f71772d == -1) {
                i5 = c25613m.f71774f;
                i4 = this.f1363b[i6].m42662m(i5);
            } else {
                i5 = this.f1363b[i6].m42665j(c25613m.f71775g);
                i4 = this.f1368g.f71775g;
            }
            int i8 = i5 - i4;
            int i9 = i3;
            if (i8 >= 0) {
                this.f1384w[i3] = i8;
                i9 = i3 + 1;
            }
            i6++;
            i7 = i9;
        }
        Arrays.sort(this.f1384w, 0, i3);
        for (int i10 = 0; i10 < i3; i10++) {
            int i11 = this.f1368g.f71771c;
            if (!(i11 >= 0 && i11 < c0347z.m42710b())) {
                return;
            }
            ((GapWorker.C0301b) abstractC0332c).m42766a(this.f1368g.f71771c, this.f1384w[i10]);
            C25613m c25613m2 = this.f1368g;
            c25613m2.f71771c += c25613m2.f71772d;
        }
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
        return MediaSessionCompat.m43316C(c0347z, this.f1364c, m42697o(!this.f1383v), m42698n(!this.f1383v), this, this.f1383v);
    }

    public final int computeScrollOffset(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        return MediaSessionCompat.m43313D(c0347z, this.f1364c, m42697o(!this.f1383v), m42698n(!this.f1383v), this, this.f1383v, this.f1370i);
    }

    public final int computeScrollRange(RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0) {
            return 0;
        }
        return MediaSessionCompat.m43310E(c0347z, this.f1364c, m42697o(!this.f1383v), m42698n(!this.f1383v), this, this.f1383v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0344y.AbstractC0346b
    public PointF computeScrollVectorForPosition(int i) {
        int m42701k = m42701k(i);
        PointF pointF = new PointF();
        if (m42701k == 0) {
            return null;
        }
        if (this.f1366e == 0) {
            pointF.x = m42701k;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = m42701k;
        }
        return pointF;
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

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public RecyclerView.C0334p generateDefaultLayoutParams() {
        return this.f1366e == 0 ? new C0352c(-2, -1) : new C0352c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public RecyclerView.C0334p generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C0352c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public RecyclerView.C0334p generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0352c((ViewGroup.MarginLayoutParams) layoutParams) : new C0352c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean isAutoMeasureEnabled() {
        return this.f1375n != 0;
    }

    public boolean isLayoutRTL() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    public final int m42701k(int i) {
        int i2 = -1;
        if (getChildCount() == 0) {
            if (this.f1370i) {
                i2 = 1;
            }
            return i2;
        }
        if ((i < m42694r()) == this.f1370i) {
            i2 = 1;
        }
        return i2;
    }

    /* renamed from: l */
    public boolean m42700l() {
        int i;
        int i2;
        if (getChildCount() == 0 || this.f1375n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f1370i) {
            i2 = m42693s();
            i = m42694r();
        } else {
            i2 = m42694r();
            i = m42693s();
        }
        if (i2 == 0 && m42689w() != null) {
            this.f1374m.m42684b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        } else if (!this.f1382u) {
            return false;
        } else {
            int i3 = this.f1370i ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem m42681e = this.f1374m.m42681e(i2, i4, i3, true);
            if (m42681e == null) {
                this.f1382u = false;
                this.f1374m.m42682d(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem m42681e2 = this.f1374m.m42681e(i2, m42681e.f1388a, i3 * (-1), true);
            if (m42681e2 == null) {
                this.f1374m.m42682d(m42681e.f1388a);
            } else {
                this.f1374m.m42682d(m42681e2.f1388a + 1);
            }
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
    }

    /* renamed from: m */
    public final int m42699m(RecyclerView.C0341v c0341v, C25613m c25613m, RecyclerView.C0347z c0347z) {
        boolean z;
        C0353d c0353d;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        C0353d c0353d2;
        this.f1371j.set(0, this.f1362a, true);
        int i7 = this.f1368g.f71777i ? c25613m.f71773e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c25613m.f71773e == 1 ? c25613m.f71775g + c25613m.f71770b : c25613m.f71774f - c25613m.f71770b;
        m42705E(c25613m.f71773e, i7);
        int mo3129g = this.f1370i ? this.f1364c.mo3129g() : this.f1364c.mo3125k();
        int i8 = 0;
        boolean z3 = false;
        while (true) {
            z = z3;
            int i9 = c25613m.f71771c;
            if (((i9 < 0 || i9 >= c0347z.m42710b()) ? i8 : 1) == 0 || (!this.f1368g.f71777i && this.f1371j.isEmpty())) {
                break;
            }
            View m42726e = c0341v.m42726e(c25613m.f71771c);
            c25613m.f71771c += c25613m.f71772d;
            C0352c c0352c = (C0352c) m42726e.getLayoutParams();
            int m42736a = c0352c.m42736a();
            int[] iArr = this.f1374m.f1386a;
            int i10 = (iArr == null || m42736a >= iArr.length) ? -1 : iArr[m42736a];
            int i11 = i10 == -1 ? 1 : i8;
            if (i11 != 0) {
                if (c0352c.f1411f) {
                    c0353d = this.f1363b[i8];
                } else {
                    if (m42687y(c25613m.f71773e)) {
                        i8 = this.f1362a - 1;
                        i6 = -1;
                        i5 = -1;
                    } else {
                        i6 = this.f1362a;
                        i5 = 1;
                    }
                    C0353d c0353d3 = null;
                    if (c25613m.f71773e != 1) {
                        int mo3129g2 = this.f1364c.mo3129g();
                        int i12 = Integer.MIN_VALUE;
                        C0353d c0353d4 = null;
                        int i13 = i8;
                        while (true) {
                            c0353d2 = c0353d4;
                            if (i13 == i6) {
                                break;
                            }
                            C0353d c0353d5 = this.f1363b[i13];
                            int m42662m = c0353d5.m42662m(mo3129g2);
                            int i14 = i12;
                            if (m42662m > i12) {
                                c0353d4 = c0353d5;
                                i14 = m42662m;
                            }
                            i13 += i5;
                            i12 = i14;
                        }
                    } else {
                        int mo3125k = this.f1364c.mo3125k();
                        int i15 = Integer.MAX_VALUE;
                        while (true) {
                            int i16 = i15;
                            c0353d2 = c0353d3;
                            if (i8 == i6) {
                                break;
                            }
                            C0353d c0353d6 = this.f1363b[i8];
                            int m42665j = c0353d6.m42665j(mo3125k);
                            int i17 = i16;
                            if (m42665j < i16) {
                                c0353d3 = c0353d6;
                                i17 = m42665j;
                            }
                            i8 += i5;
                            i15 = i17;
                        }
                    }
                    c0353d = c0353d2;
                }
                LazySpanLookup lazySpanLookup = this.f1374m;
                lazySpanLookup.m42683c(m42736a);
                lazySpanLookup.f1386a[m42736a] = c0353d.f1416e;
            } else {
                c0353d = this.f1363b[i10];
            }
            c0352c.f1410e = c0353d;
            if (c25613m.f71773e == 1) {
                addView(m42726e);
            } else {
                addView(m42726e, 0);
            }
            if (c0352c.f1411f) {
                if (this.f1366e == 1) {
                    measureChildWithDecorationsAndMargin(m42726e, this.f1379r, RecyclerView.AbstractC0329o.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) c0352c).height, true), false);
                } else {
                    measureChildWithDecorationsAndMargin(m42726e, RecyclerView.AbstractC0329o.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) c0352c).width, true), this.f1379r, false);
                }
            } else if (this.f1366e == 1) {
                measureChildWithDecorationsAndMargin(m42726e, RecyclerView.AbstractC0329o.getChildMeasureSpec(this.f1367f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) c0352c).width, false), RecyclerView.AbstractC0329o.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) c0352c).height, true), false);
            } else {
                measureChildWithDecorationsAndMargin(m42726e, RecyclerView.AbstractC0329o.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) c0352c).width, true), RecyclerView.AbstractC0329o.getChildMeasureSpec(this.f1367f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) c0352c).height, false), false);
            }
            if (c25613m.f71773e == 1) {
                int m42692t = c0352c.f1411f ? m42692t(mo3129g) : c0353d.m42665j(mo3129g);
                int mo3133c = this.f1364c.mo3133c(m42726e);
                if (i11 != 0 && c0352c.f1411f) {
                    LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
                    fullSpanItem.f1390c = new int[this.f1362a];
                    for (int i18 = 0; i18 < this.f1362a; i18++) {
                        fullSpanItem.f1390c[i18] = m42692t - this.f1363b[i18].m42665j(m42692t);
                    }
                    fullSpanItem.f1389b = -1;
                    fullSpanItem.f1388a = m42736a;
                    this.f1374m.m42685a(fullSpanItem);
                }
                i2 = m42692t;
                i = mo3133c + m42692t;
            } else {
                int m42691u = c0352c.f1411f ? m42691u(mo3129g) : c0353d.m42662m(mo3129g);
                int mo3133c2 = this.f1364c.mo3133c(m42726e);
                if (i11 != 0 && c0352c.f1411f) {
                    LazySpanLookup.FullSpanItem fullSpanItem2 = new LazySpanLookup.FullSpanItem();
                    fullSpanItem2.f1390c = new int[this.f1362a];
                    for (int i19 = 0; i19 < this.f1362a; i19++) {
                        fullSpanItem2.f1390c[i19] = this.f1363b[i19].m42662m(m42691u) - m42691u;
                    }
                    fullSpanItem2.f1389b = 1;
                    fullSpanItem2.f1388a = m42736a;
                    this.f1374m.m42685a(fullSpanItem2);
                }
                i = m42691u;
                i2 = m42691u - mo3133c2;
            }
            if (c0352c.f1411f && c25613m.f71772d == -1) {
                if (i11 != 0) {
                    this.f1382u = true;
                } else {
                    if (c25613m.f71773e == 1) {
                        int m42665j2 = this.f1363b[0].m42665j(Integer.MIN_VALUE);
                        for (int i20 = 1; i20 < this.f1362a; i20++) {
                            if (this.f1363b[i20].m42665j(Integer.MIN_VALUE) != m42665j2) {
                                z2 = false;
                                break;
                            }
                        }
                        z2 = true;
                    } else {
                        int m42662m2 = this.f1363b[0].m42662m(Integer.MIN_VALUE);
                        for (int i21 = 1; i21 < this.f1362a; i21++) {
                            if (this.f1363b[i21].m42662m(Integer.MIN_VALUE) != m42662m2) {
                                z2 = false;
                                break;
                            }
                        }
                        z2 = true;
                    }
                    if (!z2) {
                        LazySpanLookup.FullSpanItem m42680f = this.f1374m.m42680f(m42736a);
                        if (m42680f != null) {
                            m42680f.f1391d = true;
                        }
                        this.f1382u = true;
                    }
                }
            }
            if (c25613m.f71773e == 1) {
                if (c0352c.f1411f) {
                    int i22 = this.f1362a;
                    while (true) {
                        i22--;
                        if (i22 < 0) {
                            break;
                        }
                        this.f1363b[i22].m42674a(m42726e);
                    }
                } else {
                    c0352c.f1410e.m42674a(m42726e);
                }
            } else if (c0352c.f1411f) {
                int i23 = this.f1362a;
                while (true) {
                    i23--;
                    if (i23 < 0) {
                        break;
                    }
                    this.f1363b[i23].m42659p(m42726e);
                }
            } else {
                c0352c.f1410e.m42659p(m42726e);
            }
            if (!isLayoutRTL() || this.f1366e != 1) {
                int mo3125k2 = c0352c.f1411f ? this.f1365d.mo3125k() : (c0353d.f1416e * this.f1367f) + this.f1365d.mo3125k();
                int mo3133c3 = this.f1365d.mo3133c(m42726e);
                int i24 = mo3125k2;
                i4 = mo3133c3 + mo3125k2;
                i3 = i24;
            } else {
                int mo3129g3 = c0352c.f1411f ? this.f1365d.mo3129g() : this.f1365d.mo3129g() - (((this.f1362a - 1) - c0353d.f1416e) * this.f1367f);
                i3 = mo3129g3 - this.f1365d.mo3133c(m42726e);
                i4 = mo3129g3;
            }
            if (this.f1366e == 1) {
                layoutDecoratedWithMargins(m42726e, i3, i2, i4, i);
            } else {
                layoutDecoratedWithMargins(m42726e, i2, i3, i, i4);
            }
            if (c0352c.f1411f) {
                m42705E(this.f1368g.f71773e, i7);
            } else {
                m42703G(c0353d, this.f1368g.f71773e, i7);
            }
            m42709A(c0341v, this.f1368g);
            if (this.f1368g.f71776h && m42726e.hasFocusable()) {
                if (c0352c.f1411f) {
                    this.f1371j.clear();
                } else {
                    this.f1371j.set(c0353d.f1416e, false);
                }
            }
            i8 = 0;
            z3 = true;
        }
        if (!z) {
            m42709A(c0341v, this.f1368g);
        }
        int mo3125k3 = this.f1368g.f71773e == -1 ? this.f1364c.mo3125k() - m42691u(this.f1364c.mo3125k()) : m42692t(this.f1364c.mo3129g()) - this.f1364c.mo3129g();
        if (mo3125k3 > 0) {
            i8 = Math.min(c25613m.f71770b, mo3125k3);
        }
        return i8;
    }

    public final void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        calculateItemDecorationsForChild(view, this.f1380s);
        C0352c c0352c = (C0352c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0352c).leftMargin;
        Rect rect = this.f1380s;
        int m42702H = m42702H(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) c0352c).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) c0352c).topMargin;
        Rect rect2 = this.f1380s;
        int m42702H2 = m42702H(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) c0352c).bottomMargin + rect2.bottom);
        if (z ? shouldReMeasureChild(view, m42702H, m42702H2, c0352c) : shouldMeasureChild(view, m42702H, m42702H2, c0352c)) {
            view.measure(m42702H, m42702H2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
        return r0;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m42698n(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            n3.b0.a.u r0 = r0.f1364c
            int r0 = r0.mo3125k()
            r5 = r0
            r0 = r3
            n3.b0.a.u r0 = r0.f1364c
            int r0 = r0.mo3129g()
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
            n3.b0.a.u r0 = r0.f1364c
            r1 = r9
            int r0 = r0.mo3131e(r1)
            r10 = r0
            r0 = r3
            n3.b0.a.u r0 = r0.f1364c
            r1 = r9
            int r0 = r0.mo3134b(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m42698n(boolean):android.view.View");
    }

    /* renamed from: o */
    public View m42697o(boolean z) {
        int mo3125k = this.f1364c.mo3125k();
        int mo3129g = this.f1364c.mo3129g();
        int childCount = getChildCount();
        View view = null;
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            int mo3131e = this.f1364c.mo3131e(childAt);
            View view2 = view;
            if (this.f1364c.mo3134b(childAt) > mo3125k) {
                if (mo3131e >= mo3129g) {
                    view2 = view;
                } else if (mo3131e >= mo3125k || !z) {
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

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.f1362a; i2++) {
            C0353d c0353d = this.f1363b[i2];
            int i3 = c0353d.f1413b;
            if (i3 != Integer.MIN_VALUE) {
                c0353d.f1413b = i3 + i;
            }
            int i4 = c0353d.f1414c;
            if (i4 != Integer.MIN_VALUE) {
                c0353d.f1414c = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.f1362a; i2++) {
            C0353d c0353d = this.f1363b[i2];
            int i3 = c0353d.f1413b;
            if (i3 != Integer.MIN_VALUE) {
                c0353d.f1413b = i3 + i;
            }
            int i4 = c0353d.f1414c;
            if (i4 != Integer.MIN_VALUE) {
                c0353d.f1414c = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onAdapterChanged(RecyclerView.AbstractC0317g abstractC0317g, RecyclerView.AbstractC0317g abstractC0317g2) {
        this.f1374m.m42684b();
        for (int i = 0; i < this.f1362a; i++) {
            this.f1363b[i].m42671d();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0341v c0341v) {
        super.onDetachedFromWindow(recyclerView, c0341v);
        removeCallbacks(this.f1385x);
        for (int i = 0; i < this.f1362a; i++) {
            this.f1363b[i].m42671d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
        if (r5.f1366e == 1) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
        if (r5.f1366e == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
        if (isLayoutRTL() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0097, code lost:
        if (isLayoutRTL() == false) goto L28;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.C0341v r8, androidx.recyclerview.widget.RecyclerView.C0347z r9) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$z):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View m42697o = m42697o(false);
            View m42698n = m42698n(false);
            if (m42697o == null || m42698n == null) {
                return;
            }
            int position = getPosition(m42697o);
            int position2 = getPosition(m42698n);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
                return;
            }
            accessibilityEvent.setFromIndex(position2);
            accessibilityEvent.setToIndex(position);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        m42690v(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f1374m.m42684b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        m42690v(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        m42690v(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        m42690v(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onLayoutChildren(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        m42688x(c0341v, c0347z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onLayoutCompleted(RecyclerView.C0347z c0347z) {
        super.onLayoutCompleted(c0347z);
        this.f1372k = -1;
        this.f1373l = Integer.MIN_VALUE;
        this.f1378q = null;
        this.f1381t.m42675b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f1378q = savedState;
            if (this.f1372k != -1) {
                savedState.f1395d = null;
                savedState.f1394c = 0;
                savedState.f1392a = -1;
                savedState.f1393b = -1;
                savedState.f1395d = null;
                savedState.f1394c = 0;
                savedState.f1396e = 0;
                savedState.f1397f = null;
                savedState.f1398g = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public Parcelable onSaveInstanceState() {
        int i;
        int i2;
        int i3;
        int[] iArr;
        SavedState savedState = this.f1378q;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.f1399h = this.f1369h;
        savedState2.f1400i = this.f1376o;
        savedState2.f1401j = this.f1377p;
        LazySpanLookup lazySpanLookup = this.f1374m;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f1386a) == null) {
            savedState2.f1396e = 0;
        } else {
            savedState2.f1397f = iArr;
            savedState2.f1396e = iArr.length;
            savedState2.f1398g = lazySpanLookup.f1387b;
        }
        if (getChildCount() > 0) {
            savedState2.f1392a = this.f1376o ? m42693s() : m42694r();
            View m42698n = this.f1370i ? m42698n(true) : m42697o(true);
            savedState2.f1393b = m42698n == null ? -1 : getPosition(m42698n);
            int i4 = this.f1362a;
            savedState2.f1394c = i4;
            savedState2.f1395d = new int[i4];
            for (int i5 = 0; i5 < this.f1362a; i5++) {
                if (this.f1376o) {
                    i2 = this.f1363b[i5].m42665j(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f1364c.mo3129g();
                        i = i2 - i3;
                        savedState2.f1395d[i5] = i;
                    } else {
                        savedState2.f1395d[i5] = i;
                    }
                } else {
                    i2 = this.f1363b[i5].m42662m(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f1364c.mo3125k();
                        i = i2 - i3;
                        savedState2.f1395d[i5] = i;
                    } else {
                        savedState2.f1395d[i5] = i;
                    }
                }
            }
        } else {
            savedState2.f1392a = -1;
            savedState2.f1393b = -1;
            savedState2.f1394c = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            m42700l();
        }
    }

    /* renamed from: p */
    public final void m42696p(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z) {
        int mo3129g;
        int m42692t = m42692t(Integer.MIN_VALUE);
        if (m42692t != Integer.MIN_VALUE && (mo3129g = this.f1364c.mo3129g() - m42692t) > 0) {
            int i = mo3129g - (-scrollBy(-mo3129g, c0341v, c0347z));
            if (!z || i <= 0) {
                return;
            }
            this.f1364c.mo3120p(i);
        }
    }

    /* renamed from: q */
    public final void m42695q(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z, boolean z) {
        int mo3125k;
        int m42691u = m42691u(Integer.MAX_VALUE);
        if (m42691u != Integer.MAX_VALUE && (mo3125k = m42691u - this.f1364c.mo3125k()) > 0) {
            int scrollBy = mo3125k - scrollBy(mo3125k, c0341v, c0347z);
            if (!z || scrollBy <= 0) {
                return;
            }
            this.f1364c.mo3120p(-scrollBy);
        }
    }

    /* renamed from: r */
    public int m42694r() {
        int i = 0;
        if (getChildCount() != 0) {
            i = getPosition(getChildAt(0));
        }
        return i;
    }

    public final void resolveShouldLayoutReverse() {
        if (this.f1366e == 1 || !isLayoutRTL()) {
            this.f1370i = this.f1369h;
        } else {
            this.f1370i = !this.f1369h;
        }
    }

    /* renamed from: s */
    public int m42693s() {
        int childCount = getChildCount();
        return childCount == 0 ? 0 : getPosition(getChildAt(childCount - 1));
    }

    public int scrollBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m42686z(i, c0347z);
        int m42699m = m42699m(c0341v, this.f1368g, c0347z);
        if (this.f1368g.f71770b >= m42699m) {
            i = i < 0 ? -m42699m : m42699m;
        }
        this.f1364c.mo3120p(-i);
        this.f1376o = this.f1370i;
        C25613m c25613m = this.f1368g;
        c25613m.f71770b = 0;
        m42709A(c0341v, c25613m);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int scrollHorizontallyBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        return scrollBy(i, c0341v, c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void scrollToPosition(int i) {
        SavedState savedState = this.f1378q;
        if (savedState != null && savedState.f1392a != i) {
            savedState.f1395d = null;
            savedState.f1394c = 0;
            savedState.f1392a = -1;
            savedState.f1393b = -1;
        }
        this.f1372k = i;
        this.f1373l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public int scrollVerticallyBy(int i, RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
        return scrollBy(i, c0341v, c0347z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f1366e == 1) {
            int chooseSize = RecyclerView.AbstractC0329o.chooseSize(i2, rect.height() + paddingBottom, getMinimumHeight());
            int chooseSize2 = RecyclerView.AbstractC0329o.chooseSize(i, (this.f1367f * this.f1362a) + paddingRight, getMinimumWidth());
            i4 = chooseSize;
            i3 = chooseSize2;
        } else {
            int chooseSize3 = RecyclerView.AbstractC0329o.chooseSize(i, rect.width() + paddingRight, getMinimumWidth());
            int chooseSize4 = RecyclerView.AbstractC0329o.chooseSize(i2, (this.f1367f * this.f1362a) + paddingBottom, getMinimumHeight());
            i3 = chooseSize3;
            i4 = chooseSize4;
        }
        setMeasuredDimension(i3, i4);
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f1378q;
        if (savedState != null && savedState.f1399h != z) {
            savedState.f1399h = z;
        }
        this.f1369h = z;
        requestLayout();
    }

    public void setSpanCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.f1362a) {
            this.f1374m.m42684b();
            requestLayout();
            this.f1362a = i;
            this.f1371j = new BitSet(this.f1362a);
            this.f1363b = new C0353d[this.f1362a];
            for (int i2 = 0; i2 < this.f1362a; i2++) {
                this.f1363b[i2] = new C0353d(i2);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0347z c0347z, int i) {
        C25614n c25614n = new C25614n(recyclerView.getContext());
        c25614n.f1333a = i;
        startSmoothScroll(c25614n);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0329o
    public boolean supportsPredictiveItemAnimations() {
        return this.f1378q == null;
    }

    /* renamed from: t */
    public final int m42692t(int i) {
        int m42665j = this.f1363b[0].m42665j(i);
        int i2 = 1;
        while (i2 < this.f1362a) {
            int m42665j2 = this.f1363b[i2].m42665j(i);
            int i3 = m42665j;
            if (m42665j2 > m42665j) {
                i3 = m42665j2;
            }
            i2++;
            m42665j = i3;
        }
        return m42665j;
    }

    /* renamed from: u */
    public final int m42691u(int i) {
        int m42662m = this.f1363b[0].m42662m(i);
        int i2 = 1;
        while (i2 < this.f1362a) {
            int m42662m2 = this.f1363b[i2].m42662m(i);
            int i3 = m42662m;
            if (m42662m2 < m42662m) {
                i3 = m42662m2;
            }
            i2++;
            m42662m = i3;
        }
        return m42662m;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42690v(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f1370i
            if (r0 == 0) goto L10
            r0 = r4
            int r0 = r0.m42693s()
            r8 = r0
            goto L16
        L10:
            r0 = r4
            int r0 = r0.m42694r()
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f1374m
            r1 = r10
            int r0 = r0.m42679g(r1)
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
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f1374m
            r1 = r5
            r2 = 1
            r0.m42677i(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f1374m
            r1 = r6
            r2 = 1
            r0.m42678h(r1, r2)
            goto L83
        L6e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f1374m
            r1 = r5
            r2 = r6
            r0.m42677i(r1, r2)
            goto L83
        L7a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f1374m
            r1 = r5
            r2 = r6
            r0.m42678h(r1, r2)
        L83:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L8b
            return
        L8b:
            r0 = r4
            boolean r0 = r0.f1370i
            if (r0 == 0) goto L9a
            r0 = r4
            int r0 = r0.m42694r()
            r5 = r0
            goto L9f
        L9a:
            r0 = r4
            int r0 = r0.m42693s()
            r5 = r0
        L9f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto La9
            r0 = r4
            r0.requestLayout()
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m42690v(int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0180, code lost:
        if (r0 == r0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01aa, code lost:
        if (r0 == r0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01ad, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01b3, code lost:
        r14 = false;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m42689w() {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m42689w():android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0896  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x08b3  */
    /* JADX WARN: Removed duplicated region for block: B:289:? A[RETURN, SYNTHETIC] */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42688x(androidx.recyclerview.widget.RecyclerView.C0341v r6, androidx.recyclerview.widget.RecyclerView.C0347z r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 2242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m42688x(androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$z, boolean):void");
    }

    /* renamed from: y */
    public final boolean m42687y(int i) {
        if (this.f1366e == 0) {
            return (i == -1) != this.f1370i;
        }
        return ((i == -1) == this.f1370i) == isLayoutRTL();
    }

    /* renamed from: z */
    public void m42686z(int i, RecyclerView.C0347z c0347z) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m42693s();
            i2 = 1;
        } else {
            i3 = m42694r();
            i2 = -1;
        }
        this.f1368g.f71769a = true;
        m42704F(i3, c0347z);
        m42706D(i2);
        C25613m c25613m = this.f1368g;
        c25613m.f71771c = i3 + c25613m.f71772d;
        c25613m.f71770b = Math.abs(i);
    }
}
