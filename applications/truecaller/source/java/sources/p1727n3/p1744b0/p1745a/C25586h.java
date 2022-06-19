package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b0.a.h */
/* loaded from: classes-dex2jar.jar:n3/b0/a/h.class */
public class C25586h {

    /* renamed from: a */
    public static final Comparator<C25589c> f71650a = new C25587a();

    /* renamed from: n3.b0.a.h$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$a.class */
    public class C25587a implements Comparator<C25589c> {
        @Override // java.util.Comparator
        public int compare(C25589c c25589c, C25589c c25589c2) {
            return c25589c.f71651a - c25589c2.f71651a;
        }
    }

    /* renamed from: n3.b0.a.h$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$b.class */
    public static abstract class AbstractC25588b {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* renamed from: n3.b0.a.h$c */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$c.class */
    public static class C25589c {

        /* renamed from: a */
        public final int f71651a;

        /* renamed from: b */
        public final int f71652b;

        /* renamed from: c */
        public final int f71653c;

        public C25589c(int i, int i2, int i3) {
            this.f71651a = i;
            this.f71652b = i2;
            this.f71653c = i3;
        }
    }

    /* renamed from: n3.b0.a.h$d */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$d.class */
    public static class C25590d {

        /* renamed from: a */
        public final List<C25589c> f71654a;

        /* renamed from: b */
        public final int[] f71655b;

        /* renamed from: c */
        public final int[] f71656c;

        /* renamed from: d */
        public final AbstractC25588b f71657d;

        /* renamed from: e */
        public final int f71658e;

        /* renamed from: f */
        public final int f71659f;

        /* renamed from: g */
        public final boolean f71660g;

        public C25590d(AbstractC25588b abstractC25588b, List<C25589c> list, int[] iArr, int[] iArr2, boolean z) {
            int i;
            C25589c c25589c;
            int i2;
            this.f71654a = list;
            this.f71655b = iArr;
            this.f71656c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f71657d = abstractC25588b;
            int oldListSize = abstractC25588b.getOldListSize();
            this.f71658e = oldListSize;
            int newListSize = abstractC25588b.getNewListSize();
            this.f71659f = newListSize;
            this.f71660g = z;
            C25589c c25589c2 = list.isEmpty() ? null : list.get(0);
            if (c25589c2 == null || c25589c2.f71651a != 0 || c25589c2.f71652b != 0) {
                list.add(0, new C25589c(0, 0, 0));
            }
            list.add(new C25589c(oldListSize, newListSize, 0));
            for (C25589c c25589c3 : list) {
                for (int i3 = 0; i3 < c25589c3.f71653c; i3++) {
                    int i4 = c25589c3.f71651a + i3;
                    int i5 = c25589c3.f71652b + i3;
                    int i6 = this.f71657d.areContentsTheSame(i4, i5) ? 1 : 2;
                    this.f71655b[i4] = (i5 << 4) | i6;
                    this.f71656c[i5] = (i4 << 4) | i6;
                }
            }
            if (this.f71660g) {
                Iterator<C25589c> it = this.f71654a.iterator();
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (!it.hasNext()) {
                        return;
                    }
                    C25589c next = it.next();
                    int i9 = i8;
                    while (true) {
                        i = next.f71651a;
                        if (i9 < i) {
                            if (this.f71655b[i9] == 0) {
                                int size = this.f71654a.size();
                                int i10 = 0;
                                int i11 = 0;
                                while (true) {
                                    if (i10 < size) {
                                        c25589c = this.f71654a.get(i10);
                                        while (true) {
                                            i2 = c25589c.f71652b;
                                            if (i11 < i2) {
                                                if (this.f71656c[i11] != 0 || !this.f71657d.areItemsTheSame(i9, i11)) {
                                                    i11++;
                                                } else {
                                                    int i12 = this.f71657d.areContentsTheSame(i9, i11) ? 8 : 4;
                                                    this.f71655b[i9] = (i11 << 4) | i12;
                                                    this.f71656c[i11] = i12 | (i9 << 4);
                                                }
                                            }
                                        }
                                    }
                                    i11 = c25589c.f71653c + i2;
                                    i10++;
                                }
                            }
                            i9++;
                        }
                    }
                    i7 = next.f71653c + i;
                }
            }
        }

