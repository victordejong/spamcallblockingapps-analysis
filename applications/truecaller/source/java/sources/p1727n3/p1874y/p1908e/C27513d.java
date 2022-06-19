package p1727n3.p1874y.p1908e;

import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
/* renamed from: n3.y.e.d */
/* loaded from: classes-dex2jar.jar:n3/y/e/d.class */
public class C27513d {

    /* renamed from: c */
    public static final String f77484c = new String("♫".getBytes(Charset.forName(StringConstant.UTF8)), Charset.forName(StringConstant.UTF8));

    /* renamed from: a */
    public final StringBuilder f77485a = new StringBuilder();

    /* renamed from: b */
    public AbstractC27521i f77486b;

    /* renamed from: n3.y.e.d$b */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$b.class */
    public static class C27514b {
        public C27514b(int i, int i2, int i3, int i4) {
        }
    }

    /* renamed from: n3.y.e.d$c */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$c.class */
    public static class C27515c {

        /* renamed from: a */
        public final int f77487a;

        /* renamed from: b */
        public final Object f77488b;

        public C27515c(int i, Object obj) {
            this.f77487a = i;
            this.f77488b = obj;
        }
    }

    /* renamed from: n3.y.e.d$d */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$d.class */
    public static class C27516d {

        /* renamed from: a */
        public final int f77489a;

        /* renamed from: b */
        public final int f77490b;

        /* renamed from: c */
        public final boolean f77491c;

        /* renamed from: d */
        public final boolean f77492d;

        public C27516d(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            this.f77489a = i;
            this.f77490b = i2;
            this.f77491c = z;
            this.f77492d = z2;
        }
    }

    /* renamed from: n3.y.e.d$e */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$e.class */
    public static class C27517e {
        public C27517e(C27514b c27514b, C27514b c27514b2, C27514b c27514b3) {
        }
    }

    /* renamed from: n3.y.e.d$f */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$f.class */
    public static class C27518f {

        /* renamed from: a */
        public final int f77493a;

        /* renamed from: b */
        public final int f77494b;

        public C27518f(int i, int i2) {
            this.f77493a = i;
            this.f77494b = i2;
        }
    }

    /* renamed from: n3.y.e.d$g */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$g.class */
    public static class C27519g {

        /* renamed from: a */
        public final int f77495a;

        /* renamed from: b */
        public final boolean f77496b;

        /* renamed from: c */
        public final boolean f77497c;

        /* renamed from: d */
        public final int f77498d;

        /* renamed from: e */
        public final int f77499e;

        /* renamed from: f */
        public final int f77500f;

        /* renamed from: g */
        public final int f77501g;

        /* renamed from: h */
        public final int f77502h;

        public C27519g(int i, boolean z, boolean z2, boolean z3, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f77495a = i;
            this.f77496b = z;
            this.f77497c = z4;
            this.f77498d = i3;
            this.f77499e = i4;
            this.f77500f = i5;
            this.f77501g = i6;
            this.f77502h = i7;
        }
    }

    /* renamed from: n3.y.e.d$h */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$h.class */
    public static class C27520h {
        public C27520h(C27514b c27514b, C27514b c27514b2, int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7) {
        }
    }

    /* renamed from: n3.y.e.d$i */
    /* loaded from: classes-dex2jar.jar:n3/y/e/d$i.class */
    public interface AbstractC27521i {
        /* renamed from: a */
        void m169a(C27515c c27515c);
    }

    public C27513d(AbstractC27521i abstractC27521i) {
        this.f77486b = new a(this);
        if (abstractC27521i != null) {
            this.f77486b = abstractC27521i;
        }
    }

    /* renamed from: a */
    public final void m170a() {
        if (this.f77485a.length() > 0) {
            this.f77486b.m169a(new C27515c(1, this.f77485a.toString()));
            this.f77485a.setLength(0);
        }
    }
}
