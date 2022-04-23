package okhttp3.logging;

import c.c;
import c.f;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.f.d;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\u001a\f\u0010��\u001a\u00020\u0001*\u00020\u0002H��¨\u0006\u0003"}, d2 = {"isProbablyUtf8", "", "Lokio/Buffer;", "okhttp-logging-interceptor"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/logging/Utf8Kt.class */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(f isProbablyUtf8) {
        int i;
        int i2;
        int i3;
        p.d(isProbablyUtf8, "$this$isProbablyUtf8");
        try {
            f fVar = new f();
            isProbablyUtf8.a(fVar, 0L, d.a(isProbablyUtf8.f6289b, 64L));
            int i4 = 0;
            while (true) {
                int i5 = 1;
                if (i4 >= 16 || fVar.e()) {
                    return true;
                }
                if (fVar.f6289b != 0) {
                    byte c2 = fVar.c(0L);
                    if ((c2 & 128) == 0) {
                        i = c2 & Byte.MAX_VALUE;
                        i3 = 1;
                        i2 = 0;
                    } else if ((c2 & 224) == 192) {
                        i = c2 & 31;
                        i3 = 2;
                        i2 = 128;
                    } else if ((c2 & 240) == 224) {
                        i = c2 & 15;
                        i3 = 3;
                        i2 = 2048;
                    } else if ((c2 & 248) == 240) {
                        i = c2 & 7;
                        i3 = 4;
                        i2 = 65536;
                    } else {
                        fVar.h(1L);
                        i = 65533;
                        if (!Character.isISOControl(i) && !Character.isWhitespace(i)) {
                            return false;
                        }
                        i4++;
                    }
                    long j = fVar.f6289b;
                    long j2 = i3;
                    if (j >= j2) {
                        while (true) {
                            if (i5 < i3) {
                                long j3 = i5;
                                byte c3 = fVar.c(j3);
                                if ((c3 & 192) != 128) {
                                    fVar.h(j3);
                                    i = 65533;
                                    break;
                                }
                                i = (i << 6) | (c3 & 63);
                                i5++;
                            } else {
                                fVar.h(j2);
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
                    } else {
                        throw new EOFException("size < " + i3 + ": " + fVar.f6289b + " (to read code point prefixed 0x" + c.a(c2) + ')');
                    }
                } else {
                    throw new EOFException();
                }
            }
        } catch (EOFException e) {
            return false;
        }
    }
}
