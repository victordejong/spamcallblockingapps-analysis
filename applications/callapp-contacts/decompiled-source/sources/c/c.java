package c;

import com.google.api.client.googleapis.notifications.b;
import com.mopub.mobileads.VastIconXmlManager;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\u001a0\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H��\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\fH��\u001a\u0019\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0080\b\u001a\u0019\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010\u000f\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\f*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\fH\u0080\f\u001a\f\u0010\u0012\u001a\u00020\u0005*\u00020\u0005H��\u001a\f\u0010\u0012\u001a\u00020\f*\u00020\fH��\u001a\f\u0010\u0012\u001a\u00020\u0013*\u00020\u0013H��\u001a\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0010H��\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0005H��\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\fH��¨\u0006\u0018"}, d2 = {"arrayRangeEquals", "", "a", "", "aOffset", "", b.f31754a, "bOffset", "byteCount", "checkOffsetAndCount", "", "size", "", VastIconXmlManager.OFFSET, "minOf", "and", "", "other", "reverseBytes", "", "shl", "shr", "toHexString", "", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/c.class */
public final class c {
    public static final String a(byte b2) {
        return new String(new char[]{c.a.b.a()[(b2 >> 4) & 15], c.a.b.a()[b2 & 15]});
    }

    public static final String a(int i) {
        if (i == 0) {
            return "0";
        }
        int i2 = 0;
        char[] cArr = {c.a.b.a()[(i >> 28) & 15], c.a.b.a()[(i >> 24) & 15], c.a.b.a()[(i >> 20) & 15], c.a.b.a()[(i >> 16) & 15], c.a.b.a()[(i >> 12) & 15], c.a.b.a()[(i >> 8) & 15], c.a.b.a()[(i >> 4) & 15], c.a.b.a()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return new String(cArr, i2, 8 - i2);
    }

    public static final void a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final boolean a(byte[] a2, int i, byte[] b2, int i2, int i3) {
        p.d(a2, "a");
        p.d(b2, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a2[i4 + i] != b2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }
}
