package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdi.class */
public final class cdi implements chb<cdj> {

    /* renamed from: a */
    final Context f45564a;

    /* renamed from: b */
    private final dbs f45565b;

    public cdi(dbs dbsVar, Context context) {
        this.f45565b = dbsVar;
        this.f45564a = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cdj> mo17449a() {
        return this.f45565b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cdl

            /* renamed from: a */
            private final cdi f45576a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45576a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                AudioManager audioManager = (AudioManager) this.f45576a.f45564a.getSystemService("audio");
                return new cdj(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzr.zzla().zzrg(), zzr.zzla().zzrh());
            }
        });
    }
}
