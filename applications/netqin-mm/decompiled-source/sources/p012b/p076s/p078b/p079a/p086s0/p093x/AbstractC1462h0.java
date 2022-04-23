package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.ParserException;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
/* renamed from: b.s.b.a.s0.x.h0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/h0.class */
public interface AbstractC1462h0 {

    /* renamed from: b.s.b.a.s0.x.h0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/h0$a.class */
    public static final class C1463a {

        /* renamed from: a */
        public final String f5905a;

        /* renamed from: b */
        public final byte[] f5906b;

        public C1463a(String str, int i, byte[] bArr) {
            this.f5905a = str;
            this.f5906b = bArr;
        }
    }

    /* renamed from: b.s.b.a.s0.x.h0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/h0$b.class */
    public static final class C1464b {

        /* renamed from: a */
        public final int f5907a;

        /* renamed from: b */
        public final String f5908b;

        /* renamed from: c */
        public final List<C1463a> f5909c;

        /* renamed from: d */
        public final byte[] f5910d;

        public C1464b(int i, String str, List<C1463a> list, byte[] bArr) {
            this.f5907a = i;
            this.f5908b = str;
            this.f5909c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f5910d = bArr;
        }
    }

    /* renamed from: b.s.b.a.s0.x.h0$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/h0$c.class */
    public interface AbstractC1465c {
        /* renamed from: a */
        SparseArray<AbstractC1462h0> mo33222a();

        /* renamed from: a */
        AbstractC1462h0 mo33220a(int i, C1464b bVar);
    }

    /* renamed from: b.s.b.a.s0.x.h0$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/h0$d.class */
    public static final class C1466d {

        /* renamed from: a */
        public final String f5911a;

        /* renamed from: b */
        public final int f5912b;

        /* renamed from: c */
        public final int f5913c;

        /* renamed from: d */
        public int f5914d;

        /* renamed from: e */
        public String f5915e;

        public C1466d(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public C1466d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(12);
                sb.append(i);
                sb.append("/");
                str = sb.toString();
            } else {
                str = "";
            }
            this.f5911a = str;
            this.f5912b = i2;
            this.f5913c = i3;
            this.f5914d = Integer.MIN_VALUE;
        }

        /* renamed from: a */
        public void m33246a() {
            int i = this.f5914d;
            int i2 = i == Integer.MIN_VALUE ? this.f5912b : i + this.f5913c;
            this.f5914d = i2;
            String str = this.f5911a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
            sb.append(str);
            sb.append(i2);
            this.f5915e = sb.toString();
        }

        /* renamed from: b */
        public String m33245b() {
            m33243d();
            return this.f5915e;
        }

        /* renamed from: c */
        public int m33244c() {
            m33243d();
            return this.f5914d;
        }

        /* renamed from: d */
        public final void m33243d() {
            if (this.f5914d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }
    }

    /* renamed from: a */
    void mo33157a();

    /* renamed from: a */
    void mo33155a(C1184p pVar, int i) throws ParserException;

    /* renamed from: a */
    void mo33153a(C1196z zVar, AbstractC1352i iVar, C1466d dVar);
}
