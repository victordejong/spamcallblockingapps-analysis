package androidx.j.a;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.SparseBooleanArray;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/j/a/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    static final AbstractC0070b f2463b = new AbstractC0070b() { // from class: androidx.j.a.b.1
        @Override // androidx.j.a.b.AbstractC0070b
        public final boolean a(float[] fArr) {
            if (fArr[2] >= 0.95f) {
                return false;
            }
            if (fArr[2] <= 0.05f) {
                return false;
            }
            return !((fArr[0] > 10.0f ? 1 : (fArr[0] == 10.0f ? 0 : -1)) >= 0 && (fArr[0] > 37.0f ? 1 : (fArr[0] == 37.0f ? 0 : -1)) <= 0 && (fArr[1] > 0.82f ? 1 : (fArr[1] == 0.82f ? 0 : -1)) <= 0);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final List<d> f2465c;

    /* renamed from: d  reason: collision with root package name */
    private final List<androidx.j.a.c> f2466d;
    private final SparseBooleanArray f = new SparseBooleanArray();
    private final Map<androidx.j.a.c, d> e = new androidx.b.a();

    /* renamed from: a  reason: collision with root package name */
    public final d f2464a = b();

    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<d> f2467a;

        /* renamed from: b  reason: collision with root package name */
        public final Bitmap f2468b;

        /* renamed from: c  reason: collision with root package name */
        final List<androidx.j.a.c> f2469c;

        /* renamed from: d  reason: collision with root package name */
        int f2470d;
        int e;
        int f;
        final List<AbstractC0070b> g;
        Rect h;

        public a(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.f2469c = arrayList;
            this.f2470d = 16;
            this.e = 12544;
            this.f = -1;
            ArrayList arrayList2 = new ArrayList();
            this.g = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(b.f2463b);
            this.f2468b = bitmap;
            this.f2467a = null;
            arrayList.add(androidx.j.a.c.f2477a);
            arrayList.add(androidx.j.a.c.f2478b);
            arrayList.add(androidx.j.a.c.f2479c);
            arrayList.add(androidx.j.a.c.f2480d);
            arrayList.add(androidx.j.a.c.e);
            arrayList.add(androidx.j.a.c.f);
        }

        public a(List<d> list) {
            this.f2469c = new ArrayList();
            this.f2470d = 16;
            this.e = 12544;
            this.f = -1;
            ArrayList arrayList = new ArrayList();
            this.g = arrayList;
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("List of Swatches is not valid");
            }
            arrayList.add(b.f2463b);
            this.f2467a = list;
            this.f2468b = null;
        }

        final int[] a(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.h;
            if (rect == null) {
                return iArr;
            }
            int width2 = rect.width();
            int height2 = this.h.height();
            int[] iArr2 = new int[width2 * height2];
            for (int i = 0; i < height2; i++) {
                System.arraycopy(iArr, ((this.h.top + i) * width) + this.h.left, iArr2, i * width2, width2);
            }
            return iArr2;
        }
    }

    /* renamed from: androidx.j.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$b.class */
    public interface AbstractC0070b {
        boolean a(float[] fArr);
    }

    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$c.class */
    public interface c {
        void a(b bVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/j/a/b$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f2473a;

        /* renamed from: b  reason: collision with root package name */
        final int f2474b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2475c;

        /* renamed from: d  reason: collision with root package name */
        private final int f2476d;
        private final int e;
        private boolean f;
        private int g;
        private int h;
        private float[] i;

        public d(int i, int i2) {
            this.f2475c = Color.red(i);
            this.f2476d = Color.green(i);
            this.e = Color.blue(i);
            this.f2473a = i;
            this.f2474b = i2;
        }

        d(int i, int i2, int i3, int i4) {
            this.f2475c = i;
            this.f2476d = i2;
            this.e = i3;
            this.f2473a = Color.rgb(i, i2, i3);
            this.f2474b = i4;
        }

        d(float[] fArr, int i) {
            this(androidx.core.graphics.a.a(fArr), i);
            this.i = fArr;
        }

        private void b() {
            if (!this.f) {
                int a2 = androidx.core.graphics.a.a(-1, this.f2473a, 4.5f);
                int a3 = androidx.core.graphics.a.a(-1, this.f2473a, 3.0f);
                if (a2 == -1 || a3 == -1) {
                    int a4 = androidx.core.graphics.a.a(-16777216, this.f2473a, 4.5f);
                    int a5 = androidx.core.graphics.a.a(-16777216, this.f2473a, 3.0f);
                    if (a4 == -1 || a5 == -1) {
                        this.h = a2 != -1 ? androidx.core.graphics.a.b(-1, a2) : androidx.core.graphics.a.b(-16777216, a4);
                        this.g = a3 != -1 ? androidx.core.graphics.a.b(-1, a3) : androidx.core.graphics.a.b(-16777216, a5);
                        this.f = true;
                        return;
                    }
                    this.h = androidx.core.graphics.a.b(-16777216, a4);
                    this.g = androidx.core.graphics.a.b(-16777216, a5);
                    this.f = true;
                    return;
                }
                this.h = androidx.core.graphics.a.b(-1, a2);
                this.g = androidx.core.graphics.a.b(-1, a3);
                this.f = true;
            }
        }

        public final float[] a() {
            if (this.i == null) {
                this.i = new float[3];
            }
            androidx.core.graphics.a.a(this.f2475c, this.f2476d, this.e, this.i);
            return this.i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f2474b == dVar.f2474b && this.f2473a == dVar.f2473a;
        }

        public final int hashCode() {
            return (this.f2473a * 31) + this.f2474b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(getClass().getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.f2473a));
            sb.append(']');
            sb.append(" [HSL: ");
            sb.append(Arrays.toString(a()));
            sb.append(']');
            sb.append(" [Population: ");
            sb.append(this.f2474b);
            sb.append(']');
            sb.append(" [Title Text: #");
            b();
            sb.append(Integer.toHexString(this.g));
            sb.append(']');
            sb.append(" [Body Text: #");
            b();
            sb.append(Integer.toHexString(this.h));
            sb.append(']');
            return sb.toString();
        }
    }

    b(List<d> list, List<androidx.j.a.c> list2) {
        this.f2465c = list;
        this.f2466d = list2;
    }

    public static a a(Bitmap bitmap) {
        return new a(bitmap);
    }

    private d b() {
        int size = this.f2465c.size();
        int i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        d dVar = null;
        for (int i2 = 0; i2 < size; i2++) {
            d dVar2 = this.f2465c.get(i2);
            i = i;
            if (dVar2.f2474b > i) {
                i = dVar2.f2474b;
                dVar = dVar2;
            }
        }
        return dVar;
    }

    final void a() {
        int size = this.f2466d.size();
        for (int i = 0; i < size; i++) {
            androidx.j.a.c cVar = this.f2466d.get(i);
            int length = cVar.i.length;
            float f = BitmapDescriptorFactory.HUE_RED;
            for (int i2 = 0; i2 < length; i2++) {
                float f2 = cVar.i[i2];
                f = f;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    f += f2;
                }
            }
            if (f != BitmapDescriptorFactory.HUE_RED) {
                int length2 = cVar.i.length;
                for (int i3 = 0; i3 < length2; i3++) {
                    if (cVar.i[i3] > BitmapDescriptorFactory.HUE_RED) {
                        float[] fArr = cVar.i;
                        fArr[i3] = fArr[i3] / f;
                    }
                }
            }
            Map<androidx.j.a.c, d> map = this.e;
            d dVar = null;
            int size2 = this.f2465c.size();
            float f3 = BitmapDescriptorFactory.HUE_RED;
            for (int i4 = 0; i4 < size2; i4++) {
                d dVar2 = this.f2465c.get(i4);
                float[] a2 = dVar2.a();
                if (a2[1] >= cVar.g[0] && a2[1] <= cVar.g[2] && a2[2] >= cVar.h[0] && a2[2] <= cVar.h[2] && !this.f.get(dVar2.f2473a)) {
                    float[] a3 = dVar2.a();
                    d dVar3 = this.f2464a;
                    int i5 = dVar3 != null ? dVar3.f2474b : 1;
                    float abs = (cVar.i[0] > BitmapDescriptorFactory.HUE_RED ? cVar.i[0] * (1.0f - Math.abs(a3[1] - cVar.g[1])) : BitmapDescriptorFactory.HUE_RED) + (cVar.i[1] > BitmapDescriptorFactory.HUE_RED ? cVar.i[1] * (1.0f - Math.abs(a3[2] - cVar.h[1])) : BitmapDescriptorFactory.HUE_RED) + (cVar.i[2] > BitmapDescriptorFactory.HUE_RED ? cVar.i[2] * (dVar2.f2474b / i5) : BitmapDescriptorFactory.HUE_RED);
                    if (dVar != null) {
                        f3 = f3;
                        if (abs <= f3) {
                        }
                    }
                    dVar = dVar2;
                    f3 = abs;
                } else {
                    f3 = f3;
                }
            }
            if (dVar != null && cVar.j) {
                this.f.append(dVar.f2473a, true);
            }
            map.put(cVar, dVar);
        }
        this.f.clear();
    }
}
