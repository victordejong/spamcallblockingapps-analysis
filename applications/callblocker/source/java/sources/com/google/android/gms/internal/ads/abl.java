package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abl.class */
public final class abl {

    /* renamed from: a */
    private long f7753a;

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: a */
    public final long m13668a(ByteBuffer byteBuffer) {
        char c;
        afi afiVar;
        ail ailVar;
        if (this.f7753a > 0) {
            c = this.f7753a;
        } else {
            try {
                ByteBuffer duplicate = byteBuffer.duplicate();
                duplicate.flip();
                Iterator<adi> it = new abh(new abm(duplicate), abn.f7755a).m9466b().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        afiVar = null;
                        break;
                    }
                    adi next = it.next();
                    if (next instanceof afi) {
                        afiVar = (afi) next;
                        break;
                    }
                }
                Iterator<adi> it2 = afiVar.m9466b().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        ailVar = null;
                        break;
                    }
                    adi next2 = it2.next();
                    if (next2 instanceof ail) {
                        ailVar = (ail) next2;
                        break;
                    }
                }
                this.f7753a = (1000 * ailVar.m13095c()) / ailVar.m13096b();
                c = this.f7753a;
            } catch (IOException | RuntimeException e) {
                c = 0;
            }
        }
        return c;
    }
}
