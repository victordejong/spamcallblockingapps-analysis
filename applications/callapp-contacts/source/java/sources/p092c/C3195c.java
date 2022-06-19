package p092c;

import com.google.api.client.googleapis.notifications.C15291b;
import com.mopub.mobileads.VastIconXmlManager;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import p092c.p093a.C3185b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\u001a0\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H��\u001a \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\fH��\u001a\u0019\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0080\b\u001a\u0019\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010\u000f\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0080\f\u001a\u0015\u0010\u000f\u001a\u00020\f*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\fH\u0080\f\u001a\f\u0010\u0012\u001a\u00020\u0005*\u00020\u0005H��\u001a\f\u0010\u0012\u001a\u00020\f*\u00020\fH��\u001a\f\u0010\u0012\u001a\u00020\u0013*\u00020\u0013H��\u001a\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\u0015\u0010\u0015\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0080\f\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0010H��\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0005H��\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\fH��¨\u0006\u0018"}, m4298d2 = {"arrayRangeEquals", "", "a", "", "aOffset", "", C15291b.f55271a, "bOffset", "byteCount", "checkOffsetAndCount", "", "size", "", VastIconXmlManager.OFFSET, "minOf", "and", "", "other", "reverseBytes", "", "shl", "shr", "toHexString", "", "okio"}, m4297k = 2, m4296mv = {1, 4, 0})
/* renamed from: c.c */
/* loaded from: classes-dex2jar.jar:c/c.class */
public final class C3195c {
    /* renamed from: a */
    public static final String m39228a(byte b) {
        return new String(new char[]{C3185b.m39238a()[(b >> 4) & 15], C3185b.m39238a()[b & 15]});
    }

    /* renamed from: a */
    public static final String m39227a(int i) {
        if (i == 0) {
            return "0";
        }
        char[] cArr = {C3185b.m39238a()[(i >> 28) & 15], C3185b.m39238a()[(i >> 24) & 15], C3185b.m39238a()[(i >> 20) & 15], C3185b.m39238a()[(i >> 16) & 15], C3185b.m39238a()[(i >> 12) & 15], C3185b.m39238a()[(i >> 8) & 15], C3185b.m39238a()[(i >> 4) & 15], C3185b.m39238a()[i & 15]};
        int i2 = 0;
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return new String(cArr, i2, 8 - i2);
    }

    /* renamed from: a */
    public static final void m39226a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    /* renamed from: a */
    public static final boolean m39225a(byte[] a, int i, byte[] b, int i2, int i3) {
        C18524p.m3840d(a, "a");
        C18524p.m3840d(b, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a[i4 + i] != b[i4 + i2]) {
                return false;
            }
        }
        return true;
    }
}
