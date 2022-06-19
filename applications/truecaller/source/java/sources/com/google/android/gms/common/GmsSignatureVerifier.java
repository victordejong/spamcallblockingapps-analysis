package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzag;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24989k;
import p193e.p1577m.p1578a.p1642f.p1653e.C24991m;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GmsSignatureVerifier.class */
public class GmsSignatureVerifier {
    static {
        zzag.zzl();
        zzag.zzl();
        AbstractBinderC24989k abstractBinderC24989k = C24991m.f69952d;
        zzag zzn = zzag.zzn(abstractBinderC24989k.mo4244B1(), C24991m.f69950b.mo4244B1());
        Objects.requireNonNull(zzn, "null reference");
        zzag zzk = zzag.zzk(zzn);
        AbstractBinderC24989k abstractBinderC24989k2 = C24991m.f69951c;
        zzag zzn2 = zzag.zzn(abstractBinderC24989k2.mo4244B1(), C24991m.f69949a.mo4244B1());
        Objects.requireNonNull(zzn2, "null reference");
        zzag zzk2 = zzag.zzk(zzn2);
        if (!zzk.isEmpty() || !zzk2.isEmpty()) {
            zzag.zzl();
            zzag.zzl();
            zzag zzm = zzag.zzm(abstractBinderC24989k.mo4244B1());
            Objects.requireNonNull(zzm, "null reference");
            zzag zzk3 = zzag.zzk(zzm);
            zzag zzm2 = zzag.zzm(abstractBinderC24989k2.mo4244B1());
            Objects.requireNonNull(zzm2, "null reference");
            zzag zzk4 = zzag.zzk(zzm2);
            if (zzk3.isEmpty() && zzk4.isEmpty()) {
                throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
            }
            return;
        }
        throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
    }
}
