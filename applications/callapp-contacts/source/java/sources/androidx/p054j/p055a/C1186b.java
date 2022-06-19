package androidx.p054j.p055a;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.SparseBooleanArray;
import androidx.core.graphics.C0834a;
import androidx.p023b.C0428a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.j.a.b */
/* loaded from: classes-dex2jar.jar:androidx/j/a/b.class */
public final class C1186b {

    /* renamed from: b */
    static final AbstractC1190b f4627b = new AbstractC1190b() { // from class: androidx.j.a.b.1
        @Override // androidx.p054j.p055a.C1186b.AbstractC1190b
        /* renamed from: a */
        public final boolean mo43387a(float[] fArr) {
            if (!(fArr[2] >= 0.95f)) {
                if (fArr[2] <= 0.05f) {
                    return false;
                }
                return !((fArr[0] > 10.0f ? 1 : (fArr[0] == 10.0f ? 0 : -1)) >= 0 && (fArr[0] > 37.0f ? 1 : (fArr[0] == 37.0f ? 0 : -1)) <= 0 && (fArr[1] > 0.82f ? 1 : (fArr[1] == 0.82f ? 0 : -1)) <= 0);
            }
            return false;
        }
    };

    /* renamed from: c */
    private final List<C1192d> f4629c;

    /* renamed from: d */
    private final List<C1193c> f4630d;

    /* renamed from: f */
    private final SparseBooleanArray f4632f = new SparseBooleanArray();

    /* renamed from: e */
    private final Map<C1193c, C1192d> f4631e = new C0428a();

    /* renamed from: a */
    public final C1192d f4628a = m43390b();

    /* renamed from: androidx.j.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$a.class */
    public static final class C1188a {

        /* renamed from: a */
        final List<C1192d> f4633a;

        /* renamed from: b */
        public final Bitmap f4634b;

        /* renamed from: c */
        final List<C1193c> f4635c;

        /* renamed from: d */
        int f4636d;

        /* renamed from: e */
        int f4637e;

        /* renamed from: f */
        int f4638f;

        /* renamed from: g */
        final List<AbstractC1190b> f4639g;

        /* renamed from: h */
        Rect f4640h;

        public C1188a(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.f4635c = arrayList;
            this.f4636d = 16;
            this.f4637e = 12544;
            this.f4638f = -1;
            ArrayList arrayList2 = new ArrayList();
            this.f4639g = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(C1186b.f4627b);
            this.f4634b = bitmap;
            this.f4633a = null;
            arrayList.add(C1193c.f4652a);
            arrayList.add(C1193c.f4653b);
            arrayList.add(C1193c.f4654c);
            arrayList.add(C1193c.f4655d);
            arrayList.add(C1193c.f4656e);
            arrayList.add(C1193c.f4657f);
        }

        public C1188a(List<C1192d> list) {
            this.f4635c = new ArrayList();
            this.f4636d = 16;
            this.f4637e = 12544;
            this.f4638f = -1;
            ArrayList arrayList = new ArrayList();
            this.f4639g = arrayList;
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("List of Swatches is not valid");
            }
            arrayList.add(C1186b.f4627b);
            this.f4633a = list;
            this.f4634b = null;
        }

