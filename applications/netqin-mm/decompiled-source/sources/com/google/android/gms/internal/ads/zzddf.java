package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzddf;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddf.class */
public final class zzddf implements zzdgx<zzddc> {

    /* renamed from: a */
    public final zzdzb f27161a;

    /* renamed from: b */
    public final Context f27162b;

    public zzddf(zzdzb zzdzbVar, Context context) {
        this.f27161a = zzdzbVar;
        this.f27162b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzddc> mo13576a() {
        return this.f27161a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.bt

            /* renamed from: a */
            public final zzddf f12499a;

            {
                this.f12499a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12499a.m13646b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzddc m13646b() throws Exception {
        AudioManager audioManager = (AudioManager) this.f27162b.getSystemService("audio");
        return new zzddc(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzp.m17964h().m16023a(), zzp.m17964h().m16019b());
    }
}
