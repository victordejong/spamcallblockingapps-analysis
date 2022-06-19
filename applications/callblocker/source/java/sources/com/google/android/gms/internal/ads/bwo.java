package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwo.class */
public final class bwo implements cah<bwl> {

    /* renamed from: a */
    private final crs f12408a;

    /* renamed from: b */
    private final Context f12409b;

    public bwo(crs crsVar, Context context) {
        this.f12408a = crsVar;
        this.f12409b = context;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bwl> mo11479a() {
        return this.f12408a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bwn

            /* renamed from: a */
            private final bwo f12407a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12407a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12407a.m11574b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ bwl m11574b() {
        AudioManager audioManager = (AudioManager) this.f12409b.getSystemService("audio");
        return new bwl(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), C2341q.m14739h().m6904a(), C2341q.m14739h().m6900b());
    }
}
