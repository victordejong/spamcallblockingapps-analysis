package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import p131c.p161d.p354f.AbstractC6123k;
import p131c.p161d.p354f.C6120h;
import p131c.p161d.p354f.C6124l;
import p131c.p161d.p354f.C6125m;
import p131c.p161d.p354f.C6126n;
import p131c.p161d.p354f.p361v.C6240a;
/* renamed from: c.d.f.t.k.e */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/e.class */
public final class C6175e extends C6240a {

    /* renamed from: u */
    public static final Reader f19691u = new C6176a();

    /* renamed from: v */
    public static final Object f19692v = new Object();

    /* renamed from: q */
    public Object[] f19693q = new Object[32];

    /* renamed from: r */
    public int f19694r = 0;

    /* renamed from: s */
    public String[] f19695s = new String[32];

    /* renamed from: t */
    public int[] f19696t = new int[32];

    /* renamed from: c.d.f.t.k.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/e$a.class */
    public class C6176a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    }

    public C6175e(AbstractC6123k kVar) {
        super(f19691u);
        m21897a(kVar);
    }

    /* renamed from: k */
    private String m21896k() {
        return " at path " + mo21814h();
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: A */
    public void mo21831A() throws IOException {
        if (mo21802u() == JsonToken.NAME) {
            mo21806q();
            this.f19695s[this.f19694r - 2] = "null";
        } else {
            m21900C();
            int i = this.f19694r;
            if (i > 0) {
                this.f19695s[i - 1] = "null";
            }
        }
        int i2 = this.f19694r;
        if (i2 > 0) {
            int[] iArr = this.f19696t;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    /* renamed from: B */
    public final Object m21901B() {
        return this.f19693q[this.f19694r - 1];
    }

    /* renamed from: C */
    public final Object m21900C() {
        Object[] objArr = this.f19693q;
        int i = this.f19694r - 1;
        this.f19694r = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    /* renamed from: D */
    public void m21899D() throws IOException {
        m21898a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m21901B()).next();
        m21897a(entry.getValue());
        m21897a(new C6126n((String) entry.getKey()));
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: a */
    public void mo21830a() throws IOException {
        m21898a(JsonToken.BEGIN_ARRAY);
        m21897a(((C6120h) m21901B()).iterator());
        this.f19696t[this.f19694r - 1] = 0;
    }

    /* renamed from: a */
    public final void m21898a(JsonToken jsonToken) throws IOException {
        if (mo21802u() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + mo21802u() + m21896k());
        }
    }

    /* renamed from: a */
    public final void m21897a(Object obj) {
        int i = this.f19694r;
        Object[] objArr = this.f19693q;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f19693q = Arrays.copyOf(objArr, i2);
            this.f19696t = Arrays.copyOf(this.f19696t, i2);
            this.f19695s = (String[]) Arrays.copyOf(this.f19695s, i2);
        }
        Object[] objArr2 = this.f19693q;
        int i3 = this.f19694r;
        this.f19694r = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: b */
    public void mo21825b() throws IOException {
        m21898a(JsonToken.BEGIN_OBJECT);
        m21897a(((C6125m) m21901B()).entrySet().iterator());
    }

    @Override // p131c.p161d.p354f.p361v.C6240a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f19693q = new Object[]{f19692v};
        this.f19694r = 1;
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: f */
    public void mo21816f() throws IOException {
        m21898a(JsonToken.END_ARRAY);
        m21900C();
        m21900C();
        int i = this.f19694r;
        if (i > 0) {
            int[] iArr = this.f19696t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: g */
    public void mo21815g() throws IOException {
        m21898a(JsonToken.END_OBJECT);
        m21900C();
        m21900C();
        int i = this.f19694r;
        if (i > 0) {
            int[] iArr = this.f19696t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: h */
    public String mo21814h() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = 0;
        while (i2 < this.f19694r) {
            Object[] objArr = this.f19693q;
            if (objArr[i2] instanceof C6120h) {
                int i3 = i2 + 1;
                i = i3;
                if (objArr[i3] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.f19696t[i3]);
                    sb.append(']');
                    i = i3;
                }
            } else {
                i = i2;
                if (objArr[i2] instanceof C6125m) {
                    int i4 = i2 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('.');
                        String[] strArr = this.f19695s;
                        i = i4;
                        if (strArr[i4] != null) {
                            sb.append(strArr[i4]);
                            i = i4;
                        }
                    }
                }
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: i */
    public boolean mo21813i() throws IOException {
        JsonToken u = mo21802u();
        return (u == JsonToken.END_OBJECT || u == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: l */
    public boolean mo21810l() throws IOException {
        m21898a(JsonToken.BOOLEAN);
        boolean k = ((C6126n) m21900C()).m21951k();
        int i = this.f19694r;
        if (i > 0) {
            int[] iArr = this.f19696t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return k;
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: m */
    public double mo21809m() throws IOException {
        JsonToken u = mo21802u();
        if (u == JsonToken.NUMBER || u == JsonToken.STRING) {
            double m = ((C6126n) m21901B()).m21950m();
            if (m21812j() || (!Double.isNaN(m) && !Double.isInfinite(m))) {
                m21900C();
                int i = this.f19694r;
                if (i > 0) {
                    int[] iArr = this.f19696t;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return m;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + m);
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + u + m21896k());
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: n */
    public int mo21808n() throws IOException {
        JsonToken u = mo21802u();
        if (u == JsonToken.NUMBER || u == JsonToken.STRING) {
            int n = ((C6126n) m21901B()).m21949n();
            m21900C();
            int i = this.f19694r;
            if (i > 0) {
                int[] iArr = this.f19696t;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return n;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + u + m21896k());
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: p */
    public long mo21807p() throws IOException {
        JsonToken u = mo21802u();
        if (u == JsonToken.NUMBER || u == JsonToken.STRING) {
            long o = ((C6126n) m21901B()).m21948o();
            m21900C();
            int i = this.f19694r;
            if (i > 0) {
                int[] iArr = this.f19696t;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return o;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + u + m21896k());
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: q */
    public String mo21806q() throws IOException {
        m21898a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m21901B()).next();
        String str = (String) entry.getKey();
        this.f19695s[this.f19694r - 1] = str;
        m21897a(entry.getValue());
        return str;
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: r */
    public void mo21805r() throws IOException {
        m21898a(JsonToken.NULL);
        m21900C();
        int i = this.f19694r;
        if (i > 0) {
            int[] iArr = this.f19696t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: s */
    public String mo21804s() throws IOException {
        JsonToken u = mo21802u();
        if (u == JsonToken.STRING || u == JsonToken.NUMBER) {
            String t = ((C6126n) m21900C()).m21946t();
            int i = this.f19694r;
            if (i > 0) {
                int[] iArr = this.f19696t;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return t;
        }
        throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + u + m21896k());
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    public String toString() {
        return C6175e.class.getSimpleName();
    }

    @Override // p131c.p161d.p354f.p361v.C6240a
    /* renamed from: u */
    public JsonToken mo21802u() throws IOException {
        if (this.f19694r == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object B = m21901B();
        if (B instanceof Iterator) {
            boolean z = this.f19693q[this.f19694r - 2] instanceof C6125m;
            Iterator it = (Iterator) B;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            } else if (z) {
                return JsonToken.NAME;
            } else {
                m21897a(it.next());
                return mo21802u();
            }
        } else if (B instanceof C6125m) {
            return JsonToken.BEGIN_OBJECT;
        } else {
            if (B instanceof C6120h) {
                return JsonToken.BEGIN_ARRAY;
            }
            if (B instanceof C6126n) {
                C6126n nVar = (C6126n) B;
                if (nVar.m21943y()) {
                    return JsonToken.STRING;
                }
                if (nVar.m21945u()) {
                    return JsonToken.BOOLEAN;
                }
                if (nVar.m21944v()) {
                    return JsonToken.NUMBER;
                }
                throw new AssertionError();
            } else if (B instanceof C6124l) {
                return JsonToken.NULL;
            } else {
                if (B == f19692v) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }
}
