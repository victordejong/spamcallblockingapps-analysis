package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
/* renamed from: c.d.b.c.w0.x.h0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/h0.class */
public interface AbstractC3155h0 {

    /* renamed from: c.d.b.c.w0.x.h0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/h0$a.class */
    public static final class C3156a {

        /* renamed from: a */
        public final String f11518a;

        /* renamed from: b */
        public final byte[] f11519b;

        public C3156a(String str, int i, byte[] bArr) {
            this.f11518a = str;
            this.f11519b = bArr;
        }
    }

    /* renamed from: c.d.b.c.w0.x.h0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/h0$b.class */
    public static final class C3157b {

        /* renamed from: a */
        public final int f11520a;

        /* renamed from: b */
        public final String f11521b;

        /* renamed from: c */
        public final List<C3156a> f11522c;

        /* renamed from: d */
        public final byte[] f11523d;

        public C3157b(int i, String str, List<C3156a> list, byte[] bArr) {
            this.f11520a = i;
            this.f11521b = str;
            this.f11522c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f11523d = bArr;
        }
    }

    /* renamed from: c.d.b.c.w0.x.h0$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/h0$c.class */
    public interface AbstractC3158c {
        /* renamed from: a */
        SparseArray<AbstractC3155h0> mo27649a();

        /* renamed from: a */
        AbstractC3155h0 mo27647a(int i, C3157b bVar);
    }

    /* renamed from: c.d.b.c.w0.x.h0$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/h0$d.class */
    public static final class C3159d {

        /* renamed from: a */
        public final String f11524a;

        /* renamed from: b */
        public final int f11525b;

        /* renamed from: c */
        public final int f11526c;

        /* renamed from: d */
        public int f11527d;

        /* renamed from: e */
        public String f11528e;

        public C3159d(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public C3159d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.f11524a = str;
            this.f11525b = i2;
            this.f11526c = i3;
            this.f11527d = Integer.MIN_VALUE;
        }

        /* renamed from: a */
        public void m27684a() {
            int i = this.f11527d;
            this.f11527d = i == Integer.MIN_VALUE ? this.f11525b : i + this.f11526c;
            this.f11528e = this.f11524a + this.f11527d;
        }

        /* renamed from: b */
        public String m27683b() {
            m27681d();
            return this.f11528e;
        }

        /* renamed from: c */
        public int m27682c() {
            m27681d();
            return this.f11527d;
        }

        /* renamed from: d */
        public final void m27681d() {
            if (this.f11527d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }
    }

    /* renamed from: a */
    void mo27586a();

    /* renamed from: a */
    void mo27584a(C2881f0 f0Var, AbstractC3044i iVar, C3159d dVar);

    /* renamed from: a */
    void mo27583a(C2904v vVar, int i) throws ParserException;
}
