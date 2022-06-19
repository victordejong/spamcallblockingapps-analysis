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
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emu.class */
public final class emu {

    /* renamed from: g */
    public Date f49222g;

    /* renamed from: h */
    public String f49223h;

    /* renamed from: k */
    public Location f49226k;

    /* renamed from: m */
    public String f49228m;

    /* renamed from: n */
    public String f49229n;

    /* renamed from: p */
    public boolean f49231p;

    /* renamed from: q */
    public AdInfo f49232q;

    /* renamed from: s */
    String f49234s;

    /* renamed from: a */
    final HashSet<String> f49216a = new HashSet<>();

    /* renamed from: b */
    final Bundle f49217b = new Bundle();

    /* renamed from: c */
    final HashMap<Class<? extends NetworkExtras>, NetworkExtras> f49218c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<String> f49219d = new HashSet<>();

    /* renamed from: e */
    final Bundle f49220e = new Bundle();

    /* renamed from: f */
    final HashSet<String> f49221f = new HashSet<>();

    /* renamed from: i */
    final List<String> f49224i = new ArrayList();

    /* renamed from: j */
    public int f49225j = -1;

    /* renamed from: l */
    public boolean f49227l = false;

    /* renamed from: o */
    int f49230o = -1;

    /* renamed from: r */
    int f49233r = -1;

    /* renamed from: t */
    public int f49235t = 60000;

    @Deprecated
    /* renamed from: a */
    public final void m14752a(int i) {
        if (i == -1 || i == 0 || i == 1) {
            this.f49233r = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    /* renamed from: a */
    public final void m14751a(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            m14750a(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.f49218c.put(networkExtras.getClass(), networkExtras);
        }
    }

    /* renamed from: a */
    public final void m14750a(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.f49217b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: a */
    public final void m14749a(String str) {
        this.f49216a.add(str);
    }

    /* renamed from: a */
    public final void m14748a(String str, String str2) {
        this.f49220e.putString(str, str2);
    }

    /* renamed from: a */
    public final void m14747a(List<String> list) {
        this.f49224i.clear();
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                C13088za.zzez("neighboring content URL should not be null or empty");
            } else {
                this.f49224i.add(str);
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m14746a(boolean z) {
        this.f49230o = z ? 1 : 0;
    }

    /* renamed from: b */
    public final void m14745b(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.f49217b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.f49217b.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.f49217b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    /* renamed from: b */
    public final void m14744b(String str) {
        this.f49219d.add(str);
    }

    /* renamed from: c */
    public final void m14743c(String str) {
        this.f49221f.add(str);
    }

    @Deprecated
    /* renamed from: d */
    public final void m14742d(String str) {
        if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
            this.f49234s = str;
        }
    }
}
