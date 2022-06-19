package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjg.class */
public final class zzbjg {
    private final Date zza;
    private final String zzb;
    private final List<String> zzc;
    private final int zzd;
    private final Set<String> zze;
    private final Location zzf;
    private final Bundle zzg;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzh;
    private final String zzi;
    private final String zzj;
    @NotOnlyInitialized
    private final SearchAdRequest zzk;
    private final int zzl;
    private final Set<String> zzm;
    private final Bundle zzn;
    private final Set<String> zzo;
    private final boolean zzp;
    private final AdInfo zzq;
    private final String zzr;
    private final int zzs;

    public zzbjg(zzbjf zzbjfVar, SearchAdRequest searchAdRequest) {
        Date date;
        String str;
        List<String> list;
        int i;
        HashSet hashSet;
        Location location;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z;
        AdInfo adInfo;
        String str4;
        int i3;
        date = zzbjfVar.zzg;
        this.zza = date;
        str = zzbjfVar.zzh;
        this.zzb = str;
        list = zzbjfVar.zzi;
        this.zzc = list;
        i = zzbjfVar.zzj;
        this.zzd = i;
        hashSet = zzbjfVar.zza;
        this.zze = Collections.unmodifiableSet(hashSet);
        location = zzbjfVar.zzk;
        this.zzf = location;
        bundle = zzbjfVar.zzb;
        this.zzg = bundle;
        hashMap = zzbjfVar.zzc;
        this.zzh = Collections.unmodifiableMap(hashMap);
        str2 = zzbjfVar.zzl;
        this.zzi = str2;
        str3 = zzbjfVar.zzm;
        this.zzj = str3;
        this.zzk = searchAdRequest;
        i2 = zzbjfVar.zzn;
        this.zzl = i2;
        hashSet2 = zzbjfVar.zzd;
        this.zzm = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzbjfVar.zze;
        this.zzn = bundle2;
        hashSet3 = zzbjfVar.zzf;
        this.zzo = Collections.unmodifiableSet(hashSet3);
        z = zzbjfVar.zzo;
        this.zzp = z;
        adInfo = zzbjfVar.zzp;
        this.zzq = adInfo;
        str4 = zzbjfVar.zzq;
        this.zzr = str4;
        i3 = zzbjfVar.zzr;
        this.zzs = i3;
    }

    @Deprecated
    public final int zza() {
        return this.zzd;
    }

    public final int zzb() {
        return this.zzs;
    }

    public final int zzc() {
        return this.zzl;
    }

    public final Location zzd() {
        return this.zzf;
    }

    public final Bundle zze(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzg.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zzf() {
        return this.zzn;
    }

    public final Bundle zzg(Class<? extends MediationExtrasReceiver> cls) {
        return this.zzg.getBundle(cls.getName());
    }

    public final Bundle zzh() {
        return this.zzg;
    }

    @Deprecated
    public final <T extends NetworkExtras> T zzi(Class<T> cls) {
        return (T) this.zzh.get(cls);
    }

    public final AdInfo zzj() {
        return this.zzq;
    }

    public final SearchAdRequest zzk() {
        return this.zzk;
    }

    public final String zzl() {
        return this.zzr;
    }

    public final String zzm() {
        return this.zzb;
    }

    public final String zzn() {
        return this.zzi;
    }

    public final String zzo() {
        return this.zzj;
    }

    @Deprecated
    public final Date zzp() {
        return this.zza;
    }

    public final List<String> zzq() {
        return new ArrayList(this.zzc);
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzr() {
        return this.zzh;
    }

    public final Set<String> zzs() {
        return this.zzo;
    }

    public final Set<String> zzt() {
        return this.zze;
    }

    @Deprecated
    public final boolean zzu() {
        return this.zzp;
    }

    public final boolean zzv(Context context) {
        RequestConfiguration zzc = zzbjq.zzf().zzc();
        zzbgo.zzb();
        String zzt = zzcis.zzt(context);
        return this.zzm.contains(zzt) || zzc.getTestDeviceIds().contains(zzt);
    }
}
