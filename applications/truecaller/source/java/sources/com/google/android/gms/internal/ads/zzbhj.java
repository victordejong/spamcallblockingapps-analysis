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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhj.class */
public final class zzbhj {
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

    public zzbhj(zzbhi zzbhiVar, SearchAdRequest searchAdRequest) {
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
        date = zzbhiVar.zzg;
        this.zza = date;
        str = zzbhiVar.zzh;
        this.zzb = str;
        list = zzbhiVar.zzi;
        this.zzc = list;
        i = zzbhiVar.zzj;
        this.zzd = i;
        hashSet = zzbhiVar.zza;
        this.zze = Collections.unmodifiableSet(hashSet);
        location = zzbhiVar.zzk;
        this.zzf = location;
        bundle = zzbhiVar.zzb;
        this.zzg = bundle;
        hashMap = zzbhiVar.zzc;
        this.zzh = Collections.unmodifiableMap(hashMap);
        str2 = zzbhiVar.zzl;
        this.zzi = str2;
        str3 = zzbhiVar.zzm;
        this.zzj = str3;
        this.zzk = searchAdRequest;
        i2 = zzbhiVar.zzn;
        this.zzl = i2;
        hashSet2 = zzbhiVar.zzd;
        this.zzm = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzbhiVar.zze;
        this.zzn = bundle2;
        hashSet3 = zzbhiVar.zzf;
        this.zzo = Collections.unmodifiableSet(hashSet3);
        z = zzbhiVar.zzo;
        this.zzp = z;
        adInfo = zzbhiVar.zzp;
        this.zzq = adInfo;
        str4 = zzbhiVar.zzq;
        this.zzr = str4;
        i3 = zzbhiVar.zzr;
        this.zzs = i3;
    }

    @Deprecated
    public final Date zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final List<String> zzc() {
        return new ArrayList(this.zzc);
    }

    @Deprecated
    public final int zzd() {
        return this.zzd;
    }

    public final Set<String> zze() {
        return this.zze;
    }

    public final Location zzf() {
        return this.zzf;
    }

    @Deprecated
    public final <T extends NetworkExtras> T zzg(Class<T> cls) {
        return (T) this.zzh.get(cls);
    }

    public final Bundle zzh(Class<? extends MediationExtrasReceiver> cls) {
        return this.zzg.getBundle(cls.getName());
    }

    public final Bundle zzi(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzg.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final String zzj() {
        return this.zzi;
    }

    public final String zzk() {
        return this.zzj;
    }

    public final SearchAdRequest zzl() {
        return this.zzk;
    }

    public final boolean zzm(Context context) {
        RequestConfiguration zzr = zzbhs.zze().zzr();
        zzber.zza();
        String zzt = zzcgm.zzt(context);
        return this.zzm.contains(zzt) || zzr.getTestDeviceIds().contains(zzt);
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzn() {
        return this.zzh;
    }

    public final Bundle zzo() {
        return this.zzg;
    }

    public final int zzp() {
        return this.zzl;
    }

    public final Bundle zzq() {
        return this.zzn;
    }

    public final Set<String> zzr() {
        return this.zzo;
    }

    @Deprecated
    public final boolean zzs() {
        return this.zzp;
    }

    public final AdInfo zzt() {
        return this.zzq;
    }

    public final String zzu() {
        return this.zzr;
    }

    public final int zzv() {
        return this.zzs;
    }
}
