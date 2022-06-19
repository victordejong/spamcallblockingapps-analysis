package p080e5;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: e5.d */
/* loaded from: classes-dex2jar.jar:e5/d.class */
public class C2544d {

    /* renamed from: a */
    public static final AtomicLong f8904a = new AtomicLong(0);

    /* renamed from: b */
    public static String f8905b;

    public C2544d(C2548e0 c2548e0) {
        long time = new Date().getTime();
        long j = time / 1000;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        byte[] array = allocate.array();
        byte b = array[0];
        byte b2 = array[1];
        byte b3 = array[2];
        byte b4 = array[3];
        byte[] m3459a = m3459a(time % 1000);
        byte b5 = m3459a[0];
        byte b6 = m3459a[1];
        byte[] m3459a2 = m3459a(f8904a.incrementAndGet());
        byte b7 = m3459a2[0];
        byte b8 = m3459a2[1];
        byte[] m3459a3 = m3459a(Integer.valueOf(Process.myPid()).shortValue());
        byte b9 = m3459a3[0];
        byte b10 = m3459a3[1];
        String m3446l = C2546e.m3446l(c2548e0.m3443c());
        String m3449i = C2546e.m3449i(new byte[]{b, b2, b3, b4, b5, b6, b7, b8, b9, b10});
        Locale locale = Locale.US;
        f8905b = String.format(locale, "%s%s%s%s", m3449i.substring(0, 12), m3449i.substring(12, 16), m3449i.subSequence(16, 20), m3446l.substring(0, 12)).toUpperCase(locale);
    }

    /* renamed from: a */
    public static byte[] m3459a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    public String toString() {
        return f8905b;
    }
}
