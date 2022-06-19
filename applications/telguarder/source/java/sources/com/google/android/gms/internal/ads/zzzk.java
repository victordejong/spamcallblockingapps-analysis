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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzk.class */
public final class zzzk {
    private final int zzado;
    private final int zzadp;
    private final String zzadq;
    private final boolean zzbni;
    private final int zzcho;
    private final String zzchr;
    private final String zzcht;
    private final Bundle zzchv;
    private final String zzchx;
    private final boolean zzchz;
    private final List<String> zzcib;
    private final int zzcic;
    private final Bundle zzcka;
    private final AdInfo zzcke;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzckf;
    private final SearchAdRequest zzckg;
    private final Set<String> zzckh;
    private final Set<String> zzcki;
    private final Date zzmx;
    private final Set<String> zzmz;
    private final Location zznb;

    public zzzk(zzzj zzzjVar) {
        this(zzzjVar, null);
    }

    public zzzk(zzzj zzzjVar, SearchAdRequest searchAdRequest) {
        Date date;
        String str;
        List<String> list;
        int i;
        HashSet hashSet;
        Location location;
        boolean z;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z2;
        AdInfo adInfo;
        int i3;
        String str4;
        int i4;
        date = zzzjVar.zzmx;
        this.zzmx = date;
        str = zzzjVar.zzcht;
        this.zzcht = str;
        list = zzzjVar.zzcib;
        this.zzcib = list;
        i = zzzjVar.zzcho;
        this.zzcho = i;
        hashSet = zzzjVar.zzcjz;
        this.zzmz = Collections.unmodifiableSet(hashSet);
        location = zzzjVar.zznb;
        this.zznb = location;
        z = zzzjVar.zzbni;
        this.zzbni = z;
        bundle = zzzjVar.zzcka;
        this.zzcka = bundle;
        hashMap = zzzjVar.zzckb;
        this.zzckf = Collections.unmodifiableMap(hashMap);
        str2 = zzzjVar.zzchr;
        this.zzchr = str2;
        str3 = zzzjVar.zzchx;
        this.zzchx = str3;
        this.zzckg = searchAdRequest;
        i2 = zzzjVar.zzado;
        this.zzado = i2;
        hashSet2 = zzzjVar.zzckc;
        this.zzckh = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzzjVar.zzchv;
        this.zzchv = bundle2;
        hashSet3 = zzzjVar.zzckd;
        this.zzcki = Collections.unmodifiableSet(hashSet3);
        z2 = zzzjVar.zzchz;
        this.zzchz = z2;
        adInfo = zzzjVar.zzcke;
        this.zzcke = adInfo;
        i3 = zzzjVar.zzadp;
        this.zzadp = i3;
        str4 = zzzjVar.zzadq;
        this.zzadq = str4;
        i4 = zzzjVar.zzcic;
        this.zzcic = i4;
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzmx;
    }

    public final String getContentUrl() {
        return this.zzcht;
    }

    public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzcka.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle getCustomTargeting() {
        return this.zzchv;
    }

    @Deprecated
    public final int getGender() {
        return this.zzcho;
    }

    public final Set<String> getKeywords() {
        return this.zzmz;
    }

    public final Location getLocation() {
        return this.zznb;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbni;
    }

    public final String getMaxAdContentRating() {
        return this.zzadq;
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzckf.get(cls);
    }

    public final Bundle getNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls) {
        return this.zzcka.getBundle(cls.getName());
    }

    public final String getPublisherProvidedId() {
        return this.zzchr;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzchz;
    }

    public final boolean isTestDevice(Context context) {
        RequestConfiguration requestConfiguration = zzzn.zzrs().getRequestConfiguration();
        zzwr.zzqn();
        String zzbm = zzaza.zzbm(context);
        return this.zzckh.contains(zzbm) || requestConfiguration.getTestDeviceIds().contains(zzbm);
    }

    public final List<String> zzrh() {
        return new ArrayList(this.zzcib);
    }

    public final String zzri() {
        return this.zzchx;
    }

    public final SearchAdRequest zzrj() {
        return this.zzckg;
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzrk() {
        return this.zzckf;
    }

    public final Bundle zzrl() {
        return this.zzcka;
    }

    public final int zzrm() {
        return this.zzado;
    }

    public final Set<String> zzrn() {
        return this.zzcki;
    }

    public final AdInfo zzro() {
        return this.zzcke;
    }

    public final int zzrp() {
        return this.zzadp;
    }

    public final int zzrq() {
        return this.zzcic;
    }
}
