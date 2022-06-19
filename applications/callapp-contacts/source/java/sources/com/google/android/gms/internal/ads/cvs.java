package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.beb;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvs.class */
public final class cvs implements cvu {

    /* renamed from: a */
    private static final beb.C12217a f46651a = beb.C12217a.m18092d();

    @Override // com.google.android.gms.internal.ads.cvu
    /* renamed from: a */
    public final beb.C12217a mo17153a() {
        return f46651a;
    }

    @Override // com.google.android.gms.internal.ads.cvu
    /* renamed from: a */
    public final beb.C12217a mo17152a(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        beb.C12217a.C12219b m18096c = beb.C12217a.m18096c();
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
            m18096c.m18024i(str);
            m18096c.m18045a(info.isLimitAdTrackingEnabled());
            m18096c.m18050a(beb.C12217a.EnumC12220c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
        }
        return m18096c.mo16259f();
    }
}
