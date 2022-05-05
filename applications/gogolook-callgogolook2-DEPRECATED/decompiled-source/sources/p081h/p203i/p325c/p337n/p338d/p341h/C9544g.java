package p081h.p203i.p325c.p337n.p338d.p341h;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: h.i.c.n.d.h.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/g.class */
public class C9544g {

    /* renamed from: a */
    public static final AtomicLong f21723a = new AtomicLong(0);

    /* renamed from: b */
    public static String f21724b;

    public C9544g(C9621y yVar) {
        byte[] bArr = new byte[10];
        m14943c(bArr);
        m14944b(bArr);
        m14946a(bArr);
        String c = C9546h.m14917c(yVar.mo14681a());
        String a = C9546h.m14926a(bArr);
        f21724b = String.format(Locale.US, "%s-%s-%s-%s", a.substring(0, 12), a.substring(12, 16), a.subSequence(16, 20), c.substring(0, 12)).toUpperCase(Locale.US);
    }

    /* renamed from: a */
    public static byte[] m14947a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: b */
    public static byte[] m14945b(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    /* renamed from: a */
    public final void m14946a(byte[] bArr) {
        byte[] b = m14945b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = b[0];
        bArr[9] = b[1];
    }

    /* renamed from: b */
    public final void m14944b(byte[] bArr) {
        byte[] b = m14945b(f21723a.incrementAndGet());
        bArr[6] = b[0];
        bArr[7] = b[1];
    }

    /* renamed from: c */
    public final void m14943c(byte[] bArr) {
        long time = new Date().getTime();
        byte[] a = m14947a(time / 1000);
        bArr[0] = a[0];
        bArr[1] = a[1];
        bArr[2] = a[2];
        bArr[3] = a[3];
        byte[] b = m14945b(time % 1000);
        bArr[4] = b[0];
        bArr[5] = b[1];
    }

    public String toString() {
        return f21724b;
    }
}
