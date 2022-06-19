package p020b.p041h.p046h;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import p020b.p041h.p049k.C1597h;
/* renamed from: b.h.h.f */
/* loaded from: classes-dex2jar.jar:b/h/h/f.class */
public class C1556f {

    /* renamed from: b.h.h.f$a */
    /* loaded from: classes-dex2jar.jar:b/h/h/f$a.class */
    public static class C1557a {

        /* renamed from: a */
        private final int f6112a;

        /* renamed from: b */
        private final C1558b[] f6113b;

        @Deprecated
        public C1557a(int i, C1558b[] c1558bArr) {
            this.f6112a = i;
            this.f6113b = c1558bArr;
        }

        /* renamed from: a */
        public static C1557a m29738a(int i, C1558b[] c1558bArr) {
            return new C1557a(i, c1558bArr);
        }

        /* renamed from: b */
        public C1558b[] m29737b() {
            return this.f6113b;
        }

        /* renamed from: c */
        public int m29736c() {
            return this.f6112a;
        }
    }

    /* renamed from: b.h.h.f$b */
    /* loaded from: classes-dex2jar.jar:b/h/h/f$b.class */
    public static class C1558b {

        /* renamed from: a */
        private final Uri f6114a;

        /* renamed from: b */
        private final int f6115b;

        /* renamed from: c */
        private final int f6116c;

        /* renamed from: d */
        private final boolean f6117d;

        /* renamed from: e */
        private final int f6118e;

        @Deprecated
        public C1558b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f6114a = (Uri) C1597h.m29659e(uri);
            this.f6115b = i;
            this.f6116c = i2;
            this.f6117d = z;
            this.f6118e = i3;
        }

        /* renamed from: a */
        public static C1558b m29735a(Uri uri, int i, int i2, boolean z, int i3) {
            return new C1558b(uri, i, i2, z, i3);
        }

        /* renamed from: b */
        public int m29734b() {
            return this.f6118e;
        }

        /* renamed from: c */
        public int m29733c() {
            return this.f6115b;
        }

        /* renamed from: d */
        public Uri m29732d() {
            return this.f6114a;
        }

        /* renamed from: e */
        public int m29731e() {
            return this.f6116c;
        }

        /* renamed from: f */
        public boolean m29730f() {
            return this.f6117d;
        }
    }

    /* renamed from: b.h.h.f$c */
    /* loaded from: classes-dex2jar.jar:b/h/h/f$c.class */
    public static class C1559c {
        /* renamed from: a */
        public void mo29729a(int i) {
            throw null;
        }

        /* renamed from: b */
        public void mo29728b(Typeface typeface) {
            throw null;
        }
    }

    /* renamed from: a */
    public static Typeface m29739a(Context context, C1549d c1549d, int i, boolean z, int i2, Handler handler, C1559c c1559c) {
        C1543a c1543a = new C1543a(c1559c, handler);
        return z ? C1550e.m29745e(context, c1549d, c1543a, i, i2) : C1550e.m29746d(context, c1549d, i, null, c1543a);
    }
}
