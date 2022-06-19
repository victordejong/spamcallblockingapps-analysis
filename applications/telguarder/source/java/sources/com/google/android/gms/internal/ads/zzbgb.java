package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgb.class */
public class zzbgb {
    private final Context zzaad;
    private final zzazn zzboz;
    private final WeakReference<Context> zzewa;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgb$zza.class */
    public static final class zza {
        private Context zzaad;
        private zzazn zzboz;
        private WeakReference<Context> zzewa;

        public final zza zza(zzazn zzaznVar) {
            this.zzboz = zzaznVar;
            return this;
        }

        public final zza zzbw(Context context) {
            this.zzewa = new WeakReference<>(context);
            Context context2 = context;
            if (context.getApplicationContext() != null) {
                context2 = context.getApplicationContext();
            }
            this.zzaad = context2;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbgb(zza zzaVar) {
        this.zzboz = zzaVar.zzboz;
        this.zzaad = zzaVar.zzaad;
        this.zzewa = zzaVar.zzewa;
    }

    public final Context zzaeu() {
        return this.zzaad;
    }

    public final WeakReference<Context> zzaev() {
        return this.zzewa;
    }

    public final zzazn zzaew() {
        return this.zzboz;
    }

    public final String zzaex() {
        return zzr.zzkr().zzq(this.zzaad, this.zzboz.zzbrp);
    }

    public final zzei zzaey() {
        return new zzei(new zzf(this.zzaad, this.zzboz));
    }
}
