package p193e.p1545k.p1546a.p1548b.p1552w;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
/* renamed from: e.k.a.b.w.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/i.class */
public class C23403i implements AbstractC23384p, Serializable {

    /* renamed from: f */
    public static final C23398d f64804f = C23398d.f64790c;

    /* renamed from: a */
    public final String f64805a;

    /* renamed from: b */
    public byte[] f64806b;

    /* renamed from: c */
    public byte[] f64807c;

    /* renamed from: d */
    public char[] f64808d;

    /* renamed from: e */
    public transient String f64809e;

    public C23403i(String str) {
        if (str != null) {
            this.f64805a = str;
            return;
        }
        throw new IllegalStateException("Null String illegal for SerializedString");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this.f64809e = objectInputStream.readUTF();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeUTF(this.f64805a);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: a */
    public final char[] mo7100a() {
        char[] cArr = this.f64808d;
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = f64804f.m7125d(this.f64805a);
            this.f64808d = cArr2;
        }
        return cArr2;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: b */
    public final byte[] mo7099b() {
        byte[] bArr = this.f64806b;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = f64804f.m7124e(this.f64805a);
            this.f64806b = bArr2;
        }
        return bArr2;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: c */
    public int mo7098c(byte[] bArr, int i) {
        byte[] bArr2 = this.f64806b;
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = f64804f.m7124e(this.f64805a);
            this.f64806b = bArr3;
        }
        int length = bArr3.length;
        if (i + length > bArr.length) {
            return -1;
        }
        System.arraycopy(bArr3, 0, bArr, i, length);
        return length;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: d */
    public int mo7097d(char[] cArr, int i) {
        String str = this.f64805a;
        int length = str.length();
        if (i + length > cArr.length) {
            return -1;
        }
        str.getChars(0, length, cArr, i);
        return length;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: e */
    public int mo7096e(byte[] bArr, int i) {
        byte[] bArr2 = this.f64807c;
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = f64804f.m7126c(this.f64805a);
            this.f64807c = bArr3;
        }
        int length = bArr3.length;
        if (i + length > bArr.length) {
            return -1;
        }
        System.arraycopy(bArr3, 0, bArr, i, length);
        return length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            return this.f64805a.equals(((C23403i) obj).f64805a);
        }
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: f */
    public int mo7095f(char[] cArr, int i) {
        char[] cArr2 = this.f64808d;
        char[] cArr3 = cArr2;
        if (cArr2 == null) {
            cArr3 = f64804f.m7125d(this.f64805a);
            this.f64808d = cArr3;
        }
        int length = cArr3.length;
        if (i + length > cArr.length) {
            return -1;
        }
        System.arraycopy(cArr3, 0, cArr, i, length);
        return length;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    /* renamed from: g */
    public final byte[] mo7094g() {
        byte[] bArr = this.f64807c;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = f64804f.m7126c(this.f64805a);
            this.f64807c = bArr2;
        }
        return bArr2;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23384p
    public final String getValue() {
        return this.f64805a;
    }

    public final int hashCode() {
        return this.f64805a.hashCode();
    }

    public Object readResolve() {
        return new C23403i(this.f64809e);
    }

    public final String toString() {
        return this.f64805a;
    }
}
