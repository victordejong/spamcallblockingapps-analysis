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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvs.class */
public final class cvs implements cvu {

    /* renamed from: a  reason: collision with root package name */
    private static final beb.a f26483a = beb.a.d();

    @Override // com.google.android.gms.internal.ads.cvu
    public final beb.a a() {
        return f26483a;
    }

    @Override // com.google.android.gms.internal.ads.cvu
    public final beb.a a(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        beb.a.b c2 = beb.a.c();
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
            c2.i(str);
            c2.a(info.isLimitAdTrackingEnabled());
            c2.a(beb.a.c.DEVICE_IDENTIFIER_ANDROID_AD_ID);
        }
        return c2.f();
    }
}
