package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pm2.class */
final class pm2 {

    /* renamed from: a */
    private final MediaCodec.CryptoInfo f8137a;

    /* renamed from: b */
    private final MediaCodec.CryptoInfo.Pattern f8138b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ pm2(MediaCodec.CryptoInfo cryptoInfo, om2 om2Var) {
        this.f8137a = cryptoInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m6188a(pm2 pm2Var, int i, int i2) {
        pm2Var.f8138b.set(0, 0);
        pm2Var.f8137a.setPattern(pm2Var.f8138b);
    }
}
