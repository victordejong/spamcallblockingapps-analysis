package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: c.d.h.j1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/j1.class */
public final class C6334j1 {

    /* renamed from: f */
    public static final C6334j1 f19965f = new C6334j1(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f19966a;

    /* renamed from: b */
    public int[] f19967b;

    /* renamed from: c */
    public Object[] f19968c;

    /* renamed from: d */
    public int f19969d;

    /* renamed from: e */
    public boolean f19970e;

    public C6334j1() {
        this(0, new int[8], new Object[8], true);
    }

    public C6334j1(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f19969d = -1;
        this.f19966a = i;
        this.f19967b = iArr;
        this.f19968c = objArr;
        this.f19970e = z;
    }

    /* renamed from: a */
    public static int m21371a(int[] iArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    /* renamed from: a */
    public static int m21369a(Object[] objArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + objArr[i3].hashCode();
        }
        return i2;
    }

    /* renamed from: a */
    public static C6334j1 m21374a(C6334j1 j1Var, C6334j1 j1Var2) {
        int i = j1Var.f19966a + j1Var2.f19966a;
        int[] copyOf = Arrays.copyOf(j1Var.f19967b, i);
        System.arraycopy(j1Var2.f19967b, 0, copyOf, j1Var.f19966a, j1Var2.f19966a);
        Object[] copyOf2 = Arrays.copyOf(j1Var.f19968c, i);
        System.arraycopy(j1Var2.f19968c, 0, copyOf2, j1Var.f19966a, j1Var2.f19966a);
        return new C6334j1(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m21375a(int i, Object obj, Writer writer) throws IOException {
        int a = WireFormat.m6841a(i);
        int b = WireFormat.m6839b(i);
        if (b == 0) {
            writer.mo6815c(a, ((Long) obj).longValue());
        } else if (b == 1) {
            writer.mo6833a(a, ((Long) obj).longValue());
        } else if (b == 2) {
            writer.mo6831a(a, (ByteString) obj);
        } else if (b != 3) {
            if (b == 5) {
                writer.mo6822b(a, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
        } else if (writer.mo6838a() == Writer.FieldOrder.ASCENDING) {
            writer.mo6837a(a);
            ((C6334j1) obj).m21366b(writer);
            writer.mo6823b(a);
        } else {
            writer.mo6823b(a);
            ((C6334j1) obj).m21366b(writer);
            writer.mo6837a(a);
        }
    }

    /* renamed from: a */
    public static boolean m21370a(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m21368a(Object[] objArr, Object[] objArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!objArr[i2].equals(objArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static C6334j1 m21362f() {
        return f19965f;
    }

    /* renamed from: g */
    public static C6334j1 m21361g() {
        return new C6334j1();
    }

    /* renamed from: a */
    public void m21377a() {
        if (!this.f19970e) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public void m21376a(int i, Object obj) {
        m21377a();
        m21367b();
        int[] iArr = this.f19967b;
        int i2 = this.f19966a;
        iArr[i2] = i;
        this.f19968c[i2] = obj;
        this.f19966a = i2 + 1;
    }

    /* renamed from: a */
    public void m21373a(Writer writer) throws IOException {
        if (writer.mo6838a() == Writer.FieldOrder.DESCENDING) {
            for (int i = this.f19966a - 1; i >= 0; i--) {
                writer.mo6830a(WireFormat.m6841a(this.f19967b[i]), this.f19968c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f19966a; i2++) {
            writer.mo6830a(WireFormat.m6841a(this.f19967b[i2]), this.f19968c[i2]);
        }
    }

    /* renamed from: a */
    public final void m21372a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f19966a; i2++) {
            C6360p0.m21167a(sb, i, String.valueOf(WireFormat.m6841a(this.f19967b[i2])), this.f19968c[i2]);
        }
    }

    /* renamed from: b */
    public final void m21367b() {
        int i = this.f19966a;
        if (i == this.f19967b.length) {
            int i2 = this.f19966a + (i < 4 ? 8 : i >> 1);
            this.f19967b = Arrays.copyOf(this.f19967b, i2);
            this.f19968c = Arrays.copyOf(this.f19968c, i2);
        }
    }

    /* renamed from: b */
    public void m21366b(Writer writer) throws IOException {
        if (this.f19966a != 0) {
            if (writer.mo6838a() == Writer.FieldOrder.ASCENDING) {
                for (int i = 0; i < this.f19966a; i++) {
                    m21375a(this.f19967b[i], this.f19968c[i], writer);
                }
                return;
            }
            for (int i2 = this.f19966a - 1; i2 >= 0; i2--) {
                m21375a(this.f19967b[i2], this.f19968c[i2], writer);
            }
        }
    }

    /* renamed from: c */
    public int m21365c() {
        int i;
        int i2 = this.f19969d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f19966a; i4++) {
            int i5 = this.f19967b[i4];
            int a = WireFormat.m6841a(i5);
            int b = WireFormat.m6839b(i5);
            if (b == 0) {
                i = CodedOutputStream.m7017j(a, ((Long) this.f19968c[i4]).longValue());
            } else if (b == 1) {
                i = CodedOutputStream.m7032f(a, ((Long) this.f19968c[i4]).longValue());
            } else if (b == 2) {
                i = CodedOutputStream.m7049c(a, (ByteString) this.f19968c[i4]);
            } else if (b == 3) {
                i = (CodedOutputStream.m7007o(a) * 2) + ((C6334j1) this.f19968c[i4]).m21365c();
            } else if (b == 5) {
                i = CodedOutputStream.m7022i(a, ((Integer) this.f19968c[i4]).intValue());
            } else {
                throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
            }
            i3 += i;
        }
        this.f19969d = i3;
        return i3;
    }

    /* renamed from: d */
    public int m21364d() {
        int i = this.f19969d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19966a; i3++) {
            i2 += CodedOutputStream.m7038d(WireFormat.m6841a(this.f19967b[i3]), (ByteString) this.f19968c[i3]);
        }
        this.f19969d = i2;
        return i2;
    }

    /* renamed from: e */
    public void m21363e() {
        this.f19970e = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C6334j1)) {
            return false;
        }
        C6334j1 j1Var = (C6334j1) obj;
        int i = this.f19966a;
        return i == j1Var.f19966a && m21370a(this.f19967b, j1Var.f19967b, i) && m21368a(this.f19968c, j1Var.f19968c, this.f19966a);
    }

    public int hashCode() {
        int i = this.f19966a;
        return ((((527 + i) * 31) + m21371a(this.f19967b, i)) * 31) + m21369a(this.f19968c, this.f19966a);
    }
}
