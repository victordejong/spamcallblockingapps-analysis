package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.j5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j5.class */
public abstract class AbstractC7843j5 {

    /* renamed from: a */
    public volatile int f18376a = -1;

    /* renamed from: a */
    public static final <T extends AbstractC7843j5> T m19275a(T t, byte[] bArr) throws C7830i5 {
        m19274a(t, bArr, 0, bArr.length);
        return t;
    }

    /* renamed from: a */
    public static final <T extends AbstractC7843j5> T m19274a(T t, byte[] bArr, int i, int i2) throws C7830i5 {
        try {
            C7970z4 a = C7970z4.m18730a(bArr, 0, i2);
            t.mo18860a(a);
            a.m18728b(0);
            return t;
        } catch (C7830i5 e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    /* renamed from: a */
    public static final byte[] m19276a(AbstractC7843j5 j5Var) {
        byte[] bArr = new byte[j5Var.m19273b()];
        try {
            C7764a5 a = C7764a5.m19533a(bArr, 0, bArr.length);
            j5Var.mo18861a(a);
            a.m19545a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: a */
    public int mo18862a() {
        return 0;
    }

    /* renamed from: a */
    public abstract AbstractC7843j5 mo18860a(C7970z4 z4Var) throws IOException;

    /* renamed from: a */
    public void mo18861a(C7764a5 a5Var) throws IOException {
    }

    /* renamed from: b */
    public final int m19273b() {
        int a = mo18862a();
        this.f18376a = a;
        return a;
    }

    /* renamed from: c */
    public AbstractC7843j5 clone() throws CloneNotSupportedException {
        return (AbstractC7843j5) super.clone();
    }

    public String toString() {
        return C7851k5.m19267a(this);
    }
}
