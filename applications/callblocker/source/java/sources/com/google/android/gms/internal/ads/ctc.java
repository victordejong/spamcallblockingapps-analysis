package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import com.google.android.gms.internal.ads.cye;
import java.security.GeneralSecurityException;
import java.util.Iterator;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctc.class */
public final class ctc {
    @Deprecated
    /* renamed from: a */
    public static final csy m10699a(byte[] bArr) {
        cye.C2935a next;
        try {
            cye m10396a = cye.m10396a(bArr, dci.m10138a());
            Iterator<cye.C2935a> it = m10396a.m10395b().iterator();
            do {
                if (!it.hasNext()) {
                    return csy.m10719a(m10396a);
                }
                next = it.next();
                if (next.m10391b().m10417c() == cxu.EnumC2931b.UNKNOWN_KEYMATERIAL || next.m10391b().m10417c() == cxu.EnumC2931b.SYMMETRIC) {
                    break;
                }
            } while (next.m10391b().m10417c() != cxu.EnumC2931b.ASYMMETRIC_PRIVATE);
            throw new GeneralSecurityException("keyset contains secret key material");
        } catch (zzeco e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
