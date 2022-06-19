package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeis.class */
public final class zzeis extends ThreadLocal<Mac> {
    private final /* synthetic */ zzeip zziky;

    public zzeis(zzeip zzeipVar) {
        this.zziky = zzeipVar;
    }

    /* renamed from: zzbft */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzeie<zzeik, Mac> zzeieVar = zzeie.zzikh;
            str = this.zziky.zzikr;
            Mac zzhw = zzeieVar.zzhw(str);
            key = this.zziky.zziks;
            zzhw.init(key);
            return zzhw;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
