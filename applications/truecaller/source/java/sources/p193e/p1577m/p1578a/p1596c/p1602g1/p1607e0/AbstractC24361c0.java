package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.c0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/c0.class */
public interface AbstractC24361c0 {

    /* renamed from: e.m.a.c.g1.e0.c0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/c0$a.class */
    public static final class C24362a {

        /* renamed from: a */
        public final String f67781a;

        /* renamed from: b */
        public final byte[] f67782b;

        public C24362a(String str, int i, byte[] bArr) {
            this.f67781a = str;
            this.f67782b = bArr;
        }
    }

    /* renamed from: e.m.a.c.g1.e0.c0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/c0$b.class */
    public static final class C24363b {

        /* renamed from: a */
        public final int f67783a;

        /* renamed from: b */
        public final String f67784b;

        /* renamed from: c */
        public final List<C24362a> f67785c;

        /* renamed from: d */
        public final byte[] f67786d;

        public C24363b(int i, String str, List<C24362a> list, byte[] bArr) {
            this.f67783a = i;
            this.f67784b = str;
            this.f67785c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f67786d = bArr;
        }
    }

    /* renamed from: e.m.a.c.g1.e0.c0$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/c0$c.class */
    public interface AbstractC24364c {
        /* renamed from: a */
        AbstractC24361c0 mo5195a(int i, C24363b c24363b);
    }

    /* renamed from: e.m.a.c.g1.e0.c0$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/c0$d.class */
    public static final class C24365d {

        /* renamed from: a */
        public final String f67787a;

        /* renamed from: b */
        public final int f67788b;

        /* renamed from: c */
        public final int f67789c;

        /* renamed from: d */
        public int f67790d;

        /* renamed from: e */
        public String f67791e;

        public C24365d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + StringConstant.SLASH;
            } else {
                str = "";
            }
            this.f67787a = str;
            this.f67788b = i2;
            this.f67789c = i3;
            this.f67790d = Integer.MIN_VALUE;
        }

        /* renamed from: a */
        public void m5203a() {
            int i = this.f67790d;
            this.f67790d = i == Integer.MIN_VALUE ? this.f67788b : i + this.f67789c;
            this.f67791e = this.f67787a + this.f67790d;
        }

        /* renamed from: b */
        public String m5202b() {
            if (this.f67790d != Integer.MIN_VALUE) {
                return this.f67791e;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        /* renamed from: c */
        public int m5201c() {
            int i = this.f67790d;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    /* renamed from: a */
    void mo5169a();

    /* renamed from: b */
    void mo5168b(C24771c0 c24771c0, AbstractC24409i abstractC24409i, C24365d c24365d);

    /* renamed from: c */
    void mo5167c(C24798t c24798t, int i) throws C24560m0;
}
