package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acm.class */
public final class acm {

    /* renamed from: a  reason: collision with root package name */
    private long f23105a;

    public final long a(ByteBuffer byteBuffer) {
        asr asrVar;
        arq arqVar;
        long j = this.f23105a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<aqp> it2 = new aon(new aci(duplicate), aco.f23107a).b().iterator();
            while (true) {
                arqVar = null;
                if (!it2.hasNext()) {
                    asrVar = null;
                    break;
                }
                aqp next = it2.next();
                if (next instanceof asr) {
                    asrVar = (asr) next;
                    break;
                }
            }
            Iterator<aqp> it3 = asrVar.b().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                aqp next2 = it3.next();
                if (next2 instanceof arq) {
                    arqVar = (arq) next2;
                    break;
                }
            }
            long j2 = (arqVar.f23829b * 1000) / arqVar.f23828a;
            this.f23105a = j2;
            return j2;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
