package p530d.p531a;

import com.google.common.p493io.BaseEncoding;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Locale;
import p131c.p161d.p266c.p267a.C4916c;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p271e.C5052a;
/* renamed from: d.a.k0 */
/* loaded from: classes2-dex2jar.jar:d/a/k0.class */
public final class C9260k0 {

    /* renamed from: c */
    public static final AbstractC9264d<String> f35813c = new C9262b();

    /* renamed from: d */
    public static final BaseEncoding f35814d = BaseEncoding.m7912d().mo7903a();

    /* renamed from: a */
    public Object[] f35815a;

    /* renamed from: b */
    public int f35816b;

    /* renamed from: d.a.k0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$a.class */
    public class C9261a {
    }

    /* renamed from: d.a.k0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$b.class */
    public class C9262b implements AbstractC9264d<String> {
        @Override // p530d.p531a.C9260k0.AbstractC9264d
        /* renamed from: a */
        public /* bridge */ /* synthetic */ String mo515a(String str) {
            String str2 = str;
            m3052b(str2);
            return str2;
        }

        @Override // p530d.p531a.C9260k0.AbstractC9264d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public String mo514a(String str) {
            return str;
        }

        /* renamed from: b */
        public String m3052b(String str) {
            return str;
        }
    }

    /* renamed from: d.a.k0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$c.class */
    public static class C9263c<T> extends AbstractC9266f<T> {

        /* renamed from: f */
        public final AbstractC9264d<T> f35817f;

        public C9263c(String str, boolean z, AbstractC9264d<T> dVar) {
            super(str, z, dVar, null);
            C4933n.m24781a(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            C4933n.m24794a(dVar, "marshaller");
            this.f35817f = dVar;
        }

        public /* synthetic */ C9263c(String str, boolean z, AbstractC9264d dVar, C9261a aVar) {
            this(str, z, dVar);
        }

        @Override // p530d.p531a.C9260k0.AbstractC9266f
        /* renamed from: a */
        public T mo3034a(byte[] bArr) {
            return this.f35817f.mo514a(new String(bArr, C4916c.f17555a));
        }

        @Override // p530d.p531a.C9260k0.AbstractC9266f
        /* renamed from: a */
        public byte[] mo3035a(T t) {
            return this.f35817f.mo515a((AbstractC9264d<T>) t).getBytes(C4916c.f17555a);
        }
    }

    /* renamed from: d.a.k0$d */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$d.class */
    public interface AbstractC9264d<T> {
        /* renamed from: a */
        T mo514a(String str);

        /* renamed from: a */
        String mo515a(T t);
    }

    /* renamed from: d.a.k0$e */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$e.class */
    public interface AbstractC9265e<T> {
        /* renamed from: a */
        InputStream m3050a(T t);

        /* renamed from: a */
        T m3051a(InputStream inputStream);
    }

    /* renamed from: d.a.k0$f */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$f.class */
    public static abstract class AbstractC9266f<T> {

        /* renamed from: e */
        public static final BitSet f35818e = m3041d();

        /* renamed from: a */
        public final String f35819a;

        /* renamed from: b */
        public final String f35820b;

        /* renamed from: c */
        public final byte[] f35821c;

        /* renamed from: d */
        public final Object f35822d;

        public AbstractC9266f(String str, boolean z, Object obj) {
            C4933n.m24794a(str, "name");
            String str2 = str;
            this.f35819a = str2;
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            m3046a(lowerCase, z);
            this.f35820b = lowerCase;
            this.f35821c = lowerCase.getBytes(C4916c.f17555a);
            this.f35822d = obj;
        }

        public /* synthetic */ AbstractC9266f(String str, boolean z, Object obj, C9261a aVar) {
            this(str, z, obj);
        }

        /* renamed from: a */
        public static <T> AbstractC9266f<T> m3047a(String str, AbstractC9264d<T> dVar) {
            return m3045a(str, false, (AbstractC9264d) dVar);
        }

        /* renamed from: a */
        public static <T> AbstractC9266f<T> m3045a(String str, boolean z, AbstractC9264d<T> dVar) {
            return new C9263c(str, z, dVar, null);
        }

        /* renamed from: a */
        public static <T> AbstractC9266f<T> m3044a(String str, boolean z, AbstractC9269i<T> iVar) {
            return new C9268h(str, z, iVar, null);
        }

        /* renamed from: a */
        public static String m3046a(String str, boolean z) {
            C4933n.m24794a(str, "name");
            C4933n.m24790a(!str.isEmpty(), "token must have at least 1 tchar");
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (!z || charAt != ':' || i != 0) {
                    C4933n.m24788a(f35818e.get(charAt), "Invalid character '%s' in key name '%s'", charAt, (Object) str);
                }
            }
            return str;
        }

        /* renamed from: d */
        public static BitSet m3041d() {
            BitSet bitSet = new BitSet(127);
            bitSet.set(45);
            bitSet.set(95);
            bitSet.set(46);
            for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
                bitSet.set(c);
            }
            for (char c2 = 'a'; c2 <= 'z'; c2 = (char) (c2 + 1)) {
                bitSet.set(c2);
            }
            return bitSet;
        }

        /* renamed from: a */
        public final <M> M m3048a(Class<M> cls) {
            if (cls.isInstance(this.f35822d)) {
                return cls.cast(this.f35822d);
            }
            return null;
        }

        /* renamed from: a */
        public abstract T mo3034a(byte[] bArr);

        /* renamed from: a */
        public byte[] m3049a() {
            return this.f35821c;
        }

        /* renamed from: a */
        public abstract byte[] mo3035a(T t);

        /* renamed from: b */
        public final String m3043b() {
            return this.f35820b;
        }

        /* renamed from: c */
        public boolean m3042c() {
            return false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f35820b.equals(((AbstractC9266f) obj).f35820b);
        }

        public final int hashCode() {
            return this.f35820b.hashCode();
        }

        public String toString() {
            return "Key{name='" + this.f35820b + "'}";
        }
    }

    /* renamed from: d.a.k0$g */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$g.class */
    public static final class C9267g<T> {

        /* renamed from: a */
        public final AbstractC9265e<T> f35823a;

        /* renamed from: b */
        public final T f35824b;

        /* renamed from: c */
        public volatile byte[] f35825c;

        public C9267g(AbstractC9265e<T> eVar, T t) {
            this.f35823a = eVar;
            this.f35824b = t;
        }

        /* renamed from: a */
        public static <T> C9267g<T> m3038a(AbstractC9266f<T> fVar, T t) {
            AbstractC9265e b = m3036b(fVar);
            C4933n.m24795a(b);
            return new C9267g<>(b, t);
        }

        /* renamed from: b */
        public static <T> AbstractC9265e<T> m3036b(AbstractC9266f<T> fVar) {
            return (AbstractC9265e) fVar.m3048a((Class<Object>) AbstractC9265e.class);
        }

        /* renamed from: a */
        public <T2> T2 m3039a(AbstractC9266f<T2> fVar) {
            AbstractC9265e b;
            return (!fVar.m3042c() || (b = m3036b(fVar)) == null) ? fVar.mo3034a(m3040a()) : (T2) b.m3051a(m3037b());
        }

        /* renamed from: a */
        public byte[] m3040a() {
            if (this.f35825c == null) {
                synchronized (this) {
                    if (this.f35825c == null) {
                        this.f35825c = C9260k0.m3059b(m3037b());
                    }
                }
            }
            return this.f35825c;
        }

        /* renamed from: b */
        public InputStream m3037b() {
            return this.f35823a.m3050a((AbstractC9265e<T>) this.f35824b);
        }
    }

    /* renamed from: d.a.k0$h */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$h.class */
    public static final class C9268h<T> extends AbstractC9266f<T> {

        /* renamed from: f */
        public final AbstractC9269i<T> f35826f;

        public C9268h(String str, boolean z, AbstractC9269i<T> iVar) {
            super(str, z, iVar, null);
            C4933n.m24781a(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            C4933n.m24794a(iVar, "marshaller");
            this.f35826f = iVar;
        }

        public /* synthetic */ C9268h(String str, boolean z, AbstractC9269i iVar, C9261a aVar) {
            this(str, z, iVar);
        }

        @Override // p530d.p531a.C9260k0.AbstractC9266f
        /* renamed from: a */
        public T mo3034a(byte[] bArr) {
            return this.f35826f.mo518a(bArr);
        }

        @Override // p530d.p531a.C9260k0.AbstractC9266f
        /* renamed from: a */
        public byte[] mo3035a(T t) {
            return this.f35826f.mo519a((AbstractC9269i<T>) t);
        }
    }

    /* renamed from: d.a.k0$i */
    /* loaded from: classes2-dex2jar.jar:d/a/k0$i.class */
    public interface AbstractC9269i<T> {
        /* renamed from: a */
        T mo518a(byte[] bArr);

        /* renamed from: a */
        byte[] mo519a(T t);
    }

    static {
        new C9261a();
    }

    public C9260k0() {
    }

    public C9260k0(int i, Object[] objArr) {
        this.f35816b = i;
        this.f35815a = objArr;
    }

    public C9260k0(int i, byte[]... bArr) {
        this(i, (Object[]) bArr);
    }

    public C9260k0(byte[]... bArr) {
        this(bArr.length / 2, bArr);
    }

    /* renamed from: b */
    public static byte[] m3059b(InputStream inputStream) {
        try {
            return C5052a.m24599a(inputStream);
        } catch (IOException e) {
            throw new RuntimeException("failure reading serialized stream", e);
        }
    }

    /* renamed from: a */
    public final int m3073a() {
        Object[] objArr = this.f35815a;
        return objArr != null ? objArr.length : 0;
    }

    /* renamed from: a */
    public final <T> T m3071a(int i, AbstractC9266f<T> fVar) {
        Object c = m3057c(i);
        return c instanceof byte[] ? fVar.mo3034a((byte[]) c) : (T) ((C9267g) c).m3039a(fVar);
    }

    /* renamed from: a */
    public final void m3072a(int i) {
        Object[] objArr = new Object[i];
        if (!m3058c()) {
            System.arraycopy(this.f35815a, 0, objArr, 0, m3056d());
        }
        this.f35815a = objArr;
    }

    /* renamed from: a */
    public final void m3070a(int i, Object obj) {
        if (this.f35815a instanceof byte[][]) {
            m3072a(m3073a());
        }
        this.f35815a[(i * 2) + 1] = obj;
    }

    /* renamed from: a */
    public final void m3069a(int i, byte[] bArr) {
        this.f35815a[i * 2] = bArr;
    }

    /* renamed from: a */
    public <T> void m3068a(AbstractC9266f<T> fVar) {
        if (!m3058c()) {
            int i = 0;
            for (int i2 = 0; i2 < this.f35816b; i2++) {
                if (!m3064a(fVar.m3049a(), m3062b(i2))) {
                    m3069a(i, m3062b(i2));
                    m3070a(i, m3057c(i2));
                    i++;
                }
            }
            Arrays.fill(this.f35815a, i * 2, m3056d(), (Object) null);
            this.f35816b = i;
        }
    }

    /* renamed from: a */
    public <T> void m3067a(AbstractC9266f<T> fVar, T t) {
        C4933n.m24794a(fVar, "key");
        C4933n.m24794a(t, "value");
        m3054e();
        m3069a(this.f35816b, fVar.m3049a());
        if (fVar.m3042c()) {
            m3070a(this.f35816b, C9267g.m3038a(fVar, t));
        } else {
            m3061b(this.f35816b, fVar.mo3035a((AbstractC9266f<T>) t));
        }
        this.f35816b++;
    }

    /* renamed from: a */
    public void m3066a(C9260k0 k0Var) {
        if (!k0Var.m3058c()) {
            int a = m3073a();
            int d = m3056d();
            if (m3058c() || a - d < k0Var.m3056d()) {
                m3072a(m3056d() + k0Var.m3056d());
            }
            System.arraycopy(k0Var.f35815a, 0, this.f35815a, m3056d(), k0Var.m3056d());
            this.f35816b += k0Var.f35816b;
        }
    }

    /* renamed from: a */
    public final boolean m3064a(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    /* renamed from: b */
    public int m3063b() {
        return this.f35816b;
    }

    /* renamed from: b */
    public <T> T m3060b(AbstractC9266f<T> fVar) {
        for (int i = this.f35816b - 1; i >= 0; i--) {
            if (m3064a(fVar.m3049a(), m3062b(i))) {
                return (T) m3071a(i, (AbstractC9266f<Object>) fVar);
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m3061b(int i, byte[] bArr) {
        this.f35815a[(i * 2) + 1] = bArr;
    }

    /* renamed from: b */
    public final byte[] m3062b(int i) {
        return (byte[]) this.f35815a[i * 2];
    }

    /* renamed from: c */
    public final Object m3057c(int i) {
        return this.f35815a[(i * 2) + 1];
    }

    /* renamed from: c */
    public final boolean m3058c() {
        return this.f35816b == 0;
    }

    /* renamed from: d */
    public final int m3056d() {
        return this.f35816b * 2;
    }

    /* renamed from: d */
    public final byte[] m3055d(int i) {
        Object c = m3057c(i);
        return c instanceof byte[] ? (byte[]) c : ((C9267g) c).m3040a();
    }

    /* renamed from: e */
    public final void m3054e() {
        if (m3056d() == 0 || m3056d() == m3073a()) {
            m3072a(Math.max(m3056d() * 2, 8));
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [byte[], byte[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[][] m3053f() {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.m3056d()
            byte[] r0 = new byte[r0]
            r7 = r0
            r0 = r6
            java.lang.Object[] r0 = r0.f35815a
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof byte[][]
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0027
            r0 = r8
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.m3056d()
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            goto L_0x0052
        L_0x0027:
            r0 = r10
            r1 = r6
            int r1 = r1.f35816b
            if (r0 >= r1) goto L_0x0052
            r0 = r10
            r1 = 2
            int r0 = r0 * r1
            r11 = r0
            r0 = r7
            r1 = r11
            r2 = r6
            r3 = r10
            byte[] r2 = r2.m3062b(r3)
            r0[r1] = r2
            r0 = r7
            r1 = r11
            r2 = 1
            int r1 = r1 + r2
            r2 = r6
            r3 = r10
            byte[] r2 = r2.m3055d(r3)
            r0[r1] = r2
            int r10 = r10 + 1
            goto L_0x0027
        L_0x0052:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.C9260k0.m3053f():byte[][]");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Metadata(");
        for (int i = 0; i < this.f35816b; i++) {
            if (i != 0) {
                sb.append(',');
            }
            String str = new String(m3062b(i), C4916c.f17555a);
            sb.append(str);
            sb.append('=');
            if (str.endsWith("-bin")) {
                sb.append(f35814d.m7917a(m3055d(i)));
            } else {
                sb.append(new String(m3055d(i), C4916c.f17555a));
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
