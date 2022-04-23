package p012b.p120u.p121a;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
import p012b.p042i.p046j.C0891b;
/* renamed from: b.u.a.b */
/* loaded from: classes-dex2jar.jar:b/u/a/b.class */
public final class C1893b {

    /* renamed from: f */
    public static final AbstractC1897c f7465f = new C1894a();

    /* renamed from: a */
    public final List<C1899e> f7466a;

    /* renamed from: b */
    public final List<C1900c> f7467b;

    /* renamed from: d */
    public final SparseBooleanArray f7469d = new SparseBooleanArray();

    /* renamed from: c */
    public final Map<C1900c, C1899e> f7468c = new C0780a();

    /* renamed from: e */
    public final C1899e f7470e = m31788a();

    /* renamed from: b.u.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/u/a/b$a.class */
    public static final class C1894a implements AbstractC1897c {
        @Override // p012b.p120u.p121a.C1893b.AbstractC1897c
        /* renamed from: a */
        public boolean mo31771a(int i, float[] fArr) {
            return !m31778c(fArr) && !m31780a(fArr) && !m31779b(fArr);
        }

        /* renamed from: a */
        public final boolean m31780a(float[] fArr) {
            return fArr[2] <= 0.05f;
        }

        /* renamed from: b */
        public final boolean m31779b(float[] fArr) {
            boolean z = false;
            if (fArr[0] >= 10.0f) {
                z = false;
                if (fArr[0] <= 37.0f) {
                    z = false;
                    if (fArr[1] <= 0.82f) {
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: c */
        public final boolean m31778c(float[] fArr) {
            return fArr[2] >= 0.95f;
        }
    }

    /* renamed from: b.u.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/u/a/b$b.class */
    public static final class C1895b {

        /* renamed from: a */
        public final List<C1899e> f7471a;

        /* renamed from: b */
        public final Bitmap f7472b;

        /* renamed from: c */
        public final List<C1900c> f7473c = new ArrayList();

        /* renamed from: d */
        public int f7474d = 16;

        /* renamed from: e */
        public int f7475e = 12544;

        /* renamed from: f */
        public int f7476f = -1;

        /* renamed from: g */
        public final List<AbstractC1897c> f7477g = new ArrayList();

        /* renamed from: h */
        public Rect f7478h;

        /* renamed from: b.u.a.b$b$a */
        /* loaded from: classes-dex2jar.jar:b/u/a/b$b$a.class */
        public class AsyncTaskC1896a extends AsyncTask<Bitmap, Void, C1893b> {

            /* renamed from: a */
            public final /* synthetic */ AbstractC1898d f7479a;

            public AsyncTaskC1896a(AbstractC1898d dVar) {
                this.f7479a = dVar;
            }

            /* renamed from: a */
            public C1893b doInBackground(Bitmap... bitmapArr) {
                try {
                    return C1895b.this.m31777a();
                } catch (Exception e) {
                    Log.e("Palette", "Exception thrown during async generate", e);
                    return null;
                }
            }

            /* renamed from: a */
            public void onPostExecute(C1893b bVar) {
                this.f7479a.mo31770a(bVar);
            }
        }

        public C1895b(Bitmap bitmap) {
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            this.f7477g.add(C1893b.f7465f);
            this.f7472b = bitmap;
            this.f7471a = null;
            this.f7473c.add(C1900c.f7490e);
            this.f7473c.add(C1900c.f7491f);
            this.f7473c.add(C1900c.f7492g);
            this.f7473c.add(C1900c.f7493h);
            this.f7473c.add(C1900c.f7494i);
            this.f7473c.add(C1900c.f7495j);
        }

        /* renamed from: a */
        public AsyncTask<Bitmap, Void, C1893b> m31775a(AbstractC1898d dVar) {
            if (dVar != null) {
                return new AsyncTaskC1896a(dVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f7472b);
            }
            throw new IllegalArgumentException("listener can not be null");
        }

        /* renamed from: a */
        public C1893b m31777a() {
            List<C1899e> list;
            AbstractC1897c[] cVarArr;
            Bitmap bitmap = this.f7472b;
            if (bitmap != null) {
                Bitmap b = m31774b(bitmap);
                Rect rect = this.f7478h;
                if (!(b == this.f7472b || rect == null)) {
                    double width = b.getWidth();
                    double width2 = this.f7472b.getWidth();
                    Double.isNaN(width);
                    Double.isNaN(width2);
                    double d = width / width2;
                    double d2 = rect.left;
                    Double.isNaN(d2);
                    rect.left = (int) Math.floor(d2 * d);
                    double d3 = rect.top;
                    Double.isNaN(d3);
                    rect.top = (int) Math.floor(d3 * d);
                    double d4 = rect.right;
                    Double.isNaN(d4);
                    rect.right = Math.min((int) Math.ceil(d4 * d), b.getWidth());
                    double d5 = rect.bottom;
                    Double.isNaN(d5);
                    rect.bottom = Math.min((int) Math.ceil(d5 * d), b.getHeight());
                }
                int[] a = m31776a(b);
                int i = this.f7474d;
                if (this.f7477g.isEmpty()) {
                    cVarArr = null;
                } else {
                    List<AbstractC1897c> list2 = this.f7477g;
                    cVarArr = (AbstractC1897c[]) list2.toArray(new AbstractC1897c[list2.size()]);
                }
                C1890a aVar = new C1890a(a, i, cVarArr);
                if (b != this.f7472b) {
                    b.recycle();
                }
                list = aVar.m31812a();
            } else {
                list = this.f7471a;
                if (list == null) {
                    throw new AssertionError();
                }
            }
            C1893b bVar = new C1893b(list, this.f7473c);
            bVar.m31783b();
            return bVar;
        }

        /* renamed from: a */
        public final int[] m31776a(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.f7478h;
            if (rect == null) {
                return iArr;
            }
            int width2 = rect.width();
            int height2 = this.f7478h.height();
            int[] iArr2 = new int[width2 * height2];
            for (int i = 0; i < height2; i++) {
                Rect rect2 = this.f7478h;
                System.arraycopy(iArr, ((rect2.top + i) * width) + rect2.left, iArr2, i * width2, width2);
            }
            return iArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v0, types: [double] */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v5 */
        /* JADX WARN: Type inference failed for: r13v8 */
        /* JADX WARN: Type inference failed for: r13v9 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.graphics.Bitmap m31774b(android.graphics.Bitmap r8) {
            /*
                Method dump skipped, instructions count: 186
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p120u.p121a.C1893b.C1895b.m31774b(android.graphics.Bitmap):android.graphics.Bitmap");
        }
    }

    /* renamed from: b.u.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/u/a/b$c.class */
    public interface AbstractC1897c {
        /* renamed from: a */
        boolean mo31771a(int i, float[] fArr);
    }

    /* renamed from: b.u.a.b$d */
    /* loaded from: classes-dex2jar.jar:b/u/a/b$d.class */
    public interface AbstractC1898d {
        /* renamed from: a */
        void mo31770a(C1893b bVar);
    }

    /* renamed from: b.u.a.b$e */
    /* loaded from: classes-dex2jar.jar:b/u/a/b$e.class */
    public static final class C1899e {

        /* renamed from: a */
        public final int f7481a;

        /* renamed from: b */
        public final int f7482b;

        /* renamed from: c */
        public final int f7483c;

        /* renamed from: d */
        public final int f7484d;

        /* renamed from: e */
        public final int f7485e;

        /* renamed from: f */
        public boolean f7486f;

        /* renamed from: g */
        public int f7487g;

        /* renamed from: h */
        public int f7488h;

        /* renamed from: i */
        public float[] f7489i;

        public C1899e(int i, int i2) {
            this.f7481a = Color.red(i);
            this.f7482b = Color.green(i);
            this.f7483c = Color.blue(i);
            this.f7484d = i;
            this.f7485e = i2;
        }

        /* renamed from: a */
        public final void m31769a() {
            if (!this.f7486f) {
                int a = C0891b.m35609a(-1, this.f7484d, 4.5f);
                int a2 = C0891b.m35609a(-1, this.f7484d, 3.0f);
                if (a == -1 || a2 == -1) {
                    int a3 = C0891b.m35609a((int) DrawableConstants.CtaButton.BACKGROUND_COLOR, this.f7484d, 4.5f);
                    int a4 = C0891b.m35609a((int) DrawableConstants.CtaButton.BACKGROUND_COLOR, this.f7484d, 3.0f);
                    if (a3 == -1 || a4 == -1) {
                        this.f7488h = a != -1 ? C0891b.m35601d(-1, a) : C0891b.m35601d(DrawableConstants.CtaButton.BACKGROUND_COLOR, a3);
                        this.f7487g = a2 != -1 ? C0891b.m35601d(-1, a2) : C0891b.m35601d(DrawableConstants.CtaButton.BACKGROUND_COLOR, a4);
                        this.f7486f = true;
                        return;
                    }
                    this.f7488h = C0891b.m35601d(DrawableConstants.CtaButton.BACKGROUND_COLOR, a3);
                    this.f7487g = C0891b.m35601d(DrawableConstants.CtaButton.BACKGROUND_COLOR, a4);
                    this.f7486f = true;
                    return;
                }
                this.f7488h = C0891b.m35601d(-1, a);
                this.f7487g = C0891b.m35601d(-1, a2);
                this.f7486f = true;
            }
        }

        /* renamed from: b */
        public int m31768b() {
            m31769a();
            return this.f7488h;
        }

        /* renamed from: c */
        public float[] m31767c() {
            if (this.f7489i == null) {
                this.f7489i = new float[3];
            }
            C0891b.m35606a(this.f7481a, this.f7482b, this.f7483c, this.f7489i);
            return this.f7489i;
        }

        /* renamed from: d */
        public int m31766d() {
            return this.f7485e;
        }

        /* renamed from: e */
        public int m31765e() {
            return this.f7484d;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1899e.class != obj.getClass()) {
                return false;
            }
            C1899e eVar = (C1899e) obj;
            if (!(this.f7485e == eVar.f7485e && this.f7484d == eVar.f7484d)) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public int m31764f() {
            m31769a();
            return this.f7487g;
        }

        public int hashCode() {
            return (this.f7484d * 31) + this.f7485e;
        }

        public String toString() {
            return C1899e.class.getSimpleName() + " [RGB: #" + Integer.toHexString(m31765e()) + "] [HSL: " + Arrays.toString(m31767c()) + "] [Population: " + this.f7485e + "] [Title Text: #" + Integer.toHexString(m31764f()) + "] [Body Text: #" + Integer.toHexString(m31768b()) + ']';
        }
    }

    public C1893b(List<C1899e> list, List<C1900c> list2) {
        this.f7466a = list;
        this.f7467b = list2;
    }

    /* renamed from: a */
    public static C1895b m31786a(Bitmap bitmap) {
        return new C1895b(bitmap);
    }

    /* renamed from: a */
    public final float m31785a(C1899e eVar, C1900c cVar) {
        float[] c = eVar.m31767c();
        C1899e eVar2 = this.f7470e;
        int d = eVar2 != null ? eVar2.m31766d() : 1;
        float f = 0.0f;
        float g = cVar.m31751g() > 0.0f ? cVar.m31751g() * (1.0f - Math.abs(c[1] - cVar.m31749i())) : 0.0f;
        float a = cVar.m31763a() > 0.0f ? cVar.m31763a() * (1.0f - Math.abs(c[2] - cVar.m31750h())) : 0.0f;
        if (cVar.m31752f() > 0.0f) {
            f = cVar.m31752f() * (eVar.m31766d() / d);
        }
        return g + a + f;
    }

    /* renamed from: a */
    public int m31787a(int i) {
        C1899e eVar = this.f7470e;
        if (eVar != null) {
            i = eVar.m31765e();
        }
        return i;
    }

    /* renamed from: a */
    public final C1899e m31788a() {
        int size = this.f7466a.size();
        int i = Integer.MIN_VALUE;
        C1899e eVar = null;
        for (int i2 = 0; i2 < size; i2++) {
            C1899e eVar2 = this.f7466a.get(i2);
            i = i;
            if (eVar2.m31766d() > i) {
                i = eVar2.m31766d();
                eVar = eVar2;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public final C1899e m31784a(C1900c cVar) {
        C1899e b = m31781b(cVar);
        if (b != null && cVar.m31748j()) {
            this.f7469d.append(b.m31765e(), true);
        }
        return b;
    }

    /* renamed from: b */
    public final C1899e m31781b(C1900c cVar) {
        int size = this.f7466a.size();
        float f = 0.0f;
        C1899e eVar = null;
        for (int i = 0; i < size; i++) {
            C1899e eVar2 = this.f7466a.get(i);
            f = f;
            eVar = eVar;
            if (m31782b(eVar2, cVar)) {
                float a = m31785a(eVar2, cVar);
                if (eVar != null) {
                    f = f;
                    eVar = eVar;
                    if (a <= f) {
                    }
                }
                eVar = eVar2;
                f = a;
            }
        }
        return eVar;
    }

    /* renamed from: b */
    public void m31783b() {
        int size = this.f7467b.size();
        for (int i = 0; i < size; i++) {
            C1900c cVar = this.f7467b.get(i);
            cVar.m31747k();
            this.f7468c.put(cVar, m31784a(cVar));
        }
        this.f7469d.clear();
    }

    /* renamed from: b */
    public final boolean m31782b(C1899e eVar, C1900c cVar) {
        float[] c = eVar.m31767c();
        boolean z = true;
        if (c[1] < cVar.m31754e() || c[1] > cVar.m31758c() || c[2] < cVar.m31756d() || c[2] > cVar.m31760b() || this.f7469d.get(eVar.m31765e())) {
            z = false;
        }
        return z;
    }
}
