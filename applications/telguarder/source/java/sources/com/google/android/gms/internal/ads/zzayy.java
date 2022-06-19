package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.Clock;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayy.class */
public final class zzayy implements zzrm {
    private final zzf zzedg;
    private final zzayv zzedn;
    private final Object lock = new Object();
    private final HashSet<zzayn> zzedo = new HashSet<>();
    private final HashSet<zzayw> zzedp = new HashSet<>();
    private boolean zzedq = false;
    private final zzayx zzedm = new zzayx();

    public zzayy(String str, zzf zzfVar) {
        this.zzedn = new zzayv(str, zzfVar);
        this.zzedg = zzfVar;
    }

    public final Bundle zza(Context context, zzayu zzayuVar) {
        HashSet<zzayn> hashSet = new HashSet<>();
        synchronized (this.lock) {
            hashSet.addAll(this.zzedo);
            this.zzedo.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle(POBConstants.KEY_APP, this.zzedn.zzn(context, this.zzedm.zzyd()));
        Bundle bundle2 = new Bundle();
        Iterator<zzayw> it = this.zzedp.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<zzayn> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().toBundle());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        zzayuVar.zza(hashSet);
        return bundle;
    }

    public final zzayn zza(Clock clock, String str) {
        return new zzayn(clock, this, this.zzedm.zzyc(), str);
    }

    public final void zza(zzvl zzvlVar, long j) {
        synchronized (this.lock) {
            this.zzedn.zza(zzvlVar, j);
        }
    }

    public final void zzb(zzayn zzaynVar) {
        synchronized (this.lock) {
            this.zzedo.add(zzaynVar);
        }
    }

    public final void zzb(HashSet<zzayn> hashSet) {
        synchronized (this.lock) {
            this.zzedo.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final void zzp(boolean z) {
        long currentTimeMillis = zzr.zzky().currentTimeMillis();
        if (!z) {
            this.zzedg.zzez(currentTimeMillis);
            this.zzedg.zzde(this.zzedn.zzedd);
            return;
        }
        if (currentTimeMillis - this.zzedg.zzyo() > ((Long) zzwr.zzqr().zzd(zzabp.zzcpm)).longValue()) {
            this.zzedn.zzedd = -1;
        } else {
            this.zzedn.zzedd = this.zzedg.zzyp();
        }
        this.zzedq = true;
    }

    public final void zzxi() {
        synchronized (this.lock) {
            this.zzedn.zzxi();
        }
    }

    public final void zzxj() {
        synchronized (this.lock) {
            this.zzedn.zzxj();
        }
    }

    public final boolean zzyf() {
        return this.zzedq;
    }
}
