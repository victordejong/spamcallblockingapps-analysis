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
    public Date g;
    public String h;
    public Location k;
    public String m;
    public String n;
    public boolean p;
    public AdInfo q;
    String s;

    /* renamed from: a  reason: collision with root package name */
    final HashSet<String> f27960a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    final Bundle f27961b = new Bundle();

    /* renamed from: c  reason: collision with root package name */
    final HashMap<Class<? extends NetworkExtras>, NetworkExtras> f27962c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    public final HashSet<String> f27963d = new HashSet<>();
    final Bundle e = new Bundle();
    final HashSet<String> f = new HashSet<>();
    final List<String> i = new ArrayList();
    public int j = -1;
    public boolean l = false;
    int o = -1;
    int r = -1;
    public int t = 60000;

    @Deprecated
    public final void a(int i) {
        if (i == -1 || i == 0 || i == 1) {
            this.r = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public final void a(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            a(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.f27962c.put(networkExtras.getClass(), networkExtras);
        }
    }

    public final void a(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.f27961b.putBundle(cls.getName(), bundle);
    }

    public final void a(String str) {
        this.f27960a.add(str);
    }

    public final void a(String str, String str2) {
        this.e.putString(str, str2);
    }

    public final void a(List<String> list) {
        this.i.clear();
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                za.zzez("neighboring content URL should not be null or empty");
            } else {
                this.i.add(str);
            }
        }
    }

    @Deprecated
    public final void a(boolean z) {
        this.o = z ? 1 : 0;
    }

    public final void b(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.f27961b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.f27961b.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.f27961b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    public final void b(String str) {
        this.f27963d.add(str);
    }

    public final void c(String str) {
        this.f.add(str);
    }

    @Deprecated
    public final void d(String str) {
        if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
            this.s = str;
        }
    }
}
