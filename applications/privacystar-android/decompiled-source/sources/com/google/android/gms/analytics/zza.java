package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzak;
import com.google.android.gms.internal.measurement.zzaw;
import java.util.ListIterator;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zza.class */
public class zza extends zzj<zza> {
    private final zzaw zzqx;
    private boolean zzqy;

    @VisibleForTesting
    public zza(zzaw zzawVar) {
        super(zzawVar.zzca(), zzawVar.zzbx());
        this.zzqx = zzawVar;
    }

    public final void enableAdvertisingIdCollection(boolean z) {
        this.zzqy = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.zzj
    public final void zza(zzg zzgVar) {
        zzag zzagVar = (zzag) zzgVar.zzb(zzag.class);
        if (TextUtils.isEmpty(zzagVar.zzbd())) {
            zzagVar.setClientId(this.zzqx.zzcr().zzdr());
        }
        if (this.zzqy && TextUtils.isEmpty(zzagVar.zzbf())) {
            zzak zzcq = this.zzqx.zzcq();
            zzagVar.zzm(zzcq.zzbn());
            zzagVar.zza(zzcq.zzbg());
        }
    }

    public final void zza(String str) {
        Preconditions.checkNotEmpty(str);
        Uri zzb = zzb.zzb(str);
        ListIterator<zzo> listIterator = this.zzsk.zzu().listIterator();
        while (listIterator.hasNext()) {
            if (zzb.equals(listIterator.next().zzo())) {
                listIterator.remove();
            }
        }
        this.zzsk.zzu().add(new zzb(this.zzqx, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final zzaw zzl() {
        return this.zzqx;
    }

    @Override // com.google.android.gms.analytics.zzj
    public final zzg zzm() {
        zzg zzs = this.zzsk.zzs();
        zzs.zza(this.zzqx.zzci().zzdf());
        zzs.zza(this.zzqx.zzcj().zzek());
        zzd(zzs);
        return zzs;
    }
}
