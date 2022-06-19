package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbig.class */
public class zzbig {
    private zza zzfqf;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbig$zza.class */
    public static abstract class zza {
        public abstract zzbdl zzafx();

        public abstract zzbay zzafy();

        public abstract zztz zzafz();

        public abstract zzaxb zzaga();

        public abstract zzarz zzagb();

        public abstract zzacv zzagc();
    }

    public zzbig(zza zzaVar) {
        this.zzfqf = zzaVar;
    }

    public final zzaxb zzaga() {
        return this.zzfqf.zzaga();
    }

    public final zzarz zzagb() {
        return this.zzfqf.zzagb();
    }

    public final zzacv zzagc() {
        return this.zzfqf.zzagc();
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzawy, com.google.android.gms.internal.ads.zzaws] */
    public final zzb zzain() {
        zza zzaVar = this.zzfqf;
        return new zzb(zzaVar.zzafx(), zzaVar.zzafy(), new zzaws(zzaVar.zzaga()), zzaVar.zzafz(), zzaVar.zzagb(), zzaVar.zzagc());
    }
}
