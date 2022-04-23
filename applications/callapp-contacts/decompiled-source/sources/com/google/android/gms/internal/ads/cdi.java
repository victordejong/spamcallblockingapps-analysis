package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdi.class */
public final class cdi implements chb<cdj> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25633a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25634b;

    public cdi(dbs dbsVar, Context context) {
        this.f25634b = dbsVar;
        this.f25633a = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cdj> a() {
        return this.f25634b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cdl

            /* renamed from: a  reason: collision with root package name */
            private final cdi f25641a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25641a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                AudioManager audioManager = (AudioManager) this.f25641a.f25633a.getSystemService("audio");
                return new cdj(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzr.zzla().zzrg(), zzr.zzla().zzrh());
            }
        });
    }
}
