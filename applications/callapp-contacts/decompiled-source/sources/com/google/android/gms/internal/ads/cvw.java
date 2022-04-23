package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cvt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvw.class */
final class cvw implements dnp<Integer, cvt.a> {
    @Override // com.google.android.gms.internal.ads.dnp
    public final /* synthetic */ cvt.a a(Integer num) {
        cvt.a zzep = cvt.a.zzep(num.intValue());
        cvt.a aVar = zzep;
        if (zzep == null) {
            aVar = cvt.a.BLOCKED_REASON_UNKNOWN;
        }
        return aVar;
    }
}
