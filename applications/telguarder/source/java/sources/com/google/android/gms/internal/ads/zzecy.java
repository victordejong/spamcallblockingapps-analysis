package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecy.class */
public final class zzecy extends zzeaz<zzeau, zzefn> {
    public zzecy(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeaz
    public final /* synthetic */ zzeau zzah(zzefn zzefnVar) throws GeneralSecurityException {
        zzefn zzefnVar2 = zzefnVar;
        zzefk zzbcu = zzefnVar2.zzbdb().zzbcu();
        zzefr zzbcw = zzbcu.zzbcw();
        zzehz zza = zzedh.zza(zzbcw.zzbdj());
        byte[] byteArray = zzefnVar2.zzbbe().toByteArray();
        return new zzehu((ECPrivateKey) zzeie.zzikm.zzhw("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, byteArray), zzehx.zza(zza))), zzbcw.zzbdl().toByteArray(), zzedh.zza(zzbcw.zzbdk()), zzedh.zza(zzbcu.zzbcy()), new zzedj(zzbcu.zzbcx().zzbcr()));
    }
}
