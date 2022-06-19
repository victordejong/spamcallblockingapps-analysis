package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzcf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdts.class */
public final class zzdts implements zzdtu {
    private static final zzcf.zza zzhtf = zzcf.zza.zzaq();

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final zzcf.zza zzaxz() {
        return zzhtf;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final zzcf.zza zzck(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzcf.zza.zzb zzap = zzcf.zza.zzap();
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context);
        advertisingIdClient.start();
        AdvertisingIdClient.Info info = advertisingIdClient.getInfo();
        String id = info.getId();
        String str = id;
        if (id != null) {
            str = id;
            if (id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(id);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = Base64.encodeToString(bArr, 11);
            }
        }
        if (str != null) {
            zzap.zzak(str);
            zzap.zzb(info.isLimitAdTrackingEnabled());
            zzap.zzb(zzcf.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
        }
        return (zzcf.zza) ((zzelb) zzap.zzbiw());
    }
}
