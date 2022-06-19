package okhttp3.logging;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p530f.C18363d;
import p092c.C3195c;
import p092c.C3202f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\u001a\f\u0010��\u001a\u00020\u0001*\u00020\u0002H��¨\u0006\u0003"}, m4298d2 = {"isProbablyUtf8", "", "Lokio/Buffer;", "okhttp-logging-interceptor"}, m4297k = 2, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/logging/Utf8Kt.class */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(C3202f isProbablyUtf8) {
        int i;
        int i2;
        int i3;
        C18524p.m3840d(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            C3202f c3202f = new C3202f();
            isProbablyUtf8.m39216a(c3202f, 0L, C18363d.m4054a(isProbablyUtf8.f11572b, 64L));
            int i4 = 0;
            while (true) {
                int i5 = 1;
                if (i4 >= 16 || c3202f.mo39119e()) {
                    return true;
                }
                if (c3202f.f11572b == 0) {
                    throw new EOFException();
                }
                byte m39207c = c3202f.m39207c(0L);
                if ((m39207c & 128) == 0) {
                    i = m39207c & Byte.MAX_VALUE;
                    i3 = 1;
                    i2 = 0;
                } else if ((m39207c & 224) == 192) {
                    i = m39207c & 31;
                    i3 = 2;
                    i2 = 128;
                } else if ((m39207c & 240) == 224) {
                    i = m39207c & 15;
                    i3 = 3;
                    i2 = 2048;
                } else if ((m39207c & 248) == 240) {
                    i = m39207c & 7;
                    i3 = 4;
                    i2 = 65536;
                } else {
                    c3202f.mo39114h(1L);
                    i = 65533;
                    if (!Character.isISOControl(i) && !Character.isWhitespace(i)) {
                        return false;
                    }
                    i4++;
                }
                long j = c3202f.f11572b;
                long j2 = i3;
                if (j < j2) {
                    throw new EOFException("size < " + i3 + ": " + c3202f.f11572b + " (to read code point prefixed 0x" + C3195c.m39228a(m39207c) + ')');
                }
                while (true) {
                    if (i5 < i3) {
                        long j3 = i5;
                        byte m39207c2 = c3202f.m39207c(j3);
                        if ((m39207c2 & 192) != 128) {
                            c3202f.mo39114h(j3);
                            i = 65533;
                            break;
                        }
                        i = (i << 6) | (m39207c2 & 63);
                        i5++;
                    } else {
                        c3202f.mo39114h(j2);
                        if (i > 1114111) {
                            i = 65533;
                        } else if (55296 <= i && 57343 >= i) {
                            i = 65533;
                        } else if (i < i2) {
                            i = 65533;
                        }
                    }
                }
                if (!Character.isISOControl(i)) {
                }
                i4++;
            }
        } catch (EOFException e) {
            return false;
        }
    }
}
