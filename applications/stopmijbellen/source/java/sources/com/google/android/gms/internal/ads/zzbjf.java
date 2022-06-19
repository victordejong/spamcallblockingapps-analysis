package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjf.class */
public final class zzbjf {
    private Date zzg;
    private String zzh;
    private Location zzk;
    private String zzl;
    private String zzm;
    private boolean zzo;
    private AdInfo zzp;
    private String zzq;
    private final HashSet<String> zza = new HashSet<>();
    private final Bundle zzb = new Bundle();
    private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> zzc = new HashMap<>();
    private final HashSet<String> zzd = new HashSet<>();
    private final Bundle zze = new Bundle();
    private final HashSet<String> zzf = new HashSet<>();
    private final List<String> zzi = new ArrayList();
    private int zzj = -1;
    private int zzn = -1;
    private int zzr = 60000;

    public final void zzA(String str) {
        this.zzq = str;
    }

    @Deprecated
    public final void zzB(Date date) {
        this.zzg = date;
    }

    public final void zzC(String str) {
        this.zzh = str;
    }

    @Deprecated
    public final void zzD(int i) {
        this.zzj = i;
    }

    public final void zzE(int i) {
        this.zzr = i;
    }

    @Deprecated
    public final void zzF(boolean z) {
        this.zzo = z;
    }

    public final void zzG(Location location) {
        this.zzk = location;
    }

    public final void zzH(List<String> list) {
        this.zzi.clear();
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                zzciz.zzj("neighboring content URL should not be null or empty");
            } else {
                this.zzi.add(str);
            }
        }
    }

    public final void zzI(String str) {
        this.zzl = str;
    }

    public final void zzJ(String str) {
        this.zzm = str;
    }

    @Deprecated
    public final void zzK(boolean z) {
        this.zzn = z ? 1 : 0;
    }

    public final void zzr(String str) {
        this.zzf.add(str);
    }

    public final void zzs(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.zzb.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.zzb.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        Bundle bundle2 = this.zzb.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        Preconditions.checkNotNull(bundle2);
        bundle2.putBundle(cls.getName(), bundle);
    }

    public final void zzt(String str, String str2) {
        this.zze.putString(str, str2);
    }

    public final void zzu(String str) {
        this.zza.add(str);
    }

    public final void zzv(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.zzb.putBundle(cls.getName(), bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public final void zzw(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            zzv(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.zzc.put(networkExtras.getClass(), networkExtras);
        }
    }

    public final void zzx(String str) {
        this.zzd.add(str);
    }

    public final void zzy(String str) {
        this.zzd.remove("B3EEABB8EE11C2BE770B684D95219ECB");
    }

    public final void zzz(AdInfo adInfo) {
        this.zzp = adInfo;
    }
}
