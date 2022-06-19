package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.v9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v9.class */
public final class C7063v9 {
    /* renamed from: a */
    public static void m10066a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i)));
        }
    }

    /* renamed from: b */
    public static void m10065b(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }
}
