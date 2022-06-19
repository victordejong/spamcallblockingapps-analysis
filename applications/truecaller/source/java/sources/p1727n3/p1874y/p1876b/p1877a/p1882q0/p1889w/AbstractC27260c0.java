package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.w.c0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/c0.class */
public interface AbstractC27260c0 {

    /* renamed from: n3.y.b.a.q0.w.c0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/c0$a.class */
    public static final class C27261a {

        /* renamed from: a */
        public final String f76517a;

        /* renamed from: b */
        public final byte[] f76518b;

        public C27261a(String str, int i, byte[] bArr) {
            this.f76517a = str;
            this.f76518b = bArr;
        }
    }

    /* renamed from: n3.y.b.a.q0.w.c0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/c0$b.class */
    public static final class C27262b {

        /* renamed from: a */
        public final int f76519a;

        /* renamed from: b */
        public final String f76520b;

        /* renamed from: c */
        public final List<C27261a> f76521c;

        /* renamed from: d */
        public final byte[] f76522d;

        public C27262b(int i, String str, List<C27261a> list, byte[] bArr) {
            this.f76519a = i;
            this.f76520b = str;
            this.f76521c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f76522d = bArr;
        }
    }

    /* renamed from: n3.y.b.a.q0.w.c0$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/c0$c.class */
    public interface AbstractC27263c {
        /* renamed from: a */
        AbstractC27260c0 mo639a(int i, C27262b c27262b);
    }

    /* renamed from: n3.y.b.a.q0.w.c0$d */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/c0$d.class */
    public static final class C27264d {

        /* renamed from: a */
        public final String f76523a;

        /* renamed from: b */
        public final int f76524b;

        /* renamed from: c */
        public final int f76525c;

        /* renamed from: d */
        public int f76526d;

        /* renamed from: e */
        public String f76527e;

        public C27264d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(12);
                sb.append(i);
                sb.append(StringConstant.SLASH);
                str = sb.toString();
            } else {
                str = "";
            }
            this.f76523a = str;
            this.f76524b = i2;
            this.f76525c = i3;
            this.f76526d = Integer.MIN_VALUE;
        }

        /* renamed from: a */
        public void m647a() {
            int i = this.f76526d;
            int i2 = i == Integer.MIN_VALUE ? this.f76524b : i + this.f76525c;
            this.f76526d = i2;
            String str = this.f76523a;
            this.f76527e = C22128a.m8690L1(C22128a.m8623f2(str, 11), str, i2);
        }

        /* renamed from: b */
        public String m646b() {
            if (this.f76526d != Integer.MIN_VALUE) {
                return this.f76527e;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        /* renamed from: c */
        public int m645c() {
            int i = this.f76526d;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    /* renamed from: a */
    void mo614a();

    /* renamed from: b */
    void mo613b(C27443v c27443v, AbstractC27180h abstractC27180h, C27264d c27264d);

    /* renamed from: c */
    void mo612c(C27434m c27434m, int i) throws C27074c0;
}
