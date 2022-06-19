package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q62.class */
public final class q62 implements wa2<r62> {

    /* renamed from: a */
    private final s03 f28331a;

    /* renamed from: b */
    private final Context f28332b;

    public q62(s03 s03Var, Context context) {
        this.f28331a = s03Var;
        this.f28332b = context;
    }

    /* renamed from: a */
    public final /* synthetic */ r62 m12017a() {
        AudioManager audioManager = (AudioManager) this.f28332b.getSystemService("audio");
        return new r62(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), C5667s.m18155i().m18031b(), C5667s.m18155i().m18029d());
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<r62> zza() {
        return this.f28331a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.p62

            /* renamed from: a */
            private final q62 f27884a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27884a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27884a.m12017a();
            }
        });
    }
}