        /* renamed from: a */
        final int[] m43389a(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.f4640h;
            if (rect == null) {
                return iArr;
            }
            int width2 = rect.width();
            int height2 = this.f4640h.height();
            int[] iArr2 = new int[width2 * height2];
            for (int i = 0; i < height2; i++) {
                System.arraycopy(iArr, ((this.f4640h.top + i) * width) + this.f4640h.left, iArr2, i * width2, width2);
            }
            return iArr2;
        }
    }

    /* renamed from: androidx.j.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$b.class */
    public interface AbstractC1190b {
        /* renamed from: a */
        boolean mo43387a(float[] fArr);
    }

    /* renamed from: androidx.j.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$c.class */
    public interface AbstractC1191c {
        /* renamed from: a */
        void mo40737a(C1186b c1186b);
    }

    /* renamed from: androidx.j.a.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$d.class */
    public static final class C1192d {

        /* renamed from: a */
        public final int f4643a;

        /* renamed from: b */
        final int f4644b;

        /* renamed from: c */
        private final int f4645c;

        /* renamed from: d */
        private final int f4646d;

        /* renamed from: e */
        private final int f4647e;

        /* renamed from: f */
        private boolean f4648f;

        /* renamed from: g */
        private int f4649g;

        /* renamed from: h */
        private int f4650h;

        /* renamed from: i */
        private float[] f4651i;

        public C1192d(int i, int i2) {
            this.f4645c = Color.red(i);
            this.f4646d = Color.green(i);
            this.f4647e = Color.blue(i);
            this.f4643a = i;
            this.f4644b = i2;
        }

        C1192d(int i, int i2, int i3, int i4) {
            this.f4645c = i;
            this.f4646d = i2;
            this.f4647e = i3;
            this.f4643a = Color.rgb(i, i2, i3);
            this.f4644b = i4;
        }

        C1192d(float[] fArr, int i) {
            this(C0834a.m44398a(fArr), i);
            this.f4651i = fArr;
        }

        /* renamed from: b */
        private void m43385b() {
            if (!this.f4648f) {
                int m44402a = C0834a.m44402a(-1, this.f4643a, 4.5f);
                int m44402a2 = C0834a.m44402a(-1, this.f4643a, 3.0f);
                if (m44402a != -1 && m44402a2 != -1) {
                    this.f4650h = C0834a.m44396b(-1, m44402a);
                    this.f4649g = C0834a.m44396b(-1, m44402a2);
                    this.f4648f = true;
                    return;
                }
                int m44402a3 = C0834a.m44402a(-16777216, this.f4643a, 4.5f);
                int m44402a4 = C0834a.m44402a(-16777216, this.f4643a, 3.0f);
                if (m44402a3 == -1 || m44402a4 == -1) {
                    this.f4650h = m44402a != -1 ? C0834a.m44396b(-1, m44402a) : C0834a.m44396b(-16777216, m44402a3);
                    this.f4649g = m44402a2 != -1 ? C0834a.m44396b(-1, m44402a2) : C0834a.m44396b(-16777216, m44402a4);
                    this.f4648f = true;
                    return;
                }
                this.f4650h = C0834a.m44396b(-16777216, m44402a3);
                this.f4649g = C0834a.m44396b(-16777216, m44402a4);
                this.f4648f = true;
            }
        }

        /* renamed from: a */
        public final float[] m43386a() {
            if (this.f4651i == null) {
                this.f4651i = new float[3];
            }
            C0834a.m44400a(this.f4645c, this.f4646d, this.f4647e, this.f4651i);
            return this.f4651i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1192d c1192d = (C1192d) obj;
            return this.f4644b == c1192d.f4644b && this.f4643a == c1192d.f4643a;
        }

        public final int hashCode() {
            return (this.f4643a * 31) + this.f4644b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(getClass().getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.f4643a));
            sb.append(']');
            sb.append(" [HSL: ");
            sb.append(Arrays.toString(m43386a()));
            sb.append(']');
            sb.append(" [Population: ");
            sb.append(this.f4644b);
            sb.append(']');
            sb.append(" [Title Text: #");
            m43385b();
            sb.append(Integer.toHexString(this.f4649g));
            sb.append(']');
            sb.append(" [Body Text: #");
            m43385b();
            sb.append(Integer.toHexString(this.f4650h));
            sb.append(']');
            return sb.toString();
        }
    }

    C1186b(List<C1192d> list, List<C1193c> list2) {
        this.f4629c = list;
        this.f4630d = list2;
    }

    /* renamed from: a */
    public static C1188a m43391a(Bitmap bitmap) {
        return new C1188a(bitmap);
    }

    /* renamed from: b */
    private C1192d m43390b() {
        int size = this.f4629c.size();
        int i = Integer.MIN_VALUE;
        C1192d c1192d = null;
        int i2 = 0;
        while (i2 < size) {
            C1192d c1192d2 = this.f4629c.get(i2);
            int i3 = i;
            if (c1192d2.f4644b > i) {
                i3 = c1192d2.f4644b;
                c1192d = c1192d2;
            }
            i2++;
            i = i3;
        }
        return c1192d;
    }

    /* renamed from: a */
    final void m43392a() {
        float f;
        float f2;
        int size = this.f4630d.size();
        for (int i = 0; i < size; i++) {
            C1193c c1193c = this.f4630d.get(i);
            int length = c1193c.f4660i.length;
            int i2 = 0;
            float f3 = BitmapDescriptorFactory.HUE_RED;
            while (true) {
                f = f3;
                if (i2 >= length) {
                    break;
                }
                float f4 = c1193c.f4660i[i2];
                float f5 = f;
                if (f4 > BitmapDescriptorFactory.HUE_RED) {
                    f5 = f + f4;
                }
                i2++;
                f3 = f5;
            }
            if (f != BitmapDescriptorFactory.HUE_RED) {
                int length2 = c1193c.f4660i.length;
                for (int i3 = 0; i3 < length2; i3++) {
                    if (c1193c.f4660i[i3] > BitmapDescriptorFactory.HUE_RED) {
                        float[] fArr = c1193c.f4660i;
                        fArr[i3] = fArr[i3] / f;
                    }
                }
            }
            Map<C1193c, C1192d> map = this.f4631e;
            C1192d c1192d = null;
            int size2 = this.f4629c.size();
            int i4 = 0;
            float f6 = BitmapDescriptorFactory.HUE_RED;
            while (true) {
                float f7 = f6;
                if (i4 >= size2) {
                    break;
                }
                C1192d c1192d2 = this.f4629c.get(i4);
                float[] m43386a = c1192d2.m43386a();
                if (m43386a[1] >= c1193c.f4658g[0] && m43386a[1] <= c1193c.f4658g[2] && m43386a[2] >= c1193c.f4659h[0] && m43386a[2] <= c1193c.f4659h[2] && !this.f4632f.get(c1192d2.f4643a)) {
                    float[] m43386a2 = c1192d2.m43386a();
                    C1192d c1192d3 = this.f4628a;
                    float abs = (c1193c.f4660i[0] > BitmapDescriptorFactory.HUE_RED ? c1193c.f4660i[0] * (1.0f - Math.abs(m43386a2[1] - c1193c.f4658g[1])) : 0.0f) + (c1193c.f4660i[1] > BitmapDescriptorFactory.HUE_RED ? c1193c.f4660i[1] * (1.0f - Math.abs(m43386a2[2] - c1193c.f4659h[1])) : 0.0f) + (c1193c.f4660i[2] > BitmapDescriptorFactory.HUE_RED ? c1193c.f4660i[2] * (c1192d2.f4644b / (c1192d3 != null ? c1192d3.f4644b : 1)) : 0.0f);
                    if (c1192d != null) {
                        f2 = f7;
                        if (abs <= f7) {
                        }
                    }
                    c1192d = c1192d2;
                    f2 = abs;
                } else {
                    f2 = f7;
                }
                i4++;
                f6 = f2;
            }
            if (c1192d != null && c1193c.f4661j) {
                this.f4632f.append(c1192d.f4643a, true);
            }
            map.put(c1193c, c1192d);
        }
        this.f4632f.clear();
    }
}
