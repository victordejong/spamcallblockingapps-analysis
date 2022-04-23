package com.google.android.exoplayer2.metadata.dvbsi;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.metadata.f;
import com.google.android.exoplayer2.util.t;
import com.google.common.base.d;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/dvbsi/a.class */
public final class a extends f {
    @Override // com.google.android.exoplayer2.metadata.f
    public final Metadata a(c cVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() != 116) {
            return null;
        }
        t tVar = new t(byteBuffer.array(), byteBuffer.limit());
        tVar.b(12);
        int c2 = tVar.c(12);
        int c3 = tVar.c();
        tVar.b(44);
        tVar.d(tVar.c(12));
        tVar.b(16);
        ArrayList arrayList = new ArrayList();
        while (tVar.c() < (c3 + c2) - 4) {
            tVar.b(48);
            int c4 = tVar.c(8);
            tVar.b(4);
            int c5 = tVar.c() + tVar.c(12);
            String str = null;
            String str2 = null;
            while (tVar.c() < c5) {
                int c6 = tVar.c(8);
                int c7 = tVar.c(8);
                int c8 = tVar.c() + c7;
                if (c6 == 2) {
                    int c9 = tVar.c(16);
                    tVar.b(8);
                    str = str;
                    str2 = str2;
                    if (c9 != 3) {
                    }
                    while (true) {
                        str2 = str2;
                        if (tVar.c() < c8) {
                            str = tVar.a(tVar.c(8), d.f31918a);
                            int c10 = tVar.c(8);
                            for (int i = 0; i < c10; i++) {
                                tVar.d(tVar.c(8));
                            }
                        }
                    }
                } else {
                    str = str;
                    str2 = str2;
                    if (c6 == 21) {
                        str2 = tVar.a(c7, d.f31918a);
                        str = str;
                    }
                }
                tVar.a(c8 * 8);
            }
            tVar.a(c5 * 8);
            if (!(str == null || str2 == null)) {
                arrayList.add(new AppInfoTable(c4, str + str2));
            }
        }
        if (!arrayList.isEmpty()) {
            return new Metadata(arrayList);
        }
        return null;
    }
}
