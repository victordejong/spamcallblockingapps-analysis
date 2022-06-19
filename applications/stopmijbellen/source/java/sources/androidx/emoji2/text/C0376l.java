package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p259v0.C4574b;
/* renamed from: androidx.emoji2.text.l */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/l.class */
public class C0376l {
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* renamed from: a */
    public static C4574b m8225a(ByteBuffer byteBuffer) throws IOException {
        char c;
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.order(ByteOrder.BIG_ENDIAN);
        duplicate.position(duplicate.position() + 4);
        int i = duplicate.getShort() & 65535;
        if (i <= 100) {
            duplicate.position(duplicate.position() + 6);
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    c = 65535;
                    break;
                }
                int i3 = duplicate.getInt();
                duplicate.position(duplicate.position() + 4);
                c = duplicate.getInt() & 4294967295L;
                duplicate.position(duplicate.position() + 4);
                if (1835365473 == i3) {
                    break;
                }
                i2++;
            }
            if (c != -1) {
                duplicate.position(duplicate.position() + ((int) (c - duplicate.position())));
                duplicate.position(duplicate.position() + 12);
                long j = duplicate.getInt();
                for (int i4 = 0; i4 < (j & 4294967295L); i4++) {
                    int i5 = duplicate.getInt();
                    long j2 = duplicate.getInt();
                    duplicate.getInt();
                    if (1164798569 == i5 || 1701669481 == i5) {
                        duplicate.position((int) ((j2 & 4294967295L) + c));
                        C4574b c4574b = new C4574b();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        c4574b.m761b(duplicate.position() + duplicate.getInt(duplicate.position()), duplicate);
                        return c4574b;
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }
}