        /* renamed from: d */
        public static C25592f m3177d(Collection<C25592f> collection, int i, boolean z) {
            C25592f c25592f;
            Iterator<C25592f> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c25592f = null;
                    break;
                }
                c25592f = it.next();
                if (c25592f.f71661a == i && c25592f.f71663c == z) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                C25592f next = it.next();
                if (z) {
                    next.f71662b--;
                } else {
                    next.f71662b++;
                }
            }
            return c25592f;
        }

        /* renamed from: a */
        public int m3180a(int i) {
            if (i < 0 || i >= this.f71658e) {
                StringBuilder m8720E = C22128a.m8720E("Index out of bounds - passed position = ", i, ", old list size = ");
                m8720E.append(this.f71658e);
                throw new IndexOutOfBoundsException(m8720E.toString());
            }
            int i2 = this.f71655b[i];
            if ((i2 & 15) != 0) {
                return i2 >> 4;
            }
            return -1;
        }

        /* renamed from: b */
        public void m3179b(AbstractC25617q abstractC25617q) {
            int i;
            C25582e c25582e = abstractC25617q instanceof C25582e ? (C25582e) abstractC25617q : new C25582e(abstractC25617q);
            int i2 = this.f71658e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i3 = this.f71658e;
            int i4 = this.f71659f;
            for (int size = this.f71654a.size() - 1; size >= 0; size--) {
                C25589c c25589c = this.f71654a.get(size);
                int i5 = c25589c.f71651a;
                int i6 = c25589c.f71653c;
                int i7 = c25589c.f71652b;
                int i8 = i3;
                int i9 = i2;
                while (true) {
                    i2 = i9;
                    i = i4;
                    if (i8 > i5 + i6) {
                        int i10 = i8 - 1;
                        int i11 = this.f71655b[i10];
                        if ((i11 & 12) != 0) {
                            int i12 = i11 >> 4;
                            C25592f m3177d = m3177d(arrayDeque, i12, false);
                            if (m3177d != null) {
                                int i13 = (i9 - m3177d.f71662b) - 1;
                                c25582e.onMoved(i10, i13);
                                i8 = i10;
                                if ((i11 & 4) != 0) {
                                    c25582e.onChanged(i13, 1, this.f71657d.getChangePayload(i10, i12));
                                    i8 = i10;
                                }
                            } else {
                                arrayDeque.add(new C25592f(i10, (i9 - i10) - 1, true));
                                i8 = i10;
                            }
                        } else {
                            c25582e.onRemoved(i10, 1);
                            i9--;
                            i8 = i10;
                        }
                    }
                }
                while (i > i7 + i6) {
                    int i14 = i - 1;
                    int i15 = this.f71656c[i14];
                    if ((i15 & 12) != 0) {
                        int i16 = i15 >> 4;
                        C25592f m3177d2 = m3177d(arrayDeque, i16, true);
                        if (m3177d2 == null) {
                            arrayDeque.add(new C25592f(i14, i2 - i8, false));
                            i = i14;
                        } else {
                            c25582e.onMoved((i2 - m3177d2.f71662b) - 1, i8);
                            i = i14;
                            if ((i15 & 4) != 0) {
                                c25582e.onChanged(i8, 1, this.f71657d.getChangePayload(i16, i14));
                                i = i14;
                            }
                        }
                    } else {
                        c25582e.onInserted(i8, 1);
                        i2++;
                        i = i14;
                    }
                }
                int i17 = c25589c.f71651a;
                int i18 = c25589c.f71652b;
                for (int i19 = 0; i19 < c25589c.f71653c; i19++) {
                    if ((this.f71655b[i17] & 15) == 2) {
                        c25582e.onChanged(i17, 1, this.f71657d.getChangePayload(i17, i18));
                    }
                    i17++;
                    i18++;
                }
                i3 = c25589c.f71651a;
                i4 = c25589c.f71652b;
            }
            c25582e.m3203a();
        }

        /* renamed from: c */
        public void m3178c(RecyclerView.AbstractC0317g abstractC0317g) {
            m3179b(new C25570b(abstractC0317g));
        }
    }

    /* renamed from: n3.b0.a.h$e */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$e.class */
    public static abstract class AbstractC25591e<T> {
        public abstract boolean areContentsTheSame(T t, T t2);

        public abstract boolean areItemsTheSame(T t, T t2);

        public Object getChangePayload(T t, T t2) {
            return null;
        }
    }

    /* renamed from: n3.b0.a.h$f */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$f.class */
    public static class C25592f {

        /* renamed from: a */
        public int f71661a;

        /* renamed from: b */
        public int f71662b;

        /* renamed from: c */
        public boolean f71663c;

        public C25592f(int i, int i2, boolean z) {
            this.f71661a = i;
            this.f71662b = i2;
            this.f71663c = z;
        }
    }

    /* renamed from: n3.b0.a.h$g */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$g.class */
    public static class C25593g {

        /* renamed from: a */
        public int f71664a;

        /* renamed from: b */
        public int f71665b;

        /* renamed from: c */
        public int f71666c;

        /* renamed from: d */
        public int f71667d;

        public C25593g() {
        }

        public C25593g(int i, int i2, int i3, int i4) {
            this.f71664a = i;
            this.f71665b = i2;
            this.f71666c = i3;
            this.f71667d = i4;
        }

        /* renamed from: a */
        public int m3176a() {
            return this.f71667d - this.f71666c;
        }

        /* renamed from: b */
        public int m3175b() {
            return this.f71665b - this.f71664a;
        }
    }

    /* renamed from: n3.b0.a.h$h */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/h$h.class */
    public static class C25594h {

        /* renamed from: a */
        public int f71668a;

        /* renamed from: b */
        public int f71669b;

        /* renamed from: c */
        public int f71670c;

        /* renamed from: d */
        public int f71671d;

        /* renamed from: e */
        public boolean f71672e;

        /* renamed from: a */
        public int m3174a() {
            return Math.min(this.f71670c - this.f71668a, this.f71671d - this.f71669b);
        }
    }

    /* renamed from: a */
    public static C25590d m3181a(AbstractC25588b abstractC25588b, boolean z) {
        ArrayList arrayList;
        C25594h c25594h;
        ArrayList arrayList2;
        C25593g c25593g;
        C25589c c25589c;
        boolean z2;
        C25594h c25594h2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int oldListSize = abstractC25588b.getOldListSize();
        int newListSize = abstractC25588b.getNewListSize();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new C25593g(0, oldListSize, 0, newListSize));
        int i7 = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        int[] iArr = new int[i7];
        int i8 = i7 / 2;
        int[] iArr2 = new int[i7];
        ArrayList arrayList5 = new ArrayList();
        while (!arrayList4.isEmpty()) {
            C25593g c25593g2 = (C25593g) arrayList4.remove(arrayList4.size() - 1);
            ArrayList arrayList6 = arrayList5;
            ArrayList arrayList7 = arrayList4;
            C25593g c25593g3 = c25593g2;
            if (c25593g2.m3175b() >= 1) {
                if (c25593g2.m3176a() >= 1) {
                    int m3176a = ((c25593g2.m3176a() + c25593g2.m3175b()) + 1) / 2;
                    int i9 = 1 + i8;
                    iArr[i9] = c25593g2.f71664a;
                    iArr2[i9] = c25593g2.f71665b;
                    int i10 = 0;
                    while (true) {
                        arrayList6 = arrayList5;
                        arrayList7 = arrayList4;
                        c25593g3 = c25593g2;
                        if (i10 >= m3176a) {
                            break;
                        }
                        boolean z3 = Math.abs(c25593g2.m3175b() - c25593g2.m3176a()) % 2 == 1;
                        int m3175b = c25593g2.m3175b();
                        int m3176a2 = c25593g2.m3176a();
                        int i11 = -i10;
                        int i12 = i11;
                        boolean z4 = z3;
                        ArrayList arrayList8 = arrayList4;
                        while (true) {
                            if (i12 > i10) {
                                z2 = false;
                                c25594h = null;
                                break;
                            }
                            if (i12 == i11 || (i12 != i10 && iArr[i12 + 1 + i8] > iArr[(i12 - 1) + i8])) {
                                i4 = iArr[i12 + 1 + i8];
                                i5 = i4;
                            } else {
                                i4 = iArr[(i12 - 1) + i8];
                                i5 = i4 + 1;
                            }
                            int i13 = ((i5 - c25593g2.f71664a) + c25593g2.f71666c) - i12;
                            int i14 = (i10 == 0 || i5 != i4) ? i13 : i13 - 1;
                            while (i5 < c25593g2.f71665b && i13 < c25593g2.f71667d && abstractC25588b.areItemsTheSame(i5, i13)) {
                                i5++;
                                i13++;
                            }
                            iArr[i12 + i8] = i5;
                            if (z4 && (i6 = (m3175b - m3176a2) - i12) >= i11 + 1 && i6 <= i10 - 1 && iArr2[i6 + i8] <= i5) {
                                c25594h = new C25594h();
                                c25594h.f71668a = i4;
                                c25594h.f71669b = i14;
                                c25594h.f71670c = i5;
                                c25594h.f71671d = i13;
                                z2 = false;
                                c25594h.f71672e = false;
                                break;
                            }
                            i12 += 2;
                        }
                        ArrayList arrayList9 = arrayList5;
                        if (c25594h != null) {
                            c25593g = c25593g2;
                            arrayList2 = arrayList8;
                            arrayList = arrayList9;
                            break;
                        }
                        boolean z5 = (c25593g2.m3175b() - c25593g2.m3176a()) % 2 == 0 ? true : z2;
                        int m3175b2 = c25593g2.m3175b();
                        int m3176a3 = c25593g2.m3176a();
                        int i15 = i11;
                        while (true) {
                            if (i15 > i10) {
                                c25593g = c25593g2;
                                c25594h2 = null;
                                break;
                            }
                            if (i15 == i11 || (i15 != i10 && iArr2[i15 + 1 + i8] < iArr2[(i15 - 1) + i8])) {
                                i = iArr2[i15 + 1 + i8];
                                i2 = i;
                            } else {
                                i = iArr2[(i15 - 1) + i8];
                                i2 = i - 1;
                            }
                            int i16 = c25593g2.f71667d - ((c25593g2.f71665b - i2) - i15);
                            int i17 = (i10 == 0 || i2 != i) ? i16 : i16 + 1;
                            while (i2 > c25593g2.f71664a && i16 > c25593g2.f71666c) {
                                int i18 = i2 - 1;
                                int i19 = i16 - 1;
                                if (!abstractC25588b.areItemsTheSame(i18, i19)) {
                                    break;
                                }
                                i2 = i18;
                                i16 = i19;
                            }
                            c25593g = c25593g2;
                            iArr2[i15 + i8] = i2;
                            if (z5 && (i3 = (m3175b2 - m3176a3) - i15) >= i11 && i3 <= i10 && iArr[i3 + i8] >= i2) {
                                c25594h2 = new C25594h();
                                c25594h2.f71668a = i2;
                                c25594h2.f71669b = i16;
                                c25594h2.f71670c = i;
                                c25594h2.f71671d = i17;
                                c25594h2.f71672e = true;
                                break;
                            }
                            i15 += 2;
                            c25593g2 = c25593g;
                        }
                        if (c25594h2 != null) {
                            c25594h = c25594h2;
                            arrayList2 = arrayList8;
                            arrayList = arrayList9;
                            break;
                        }
                        i10++;
                        c25593g2 = c25593g;
                        arrayList5 = arrayList9;
                        arrayList4 = arrayList8;
                    }
                } else {
                    arrayList6 = arrayList5;
                    arrayList7 = arrayList4;
                    c25593g3 = c25593g2;
                }
            }
            arrayList2 = arrayList7;
            c25593g = c25593g3;
            c25594h = null;
            arrayList = arrayList6;
            if (c25594h != null) {
                if (c25594h.m3174a() > 0) {
                    int i20 = c25594h.f71671d;
                    int i21 = c25594h.f71669b;
                    int i22 = i20 - i21;
                    int i23 = c25594h.f71670c;
                    int i24 = c25594h.f71668a;
                    int i25 = i23 - i24;
                    if (!(i22 != i25)) {
                        c25589c = new C25589c(i24, i21, i25);
                    } else if (c25594h.f71672e) {
                        c25589c = new C25589c(i24, i21, c25594h.m3174a());
                    } else {
                        c25589c = i22 > i25 ? new C25589c(i24, i21 + 1, c25594h.m3174a()) : new C25589c(i24 + 1, i21, c25594h.m3174a());
                    }
                    arrayList3.add(c25589c);
                }
                C25593g c25593g4 = arrayList.isEmpty() ? new C25593g() : (C25593g) arrayList.remove(arrayList.size() - 1);
                C25593g c25593g5 = c25593g;
                c25593g4.f71664a = c25593g5.f71664a;
                c25593g4.f71666c = c25593g5.f71666c;
                c25593g4.f71665b = c25594h.f71668a;
                c25593g4.f71667d = c25594h.f71669b;
                ArrayList arrayList10 = arrayList2;
                arrayList10.add(c25593g4);
                c25593g5.f71665b = c25593g5.f71665b;
                c25593g5.f71667d = c25593g5.f71667d;
                c25593g5.f71664a = c25594h.f71670c;
                c25593g5.f71666c = c25594h.f71671d;
                arrayList10.add(c25593g5);
            } else {
                arrayList.add(c25593g);
            }
            arrayList5 = arrayList;
            arrayList4 = arrayList2;
        }
        Collections.sort(arrayList3, f71650a);
        return new C25590d(abstractC25588b, arrayList3, iArr, iArr2, z);
    }
}
