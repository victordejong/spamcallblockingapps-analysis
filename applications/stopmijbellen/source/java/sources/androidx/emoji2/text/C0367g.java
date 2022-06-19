package androidx.emoji2.text;

import java.nio.ByteBuffer;
import p259v0.C4573a;
import p259v0.C4574b;
/* renamed from: androidx.emoji2.text.g */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/g.class */
public class C0367g {

    /* renamed from: d */
    public static final ThreadLocal<C4573a> f1605d = new ThreadLocal<>();

    /* renamed from: a */
    public final int f1606a;

    /* renamed from: b */
    public final C0377m f1607b;

    /* renamed from: c */
    public volatile int f1608c = 0;

    public C0367g(C0377m c0377m, int i) {
        this.f1607b = c0377m;
        this.f1606a = i;
    }

    /* renamed from: a */
    public int m8239a(int i) {
        int i2;
        C4573a m8235e = m8235e();
        int m762a = m8235e.m762a(16);
        if (m762a != 0) {
            ByteBuffer byteBuffer = m8235e.f14148b;
            int i3 = m762a + m8235e.f14147a;
            i2 = byteBuffer.getInt((i * 4) + byteBuffer.getInt(i3) + i3 + 4);
        } else {
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: b */
    public int m8238b() {
        int i;
        C4573a m8235e = m8235e();
        int m762a = m8235e.m762a(16);
        if (m762a != 0) {
            int i2 = m762a + m8235e.f14147a;
            i = m8235e.f14148b.getInt(m8235e.f14148b.getInt(i2) + i2);
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: c */
    public short m8237c() {
        C4573a m8235e = m8235e();
        int m762a = m8235e.m762a(14);
        return m762a != 0 ? m8235e.f14148b.getShort(m762a + m8235e.f14147a) : (short) 0;
    }

    /* renamed from: d */
    public int m8236d() {
        C4573a m8235e = m8235e();
        int m762a = m8235e.m762a(4);
        return m762a != 0 ? m8235e.f14148b.getInt(m762a + m8235e.f14147a) : 0;
    }

    /* renamed from: e */
    public final C4573a m8235e() {
        ThreadLocal<C4573a> threadLocal = f1605d;
        C4573a c4573a = threadLocal.get();
        C4573a c4573a2 = c4573a;
        if (c4573a == null) {
            c4573a2 = new C4573a();
            threadLocal.set(c4573a2);
        }
        C4574b c4574b = this.f1607b.f1637a;
        int i = this.f1606a;
        int m762a = c4574b.m762a(6);
        if (m762a != 0) {
            int i2 = m762a + c4574b.f14147a;
            int i3 = (i * 4) + c4574b.f14148b.getInt(i2) + i2 + 4;
            c4573a2.m761b(c4574b.f14148b.getInt(i3) + i3, c4574b.f14148b);
        }
        return c4573a2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(m8236d()));
        sb.append(", codepoints:");
        int m8238b = m8238b();
        for (int i = 0; i < m8238b; i++) {
            sb.append(Integer.toHexString(m8239a(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
